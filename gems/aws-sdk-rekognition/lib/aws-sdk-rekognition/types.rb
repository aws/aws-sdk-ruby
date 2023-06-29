# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Rekognition
  module Types

    # You are not authorized to perform the action.
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # Structure containing the estimated age range, in years, for a face.
    #
    # Amazon Rekognition estimates an age range for faces detected in the
    # input image. Estimated age ranges can overlap. A face of a 5-year-old
    # might have an estimated range of 4-6, while the face of a 6-year-old
    # might have an estimated range of 4-8.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Assets are the images that you use to train and evaluate a model
    # version. Assets can also contain validation information that you use
    # to debug a failed model training.
    #
    # @!attribute [rw] ground_truth_manifest
    #   The S3 bucket that contains an Amazon Sagemaker Ground Truth format
    #   manifest file.
    #   @return [Types::GroundTruthManifest]
    #
    class Asset < Struct.new(
      :ground_truth_manifest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   The ID of an existing collection containing the UserID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID for the existing UserID.
    #   @return [String]
    #
    # @!attribute [rw] face_ids
    #   An array of FaceIDs to associate with the UserID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_match_threshold
    #   An optional value specifying the minimum confidence in the UserID
    #   match to return. The default value is 75.
    #   @return [Float]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the request to `AssociateFaces`.
    #   If you use the same token with multiple `AssociateFaces` requests,
    #   the same response is returned. Use ClientRequestToken to prevent the
    #   same request from being processed more than once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class AssociateFacesRequest < Struct.new(
      :collection_id,
      :user_id,
      :face_ids,
      :user_match_threshold,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_faces
    #   An array of AssociatedFace objects containing FaceIDs that are
    #   successfully associated with the UserID is returned. Returned if the
    #   AssociateFaces action is successful.
    #   @return [Array<Types::AssociatedFace>]
    #
    # @!attribute [rw] unsuccessful_face_associations
    #   An array of UnsuccessfulAssociation objects containing FaceIDs that
    #   are not successfully associated along with the reasons. Returned if
    #   the AssociateFaces action is successful.
    #   @return [Array<Types::UnsuccessfulFaceAssociation>]
    #
    # @!attribute [rw] user_status
    #   The status of an update made to a UserID. Reflects if the UserID has
    #   been updated for every requested change.
    #   @return [String]
    #
    class AssociateFacesResponse < Struct.new(
      :associated_faces,
      :unsuccessful_face_associations,
      :user_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides face metadata for the faces that are associated to a specific
    # UserID.
    #
    # @!attribute [rw] face_id
    #   Unique identifier assigned to the face.
    #   @return [String]
    #
    class AssociatedFace < Struct.new(
      :face_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata information about an audio stream. An array of
    # `AudioMetadata` objects for the audio streams found in a stored video
    # is returned by GetSegmentDetection.
    #
    # @!attribute [rw] codec
    #   The audio codec used to encode or decode the audio stream.
    #   @return [String]
    #
    # @!attribute [rw] duration_millis
    #   The duration of the audio stream in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] sample_rate
    #   The sample rate for the audio stream.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_channels
    #   The number of audio channels in the segment.
    #   @return [Integer]
    #
    class AudioMetadata < Struct.new(
      :codec,
      :duration_millis,
      :sample_rate,
      :number_of_channels)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image that is picked from the Face Liveness video and returned for
    # audit trail purposes, returned as Base64-encoded bytes.
    #
    # @!attribute [rw] bytes
    #   The Base64-encoded bytes representing an image selected from the
    #   Face Liveness video and returned for audit purposes.
    #   @return [String]
    #
    # @!attribute [rw] s3_object
    #   Provides the S3 bucket name and object name.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see How
    #   Amazon Rekognition works with IAM in the Amazon Rekognition
    #   Developer Guide.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] bounding_box
    #   Identifies the bounding box around the label, face, text, object of
    #   interest, or personal protective equipment. The `left`
    #   (x-coordinate) and `top` (y-coordinate) are coordinates representing
    #   the top and left sides of the bounding box. Note that the upper-left
    #   corner of the image is the origin (0,0).
    #
    #   The `top` and `left` values returned are ratios of the overall image
    #   size. For example, if the input image is 700x200 pixels, and the
    #   top-left coordinate of the bounding box is 350x50 pixels, the API
    #   returns a `left` value of 0.5 (350/700) and a `top` value of 0.25
    #   (50/200).
    #
    #   The `width` and `height` values represent the dimensions of the
    #   bounding box as a ratio of the overall image dimension. For example,
    #   if the input image is 700x200 pixels, and the bounding box width is
    #   70 pixels, the width returned is 0.1.
    #
    #   <note markdown="1"> The bounding box coordinates can have negative values. For example,
    #   if Amazon Rekognition is able to detect a face that is at the image
    #   edge and is only partially visible, the service can return
    #   coordinates that are outside the image bounds and, depending on the
    #   image edge, you might get negative values or values greater than 1
    #   for the `left` or `top` values.
    #
    #    </note>
    #   @return [Types::BoundingBox]
    #
    class AuditImage < Struct.new(
      :bytes,
      :s3_object,
      :bounding_box)
      SENSITIVE = [:bytes]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that allows you to control the black frame detection by
    # specifying the black levels and pixel coverage of black pixels in a
    # frame. As videos can come from multiple sources, formats, and time
    # periods, they may contain different standards and varying noise levels
    # for black frames that need to be accounted for. For more information,
    # see StartSegmentDetection.
    #
    # @!attribute [rw] max_pixel_threshold
    #   A threshold used to determine the maximum luminance value for a
    #   pixel to be considered black. In a full color range video, luminance
    #   values range from 0-255. A pixel value of 0 is pure black, and the
    #   most strict filter. The maximum black pixel value is computed as
    #   follows: max\_black\_pixel\_value = minimum\_luminance +
    #   MaxPixelThreshold *luminance\_range.
    #
    #   For example, for a full range video with BlackPixelThreshold = 0.1,
    #   max\_black\_pixel\_value is 0 + 0.1 * (255-0) = 25.5.
    #
    #   The default value of MaxPixelThreshold is 0.2, which maps to a
    #   max\_black\_pixel\_value of 51 for a full range video. You can lower
    #   this threshold to be more strict on black levels.
    #   @return [Float]
    #
    # @!attribute [rw] min_coverage_percentage
    #   The minimum percentage of pixels in a frame that need to have a
    #   luminance below the max\_black\_pixel\_value for a frame to be
    #   considered a black frame. Luminance is calculated using the BT.709
    #   matrix.
    #
    #   The default value is 99, which means at least 99% of all pixels in
    #   the frame are black pixels as per the `MaxPixelThreshold` set. You
    #   can reduce this value to allow more noise on the black frame.
    #   @return [Float]
    #
    class BlackFrame < Struct.new(
      :max_pixel_threshold,
      :min_coverage_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the bounding box around the label, face, text, object of
    # interest, or personal protective equipment. The `left` (x-coordinate)
    # and `top` (y-coordinate) are coordinates representing the top and left
    # sides of the bounding box. Note that the upper-left corner of the
    # image is the origin (0,0).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a celebrity recognized by the
    # RecognizeCelebrities operation.
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
    #   The confidence, in percentage, that Amazon Rekognition has that the
    #   recognized face is the celebrity.
    #   @return [Float]
    #
    # @!attribute [rw] known_gender
    #   The known gender identity for the celebrity that matches the
    #   provided ID. The known gender identity can be Male, Female,
    #   Nonbinary, or Unlisted.
    #   @return [Types::KnownGender]
    #
    class Celebrity < Struct.new(
      :urls,
      :name,
      :id,
      :face,
      :match_confidence,
      :known_gender)
      SENSITIVE = []
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
    # @!attribute [rw] known_gender
    #   Retrieves the known gender for the celebrity.
    #   @return [Types::KnownGender]
    #
    class CelebrityDetail < Struct.new(
      :urls,
      :name,
      :id,
      :confidence,
      :bounding_box,
      :face,
      :known_gender)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a detected celebrity and the time the celebrity was
    # detected in a stored video. For more information, see
    # GetCelebrityRecognition in the Amazon Rekognition Developer Guide.
    #
    # @!attribute [rw] timestamp
    #   The time, in milliseconds from the start of the video, that the
    #   celebrity was recognized. Note that `Timestamp` is not guaranteed to
    #   be accurate to the individual frame where the celebrity first
    #   appears.
    #   @return [Integer]
    #
    # @!attribute [rw] celebrity
    #   Information about a recognized celebrity.
    #   @return [Types::CelebrityDetail]
    #
    class CelebrityRecognition < Struct.new(
      :timestamp,
      :celebrity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a face in a target image that matches the
    # source image face analyzed by `CompareFaces`. The `Face` property
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
    #   @return [Types::Image]
    #
    # @!attribute [rw] target_image
    #   The target image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
    #   @return [Types::Image]
    #
    # @!attribute [rw] similarity_threshold
    #   The minimum level of confidence in the face matches that a match
    #   must meet to be included in the `FaceMatches` array.
    #   @return [Float]
    #
    # @!attribute [rw] quality_filter
    #   A filter that specifies a quality bar for how much filtering is done
    #   to identify faces. Filtered faces aren't compared. If you specify
    #   `AUTO`, Amazon Rekognition chooses the quality bar. If you specify
    #   `LOW`, `MEDIUM`, or `HIGH`, filtering removes all faces that don’t
    #   meet the chosen quality bar. The quality bar is based on a variety
    #   of common use cases. Low-quality detections can occur for a number
    #   of reasons. Some examples are an object that's misidentified as a
    #   face, a face that's too blurry, or a face with a pose that's too
    #   extreme to use. If you specify `NONE`, no filtering is performed.
    #   The default value is `NONE`.
    #
    #   To use quality filtering, the collection you are using must be
    #   associated with version 3 of the face model or higher.
    #   @return [String]
    #
    class CompareFacesRequest < Struct.new(
      :source_image,
      :target_image,
      :similarity_threshold,
      :quality_filter)
      SENSITIVE = []
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
    #   The value of `SourceImageOrientationCorrection` is always null.
    #
    #   If the input image is in .jpeg format, it might contain exchangeable
    #   image file format (Exif) metadata that includes the image's
    #   orientation. Amazon Rekognition uses this orientation information to
    #   perform image correction. The bounding box coordinates are
    #   translated to represent object locations after the orientation
    #   information in the Exif metadata is used to correct the image
    #   orientation. Images in .png format don't contain Exif metadata.
    #
    #   Amazon Rekognition doesn’t perform image correction for images in
    #   .png format and .jpeg images without orientation information in the
    #   image Exif metadata. The bounding box coordinates aren't translated
    #   and represent the object locations before the image is rotated.
    #   @return [String]
    #
    # @!attribute [rw] target_image_orientation_correction
    #   The value of `TargetImageOrientationCorrection` is always null.
    #
    #   If the input image is in .jpeg format, it might contain exchangeable
    #   image file format (Exif) metadata that includes the image's
    #   orientation. Amazon Rekognition uses this orientation information to
    #   perform image correction. The bounding box coordinates are
    #   translated to represent object locations after the orientation
    #   information in the Exif metadata is used to correct the image
    #   orientation. Images in .png format don't contain Exif metadata.
    #
    #   Amazon Rekognition doesn’t perform image correction for images in
    #   .png format and .jpeg images without orientation information in the
    #   image Exif metadata. The bounding box coordinates aren't translated
    #   and represent the object locations before the image is rotated.
    #   @return [String]
    #
    class CompareFacesResponse < Struct.new(
      :source_image_face,
      :face_matches,
      :unmatched_faces,
      :source_image_orientation_correction,
      :target_image_orientation_correction)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides face metadata for target image faces that are analyzed by
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
    # @!attribute [rw] emotions
    #   The emotions that appear to be expressed on the face, and the
    #   confidence level in the determination. Valid values include
    #   "Happy", "Sad", "Angry", "Confused", "Disgusted",
    #   "Surprised", "Calm", "Unknown", and "Fear".
    #   @return [Array<Types::Emotion>]
    #
    # @!attribute [rw] smile
    #   Indicates whether or not the face is smiling, and the confidence
    #   level in the determination.
    #   @return [Types::Smile]
    #
    class ComparedFace < Struct.new(
      :bounding_box,
      :confidence,
      :landmarks,
      :pose,
      :quality,
      :emotions,
      :smile)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A User with the same Id already exists within the collection, or the
    # update or deletion of the User caused an inconsistent state. **
    #
    class ConflictException < Aws::EmptyStructure; end

    # Label detection settings to use on a streaming video. Defining the
    # settings is required in the request parameter for
    # CreateStreamProcessor. Including this setting in the
    # `CreateStreamProcessor` request enables you to use the stream
    # processor for label detection. You can then select what you want the
    # stream processor to detect, such as people or pets. When the stream
    # processor has started, one notification is sent for each object class
    # specified. For example, if packages and pets are selected, one SNS
    # notification is published the first time a package is detected and one
    # SNS notification is published the first time a pet is detected, as
    # well as an end-of-session summary.
    #
    # @!attribute [rw] labels
    #   Specifies what you want to detect in the video, such as people,
    #   packages, or pets. The current valid labels you can include in this
    #   list are: "PERSON", "PET", "PACKAGE", and "ALL".
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_confidence
    #   The minimum confidence required to label an object in the video.
    #   @return [Float]
    #
    class ConnectedHomeSettings < Struct.new(
      :labels,
      :min_confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label detection settings you want to use in your stream processor.
    # This includes the labels you want the stream processor to detect and
    # the minimum confidence level allowed to label objects.
    #
    # @!attribute [rw] labels
    #   Specifies what you want to detect in the video, such as people,
    #   packages, or pets. The current valid labels you can include in this
    #   list are: "PERSON", "PET", "PACKAGE", and "ALL".
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_confidence
    #   The minimum confidence required to label an object in the video.
    #   @return [Float]
    #
    class ConnectedHomeSettingsForUpdate < Struct.new(
      :labels,
      :min_confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an inappropriate, unwanted, or offensive content
    # label detection in a stored video.
    #
    # @!attribute [rw] timestamp
    #   Time, in milliseconds from the beginning of the video, that the
    #   content moderation label was detected. Note that `Timestamp` is not
    #   guaranteed to be accurate to the individual frame where the
    #   moderated content first appears.
    #   @return [Integer]
    #
    # @!attribute [rw] moderation_label
    #   The content moderation label detected by in the stored video.
    #   @return [Types::ModerationLabel]
    #
    # @!attribute [rw] start_timestamp_millis
    #   The time in milliseconds defining the start of the timeline segment
    #   containing a continuously detected moderation label.
    #   @return [Integer]
    #
    # @!attribute [rw] end_timestamp_millis
    #   The time in milliseconds defining the end of the timeline segment
    #   containing a continuously detected moderation label.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_millis
    #   The time duration of a segment in milliseconds, I.e. time elapsed
    #   from StartTimestampMillis to EndTimestampMillis.
    #   @return [Integer]
    #
    class ContentModerationDetection < Struct.new(
      :timestamp,
      :moderation_label,
      :start_timestamp_millis,
      :end_timestamp_millis,
      :duration_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_project_arn
    #   The ARN of the source project in the trusting AWS account.
    #   @return [String]
    #
    # @!attribute [rw] source_project_version_arn
    #   The ARN of the model version in the source project that you want to
    #   copy to a destination project.
    #   @return [String]
    #
    # @!attribute [rw] destination_project_arn
    #   The ARN of the project in the trusted AWS account that you want to
    #   copy the model version to.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   A name for the version of the model that's copied to the
    #   destination project.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   The S3 bucket and folder location where the training output for the
    #   source model version is placed.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] tags
    #   The key-value tags to assign to the model version.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier for your AWS Key Management Service key (AWS KMS
    #   key). You can supply the Amazon Resource Name (ARN) of your KMS key,
    #   the ID of your KMS key, an alias for your KMS key, or an alias ARN.
    #   The key is used to encrypt training results and manifest files
    #   written to the output Amazon S3 bucket (`OutputConfig`).
    #
    #   If you choose to use your own KMS key, you need the following
    #   permissions on the KMS key.
    #
    #   * kms:CreateGrant
    #
    #   * kms:DescribeKey
    #
    #   * kms:GenerateDataKey
    #
    #   * kms:Decrypt
    #
    #   If you don't specify a value for `KmsKeyId`, images copied into the
    #   service are encrypted using a key that AWS owns and manages.
    #   @return [String]
    #
    class CopyProjectVersionRequest < Struct.new(
      :source_project_arn,
      :source_project_version_arn,
      :destination_project_arn,
      :version_name,
      :output_config,
      :tags,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_version_arn
    #   The ARN of the copied model version in the destination project.
    #   @return [String]
    #
    class CopyProjectVersionResponse < Struct.new(
      :project_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an item of Personal Protective Equipment covering a
    # corresponding body part. For more information, see
    # DetectProtectiveEquipment.
    #
    # @!attribute [rw] confidence
    #   The confidence that Amazon Rekognition has in the value of `Value`.
    #   @return [Float]
    #
    # @!attribute [rw] value
    #   True if the PPE covers the corresponding body part, otherwise false.
    #   @return [Boolean]
    #
    class CoversBodyPart < Struct.new(
      :confidence,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   ID for the collection that you are creating.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that you want to attach to the
    #   collection.
    #   @return [Hash<String,String>]
    #
    class CreateCollectionRequest < Struct.new(
      :collection_id,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_source
    #   The source files for the dataset. You can specify the ARN of an
    #   existing dataset or specify the Amazon S3 bucket location of an
    #   Amazon Sagemaker format manifest file. If you don't specify
    #   `datasetSource`, an empty dataset is created. To add labeled images
    #   to the dataset, You can use the console or call
    #   UpdateDatasetEntries.
    #   @return [Types::DatasetSource]
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset. Specify `train` to create a training
    #   dataset. Specify `test` to create a test dataset.
    #   @return [String]
    #
    # @!attribute [rw] project_arn
    #   The ARN of the Amazon Rekognition Custom Labels project to which you
    #   want to asssign the dataset.
    #   @return [String]
    #
    class CreateDatasetRequest < Struct.new(
      :dataset_source,
      :dataset_type,
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The ARN of the created Amazon Rekognition Custom Labels dataset.
    #   @return [String]
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kms_key_id
    #   The identifier for your AWS Key Management Service key (AWS KMS
    #   key). Used to encrypt audit images and reference images.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   A session settings object. It contains settings for the operation to
    #   be performed. For Face Liveness, it accepts `OutputConfig` and
    #   `AuditImagesLimit`.
    #   @return [Types::CreateFaceLivenessSessionRequestSettings]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token is used to recognize the Face Liveness request. If
    #   the same token is used with multiple `CreateFaceLivenessSession`
    #   requests, the same session is returned. This token is employed to
    #   avoid unintentionally creating the same session multiple times.
    #   @return [String]
    #
    class CreateFaceLivenessSessionRequest < Struct.new(
      :kms_key_id,
      :settings,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A session settings object. It contains settings for the operation to
    # be performed. It accepts arguments for OutputConfig and
    # AuditImagesLimit.
    #
    # @!attribute [rw] output_config
    #   Can specify the location of an Amazon S3 bucket, where reference and
    #   audit images will be stored. Note that the Amazon S3 bucket must be
    #   located in the caller's AWS account and in the same region as the
    #   Face Liveness end-point. Additionally, the Amazon S3 object keys are
    #   auto-generated by the Face Liveness system. Requires that the caller
    #   has the `s3:PutObject` permission on the Amazon S3 bucket.
    #   @return [Types::LivenessOutputConfig]
    #
    # @!attribute [rw] audit_images_limit
    #   Number of audit images to be returned back. Takes an integer between
    #   0-4. Any integer less than 0 will return 0, any integer above 4 will
    #   return 4 images in the response. By default, it is set to 0. The
    #   limit is best effort and is based on the actual duration of the
    #   selfie-video.
    #   @return [Integer]
    #
    class CreateFaceLivenessSessionRequestSettings < Struct.new(
      :output_config,
      :audit_images_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   A unique 128-bit UUID identifying a Face Liveness session.
    #   @return [String]
    #
    class CreateFaceLivenessSessionResponse < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_name
    #   The name of the project to create.
    #   @return [String]
    #
    class CreateProjectRequest < Struct.new(
      :project_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the new project. You can use the
    #   ARN to configure IAM access to the project.
    #   @return [String]
    #
    class CreateProjectResponse < Struct.new(
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The ARN of the Amazon Rekognition Custom Labels project that manages
    #   the model that you want to train.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   A name for the version of the model. This value must be unique.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   The Amazon S3 bucket location to store the results of training. The
    #   S3 bucket can be in any AWS account as long as the caller has
    #   `s3:PutObject` permissions on the S3 bucket.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] training_data
    #   Specifies an external manifest that the services uses to train the
    #   model. If you specify `TrainingData` you must also specify
    #   `TestingData`. The project must not have any associated datasets.
    #   @return [Types::TrainingData]
    #
    # @!attribute [rw] testing_data
    #   Specifies an external manifest that the service uses to test the
    #   model. If you specify `TestingData` you must also specify
    #   `TrainingData`. The project must not have any associated datasets.
    #   @return [Types::TestingData]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that you want to attach to the
    #   model.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier for your AWS Key Management Service key (AWS KMS
    #   key). You can supply the Amazon Resource Name (ARN) of your KMS key,
    #   the ID of your KMS key, an alias for your KMS key, or an alias ARN.
    #   The key is used to encrypt training and test images copied into the
    #   service for model training. Your source images are unaffected. The
    #   key is also used to encrypt training results and manifest files
    #   written to the output Amazon S3 bucket (`OutputConfig`).
    #
    #   If you choose to use your own KMS key, you need the following
    #   permissions on the KMS key.
    #
    #   * kms:CreateGrant
    #
    #   * kms:DescribeKey
    #
    #   * kms:GenerateDataKey
    #
    #   * kms:Decrypt
    #
    #   If you don't specify a value for `KmsKeyId`, images copied into the
    #   service are encrypted using a key that AWS owns and manages.
    #   @return [String]
    #
    class CreateProjectVersionRequest < Struct.new(
      :project_arn,
      :version_name,
      :output_config,
      :training_data,
      :testing_data,
      :tags,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_version_arn
    #   The ARN of the model version that was created. Use
    #   `DescribeProjectVersion` to get the current status of the training
    #   operation.
    #   @return [String]
    #
    class CreateProjectVersionResponse < Struct.new(
      :project_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input
    #   Kinesis video stream stream that provides the source streaming
    #   video. If you are using the AWS CLI, the parameter name is
    #   `StreamProcessorInput`. This is required for both face search and
    #   label detection stream processors.
    #   @return [Types::StreamProcessorInput]
    #
    # @!attribute [rw] output
    #   Kinesis data stream stream or Amazon S3 bucket location to which
    #   Amazon Rekognition Video puts the analysis results. If you are using
    #   the AWS CLI, the parameter name is `StreamProcessorOutput`. This
    #   must be a S3Destination of an Amazon S3 bucket that you own for a
    #   label detection stream processor or a Kinesis data stream ARN for a
    #   face search stream processor.
    #   @return [Types::StreamProcessorOutput]
    #
    # @!attribute [rw] name
    #   An identifier you assign to the stream processor. You can use `Name`
    #   to manage the stream processor. For example, you can get the current
    #   status of the stream processor by calling DescribeStreamProcessor.
    #   `Name` is idempotent. This is required for both face search and
    #   label detection stream processors.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Input parameters used in a streaming video analyzed by a stream
    #   processor. You can use `FaceSearch` to recognize faces in a
    #   streaming video, or you can use `ConnectedHome` to detect labels.
    #   @return [Types::StreamProcessorSettings]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Number (ARN) of the IAM role that allows access
    #   to the stream processor. The IAM role provides Rekognition read
    #   permissions for a Kinesis stream. It also provides write permissions
    #   to an Amazon S3 bucket and Amazon Simple Notification Service topic
    #   for a label detection stream processor. This is required for both
    #   face search and label detection stream processors.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that you want to attach to the
    #   stream processor.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon Simple Notification Service topic to which Amazon
    #   Rekognition publishes the object detection results and completion
    #   status of a video analysis operation.
    #
    #   Amazon Rekognition publishes a notification the first time an object
    #   of interest or a person is detected in the video stream. For
    #   example, if Amazon Rekognition detects a person at second 2, a pet
    #   at second 4, and a person again at second 5, Amazon Rekognition
    #   sends 2 object class detected notifications, one for a person at
    #   second 2 and one for a pet at second 4.
    #
    #   Amazon Rekognition also publishes an an end-of-session notification
    #   with a summary when the stream processing session is complete.
    #   @return [Types::StreamProcessorNotificationChannel]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier for your AWS Key Management Service key (AWS KMS
    #   key). This is an optional parameter for label detection stream
    #   processors and should not be used to create a face search stream
    #   processor. You can supply the Amazon Resource Name (ARN) of your KMS
    #   key, the ID of your KMS key, an alias for your KMS key, or an alias
    #   ARN. The key is used to encrypt results and data published to your
    #   Amazon S3 bucket, which includes image frames and hero images. Your
    #   source images are unaffected.
    #   @return [String]
    #
    # @!attribute [rw] regions_of_interest
    #   Specifies locations in the frames where Amazon Rekognition checks
    #   for objects or people. You can specify up to 10 regions of interest,
    #   and each region has either a polygon or a bounding box. This is an
    #   optional parameter for label detection stream processors and should
    #   not be used to create a face search stream processor.
    #   @return [Array<Types::RegionOfInterest>]
    #
    # @!attribute [rw] data_sharing_preference
    #   Shows whether you are sharing data with Rekognition to improve model
    #   performance. You can choose this option at the account level or on a
    #   per-stream basis. Note that if you opt out at the account level this
    #   setting is ignored on individual streams.
    #   @return [Types::StreamProcessorDataSharingPreference]
    #
    class CreateStreamProcessorRequest < Struct.new(
      :input,
      :output,
      :name,
      :settings,
      :role_arn,
      :tags,
      :notification_channel,
      :kms_key_id,
      :regions_of_interest,
      :data_sharing_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream_processor_arn
    #   Amazon Resource Number for the newly created stream processor.
    #   @return [String]
    #
    class CreateStreamProcessorResponse < Struct.new(
      :stream_processor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   The ID of an existing collection to which the new UserID needs to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   ID for the UserID to be created. This ID needs to be unique within
    #   the collection.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the request to `CreateUser`. If
    #   you use the same token with multiple `CreateUser` requests, the same
    #   response is returned. Use ClientRequestToken to prevent the same
    #   request from being processed more than once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateUserRequest < Struct.new(
      :collection_id,
      :user_id,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class CreateUserResponse < Aws::EmptyStructure; end

    # A custom label detected in an image by a call to DetectCustomLabels.
    #
    # @!attribute [rw] name
    #   The name of the custom label.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence that the model has in the detection of the custom
    #   label. The range is 0-100. A higher value indicates a higher
    #   confidence.
    #   @return [Float]
    #
    # @!attribute [rw] geometry
    #   The location of the detected object on the image that corresponds to
    #   the custom label. Includes an axis aligned coarse bounding box
    #   surrounding the object and a finer grain polygon for more accurate
    #   spatial information.
    #   @return [Types::Geometry]
    #
    class CustomLabel < Struct.new(
      :name,
      :confidence,
      :geometry)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes updates or additions to a dataset. A Single update or
    # addition is an entry (JSON Line) that provides information about a
    # single image. To update an existing entry, you match the `source-ref`
    # field of the update entry with the `source-ref` filed of the entry
    # that you want to update. If the `source-ref` field doesn't match an
    # existing entry, the entry is added to dataset as a new entry.
    #
    # @!attribute [rw] ground_truth
    #   A Base64-encoded binary data object containing one or JSON lines
    #   that either update the dataset or are additions to the dataset. You
    #   change a dataset by calling UpdateDatasetEntries. If you are using
    #   an AWS SDK to call `UpdateDatasetEntries`, you don't need to encode
    #   `Changes` as the SDK encodes the data for you.
    #
    #   For example JSON lines, see Image-Level labels in manifest files and
    #   and Object localization in manifest files in the *Amazon Rekognition
    #   Custom Labels Developer Guide*.
    #   @return [String]
    #
    class DatasetChanges < Struct.new(
      :ground_truth)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description for a dataset. For more information, see
    # DescribeDataset.
    #
    # The status fields `Status`, `StatusMessage`, and `StatusMessageCode`
    # reflect the last operation on the dataset.
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix timestamp for the time and date that the dataset was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The Unix timestamp for the date and time that the dataset was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status_message_code
    #   The status message code for the dataset operation. If a service
    #   error occurs, try the API call again later. If a client error
    #   occurs, check the input parameters to the dataset API call that
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] dataset_stats
    #   The status message code for the dataset.
    #   @return [Types::DatasetStats]
    #
    class DatasetDescription < Struct.new(
      :creation_timestamp,
      :last_updated_timestamp,
      :status,
      :status_message,
      :status_message_code,
      :dataset_stats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a dataset label. For more information, see
    # ListDatasetLabels.
    #
    # @!attribute [rw] label_name
    #   The name of the label.
    #   @return [String]
    #
    # @!attribute [rw] label_stats
    #   Statistics about the label.
    #   @return [Types::DatasetLabelStats]
    #
    class DatasetLabelDescription < Struct.new(
      :label_name,
      :label_stats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics about a label used in a dataset. For more information, see
    # DatasetLabelDescription.
    #
    # @!attribute [rw] entry_count
    #   The total number of images that use the label.
    #   @return [Integer]
    #
    # @!attribute [rw] bounding_box_count
    #   The total number of images that have the label assigned to a
    #   bounding box.
    #   @return [Integer]
    #
    class DatasetLabelStats < Struct.new(
      :entry_count,
      :bounding_box_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an Amazon Rekognition Custom Labels dataset.
    # For more information, see ProjectDescription.
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix timestamp for the date and time that the dataset was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] dataset_type
    #   The type of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status_message_code
    #   The status message code for the dataset operation. If a service
    #   error occurs, try the API call again later. If a client error
    #   occurs, check the input parameters to the dataset API call that
    #   failed.
    #   @return [String]
    #
    class DatasetMetadata < Struct.new(
      :creation_timestamp,
      :dataset_type,
      :dataset_arn,
      :status,
      :status_message,
      :status_message_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source that Amazon Rekognition Custom Labels uses to create a
    # dataset. To use an Amazon Sagemaker format manifest file, specify the
    # S3 bucket location in the `GroundTruthManifest` field. The S3 bucket
    # must be in your AWS account. To create a copy of an existing dataset,
    # specify the Amazon Resource Name (ARN) of an existing dataset in
    # `DatasetArn`.
    #
    # You need to specify a value for `DatasetArn` or `GroundTruthManifest`,
    # but not both. if you supply both values, or if you don't specify any
    # values, an InvalidParameterException exception occurs.
    #
    # For more information, see CreateDataset.
    #
    # @!attribute [rw] ground_truth_manifest
    #   The S3 bucket that contains an Amazon Sagemaker Ground Truth format
    #   manifest file.
    #   @return [Types::GroundTruthManifest]
    #
    # @!attribute [rw] dataset_arn
    #   The ARN of an Amazon Rekognition Custom Labels dataset that you want
    #   to copy.
    #   @return [String]
    #
    class DatasetSource < Struct.new(
      :ground_truth_manifest,
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides statistics about a dataset. For more information, see
    # DescribeDataset.
    #
    # @!attribute [rw] labeled_entries
    #   The total number of images in the dataset that have labels.
    #   @return [Integer]
    #
    # @!attribute [rw] total_entries
    #   The total number of images in the dataset.
    #   @return [Integer]
    #
    # @!attribute [rw] total_labels
    #   The total number of labels declared in the dataset.
    #   @return [Integer]
    #
    # @!attribute [rw] error_entries
    #   The total number of entries that contain at least one error.
    #   @return [Integer]
    #
    class DatasetStats < Struct.new(
      :labeled_entries,
      :total_entries,
      :total_labels,
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   ID of the collection to delete.
    #   @return [String]
    #
    class DeleteCollectionRequest < Struct.new(
      :collection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   HTTP status code that indicates the result of the operation.
    #   @return [Integer]
    #
    class DeleteCollectionResponse < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The ARN of the Amazon Rekognition Custom Labels dataset that you
    #   want to delete.
    #   @return [String]
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteDatasetResponse < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deleted_faces
    #   An array of strings (face IDs) of the faces that were deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unsuccessful_face_deletions
    #   An array of any faces that weren't deleted.
    #   @return [Array<Types::UnsuccessfulFaceDeletion>]
    #
    class DeleteFacesResponse < Struct.new(
      :deleted_faces,
      :unsuccessful_face_deletions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project that the project
    #   policy you want to delete is attached to.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision_id
    #   The ID of the project policy revision that you want to delete.
    #   @return [String]
    #
    class DeleteProjectPolicyRequest < Struct.new(
      :project_arn,
      :policy_name,
      :policy_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteProjectPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project that you want to
    #   delete.
    #   @return [String]
    #
    class DeleteProjectRequest < Struct.new(
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the delete project operation.
    #   @return [String]
    #
    class DeleteProjectResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_version_arn
    #   The Amazon Resource Name (ARN) of the model version that you want to
    #   delete.
    #   @return [String]
    #
    class DeleteProjectVersionRequest < Struct.new(
      :project_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the deletion operation.
    #   @return [String]
    #
    class DeleteProjectVersionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the stream processor you want to delete.
    #   @return [String]
    #
    class DeleteStreamProcessorRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteStreamProcessorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] collection_id
    #   The ID of an existing collection from which the UserID needs to be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   ID for the UserID to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the request to `DeleteUser`. If
    #   you use the same token with multiple `DeleteUser `requests, the same
    #   response is returned. Use ClientRequestToken to prevent the same
    #   request from being processed more than once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class DeleteUserRequest < Struct.new(
      :collection_id,
      :user_id,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteUserResponse < Aws::EmptyStructure; end

    # @!attribute [rw] collection_id
    #   The ID of the collection to describe.
    #   @return [String]
    #
    class DescribeCollectionRequest < Struct.new(
      :collection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] face_count
    #   The number of faces that are indexed into the collection. To index
    #   faces into a collection, use IndexFaces.
    #   @return [Integer]
    #
    # @!attribute [rw] face_model_version
    #   The version of the face model that's used by the collection for
    #   face detection.
    #
    #   For more information, see Model versioning in the Amazon Rekognition
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
    # @!attribute [rw] user_count
    #   The number of UserIDs assigned to the specified colleciton.
    #   @return [Integer]
    #
    class DescribeCollectionResponse < Struct.new(
      :face_count,
      :face_model_version,
      :collection_arn,
      :creation_timestamp,
      :user_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that you want to
    #   describe.
    #   @return [String]
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_description
    #   The description for the dataset.
    #   @return [Types::DatasetDescription]
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project that contains the
    #   models you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] version_names
    #   A list of model version names that you want to describe. You can add
    #   up to 10 model version names to the list. If you don't specify a
    #   value, all model descriptions are returned. A version name is part
    #   of a model (ProjectVersion) ARN. For example,
    #   `my-model.2020-01-21T09.10.15` is the version name in the following
    #   ARN.
    #   `arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/my-model.2020-01-21T09.10.15/1234567890123`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #   @return [Integer]
    #
    class DescribeProjectVersionsRequest < Struct.new(
      :project_arn,
      :version_names,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_version_descriptions
    #   A list of model descriptions. The list is sorted by the creation
    #   date and time of the model versions, latest to earliest.
    #   @return [Array<Types::ProjectVersionDescription>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    class DescribeProjectVersionsResponse < Struct.new(
      :project_version_descriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] project_names
    #   A list of the projects that you want Amazon Rekognition Custom
    #   Labels to describe. If you don't specify a value, the response
    #   includes descriptions for all the projects in your AWS account.
    #   @return [Array<String>]
    #
    class DescribeProjectsRequest < Struct.new(
      :next_token,
      :max_results,
      :project_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_descriptions
    #   A list of project descriptions. The list is sorted by the date and
    #   time the projects are created.
    #   @return [Array<Types::ProjectDescription>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    class DescribeProjectsResponse < Struct.new(
      :project_descriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the stream processor for which you want information.
    #   @return [String]
    #
    class DescribeStreamProcessorRequest < Struct.new(
      :name)
      SENSITIVE = []
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
    #   Input parameters used in a streaming video analyzed by a stream
    #   processor. You can use `FaceSearch` to recognize faces in a
    #   streaming video, or you can use `ConnectedHome` to detect labels.
    #   @return [Types::StreamProcessorSettings]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon Simple Notification Service topic to which Amazon
    #   Rekognition publishes the object detection results and completion
    #   status of a video analysis operation.
    #
    #   Amazon Rekognition publishes a notification the first time an object
    #   of interest or a person is detected in the video stream. For
    #   example, if Amazon Rekognition detects a person at second 2, a pet
    #   at second 4, and a person again at second 5, Amazon Rekognition
    #   sends 2 object class detected notifications, one for a person at
    #   second 2 and one for a pet at second 4.
    #
    #   Amazon Rekognition also publishes an an end-of-session notification
    #   with a summary when the stream processing session is complete.
    #   @return [Types::StreamProcessorNotificationChannel]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier for your AWS Key Management Service key (AWS KMS
    #   key). This is an optional parameter for label detection stream
    #   processors.
    #   @return [String]
    #
    # @!attribute [rw] regions_of_interest
    #   Specifies locations in the frames where Amazon Rekognition checks
    #   for objects or people. This is an optional parameter for label
    #   detection stream processors.
    #   @return [Array<Types::RegionOfInterest>]
    #
    # @!attribute [rw] data_sharing_preference
    #   Shows whether you are sharing data with Rekognition to improve model
    #   performance. You can choose this option at the account level or on a
    #   per-stream basis. Note that if you opt out at the account level this
    #   setting is ignored on individual streams.
    #   @return [Types::StreamProcessorDataSharingPreference]
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
      :settings,
      :notification_channel,
      :kms_key_id,
      :regions_of_interest,
      :data_sharing_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_version_arn
    #   The ARN of the model version that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   Provides the input image either as bytes or an S3 object.
    #
    #   You pass image bytes to an Amazon Rekognition API operation by using
    #   the `Bytes` property. For example, you would use the `Bytes`
    #   property to pass an image loaded from a local file system. Image
    #   bytes passed by using the `Bytes` property must be base64-encoded.
    #   Your code may not need to encode image bytes if you are using an AWS
    #   SDK to call Amazon Rekognition API operations.
    #
    #   For more information, see Analyzing an Image Loaded from a Local
    #   File System in the Amazon Rekognition Developer Guide.
    #
    #   You pass images stored in an S3 bucket to an Amazon Rekognition API
    #   operation by using the `S3Object` property. Images stored in an S3
    #   bucket do not need to be base64-encoded.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   If you use the AWS CLI to call Amazon Rekognition operations,
    #   passing image bytes using the Bytes property is not supported. You
    #   must first upload the image to an Amazon S3 bucket and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see How
    #   Amazon Rekognition works with IAM in the Amazon Rekognition
    #   Developer Guide.
    #   @return [Types::Image]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results you want the service to return in the
    #   response. The service returns the specified number of highest
    #   confidence labels ranked from highest confidence to lowest.
    #   @return [Integer]
    #
    # @!attribute [rw] min_confidence
    #   Specifies the minimum confidence level for the labels to return.
    #   `DetectCustomLabels` doesn't return any labels with a confidence
    #   value that's lower than this specified value. If you specify a
    #   value of 0, `DetectCustomLabels` returns all labels, regardless of
    #   the assumed threshold applied to each label. If you don't specify a
    #   value for `MinConfidence`, `DetectCustomLabels` returns labels based
    #   on the assumed threshold of each label.
    #   @return [Float]
    #
    class DetectCustomLabelsRequest < Struct.new(
      :project_version_arn,
      :image,
      :max_results,
      :min_confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_labels
    #   An array of custom labels detected in the input image.
    #   @return [Array<Types::CustomLabel>]
    #
    class DetectCustomLabelsResponse < Struct.new(
      :custom_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
    #   @return [Types::Image]
    #
    # @!attribute [rw] attributes
    #   An array of facial attributes you want to be returned. A `DEFAULT`
    #   subset of facial attributes - `BoundingBox`, `Confidence`, `Pose`,
    #   `Quality`, and `Landmarks` - will always be returned. You can
    #   request for specific facial attributes (in addition to the default
    #   list) - by using \[`"DEFAULT", "FACE_OCCLUDED"`\] or just
    #   \[`"FACE_OCCLUDED"`\]. You can request for all facial attributes by
    #   using \[`"ALL"]`. Requesting more attributes may increase response
    #   time.
    #
    #   If you provide both, `["ALL", "DEFAULT"]`, the service uses a
    #   logical "AND" operator to determine which attributes to return (in
    #   this case, all attributes).
    #   @return [Array<String>]
    #
    class DetectFacesRequest < Struct.new(
      :image,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] face_details
    #   Details of each face found in the image.
    #   @return [Array<Types::FaceDetail>]
    #
    # @!attribute [rw] orientation_correction
    #   The value of `OrientationCorrection` is always null.
    #
    #   If the input image is in .jpeg format, it might contain exchangeable
    #   image file format (Exif) metadata that includes the image's
    #   orientation. Amazon Rekognition uses this orientation information to
    #   perform image correction. The bounding box coordinates are
    #   translated to represent object locations after the orientation
    #   information in the Exif metadata is used to correct the image
    #   orientation. Images in .png format don't contain Exif metadata.
    #
    #   Amazon Rekognition doesn’t perform image correction for images in
    #   .png format and .jpeg images without orientation information in the
    #   image Exif metadata. The bounding box coordinates aren't translated
    #   and represent the object locations before the image is rotated.
    #   @return [String]
    #
    class DetectFacesResponse < Struct.new(
      :face_details,
      :orientation_correction)
      SENSITIVE = []
      include Aws::Structure
    end

    # The background of the image with regard to image quality and dominant
    # colors.
    #
    # @!attribute [rw] quality
    #   The quality of the image background as defined by brightness and
    #   sharpness.
    #   @return [Types::DetectLabelsImageQuality]
    #
    # @!attribute [rw] dominant_colors
    #   The dominant colors found in the background of an image, defined
    #   with RGB values, CSS color name, simplified color name, and
    #   PixelPercentage (the percentage of image pixels that have a
    #   particular color).
    #   @return [Array<Types::DominantColor>]
    #
    class DetectLabelsImageBackground < Struct.new(
      :quality,
      :dominant_colors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The foreground of the image with regard to image quality and dominant
    # colors.
    #
    # @!attribute [rw] quality
    #   The quality of the image foreground as defined by brightness and
    #   sharpness.
    #   @return [Types::DetectLabelsImageQuality]
    #
    # @!attribute [rw] dominant_colors
    #   The dominant colors found in the foreground of an image, defined
    #   with RGB values, CSS color name, simplified color name, and
    #   PixelPercentage (the percentage of image pixels that have a
    #   particular color).
    #   @return [Array<Types::DominantColor>]
    #
    class DetectLabelsImageForeground < Struct.new(
      :quality,
      :dominant_colors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the quality and dominant colors of an input image.
    # Quality and color information is returned for the entire image,
    # foreground, and background.
    #
    # @!attribute [rw] quality
    #   Information about the quality of the image foreground as defined by
    #   brightness, sharpness, and contrast. The higher the value the
    #   greater the brightness, sharpness, and contrast respectively.
    #   @return [Types::DetectLabelsImageQuality]
    #
    # @!attribute [rw] dominant_colors
    #   Information about the dominant colors found in an image, described
    #   with RGB values, CSS color name, simplified color name, and
    #   PixelPercentage (the percentage of image pixels that have a
    #   particular color).
    #   @return [Array<Types::DominantColor>]
    #
    # @!attribute [rw] foreground
    #   Information about the properties of an image’s foreground, including
    #   the foreground’s quality and dominant colors, including the quality
    #   and dominant colors of the image.
    #   @return [Types::DetectLabelsImageForeground]
    #
    # @!attribute [rw] background
    #   Information about the properties of an image’s background, including
    #   the background’s quality and dominant colors, including the quality
    #   and dominant colors of the image.
    #   @return [Types::DetectLabelsImageBackground]
    #
    class DetectLabelsImageProperties < Struct.new(
      :quality,
      :dominant_colors,
      :foreground,
      :background)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the IMAGE\_PROPERTIES feature type.
    #
    # @!attribute [rw] max_dominant_colors
    #   The maximum number of dominant colors to return when detecting
    #   labels in an image. The default value is 10.
    #   @return [Integer]
    #
    class DetectLabelsImagePropertiesSettings < Struct.new(
      :max_dominant_colors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The quality of an image provided for label detection, with regard to
    # brightness, sharpness, and contrast.
    #
    # @!attribute [rw] brightness
    #   The brightness of an image provided for label detection.
    #   @return [Float]
    #
    # @!attribute [rw] sharpness
    #   The sharpness of an image provided for label detection.
    #   @return [Float]
    #
    # @!attribute [rw] contrast
    #   The contrast of an image provided for label detection.
    #   @return [Float]
    #
    class DetectLabelsImageQuality < Struct.new(
      :brightness,
      :sharpness,
      :contrast)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing image
    #   bytes is not supported. Images stored in an S3 Bucket do not need to
    #   be base64-encoded.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
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
    #   with a confidence values greater than or equal to 55 percent.
    #   @return [Float]
    #
    # @!attribute [rw] features
    #   A list of the types of analysis to perform. Specifying
    #   GENERAL\_LABELS uses the label detection feature, while specifying
    #   IMAGE\_PROPERTIES returns information regarding image color and
    #   quality. If no option is specified GENERAL\_LABELS is used by
    #   default.
    #   @return [Array<String>]
    #
    # @!attribute [rw] settings
    #   A list of the filters to be applied to returned detected labels and
    #   image properties. Specified filters can be inclusive, exclusive, or
    #   a combination of both. Filters can be used for individual labels or
    #   label categories. The exact label names or label categories must be
    #   supplied. For a full list of labels and label categories, see
    #   [Detecting labels][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/rekognition/latest/dg/labels.html
    #   @return [Types::DetectLabelsSettings]
    #
    class DetectLabelsRequest < Struct.new(
      :image,
      :max_labels,
      :min_confidence,
      :features,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] labels
    #   An array of labels for the real-world objects detected.
    #   @return [Array<Types::Label>]
    #
    # @!attribute [rw] orientation_correction
    #   The value of `OrientationCorrection` is always null.
    #
    #   If the input image is in .jpeg format, it might contain exchangeable
    #   image file format (Exif) metadata that includes the image's
    #   orientation. Amazon Rekognition uses this orientation information to
    #   perform image correction. The bounding box coordinates are
    #   translated to represent object locations after the orientation
    #   information in the Exif metadata is used to correct the image
    #   orientation. Images in .png format don't contain Exif metadata.
    #
    #   Amazon Rekognition doesn’t perform image correction for images in
    #   .png format and .jpeg images without orientation information in the
    #   image Exif metadata. The bounding box coordinates aren't translated
    #   and represent the object locations before the image is rotated.
    #   @return [String]
    #
    # @!attribute [rw] label_model_version
    #   Version number of the label detection model that was used to detect
    #   labels.
    #   @return [String]
    #
    # @!attribute [rw] image_properties
    #   Information about the properties of the input image, such as
    #   brightness, sharpness, contrast, and dominant colors.
    #   @return [Types::DetectLabelsImageProperties]
    #
    class DetectLabelsResponse < Struct.new(
      :labels,
      :orientation_correction,
      :label_model_version,
      :image_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the DetectLabels request. Settings can include filters
    # for both GENERAL\_LABELS and IMAGE\_PROPERTIES. GENERAL\_LABELS
    # filters can be inclusive or exclusive and applied to individual labels
    # or label categories. IMAGE\_PROPERTIES filters allow specification of
    # a maximum number of dominant colors.
    #
    # @!attribute [rw] general_labels
    #   Contains the specified filters for GENERAL\_LABELS.
    #   @return [Types::GeneralLabelsSettings]
    #
    # @!attribute [rw] image_properties
    #   Contains the chosen number of maximum dominant colors in an image.
    #   @return [Types::DetectLabelsImagePropertiesSettings]
    #
    class DetectLabelsSettings < Struct.new(
      :general_labels,
      :image_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
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
    # @!attribute [rw] human_loop_config
    #   Sets up the configuration for human evaluation, including the
    #   FlowDefinition the image will be sent to.
    #   @return [Types::HumanLoopConfig]
    #
    class DetectModerationLabelsRequest < Struct.new(
      :image,
      :min_confidence,
      :human_loop_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] moderation_labels
    #   Array of detected Moderation labels and the time, in milliseconds
    #   from the start of the video, they were detected.
    #   @return [Array<Types::ModerationLabel>]
    #
    # @!attribute [rw] moderation_model_version
    #   Version number of the moderation detection model that was used to
    #   detect unsafe content.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_activation_output
    #   Shows the results of the human in the loop evaluation.
    #   @return [Types::HumanLoopActivationOutput]
    #
    class DetectModerationLabelsResponse < Struct.new(
      :moderation_labels,
      :moderation_model_version,
      :human_loop_activation_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   The image in which you want to detect PPE on detected persons. The
    #   image can be passed as image bytes or you can reference an image
    #   stored in an Amazon S3 bucket.
    #   @return [Types::Image]
    #
    # @!attribute [rw] summarization_attributes
    #   An array of PPE types that you want to summarize.
    #   @return [Types::ProtectiveEquipmentSummarizationAttributes]
    #
    class DetectProtectiveEquipmentRequest < Struct.new(
      :image,
      :summarization_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protective_equipment_model_version
    #   The version number of the PPE detection model used to detect PPE in
    #   the image.
    #   @return [String]
    #
    # @!attribute [rw] persons
    #   An array of persons detected in the image (including persons not
    #   wearing PPE).
    #   @return [Array<Types::ProtectiveEquipmentPerson>]
    #
    # @!attribute [rw] summary
    #   Summary information for the types of PPE specified in the
    #   `SummarizationAttributes` input parameter.
    #   @return [Types::ProtectiveEquipmentSummary]
    #
    class DetectProtectiveEquipmentResponse < Struct.new(
      :protective_equipment_model_version,
      :persons,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of optional parameters that you can use to set the criteria that
    # the text must meet to be included in your response. `WordFilter` looks
    # at a word’s height, width, and minimum confidence. `RegionOfInterest`
    # lets you set a specific region of the image to look for text in.
    #
    # @!attribute [rw] word_filter
    #   A set of parameters that allow you to filter out certain results
    #   from your returned results.
    #   @return [Types::DetectionFilter]
    #
    # @!attribute [rw] regions_of_interest
    #   A Filter focusing on a certain area of the image. Uses a
    #   `BoundingBox` object to set the region of the image.
    #   @return [Array<Types::RegionOfInterest>]
    #
    class DetectTextFilters < Struct.new(
      :word_filter,
      :regions_of_interest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an Amazon S3 object. If
    #   you use the AWS CLI to call Amazon Rekognition operations, you
    #   can't pass image bytes.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
    #   @return [Types::Image]
    #
    # @!attribute [rw] filters
    #   Optional parameters that let you set the criteria that the text must
    #   meet to be included in your response.
    #   @return [Types::DetectTextFilters]
    #
    class DetectTextRequest < Struct.new(
      :image,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] text_detections
    #   An array of text that was detected in the input image.
    #   @return [Array<Types::TextDetection>]
    #
    # @!attribute [rw] text_model_version
    #   The model version used to detect text.
    #   @return [String]
    #
    class DetectTextResponse < Struct.new(
      :text_detections,
      :text_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of parameters that allow you to filter out certain results from
    # your returned results.
    #
    # @!attribute [rw] min_confidence
    #   Sets the confidence of word detection. Words with detection
    #   confidence below this will be excluded from the result. Values
    #   should be between 0 and 100. The default MinConfidence is 80.
    #   @return [Float]
    #
    # @!attribute [rw] min_bounding_box_height
    #   Sets the minimum height of the word bounding box. Words with
    #   bounding box heights lesser than this value will be excluded from
    #   the result. Value is relative to the video frame height.
    #   @return [Float]
    #
    # @!attribute [rw] min_bounding_box_width
    #   Sets the minimum width of the word bounding box. Words with bounding
    #   boxes widths lesser than this value will be excluded from the
    #   result. Value is relative to the video frame width.
    #   @return [Float]
    #
    class DetectionFilter < Struct.new(
      :min_confidence,
      :min_bounding_box_height,
      :min_bounding_box_width)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   The ID of an existing collection containing the UserID.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   ID for the existing UserID.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the request to
    #   `DisassociateFaces`. If you use the same token with multiple
    #   `DisassociateFaces` requests, the same response is returned. Use
    #   ClientRequestToken to prevent the same request from being processed
    #   more than once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] face_ids
    #   An array of face IDs to disassociate from the UserID.
    #   @return [Array<String>]
    #
    class DisassociateFacesRequest < Struct.new(
      :collection_id,
      :user_id,
      :client_request_token,
      :face_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disassociated_faces
    #   An array of DissociatedFace objects containing FaceIds that are
    #   successfully disassociated with the UserID is returned. Returned if
    #   the DisassociatedFaces action is successful.
    #   @return [Array<Types::DisassociatedFace>]
    #
    # @!attribute [rw] unsuccessful_face_disassociations
    #   An array of UnsuccessfulDisassociation objects containing FaceIds
    #   that are not successfully associated, along with the reasons for the
    #   failure to associate. Returned if the DisassociateFaces action is
    #   successful.
    #   @return [Array<Types::UnsuccessfulFaceDisassociation>]
    #
    # @!attribute [rw] user_status
    #   The status of an update made to a User. Reflects if the User has
    #   been updated for every requested change.
    #   @return [String]
    #
    class DisassociateFacesResponse < Struct.new(
      :disassociated_faces,
      :unsuccessful_face_disassociations,
      :user_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides face metadata for the faces that are disassociated from a
    # specific UserID.
    #
    # @!attribute [rw] face_id
    #   Unique identifier assigned to the face.
    #   @return [String]
    #
    class DisassociatedFace < Struct.new(
      :face_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A training dataset or a test dataset used in a dataset distribution
    # operation. For more information, see DistributeDatasetEntries.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset that you want to use.
    #   @return [String]
    #
    class DistributeDataset < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datasets
    #   The ARNS for the training dataset and test dataset that you want to
    #   use. The datasets must belong to the same project. The test dataset
    #   must be empty.
    #   @return [Array<Types::DistributeDataset>]
    #
    class DistributeDatasetEntriesRequest < Struct.new(
      :datasets)
      SENSITIVE = []
      include Aws::Structure
    end

    class DistributeDatasetEntriesResponse < Aws::EmptyStructure; end

    # A description of the dominant colors in an image.
    #
    # @!attribute [rw] red
    #   The Red RGB value for a dominant color.
    #   @return [Integer]
    #
    # @!attribute [rw] blue
    #   The Blue RGB value for a dominant color.
    #   @return [Integer]
    #
    # @!attribute [rw] green
    #   The Green RGB value for a dominant color.
    #   @return [Integer]
    #
    # @!attribute [rw] hex_code
    #   The Hex code equivalent of the RGB values for a dominant color.
    #   @return [String]
    #
    # @!attribute [rw] css_color
    #   The CSS color name of a dominant color.
    #   @return [String]
    #
    # @!attribute [rw] simplified_color
    #   One of 12 simplified color names applied to a dominant color.
    #   @return [String]
    #
    # @!attribute [rw] pixel_percent
    #   The percentage of image pixels that have a given dominant color.
    #   @return [Float]
    #
    class DominantColor < Struct.new(
      :red,
      :blue,
      :green,
      :hex_code,
      :css_color,
      :simplified_color,
      :pixel_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # The emotions that appear to be expressed on the face, and the
    # confidence level in the determination. The API is only making a
    # determination of the physical appearance of a person's face. It is
    # not a determination of the person’s internal emotional state and
    # should not be used in such a way. For example, a person pretending to
    # have a sad face might not be sad emotionally.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an item of Personal Protective Equipment (PPE)
    # detected by DetectProtectiveEquipment. For more information, see
    # DetectProtectiveEquipment.
    #
    # @!attribute [rw] bounding_box
    #   A bounding box surrounding the item of detected PPE.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] confidence
    #   The confidence that Amazon Rekognition has that the bounding box
    #   (`BoundingBox`) contains an item of PPE.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The type of detected PPE.
    #   @return [String]
    #
    # @!attribute [rw] covers_body_part
    #   Information about the body part covered by the detected PPE.
    #   @return [Types::CoversBodyPart]
    #
    class EquipmentDetection < Struct.new(
      :bounding_box,
      :confidence,
      :type,
      :covers_body_part)
      SENSITIVE = []
      include Aws::Structure
    end

    # The evaluation results for the training of a model.
    #
    # @!attribute [rw] f1_score
    #   The F1 score for the evaluation of all labels. The F1 score metric
    #   evaluates the overall precision and recall performance of the model
    #   as a single value. A higher value indicates better precision and
    #   recall performance. A lower score indicates that precision, recall,
    #   or both are performing poorly.
    #   @return [Float]
    #
    # @!attribute [rw] summary
    #   The S3 bucket that contains the training summary.
    #   @return [Types::Summary]
    #
    class EvaluationResult < Struct.new(
      :f1_score,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the direction the eyes are gazing in (independent of the
    # head pose) as determined by its pitch and yaw.
    #
    # @!attribute [rw] yaw
    #   Value representing eye direction on the yaw axis.
    #   @return [Float]
    #
    # @!attribute [rw] pitch
    #   Value representing eye direction on the pitch axis.
    #   @return [Float]
    #
    # @!attribute [rw] confidence
    #   The confidence that the service has in its predicted eye direction.
    #   @return [Float]
    #
    class EyeDirection < Struct.new(
      :yaw,
      :pitch,
      :confidence)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] index_faces_model_version
    #   The version of the face detect and storage model that was used when
    #   indexing the face vector.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Unique identifier assigned to the user.
    #   @return [String]
    #
    class Face < Struct.new(
      :face_id,
      :bounding_box,
      :image_id,
      :external_image_id,
      :confidence,
      :index_faces_model_version,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure containing attributes of the face that the algorithm
    # detected.
    #
    # A `FaceDetail` object contains either the default facial attributes or
    # all facial attributes. The default attributes are `BoundingBox`,
    # `Confidence`, `Landmarks`, `Pose`, and `Quality`.
    #
    # GetFaceDetection is the only Amazon Rekognition Video stored video
    # operation that can return a `FaceDetail` object with all attributes.
    # To specify which attributes to return, use the `FaceAttributes` input
    # parameter for StartFaceDetection. The following Amazon Rekognition
    # Video operations return only the default attributes. The corresponding
    # Start operations don't have a `FaceAttributes` input parameter:
    #
    # * GetCelebrityRecognition
    #
    # * GetPersonTracking
    #
    # * GetFaceSearch
    #
    # The Amazon Rekognition Image DetectFaces and IndexFaces operations can
    # return all facial attributes. To specify which attributes to return,
    # use the `Attributes` input parameter for `DetectFaces`. For
    # `IndexFaces`, use the `DetectAttributes` input parameter.
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
    #   The predicted gender of a detected face.
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
    #   The emotions that appear to be expressed on the face, and the
    #   confidence level in the determination. The API is only making a
    #   determination of the physical appearance of a person's face. It is
    #   not a determination of the person’s internal emotional state and
    #   should not be used in such a way. For example, a person pretending
    #   to have a sad face might not be sad emotionally.
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
    # @!attribute [rw] face_occluded
    #   `FaceOccluded` should return "true" with a high confidence score
    #   if a detected face’s eyes, nose, and mouth are partially captured or
    #   if they are covered by masks, dark sunglasses, cell phones, hands,
    #   or other objects. `FaceOccluded` should return "false" with a high
    #   confidence score if common occurrences that do not impact face
    #   verification are detected, such as eye glasses, lightly tinted
    #   sunglasses, strands of hair, and others.
    #   @return [Types::FaceOccluded]
    #
    # @!attribute [rw] eye_direction
    #   Indicates the direction the eyes are gazing in, as defined by pitch
    #   and yaw.
    #   @return [Types::EyeDirection]
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
      :confidence,
      :face_occluded,
      :eye_direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a face detected in a video analysis request and the
    # time the face was detected in the video.
    #
    # @!attribute [rw] timestamp
    #   Time, in milliseconds from the start of the video, that the face was
    #   detected. Note that `Timestamp` is not guaranteed to be accurate to
    #   the individual frame where the face first appears.
    #   @return [Integer]
    #
    # @!attribute [rw] face
    #   The face properties for the detected face.
    #   @return [Types::FaceDetail]
    #
    class FaceDetection < Struct.new(
      :timestamp,
      :face)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # `FaceOccluded` should return "true" with a high confidence score if
    # a detected face’s eyes, nose, and mouth are partially captured or if
    # they are covered by masks, dark sunglasses, cell phones, hands, or
    # other objects. `FaceOccluded` should return "false" with a high
    # confidence score if common occurrences that do not impact face
    # verification are detected, such as eye glasses, lightly tinted
    # sunglasses, strands of hair, and others.
    #
    # You can use `FaceOccluded` to determine if an obstruction on a face
    # negatively impacts using the image for face matching.
    #
    # @!attribute [rw] value
    #   True if a detected face’s eyes, nose, and mouth are partially
    #   captured or if they are covered by masks, dark sunglasses, cell
    #   phones, hands, or other objects. False if common occurrences that do
    #   not impact face verification are detected, such as eye glasses,
    #   lightly tinted sunglasses, strands of hair, and others.
    #   @return [Boolean]
    #
    # @!attribute [rw] confidence
    #   The confidence that the service has detected the presence of a face
    #   occlusion.
    #   @return [Float]
    #
    class FaceOccluded < Struct.new(
      :value,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing both the face metadata (stored in the backend
    # database), and facial attributes that are detected but aren't stored
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Input face recognition parameters for an Amazon Rekognition stream
    # processor. Includes the collection to use for face recognition and the
    # face attributes to detect. Defining the settings is required in the
    # request parameter for CreateStreamProcessor.
    #
    # @!attribute [rw] collection_id
    #   The ID of a collection that contains faces that you want to search
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] face_match_threshold
    #   Minimum face match confidence score that must be met to return a
    #   result for a recognized face. The default is 80. 0 is the lowest
    #   confidence. 100 is the highest confidence. Values between 0 and 100
    #   are accepted, and values lower than 80 are set to 80.
    #   @return [Float]
    #
    class FaceSearchSettings < Struct.new(
      :collection_id,
      :face_match_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # The predicted gender of a detected face.
    #
    # Amazon Rekognition makes gender binary (male/female) predictions based
    # on the physical appearance of a face in a particular image. This kind
    # of prediction is not designed to categorize a person’s gender
    # identity, and you shouldn't use Amazon Rekognition to make such a
    # determination. For example, a male actor wearing a long-haired wig and
    # earrings for a role might be predicted as female.
    #
    # Using Amazon Rekognition to make gender binary predictions is best
    # suited for use cases where aggregate gender distribution statistics
    # need to be analyzed without identifying specific users. For example,
    # the percentage of female users compared to male users on a social
    # media platform.
    #
    # We don't recommend using gender binary predictions to make decisions
    # that impact an individual's rights, privacy, or access to services.
    #
    # @!attribute [rw] value
    #   The predicted gender of the face.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Level of confidence in the prediction.
    #   @return [Float]
    #
    class Gender < Struct.new(
      :value,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains filters for the object labels returned by DetectLabels.
    # Filters can be inclusive, exclusive, or a combination of both and can
    # be applied to individual labels or entire label categories. To see a
    # list of label categories, see [Detecting Labels][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/rekognition/latest/dg/labels.html
    #
    # @!attribute [rw] label_inclusion_filters
    #   The labels that should be included in the return from DetectLabels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] label_exclusion_filters
    #   The labels that should be excluded from the return from
    #   DetectLabels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] label_category_inclusion_filters
    #   The label categories that should be included in the return from
    #   DetectLabels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] label_category_exclusion_filters
    #   The label categories that should be excluded from the return from
    #   DetectLabels.
    #   @return [Array<String>]
    #
    class GeneralLabelsSettings < Struct.new(
      :label_inclusion_filters,
      :label_exclusion_filters,
      :label_category_inclusion_filters,
      :label_category_exclusion_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about where an object (DetectCustomLabels) or text
    # (DetectText) is located on an image.
    #
    # @!attribute [rw] bounding_box
    #   An axis-aligned coarse representation of the detected item's
    #   location on the image.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] polygon
    #   Within the bounding box, a fine-grained polygon around the detected
    #   item.
    #   @return [Array<Types::Point>]
    #
    class Geometry < Struct.new(
      :bounding_box,
      :polygon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID for the celebrity. You get the celebrity ID from a call to
    #   the RecognizeCelebrities operation, which recognizes celebrities in
    #   an image.
    #   @return [String]
    #
    class GetCelebrityInfoRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @!attribute [rw] known_gender
    #   Retrieves the known gender for the celebrity.
    #   @return [Types::KnownGender]
    #
    class GetCelebrityInfoResponse < Struct.new(
      :urls,
      :name,
      :known_gender)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    # @!attribute [rw] job_id
    #   Job identifier for the celebrity recognition operation for which you
    #   want to obtain results. The job identifer is returned by an initial
    #   call to StartCelebrityRecognition.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] job_tag
    #   A job identifier specified in the call to StartCelebrityRecognition
    #   and returned in the job completion notification sent to your Amazon
    #   Simple Notification Service topic.
    #   @return [String]
    #
    class GetCelebrityRecognitionResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :celebrities,
      :job_id,
      :video,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the inappropriate, unwanted, or offensive content
    #   moderation job. Use `JobId` to identify the job in a subsequent call
    #   to `GetContentModeration`.
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
    # @!attribute [rw] aggregate_by
    #   Defines how to aggregate results of the StartContentModeration
    #   request. Default aggregation option is TIMESTAMPS. SEGMENTS mode
    #   aggregates moderation labels over time.
    #   @return [String]
    #
    class GetContentModerationRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by,
      :aggregate_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a content moderation request, including the
    # SortBy and AggregateBy options.
    #
    # @!attribute [rw] sort_by
    #   The sorting method chosen for a GetContentModeration request.
    #   @return [String]
    #
    # @!attribute [rw] aggregate_by
    #   The aggregation method chosen for a GetContentModeration request.
    #   @return [String]
    #
    class GetContentModerationRequestMetadata < Struct.new(
      :sort_by,
      :aggregate_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The current status of the content moderation analysis job.
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
    #   The detected inappropriate, unwanted, or offensive content
    #   moderation labels and the time(s) they were detected.
    #   @return [Array<Types::ContentModerationDetection>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of content moderation labels.
    #   @return [String]
    #
    # @!attribute [rw] moderation_model_version
    #   Version number of the moderation detection model that was used to
    #   detect inappropriate, unwanted, or offensive content.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Job identifier for the content moderation operation for which you
    #   want to obtain results. The job identifer is returned by an initial
    #   call to StartContentModeration.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] job_tag
    #   A job identifier specified in the call to StartContentModeration and
    #   returned in the job completion notification sent to your Amazon
    #   Simple Notification Service topic.
    #   @return [String]
    #
    # @!attribute [rw] get_request_metadata
    #   Information about the paramters used when getting a response.
    #   Includes information on aggregation and sorting methods.
    #   @return [Types::GetContentModerationRequestMetadata]
    #
    class GetContentModerationResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :moderation_labels,
      :next_token,
      :moderation_model_version,
      :job_id,
      :video,
      :job_tag,
      :get_request_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    # @!attribute [rw] job_id
    #   Job identifier for the face detection operation for which you want
    #   to obtain results. The job identifer is returned by an initial call
    #   to StartFaceDetection.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] job_tag
    #   A job identifier specified in the call to StartFaceDetection and
    #   returned in the job completion notification sent to your Amazon
    #   Simple Notification Service topic.
    #   @return [String]
    #
    class GetFaceDetectionResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :faces,
      :job_id,
      :video,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   A unique 128-bit UUID. This is used to uniquely identify the session
    #   and also acts as an idempotency token for all operations associated
    #   with the session.
    #   @return [String]
    #
    class GetFaceLivenessSessionResultsRequest < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The sessionId for which this request was called.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Represents a status corresponding to the state of the session.
    #   Possible statuses are: CREATED, IN\_PROGRESS, SUCCEEDED, FAILED,
    #   EXPIRED.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Probabalistic confidence score for if the person in the given video
    #   was live, represented as a float value between 0 to 100.
    #   @return [Float]
    #
    # @!attribute [rw] reference_image
    #   A high-quality image from the Face Liveness video that can be used
    #   for face comparison or search. It includes a bounding box of the
    #   face and the Base64-encoded bytes that return an image. If the
    #   CreateFaceLivenessSession request included an OutputConfig argument,
    #   the image will be uploaded to an S3Object specified in the output
    #   configuration. In case the reference image is not returned, it's
    #   recommended to retry the Liveness check.
    #   @return [Types::AuditImage]
    #
    # @!attribute [rw] audit_images
    #   A set of images from the Face Liveness video that can be used for
    #   audit purposes. It includes a bounding box of the face and the
    #   Base64-encoded bytes that return an image. If the
    #   CreateFaceLivenessSession request included an OutputConfig argument,
    #   the image will be uploaded to an S3Object specified in the output
    #   configuration.
    #   @return [Array<Types::AuditImage>]
    #
    class GetFaceLivenessSessionResultsResponse < Struct.new(
      :session_id,
      :status,
      :confidence,
      :reference_image,
      :audit_images)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    #   An array of persons, PersonMatch, in the video whose face(s) match
    #   the face(s) in an Amazon Rekognition collection. It also includes
    #   time information for when persons are matched in the video. You
    #   specify the input collection in an initial call to
    #   `StartFaceSearch`. Each `Persons` element includes a time the person
    #   was matched, face match details (`FaceMatches`) for matching faces
    #   in the collection, and person information (`Person`) for the matched
    #   person.
    #   @return [Array<Types::PersonMatch>]
    #
    # @!attribute [rw] job_id
    #   Job identifier for the face search operation for which you want to
    #   obtain results. The job identifer is returned by an initial call to
    #   StartFaceSearch.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] job_tag
    #   A job identifier specified in the call to StartFaceSearch and
    #   returned in the job completion notification sent to your Amazon
    #   Simple Notification Service topic.
    #   @return [String]
    #
    class GetFaceSearchResponse < Struct.new(
      :job_status,
      :status_message,
      :next_token,
      :video_metadata,
      :persons,
      :job_id,
      :video,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] aggregate_by
    #   Defines how to aggregate the returned results. Results can be
    #   aggregated by timestamps or segments.
    #   @return [String]
    #
    class GetLabelDetectionRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :sort_by,
      :aggregate_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a label detection request, including the
    # SortBy and AggregateBy options.
    #
    # @!attribute [rw] sort_by
    #   The sorting method chosen for a GetLabelDetection request.
    #   @return [String]
    #
    # @!attribute [rw] aggregate_by
    #   The aggregation method chosen for a GetLabelDetection request.
    #   @return [String]
    #
    class GetLabelDetectionRequestMetadata < Struct.new(
      :sort_by,
      :aggregate_by)
      SENSITIVE = []
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
    # @!attribute [rw] label_model_version
    #   Version number of the label detection model that was used to detect
    #   labels.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Job identifier for the label detection operation for which you want
    #   to obtain results. The job identifer is returned by an initial call
    #   to StartLabelDetection.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] job_tag
    #   A job identifier specified in the call to StartLabelDetection and
    #   returned in the job completion notification sent to your Amazon
    #   Simple Notification Service topic.
    #   @return [String]
    #
    # @!attribute [rw] get_request_metadata
    #   Information about the paramters used when getting a response.
    #   Includes information on aggregation and sorting methods.
    #   @return [Types::GetLabelDetectionRequestMetadata]
    #
    class GetLabelDetectionResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :labels,
      :label_model_version,
      :job_id,
      :video,
      :job_tag,
      :get_request_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    #   An array of the persons detected in the video and the time(s) their
    #   path was tracked throughout the video. An array element will exist
    #   for each time a person's path is tracked.
    #   @return [Array<Types::PersonDetection>]
    #
    # @!attribute [rw] job_id
    #   Job identifier for the person tracking operation for which you want
    #   to obtain results. The job identifer is returned by an initial call
    #   to StartPersonTracking.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] job_tag
    #   A job identifier specified in the call to StartCelebrityRecognition
    #   and returned in the job completion notification sent to your Amazon
    #   Simple Notification Service topic.
    #   @return [String]
    #
    class GetPersonTrackingResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :next_token,
      :persons,
      :job_id,
      :video,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Job identifier for the text detection operation for which you want
    #   results returned. You get the job identifer from an initial call to
    #   `StartSegmentDetection`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of text.
    #   @return [String]
    #
    class GetSegmentDetectionRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   Current status of the segment detection job.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the job fails, `StatusMessage` provides a descriptive error
    #   message.
    #   @return [String]
    #
    # @!attribute [rw] video_metadata
    #   Currently, Amazon Rekognition Video returns a single object in the
    #   `VideoMetadata` array. The object contains information about the
    #   video stream in the input file that Amazon Rekognition Video chose
    #   to analyze. The `VideoMetadata` object includes the video codec,
    #   video format and other information. Video metadata is returned in
    #   each page of information returned by `GetSegmentDetection`.
    #   @return [Array<Types::VideoMetadata>]
    #
    # @!attribute [rw] audio_metadata
    #   An array of objects. There can be multiple audio streams. Each
    #   `AudioMetadata` object contains metadata for a single audio stream.
    #   Audio information in an `AudioMetadata` objects includes the audio
    #   codec, the number of audio channels, the duration of the audio
    #   stream, and the sample rate. Audio metadata is returned in each page
    #   of information returned by `GetSegmentDetection`.
    #   @return [Array<Types::AudioMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   labels to retrieve), Amazon Rekognition Video returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of text.
    #   @return [String]
    #
    # @!attribute [rw] segments
    #   An array of segments detected in a video. The array is sorted by the
    #   segment types (TECHNICAL\_CUE or SHOT) specified in the
    #   `SegmentTypes` input parameter of `StartSegmentDetection`. Within
    #   each segment type the array is sorted by timestamp values.
    #   @return [Array<Types::SegmentDetection>]
    #
    # @!attribute [rw] selected_segment_types
    #   An array containing the segment types requested in the call to
    #   `StartSegmentDetection`.
    #   @return [Array<Types::SegmentTypeInfo>]
    #
    # @!attribute [rw] job_id
    #   Job identifier for the segment detection operation for which you
    #   want to obtain results. The job identifer is returned by an initial
    #   call to StartSegmentDetection.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] job_tag
    #   A job identifier specified in the call to StartSegmentDetection and
    #   returned in the job completion notification sent to your Amazon
    #   Simple Notification Service topic.
    #   @return [String]
    #
    class GetSegmentDetectionResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :audio_metadata,
      :next_token,
      :segments,
      :selected_segment_types,
      :job_id,
      :video,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Job identifier for the text detection operation for which you want
    #   results returned. You get the job identifer from an initial call to
    #   `StartTextDetection`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   labels to retrieve), Amazon Rekognition Video returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of text.
    #   @return [String]
    #
    class GetTextDetectionRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   Current status of the text detection job.
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
    #   from a Amazon Rekognition video operation.
    #   @return [Types::VideoMetadata]
    #
    # @!attribute [rw] text_detections
    #   An array of text detected in the video. Each element contains the
    #   detected text, the time in milliseconds from the start of the video
    #   that the text was detected, and where it was detected on the screen.
    #   @return [Array<Types::TextDetectionResult>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the
    #   next set of text.
    #   @return [String]
    #
    # @!attribute [rw] text_model_version
    #   Version number of the text detection model that was used to detect
    #   text.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Job identifier for the text detection operation for which you want
    #   to obtain results. The job identifer is returned by an initial call
    #   to StartTextDetection.
    #   @return [String]
    #
    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] job_tag
    #   A job identifier specified in the call to StartTextDetection and
    #   returned in the job completion notification sent to your Amazon
    #   Simple Notification Service topic.
    #   @return [String]
    #
    class GetTextDetectionResponse < Struct.new(
      :job_status,
      :status_message,
      :video_metadata,
      :text_detections,
      :next_token,
      :text_model_version,
      :job_id,
      :video,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket that contains an Amazon Sagemaker Ground Truth format
    # manifest file.
    #
    # @!attribute [rw] s3_object
    #   Provides the S3 bucket name and object name.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see How
    #   Amazon Rekognition works with IAM in the Amazon Rekognition
    #   Developer Guide.
    #   @return [Types::S3Object]
    #
    class GroundTruthManifest < Struct.new(
      :s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Shows the results of the human in the loop evaluation. If there is no
    # HumanLoopArn, the input did not trigger human review.
    #
    # @!attribute [rw] human_loop_arn
    #   The Amazon Resource Name (ARN) of the HumanLoop created.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_activation_reasons
    #   Shows if and why human review was needed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] human_loop_activation_conditions_evaluation_results
    #   Shows the result of condition evaluations, including those
    #   conditions which activated a human review.
    #   @return [String]
    #
    class HumanLoopActivationOutput < Struct.new(
      :human_loop_arn,
      :human_loop_activation_reasons,
      :human_loop_activation_conditions_evaluation_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets up the flow definition the image will be sent to if one of the
    # conditions is met. You can also set certain attributes of the image
    # before review.
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human review used for this image. This should be
    #   kept unique within a region.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow definition. You can
    #   create a flow definition by using the Amazon Sagemaker
    #   [CreateFlowDefinition][1] Operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateFlowDefinition.html
    #   @return [String]
    #
    # @!attribute [rw] data_attributes
    #   Sets attributes of the input data.
    #   @return [Types::HumanLoopDataAttributes]
    #
    class HumanLoopConfig < Struct.new(
      :human_loop_name,
      :flow_definition_arn,
      :data_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to set attributes of the image. Currently, you can declare
    # an image as free of personally identifiable information.
    #
    # @!attribute [rw] content_classifiers
    #   Sets whether the input image is free of personally identifiable
    #   information.
    #   @return [Array<String>]
    #
    class HumanLoopDataAttributes < Struct.new(
      :content_classifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of in-progress human reviews you have has exceeded the
    # number allowed.
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    class HumanLoopQuotaExceededException < Struct.new(
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `ClientRequestToken` input parameter was reused with an operation,
    # but at least one of the other input parameters is different from the
    # previous call to the operation.
    #
    class IdempotentParameterMismatchException < Aws::EmptyStructure; end

    # Provides the input image either as bytes or an S3 object.
    #
    # You pass image bytes to an Amazon Rekognition API operation by using
    # the `Bytes` property. For example, you would use the `Bytes` property
    # to pass an image loaded from a local file system. Image bytes passed
    # by using the `Bytes` property must be base64-encoded. Your code may
    # not need to encode image bytes if you are using an AWS SDK to call
    # Amazon Rekognition API operations.
    #
    # For more information, see Analyzing an Image Loaded from a Local File
    # System in the Amazon Rekognition Developer Guide.
    #
    # You pass images stored in an S3 bucket to an Amazon Rekognition API
    # operation by using the `S3Object` property. Images stored in an S3
    # bucket do not need to be base64-encoded.
    #
    # The region for the S3 bucket containing the S3 object must match the
    # region you use for Amazon Rekognition operations.
    #
    # If you use the AWS CLI to call Amazon Rekognition operations, passing
    # image bytes using the Bytes property is not supported. You must first
    # upload the image to an Amazon S3 bucket and then call the operation
    # using the S3Object property.
    #
    # For Amazon Rekognition to process an S3 object, the user must have
    # permission to access the S3 object. For more information, see How
    # Amazon Rekognition works with IAM in the Amazon Rekognition Developer
    # Guide.
    #
    # @!attribute [rw] bytes
    #   Blob of image bytes up to 5 MBs. Note that the maximum image size
    #   you can pass to `DetectCustomLabels` is 4MB.
    #   @return [String]
    #
    # @!attribute [rw] s3_object
    #   Identifies an S3 object as the image source.
    #   @return [Types::S3Object]
    #
    class Image < Struct.new(
      :bytes,
      :s3_object)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The input image size exceeds the allowed limit. If you are calling
    # DetectProtectiveEquipment, the image size or resolution exceeds the
    # allowed limit. For more information, see Guidelines and quotas in
    # Amazon Rekognition in the Amazon Rekognition Developer Guide.
    #
    class ImageTooLargeException < Aws::EmptyStructure; end

    # @!attribute [rw] collection_id
    #   The ID of an existing collection to which you want to add the faces
    #   that are detected in the input images.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes isn't supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
    #   @return [Types::Image]
    #
    # @!attribute [rw] external_image_id
    #   The ID you want to assign to all the faces detected in the image.
    #   @return [String]
    #
    # @!attribute [rw] detection_attributes
    #   An array of facial attributes you want to be returned. A `DEFAULT`
    #   subset of facial attributes - `BoundingBox`, `Confidence`, `Pose`,
    #   `Quality`, and `Landmarks` - will always be returned. You can
    #   request for specific facial attributes (in addition to the default
    #   list) - by using `["DEFAULT", "FACE_OCCLUDED"]` or just
    #   `["FACE_OCCLUDED"]`. You can request for all facial attributes by
    #   using `["ALL"]`. Requesting more attributes may increase response
    #   time.
    #
    #   If you provide both, `["ALL", "DEFAULT"]`, the service uses a
    #   logical AND operator to determine which attributes to return (in
    #   this case, all attributes).
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_faces
    #   The maximum number of faces to index. The value of `MaxFaces` must
    #   be greater than or equal to 1. `IndexFaces` returns no more than 100
    #   detected faces in an image, even if you specify a larger value for
    #   `MaxFaces`.
    #
    #   If `IndexFaces` detects more faces than the value of `MaxFaces`, the
    #   faces with the lowest quality are filtered out first. If there are
    #   still more faces than the value of `MaxFaces`, the faces with the
    #   smallest bounding boxes are filtered out (up to the number that's
    #   needed to satisfy the value of `MaxFaces`). Information about the
    #   unindexed faces is available in the `UnindexedFaces` array.
    #
    #   The faces that are returned by `IndexFaces` are sorted by the
    #   largest face bounding box size to the smallest size, in descending
    #   order.
    #
    #   `MaxFaces` can be used with a collection associated with any version
    #   of the face model.
    #   @return [Integer]
    #
    # @!attribute [rw] quality_filter
    #   A filter that specifies a quality bar for how much filtering is done
    #   to identify faces. Filtered faces aren't indexed. If you specify
    #   `AUTO`, Amazon Rekognition chooses the quality bar. If you specify
    #   `LOW`, `MEDIUM`, or `HIGH`, filtering removes all faces that don’t
    #   meet the chosen quality bar. The default value is `AUTO`. The
    #   quality bar is based on a variety of common use cases. Low-quality
    #   detections can occur for a number of reasons. Some examples are an
    #   object that's misidentified as a face, a face that's too blurry,
    #   or a face with a pose that's too extreme to use. If you specify
    #   `NONE`, no filtering is performed.
    #
    #   To use quality filtering, the collection you are using must be
    #   associated with version 3 of the face model or higher.
    #   @return [String]
    #
    class IndexFacesRequest < Struct.new(
      :collection_id,
      :image,
      :external_image_id,
      :detection_attributes,
      :max_faces,
      :quality_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] face_records
    #   An array of faces detected and added to the collection. For more
    #   information, see Searching Faces in a Collection in the Amazon
    #   Rekognition Developer Guide.
    #   @return [Array<Types::FaceRecord>]
    #
    # @!attribute [rw] orientation_correction
    #   If your collection is associated with a face detection model that's
    #   later than version 3.0, the value of `OrientationCorrection` is
    #   always null and no orientation information is returned.
    #
    #   If your collection is associated with a face detection model that's
    #   version 3.0 or earlier, the following applies:
    #
    #   * If the input image is in .jpeg format, it might contain
    #     exchangeable image file format (Exif) metadata that includes the
    #     image's orientation. Amazon Rekognition uses this orientation
    #     information to perform image correction - the bounding box
    #     coordinates are translated to represent object locations after the
    #     orientation information in the Exif metadata is used to correct
    #     the image orientation. Images in .png format don't contain Exif
    #     metadata. The value of `OrientationCorrection` is null.
    #
    #   * If the image doesn't contain orientation information in its Exif
    #     metadata, Amazon Rekognition returns an estimated orientation
    #     (ROTATE\_0, ROTATE\_90, ROTATE\_180, ROTATE\_270). Amazon
    #     Rekognition doesn’t perform image correction for images. The
    #     bounding box coordinates aren't translated and represent the
    #     object locations before the image is rotated.
    #
    #   Bounding box information is returned in the `FaceRecords` array. You
    #   can get the version of the face detection model by calling
    #   DescribeCollection.
    #   @return [String]
    #
    # @!attribute [rw] face_model_version
    #   The version number of the face detection model that's associated
    #   with the input collection (`CollectionId`).
    #   @return [String]
    #
    # @!attribute [rw] unindexed_faces
    #   An array of faces that were detected in the image but weren't
    #   indexed. They weren't indexed because the quality filter identified
    #   them as low quality, or the `MaxFaces` request parameter filtered
    #   them out. To use the quality filter, you specify the `QualityFilter`
    #   request parameter.
    #   @return [Array<Types::UnindexedFace>]
    #
    class IndexFacesResponse < Struct.new(
      :face_records,
      :orientation_correction,
      :face_model_version,
      :unindexed_faces)
      SENSITIVE = []
      include Aws::Structure
    end

    # An instance of a label returned by Amazon Rekognition Image
    # (DetectLabels) or by Amazon Rekognition Video (GetLabelDetection).
    #
    # @!attribute [rw] bounding_box
    #   The position of the label instance on the image.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] confidence
    #   The confidence that Amazon Rekognition has in the accuracy of the
    #   bounding box.
    #   @return [Float]
    #
    # @!attribute [rw] dominant_colors
    #   The dominant colors found in an individual instance of a label.
    #   @return [Array<Types::DominantColor>]
    #
    class Instance < Struct.new(
      :bounding_box,
      :confidence,
      :dominant_colors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Rekognition experienced a service issue. Try your call again.
    #
    class InternalServerError < Aws::EmptyStructure; end

    # The provided image format is not supported.
    #
    class InvalidImageFormatException < Aws::EmptyStructure; end

    # Pagination token in the request is not valid.
    #
    class InvalidPaginationTokenException < Aws::EmptyStructure; end

    # Input parameter violated a constraint. Validate your parameter before
    # calling the API operation again.
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # The supplied revision id for the project policy is invalid.
    #
    class InvalidPolicyRevisionIdException < Aws::EmptyStructure; end

    # Amazon Rekognition is unable to access the S3 object specified in the
    # request.
    #
    class InvalidS3ObjectException < Aws::EmptyStructure; end

    # The Kinesis data stream Amazon Rekognition to which the analysis
    # results of a Amazon Rekognition stream processor are streamed. For
    # more information, see CreateStreamProcessor in the Amazon Rekognition
    # Developer Guide.
    #
    # @!attribute [rw] arn
    #   ARN of the output Amazon Kinesis Data Streams stream.
    #   @return [String]
    #
    class KinesisDataStream < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Kinesis video stream stream that provides the source streaming video
    # for a Amazon Rekognition Video stream processor. For more information,
    # see CreateStreamProcessor in the Amazon Rekognition Developer Guide.
    #
    # @!attribute [rw] arn
    #   ARN of the Kinesis video stream stream that streams the source
    #   video.
    #   @return [String]
    #
    class KinesisVideoStream < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the starting point in a Kinesis stream to start processing.
    # You can use the producer timestamp or the fragment number. One of
    # either producer timestamp or fragment number is required. If you use
    # the producer timestamp, you must put the time in milliseconds. For
    # more information about fragment numbers, see [Fragment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html
    #
    # @!attribute [rw] producer_timestamp
    #   The timestamp from the producer corresponding to the fragment, in
    #   milliseconds, expressed in unix time format.
    #   @return [Integer]
    #
    # @!attribute [rw] fragment_number
    #   The unique identifier of the fragment. This value monotonically
    #   increases based on the ingestion order.
    #   @return [String]
    #
    class KinesisVideoStreamStartSelector < Struct.new(
      :producer_timestamp,
      :fragment_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The known gender identity for the celebrity that matches the provided
    # ID. The known gender identity can be Male, Female, Nonbinary, or
    # Unlisted.
    #
    # @!attribute [rw] type
    #   A string value of the KnownGender info about the Celebrity.
    #   @return [String]
    #
    class KnownGender < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure containing details about the detected label, including the
    # name, detected instances, parent labels, and level of confidence.
    #
    # @!attribute [rw] name
    #   The name (label) of the object or scene.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Level of confidence.
    #   @return [Float]
    #
    # @!attribute [rw] instances
    #   If `Label` represents an object, `Instances` contains the bounding
    #   boxes for each instance of the detected object. Bounding boxes are
    #   returned for common object labels such as people, cars, furniture,
    #   apparel or pets.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] parents
    #   The parent labels for a label. The response includes all ancestor
    #   labels.
    #   @return [Array<Types::Parent>]
    #
    # @!attribute [rw] aliases
    #   A list of potential aliases for a given label.
    #   @return [Array<Types::LabelAlias>]
    #
    # @!attribute [rw] categories
    #   A list of the categories associated with a given label.
    #   @return [Array<Types::LabelCategory>]
    #
    class Label < Struct.new(
      :name,
      :confidence,
      :instances,
      :parents,
      :aliases,
      :categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # A potential alias of for a given label.
    #
    # @!attribute [rw] name
    #   The name of an alias for a given label.
    #   @return [String]
    #
    class LabelAlias < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The category that applies to a given label.
    #
    # @!attribute [rw] name
    #   The name of a category that applies to a given label.
    #   @return [String]
    #
    class LabelCategory < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a label detected in a video analysis request and the
    # time the label was detected in the video.
    #
    # @!attribute [rw] timestamp
    #   Time, in milliseconds from the start of the video, that the label
    #   was detected. Note that `Timestamp` is not guaranteed to be accurate
    #   to the individual frame where the label first appears.
    #   @return [Integer]
    #
    # @!attribute [rw] label
    #   Details about the detected label.
    #   @return [Types::Label]
    #
    # @!attribute [rw] start_timestamp_millis
    #   The time in milliseconds defining the start of the timeline segment
    #   containing a continuously detected label.
    #   @return [Integer]
    #
    # @!attribute [rw] end_timestamp_millis
    #   The time in milliseconds defining the end of the timeline segment
    #   containing a continuously detected label.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_millis
    #   The time duration of a segment in milliseconds, I.e. time elapsed
    #   from StartTimestampMillis to EndTimestampMillis.
    #   @return [Integer]
    #
    class LabelDetection < Struct.new(
      :timestamp,
      :label,
      :start_timestamp_millis,
      :end_timestamp_millis,
      :duration_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the specified filters that should be applied to a list of
    # returned GENERAL\_LABELS.
    #
    # @!attribute [rw] general_labels
    #   Contains filters for the object labels returned by DetectLabels.
    #   Filters can be inclusive, exclusive, or a combination of both and
    #   can be applied to individual labels or entire label categories. To
    #   see a list of label categories, see [Detecting Labels][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/rekognition/latest/dg/labels.html
    #   @return [Types::GeneralLabelsSettings]
    #
    class LabelDetectionSettings < Struct.new(
      :general_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the location of the landmark on the face.
    #
    # @!attribute [rw] type
    #   Type of landmark.
    #   @return [String]
    #
    # @!attribute [rw] x
    #   The x-coordinate of the landmark expressed as a ratio of the width
    #   of the image. The x-coordinate is measured from the left-side of the
    #   image. For example, if the image is 700 pixels wide and the
    #   x-coordinate of the landmark is at 350 pixels, this value is 0.5.
    #   @return [Float]
    #
    # @!attribute [rw] y
    #   The y-coordinate of the landmark expressed as a ratio of the height
    #   of the image. The y-coordinate is measured from the top of the
    #   image. For example, if the image height is 200 pixels and the
    #   y-coordinate of the landmark is at 50 pixels, this value is 0.25.
    #   @return [Float]
    #
    class Landmark < Struct.new(
      :type,
      :x,
      :y)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Rekognition service limit was exceeded. For example, if you
    # start too many Amazon Rekognition Video jobs concurrently, calls to
    # start operations (`StartLabelDetection`, for example) will raise a
    # `LimitExceededException` exception (HTTP status code: 400) until the
    # number of concurrently running jobs is below the Amazon Rekognition
    # service limit.
    #
    class LimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) for the dataset that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] contains_labels
    #   Specifies a label filter for the response. The response includes an
    #   entry only if one or more of the labels in `ContainsLabels` exist in
    #   the entry.
    #   @return [Array<String>]
    #
    # @!attribute [rw] labeled
    #   Specify `true` to get only the JSON Lines where the image is
    #   labeled. Specify `false` to get only the JSON Lines where the image
    #   isn't labeled. If you don't specify `Labeled`,
    #   `ListDatasetEntries` returns JSON Lines for labeled and unlabeled
    #   images.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_ref_contains
    #   If specified, `ListDatasetEntries` only returns JSON Lines where the
    #   value of `SourceRefContains` is part of the `source-ref` field. The
    #   `source-ref` field contains the Amazon S3 location of the image. You
    #   can use `SouceRefContains` for tasks such as getting the JSON Line
    #   for a single image, or gettting JSON Lines for all images within a
    #   specific folder.
    #   @return [String]
    #
    # @!attribute [rw] has_errors
    #   Specifies an error filter for the response. Specify `True` to only
    #   include entries that have errors.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #   @return [Integer]
    #
    class ListDatasetEntriesRequest < Struct.new(
      :dataset_arn,
      :contains_labels,
      :labeled,
      :source_ref_contains,
      :has_errors,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_entries
    #   A list of entries (images) in the dataset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    class ListDatasetEntriesResponse < Struct.new(
      :dataset_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that you want to use.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #   @return [Integer]
    #
    class ListDatasetLabelsRequest < Struct.new(
      :dataset_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_label_descriptions
    #   A list of the labels in the dataset.
    #   @return [Array<Types::DatasetLabelDescription>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    class ListDatasetLabelsResponse < Struct.new(
      :dataset_label_descriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] user_id
    #   An array of user IDs to match when listing faces in a collection.
    #   @return [String]
    #
    # @!attribute [rw] face_ids
    #   An array of face IDs to match when listing faces in a collection.
    #   @return [Array<String>]
    #
    class ListFacesRequest < Struct.new(
      :collection_id,
      :next_token,
      :max_results,
      :user_id,
      :face_ids)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The ARN of the project for which you want to list the project
    #   policies.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more
    #   results to retrieve), Amazon Rekognition Custom Labels returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 5. If you specify a value greater
    #   than 5, a ValidationException error occurs. The default value is 5.
    #   @return [Integer]
    #
    class ListProjectPoliciesRequest < Struct.new(
      :project_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_policies
    #   A list of project policies attached to the project.
    #   @return [Array<Types::ProjectPolicy>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Rekognition returns this token
    #   that you can use in the subsequent request to retrieve the next set
    #   of project policies.
    #   @return [String]
    #
    class ListProjectPoliciesResponse < Struct.new(
      :project_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the model, collection, or stream
    #   processor that contains the tags that you want a list of.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of key-value tags assigned to the resource.
    #   @return [Hash<String,String>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   The ID of an existing collection.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of UsersID to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagingation token to receive the next set of UsersID.
    #   @return [String]
    #
    class ListUsersRequest < Struct.new(
      :collection_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   List of UsersID associated with the specified collection.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to be used with the subsequent request if the
    #   response is truncated.
    #   @return [String]
    #
    class ListUsersResponse < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains settings that specify the location of an Amazon S3 bucket
    # used to store the output of a Face Liveness session. Note that the S3
    # bucket must be located in the caller's AWS account and in the same
    # region as the Face Liveness end-point. Additionally, the Amazon S3
    # object keys are auto-generated by the Face Liveness system.
    #
    # @!attribute [rw] s3_bucket
    #   The path to an AWS Amazon S3 bucket used to store Face Liveness
    #   session results.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The prefix prepended to the output files for the Face Liveness
    #   session results.
    #   @return [String]
    #
    class LivenessOutputConfig < Struct.new(
      :s3_bucket,
      :s3_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The format of the project policy document that you supplied to
    # `PutProjectPolicy` is incorrect.
    #
    class MalformedPolicyDocumentException < Aws::EmptyStructure; end

    # Contains metadata for a UserID matched with a given face.
    #
    # @!attribute [rw] user_id
    #   A provided ID for the UserID. Unique within the collection.
    #   @return [String]
    #
    # @!attribute [rw] user_status
    #   The status of the user matched to a provided FaceID.
    #   @return [String]
    #
    class MatchedUser < Struct.new(
      :user_id,
      :user_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a single type of inappropriate, unwanted,
    # or offensive content found in an image or video. Each type of
    # moderated content has a label within a hierarchical taxonomy. For more
    # information, see Content moderation in the Amazon Rekognition
    # Developer Guide.
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
    #   The label name for the type of unsafe content detected in the image.
    #   @return [String]
    #
    # @!attribute [rw] parent_name
    #   The name for the parent label. Labels at the top level of the
    #   hierarchy have the parent label `""`.
    #   @return [String]
    #
    class ModerationLabel < Struct.new(
      :confidence,
      :name,
      :parent_name)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Simple Notification Service topic to which Amazon
    # Rekognition publishes the completion status of a video analysis
    # operation. For more information, see [Calling Amazon Rekognition Video
    # operations][1]. Note that the Amazon SNS topic must have a topic name
    # that begins with *AmazonRekognition* if you are using the
    # AmazonRekognitionServiceRole permissions policy to access the topic.
    # For more information, see [Giving access to multiple Amazon SNS
    # topics][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/rekognition/latest/dg/api-video.html
    # [2]: https://docs.aws.amazon.com/rekognition/latest/dg/api-video-roles.html#api-video-roles-all-topics
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon SNS topic to which Amazon Rekognition posts the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket and folder location where training output is placed.
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket where training output is placed.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The prefix applied to the training output files.
    #   @return [String]
    #
    class OutputConfig < Struct.new(
      :s3_bucket,
      :s3_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parent label for a label. A label can have 0, 1, or more parents.
    #
    # @!attribute [rw] name
    #   The name of the parent label.
    #   @return [String]
    #
    class Parent < Struct.new(
      :name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details and path tracking information for a single time a person's
    # path is tracked in a video. Amazon Rekognition operations that track
    # people's paths return an array of `PersonDetection` objects with
    # elements for each time a person's path is tracked in a video.
    #
    # For more information, see GetPersonTracking in the Amazon Rekognition
    # Developer Guide.
    #
    # @!attribute [rw] timestamp
    #   The time, in milliseconds from the start of the video, that the
    #   person's path was tracked. Note that `Timestamp` is not guaranteed
    #   to be accurate to the individual frame where the person's path
    #   first appears.
    #   @return [Integer]
    #
    # @!attribute [rw] person
    #   Details about a person whose path was tracked in a video.
    #   @return [Types::PersonDetail]
    #
    class PersonDetection < Struct.new(
      :timestamp,
      :person)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a person whose face matches a face(s) in an Amazon
    # Rekognition collection. Includes information about the faces in the
    # Amazon Rekognition collection (FaceMatch), information about the
    # person (PersonDetail), and the time stamp for when the person was
    # detected in a video. An array of `PersonMatch` objects is returned by
    # GetFaceSearch.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The X and Y coordinates of a point on an image or video frame. The X
    # and Y values are ratios of the overall image size or video resolution.
    # For example, if an input image is 700x200 and the values are X=0.5 and
    # Y=0.25, then the point is at the (350,50) pixel coordinate on the
    # image.
    #
    # An array of `Point` objects makes up a `Polygon`. A `Polygon` is
    # returned by DetectText and by DetectCustomLabels `Polygon` represents
    # a fine-grained polygon around a detected item. For more information,
    # see Geometry in the Amazon Rekognition Developer Guide.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of an Amazon Rekognition Custom Labels project. For more
    # information, see DescribeProjects.
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix timestamp for the date and time that the project was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the project.
    #   @return [String]
    #
    # @!attribute [rw] datasets
    #   Information about the training and test datasets in the project.
    #   @return [Array<Types::DatasetMetadata>]
    #
    class ProjectDescription < Struct.new(
      :project_arn,
      :creation_timestamp,
      :status,
      :datasets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a project policy in the response from ListProjectPolicies.
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project to which the project
    #   policy is attached.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the project policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision_id
    #   The revision ID of the project policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON document for the project policy.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix datetime for the creation of the project policy.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The Unix datetime for when the project policy was last updated.
    #   @return [Time]
    #
    class ProjectPolicy < Struct.new(
      :project_arn,
      :policy_name,
      :policy_revision_id,
      :policy_document,
      :creation_timestamp,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of a version of an Amazon Rekognition Custom Labels
    # model.
    #
    # @!attribute [rw] project_version_arn
    #   The Amazon Resource Name (ARN) of the model version.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The Unix datetime for the date and time that training started.
    #   @return [Time]
    #
    # @!attribute [rw] min_inference_units
    #   The minimum number of inference units used by the model. For more
    #   information, see StartProjectVersion.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status of the model version.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A descriptive message for an error or warning that occurred.
    #   @return [String]
    #
    # @!attribute [rw] billable_training_time_in_seconds
    #   The duration, in seconds, that you were billed for a successful
    #   training of the model version. This value is only returned if the
    #   model version has been successfully trained.
    #   @return [Integer]
    #
    # @!attribute [rw] training_end_timestamp
    #   The Unix date and time that training of the model ended.
    #   @return [Time]
    #
    # @!attribute [rw] output_config
    #   The location where training results are saved.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] training_data_result
    #   Contains information about the training results.
    #   @return [Types::TrainingDataResult]
    #
    # @!attribute [rw] testing_data_result
    #   Contains information about the testing results.
    #   @return [Types::TestingDataResult]
    #
    # @!attribute [rw] evaluation_result
    #   The training results. `EvaluationResult` is only returned if
    #   training is successful.
    #   @return [Types::EvaluationResult]
    #
    # @!attribute [rw] manifest_summary
    #   The location of the summary manifest. The summary manifest provides
    #   aggregate data validation results for the training and test
    #   datasets.
    #   @return [Types::GroundTruthManifest]
    #
    # @!attribute [rw] kms_key_id
    #   The identifer for the AWS Key Management Service key (AWS KMS key)
    #   that was used to encrypt the model during training.
    #   @return [String]
    #
    # @!attribute [rw] max_inference_units
    #   The maximum number of inference units Amazon Rekognition Custom
    #   Labels uses to auto-scale the model. For more information, see
    #   StartProjectVersion.
    #   @return [Integer]
    #
    # @!attribute [rw] source_project_version_arn
    #   If the model version was copied from a different project,
    #   `SourceProjectVersionArn` contains the ARN of the source model
    #   version.
    #   @return [String]
    #
    class ProjectVersionDescription < Struct.new(
      :project_version_arn,
      :creation_timestamp,
      :min_inference_units,
      :status,
      :status_message,
      :billable_training_time_in_seconds,
      :training_end_timestamp,
      :output_config,
      :training_data_result,
      :testing_data_result,
      :evaluation_result,
      :manifest_summary,
      :kms_key_id,
      :max_inference_units,
      :source_project_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a body part detected by DetectProtectiveEquipment
    # that contains PPE. An array of `ProtectiveEquipmentBodyPart` objects
    # is returned for each person detected by `DetectProtectiveEquipment`.
    #
    # @!attribute [rw] name
    #   The detected body part.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence that Amazon Rekognition has in the detection accuracy
    #   of the detected body part.
    #   @return [Float]
    #
    # @!attribute [rw] equipment_detections
    #   An array of Personal Protective Equipment items detected around a
    #   body part.
    #   @return [Array<Types::EquipmentDetection>]
    #
    class ProtectiveEquipmentBodyPart < Struct.new(
      :name,
      :confidence,
      :equipment_detections)
      SENSITIVE = []
      include Aws::Structure
    end

    # A person detected by a call to DetectProtectiveEquipment. The API
    # returns all persons detected in the input image in an array of
    # `ProtectiveEquipmentPerson` objects.
    #
    # @!attribute [rw] body_parts
    #   An array of body parts detected on a person's body (including body
    #   parts without PPE).
    #   @return [Array<Types::ProtectiveEquipmentBodyPart>]
    #
    # @!attribute [rw] bounding_box
    #   A bounding box around the detected person.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] confidence
    #   The confidence that Amazon Rekognition has that the bounding box
    #   contains a person.
    #   @return [Float]
    #
    # @!attribute [rw] id
    #   The identifier for the detected person. The identifier is only
    #   unique for a single call to `DetectProtectiveEquipment`.
    #   @return [Integer]
    #
    class ProtectiveEquipmentPerson < Struct.new(
      :body_parts,
      :bounding_box,
      :confidence,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies summary attributes to return from a call to
    # DetectProtectiveEquipment. You can specify which types of PPE to
    # summarize. You can also specify a minimum confidence value for
    # detections. Summary information is returned in the `Summary`
    # (ProtectiveEquipmentSummary) field of the response from
    # `DetectProtectiveEquipment`. The summary includes which persons in an
    # image were detected wearing the requested types of person protective
    # equipment (PPE), which persons were detected as not wearing PPE, and
    # the persons in which a determination could not be made. For more
    # information, see ProtectiveEquipmentSummary.
    #
    # @!attribute [rw] min_confidence
    #   The minimum confidence level for which you want summary information.
    #   The confidence level applies to person detection, body part
    #   detection, equipment detection, and body part coverage. Amazon
    #   Rekognition doesn't return summary information with a confidence
    #   than this specified value. There isn't a default value.
    #
    #   Specify a `MinConfidence` value that is between 50-100% as
    #   `DetectProtectiveEquipment` returns predictions only where the
    #   detection confidence is between 50% - 100%. If you specify a value
    #   that is less than 50%, the results are the same specifying a value
    #   of 50%.
    #   @return [Float]
    #
    # @!attribute [rw] required_equipment_types
    #   An array of personal protective equipment types for which you want
    #   summary information. If a person is detected wearing a required
    #   requipment type, the person's ID is added to the
    #   `PersonsWithRequiredEquipment` array field returned in
    #   ProtectiveEquipmentSummary by `DetectProtectiveEquipment`.
    #   @return [Array<String>]
    #
    class ProtectiveEquipmentSummarizationAttributes < Struct.new(
      :min_confidence,
      :required_equipment_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for required items of personal protective
    # equipment (PPE) detected on persons by a call to
    # DetectProtectiveEquipment. You specify the required type of PPE in the
    # `SummarizationAttributes` (ProtectiveEquipmentSummarizationAttributes)
    # input parameter. The summary includes which persons were detected
    # wearing the required personal protective equipment
    # (`PersonsWithRequiredEquipment`), which persons were detected as not
    # wearing the required PPE (`PersonsWithoutRequiredEquipment`), and the
    # persons in which a determination could not be made
    # (`PersonsIndeterminate`).
    #
    # To get a total for each category, use the size of the field array. For
    # example, to find out how many people were detected as wearing the
    # specified PPE, use the size of the `PersonsWithRequiredEquipment`
    # array. If you want to find out more about a person, such as the
    # location (BoundingBox) of the person on the image, use the person ID
    # in each array element. Each person ID matches the ID field of a
    # ProtectiveEquipmentPerson object returned in the `Persons` array by
    # `DetectProtectiveEquipment`.
    #
    # @!attribute [rw] persons_with_required_equipment
    #   An array of IDs for persons who are wearing detected personal
    #   protective equipment.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] persons_without_required_equipment
    #   An array of IDs for persons who are not wearing all of the types of
    #   PPE specified in the `RequiredEquipmentTypes` field of the detected
    #   personal protective equipment.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] persons_indeterminate
    #   An array of IDs for persons where it was not possible to determine
    #   if they are wearing personal protective equipment.
    #   @return [Array<Integer>]
    #
    class ProtectiveEquipmentSummary < Struct.new(
      :persons_with_required_equipment,
      :persons_without_required_equipment,
      :persons_indeterminate)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests exceeded your throughput limit. If you want to
    # increase this limit, contact Amazon Rekognition.
    #
    class ProvisionedThroughputExceededException < Aws::EmptyStructure; end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project that the project
    #   policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   A name for the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision_id
    #   The revision ID for the Project Policy. Each time you modify a
    #   policy, Amazon Rekognition Custom Labels generates and assigns a new
    #   `PolicyRevisionId` and then deletes the previous version of the
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   A resource policy to add to the model. The policy is a JSON
    #   structure that contains one or more statements that define the
    #   policy. The policy must follow the IAM syntax. For more information
    #   about the contents of a JSON policy document, see [IAM JSON policy
    #   reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #   @return [String]
    #
    class PutProjectPolicyRequest < Struct.new(
      :project_arn,
      :policy_name,
      :policy_revision_id,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_revision_id
    #   The ID of the project policy.
    #   @return [String]
    #
    class PutProjectPolicyResponse < Struct.new(
      :policy_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
    #   @return [Types::Image]
    #
    class RecognizeCelebritiesRequest < Struct.new(
      :image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] celebrity_faces
    #   Details about each celebrity found in the image. Amazon Rekognition
    #   can detect a maximum of 64 celebrities in an image. Each celebrity
    #   object includes the following attributes: `Face`, `Confidence`,
    #   `Emotions`, `Landmarks`, `Pose`, `Quality`, `Smile`, `Id`,
    #   `KnownGender`, `MatchConfidence`, `Name`, `Urls`.
    #   @return [Array<Types::Celebrity>]
    #
    # @!attribute [rw] unrecognized_faces
    #   Details about each unrecognized face in the image.
    #   @return [Array<Types::ComparedFace>]
    #
    # @!attribute [rw] orientation_correction
    #   <note markdown="1"> Support for estimating image orientation using the the
    #   OrientationCorrection field has ceased as of August 2021. Any
    #   returned values for this field included in an API response will
    #   always be NULL.
    #
    #    </note>
    #
    #   The orientation of the input image (counterclockwise direction). If
    #   your application displays the image, you can use this value to
    #   correct the orientation. The bounding box coordinates returned in
    #   `CelebrityFaces` and `UnrecognizedFaces` represent face locations
    #   before the image orientation is corrected.
    #
    #   <note markdown="1"> If the input image is in .jpeg format, it might contain exchangeable
    #   image (Exif) metadata that includes the image's orientation. If so,
    #   and the Exif metadata for the input image populates the orientation
    #   field, the value of `OrientationCorrection` is null. The
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a location within the frame that Rekognition checks for
    # objects of interest such as text, labels, or faces. It uses a
    # `BoundingBox` or `Polygon` to set a region of the screen.
    #
    # A word, face, or label is included in the region if it is more than
    # half in that region. If there is more than one region, the word, face,
    # or label is compared with all regions of the screen. Any object of
    # interest that is more than half in a region is kept in the results.
    #
    # @!attribute [rw] bounding_box
    #   The box representing a region of interest on screen.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] polygon
    #   Specifies a shape made up of up to 10 `Point` objects to define a
    #   region of interest.
    #   @return [Array<Types::Point>]
    #
    class RegionOfInterest < Struct.new(
      :bounding_box,
      :polygon)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource with the specified ID already exists.
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # The specified resource is already being used.
    #
    class ResourceInUseException < Aws::EmptyStructure; end

    # The resource specified in the request cannot be found.
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # The requested resource isn't ready. For example, this exception
    # occurs when you call `DetectCustomLabels` with a model version that
    # isn't deployed.
    #
    class ResourceNotReadyException < Aws::EmptyStructure; end

    # The Amazon S3 bucket location to which Amazon Rekognition publishes
    # the detailed inference results of a video analysis operation. These
    # results include the name of the stream processor resource, the session
    # ID of the stream processing session, and labeled timestamps and
    # bounding boxes for detected labels.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket you want to associate with the
    #   streaming video project. You must be the owner of the Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] key_prefix
    #   The prefix value of the location within the bucket that you want the
    #   information to be published to. For more information, see [Using
    #   prefixes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html
    #   @return [String]
    #
    class S3Destination < Struct.new(
      :bucket,
      :key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the S3 bucket name and object name.
    #
    # The region for the S3 bucket containing the S3 object must match the
    # region you use for Amazon Rekognition operations.
    #
    # For Amazon Rekognition to process an S3 object, the user must have
    # permission to access the S3 object. For more information, see How
    # Amazon Rekognition works with IAM in the Amazon Rekognition Developer
    # Guide.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   ID of the collection to search.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might
    #   not need to base64-encode image bytes passed using the `Bytes`
    #   field. For more information, see Images in the Amazon Rekognition
    #   developer guide.
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
    #   matches is less than 70%. The default value is 80%.
    #   @return [Float]
    #
    # @!attribute [rw] quality_filter
    #   A filter that specifies a quality bar for how much filtering is done
    #   to identify faces. Filtered faces aren't searched for in the
    #   collection. If you specify `AUTO`, Amazon Rekognition chooses the
    #   quality bar. If you specify `LOW`, `MEDIUM`, or `HIGH`, filtering
    #   removes all faces that don’t meet the chosen quality bar. The
    #   quality bar is based on a variety of common use cases. Low-quality
    #   detections can occur for a number of reasons. Some examples are an
    #   object that's misidentified as a face, a face that's too blurry,
    #   or a face with a pose that's too extreme to use. If you specify
    #   `NONE`, no filtering is performed. The default value is `NONE`.
    #
    #   To use quality filtering, the collection you are using must be
    #   associated with version 3 of the face model or higher.
    #   @return [String]
    #
    class SearchFacesByImageRequest < Struct.new(
      :collection_id,
      :image,
      :max_faces,
      :face_match_threshold,
      :quality_filter)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   in matches is less than 70%. The default value is 80%.
    #   @return [Float]
    #
    class SearchFacesRequest < Struct.new(
      :collection_id,
      :face_id,
      :max_faces,
      :face_match_threshold)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   The ID of an existing collection containing the UserID.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   Provides the input image either as bytes or an S3 object.
    #
    #   You pass image bytes to an Amazon Rekognition API operation by using
    #   the `Bytes` property. For example, you would use the `Bytes`
    #   property to pass an image loaded from a local file system. Image
    #   bytes passed by using the `Bytes` property must be base64-encoded.
    #   Your code may not need to encode image bytes if you are using an AWS
    #   SDK to call Amazon Rekognition API operations.
    #
    #   For more information, see Analyzing an Image Loaded from a Local
    #   File System in the Amazon Rekognition Developer Guide.
    #
    #   You pass images stored in an S3 bucket to an Amazon Rekognition API
    #   operation by using the `S3Object` property. Images stored in an S3
    #   bucket do not need to be base64-encoded.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   If you use the AWS CLI to call Amazon Rekognition operations,
    #   passing image bytes using the Bytes property is not supported. You
    #   must first upload the image to an Amazon S3 bucket and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see How
    #   Amazon Rekognition works with IAM in the Amazon Rekognition
    #   Developer Guide.
    #   @return [Types::Image]
    #
    # @!attribute [rw] user_match_threshold
    #   Specifies the minimum confidence in the UserID match to return.
    #   Default value is 80.
    #   @return [Float]
    #
    # @!attribute [rw] max_users
    #   Maximum number of UserIDs to return.
    #   @return [Integer]
    #
    # @!attribute [rw] quality_filter
    #   A filter that specifies a quality bar for how much filtering is done
    #   to identify faces. Filtered faces aren't searched for in the
    #   collection. The default value is NONE.
    #   @return [String]
    #
    class SearchUsersByImageRequest < Struct.new(
      :collection_id,
      :image,
      :user_match_threshold,
      :max_users,
      :quality_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_matches
    #   An array of UserID objects that matched the input face, along with
    #   the confidence in the match. The returned structure will be empty if
    #   there are no matches. Returned if the SearchUsersByImageResponse
    #   action is successful.
    #   @return [Array<Types::UserMatch>]
    #
    # @!attribute [rw] face_model_version
    #   Version number of the face detection model associated with the input
    #   collection CollectionId.
    #   @return [String]
    #
    # @!attribute [rw] searched_face
    #   A list of FaceDetail objects containing the BoundingBox for the
    #   largest face in image, as well as the confidence in the bounding
    #   box, that was searched for matches. If no valid face is detected in
    #   the image the response will contain no SearchedFace object.
    #   @return [Types::SearchedFaceDetails]
    #
    # @!attribute [rw] unsearched_faces
    #   List of UnsearchedFace objects. Contains the face details infered
    #   from the specified image but not used for search. Contains reasons
    #   that describe why a face wasn't used for Search.
    #   @return [Array<Types::UnsearchedFace>]
    #
    class SearchUsersByImageResponse < Struct.new(
      :user_matches,
      :face_model_version,
      :searched_face,
      :unsearched_faces)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_id
    #   The ID of an existing collection containing the UserID, used with a
    #   UserId or FaceId. If a FaceId is provided, UserId isn’t required to
    #   be present in the Collection.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   ID for the existing User.
    #   @return [String]
    #
    # @!attribute [rw] face_id
    #   ID for the existing face.
    #   @return [String]
    #
    # @!attribute [rw] user_match_threshold
    #   Optional value that specifies the minimum confidence in the matched
    #   UserID to return. Default value of 80.
    #   @return [Float]
    #
    # @!attribute [rw] max_users
    #   Maximum number of identities to return.
    #   @return [Integer]
    #
    class SearchUsersRequest < Struct.new(
      :collection_id,
      :user_id,
      :face_id,
      :user_match_threshold,
      :max_users)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_matches
    #   An array of UserMatch objects that matched the input face along with
    #   the confidence in the match. Array will be empty if there are no
    #   matches.
    #   @return [Array<Types::UserMatch>]
    #
    # @!attribute [rw] face_model_version
    #   Version number of the face detection model associated with the input
    #   CollectionId.
    #   @return [String]
    #
    # @!attribute [rw] searched_face
    #   Contains the ID of a face that was used to search for matches in a
    #   collection.
    #   @return [Types::SearchedFace]
    #
    # @!attribute [rw] searched_user
    #   Contains the ID of the UserID that was used to search for matches in
    #   a collection.
    #   @return [Types::SearchedUser]
    #
    class SearchUsersResponse < Struct.new(
      :user_matches,
      :face_model_version,
      :searched_face,
      :searched_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides face metadata such as FaceId, BoundingBox, Confidence of the
    # input face used for search.
    #
    # @!attribute [rw] face_id
    #   Unique identifier assigned to the face.
    #   @return [String]
    #
    class SearchedFace < Struct.new(
      :face_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains data regarding the input face used for a search.
    #
    # @!attribute [rw] face_detail
    #   Structure containing attributes of the face that the algorithm
    #   detected.
    #
    #   A `FaceDetail` object contains either the default facial attributes
    #   or all facial attributes. The default attributes are `BoundingBox`,
    #   `Confidence`, `Landmarks`, `Pose`, and `Quality`.
    #
    #   GetFaceDetection is the only Amazon Rekognition Video stored video
    #   operation that can return a `FaceDetail` object with all attributes.
    #   To specify which attributes to return, use the `FaceAttributes`
    #   input parameter for StartFaceDetection. The following Amazon
    #   Rekognition Video operations return only the default attributes. The
    #   corresponding Start operations don't have a `FaceAttributes` input
    #   parameter:
    #
    #   * GetCelebrityRecognition
    #
    #   * GetPersonTracking
    #
    #   * GetFaceSearch
    #
    #   The Amazon Rekognition Image DetectFaces and IndexFaces operations
    #   can return all facial attributes. To specify which attributes to
    #   return, use the `Attributes` input parameter for `DetectFaces`. For
    #   `IndexFaces`, use the `DetectAttributes` input parameter.
    #   @return [Types::FaceDetail]
    #
    class SearchedFaceDetails < Struct.new(
      :face_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a User searched for within a collection.
    #
    # @!attribute [rw] user_id
    #   A provided ID for the UserID. Unique within the collection.
    #   @return [String]
    #
    class SearchedUser < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A technical cue or shot detection segment detected in a video. An
    # array of `SegmentDetection` objects containing all segments detected
    # in a stored video is returned by GetSegmentDetection.
    #
    # @!attribute [rw] type
    #   The type of the segment. Valid values are `TECHNICAL_CUE` and
    #   `SHOT`.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp_millis
    #   The start time of the detected segment in milliseconds from the
    #   start of the video. This value is rounded down. For example, if the
    #   actual timestamp is 100.6667 milliseconds, Amazon Rekognition Video
    #   returns a value of 100 millis.
    #   @return [Integer]
    #
    # @!attribute [rw] end_timestamp_millis
    #   The end time of the detected segment, in milliseconds, from the
    #   start of the video. This value is rounded down.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_millis
    #   The duration of the detected segment in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] start_timecode_smpte
    #   The frame-accurate SMPTE timecode, from the start of a video, for
    #   the start of a detected segment. `StartTimecode` is in *HH:MM:SS:fr*
    #   format (and *;fr* for drop frame-rates).
    #   @return [String]
    #
    # @!attribute [rw] end_timecode_smpte
    #   The frame-accurate SMPTE timecode, from the start of a video, for
    #   the end of a detected segment. `EndTimecode` is in *HH:MM:SS:fr*
    #   format (and *;fr* for drop frame-rates).
    #   @return [String]
    #
    # @!attribute [rw] duration_smpte
    #   The duration of the timecode for the detected segment in SMPTE
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] technical_cue_segment
    #   If the segment is a technical cue, contains information about the
    #   technical cue.
    #   @return [Types::TechnicalCueSegment]
    #
    # @!attribute [rw] shot_segment
    #   If the segment is a shot detection, contains information about the
    #   shot detection.
    #   @return [Types::ShotSegment]
    #
    # @!attribute [rw] start_frame_number
    #   The frame number of the start of a video segment, using a frame
    #   index that starts with 0.
    #   @return [Integer]
    #
    # @!attribute [rw] end_frame_number
    #   The frame number at the end of a video segment, using a frame index
    #   that starts with 0.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_frames
    #   The duration of a video segment, expressed in frames.
    #   @return [Integer]
    #
    class SegmentDetection < Struct.new(
      :type,
      :start_timestamp_millis,
      :end_timestamp_millis,
      :duration_millis,
      :start_timecode_smpte,
      :end_timecode_smpte,
      :duration_smpte,
      :technical_cue_segment,
      :shot_segment,
      :start_frame_number,
      :end_frame_number,
      :duration_frames)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the type of a segment requested in a call to
    # StartSegmentDetection. An array of `SegmentTypeInfo` objects is
    # returned by the response from GetSegmentDetection.
    #
    # @!attribute [rw] type
    #   The type of a segment (technical cue or shot detection).
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model used to detect segments.
    #   @return [String]
    #
    class SegmentTypeInfo < Struct.new(
      :type,
      :model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The size of the collection exceeds the allowed limit. For more
    # information, see Guidelines and quotas in Amazon Rekognition in the
    # Amazon Rekognition Developer Guide.
    #
    class ServiceQuotaExceededException < Aws::EmptyStructure; end

    # Occurs when a given sessionId is not found.
    #
    class SessionNotFoundException < Aws::EmptyStructure; end

    # Information about a shot detection segment detected in a video. For
    # more information, see SegmentDetection.
    #
    # @!attribute [rw] index
    #   An Identifier for a shot detection segment detected in a video.
    #   @return [Integer]
    #
    # @!attribute [rw] confidence
    #   The confidence that Amazon Rekognition Video has in the accuracy of
    #   the detected segment.
    #   @return [Float]
    #
    class ShotSegment < Struct.new(
      :index,
      :confidence)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   to. The Amazon SNS topic must have a topic name that begins with
    #   *AmazonRekognition* if you are using the
    #   AmazonRekognitionServiceRole permissions policy.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related
    #   jobs and identify them in the completion notification.
    #   @return [String]
    #
    class StartCelebrityRecognitionRequest < Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] video
    #   The video in which you want to detect inappropriate, unwanted, or
    #   offensive content. The video must be stored in an Amazon S3 bucket.
    #   @return [Types::Video]
    #
    # @!attribute [rw] min_confidence
    #   Specifies the minimum confidence that Amazon Rekognition must have
    #   in order to return a moderated content label. Confidence represents
    #   how certain Amazon Rekognition is that the moderated content is
    #   correctly identified. 0 is the lowest confidence. 100 is the highest
    #   confidence. Amazon Rekognition doesn't return any moderated content
    #   labels with a confidence level lower than this specified value. If
    #   you don't specify `MinConfidence`, `GetContentModeration` returns
    #   labels with confidence values greater than or equal to 50 percent.
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
    #   publish the completion status of the content analysis to. The Amazon
    #   SNS topic must have a topic name that begins with
    #   *AmazonRekognition* if you are using the
    #   AmazonRekognitionServiceRole permissions policy to access the topic.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related
    #   jobs and identify them in the completion notification.
    #   @return [String]
    #
    class StartContentModerationRequest < Struct.new(
      :video,
      :min_confidence,
      :client_request_token,
      :notification_channel,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the content analysis job. Use `JobId` to identify
    #   the job in a subsequent call to `GetContentModeration`.
    #   @return [String]
    #
    class StartContentModerationResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   operation. The Amazon SNS topic must have a topic name that begins
    #   with *AmazonRekognition* if you are using the
    #   AmazonRekognitionServiceRole permissions policy.
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
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related
    #   jobs and identify them in the completion notification.
    #   @return [String]
    #
    class StartFaceDetectionRequest < Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :face_attributes,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the face detection job. Use `JobId` to identify
    #   the job in a subsequent call to `GetFaceDetection`.
    #   @return [String]
    #
    class StartFaceDetectionResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   70%. The default value is 80%.
    #   @return [Float]
    #
    # @!attribute [rw] collection_id
    #   ID of the collection that contains the faces you want to search for.
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The ARN of the Amazon SNS topic to which you want Amazon Rekognition
    #   Video to publish the completion status of the search. The Amazon SNS
    #   topic must have a topic name that begins with *AmazonRekognition* if
    #   you are using the AmazonRekognitionServiceRole permissions policy to
    #   access the topic.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related
    #   jobs and identify them in the completion notification.
    #   @return [String]
    #
    class StartFaceSearchRequest < Struct.new(
      :video,
      :client_request_token,
      :face_match_threshold,
      :collection_id,
      :notification_channel,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the search job. Use `JobId` to identify the job
    #   in a subsequent call to `GetFaceSearch`.
    #   @return [String]
    #
    class StartFaceSearchResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   and bounding boxes (if detected) with confidence values greater than
    #   or equal to 50 percent.
    #   @return [Float]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon SNS topic ARN you want Amazon Rekognition Video to
    #   publish the completion status of the label detection operation to.
    #   The Amazon SNS topic must have a topic name that begins with
    #   *AmazonRekognition* if you are using the
    #   AmazonRekognitionServiceRole permissions policy.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related
    #   jobs and identify them in the completion notification.
    #   @return [String]
    #
    # @!attribute [rw] features
    #   The features to return after video analysis. You can specify that
    #   GENERAL\_LABELS are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] settings
    #   The settings for a StartLabelDetection request.Contains the
    #   specified parameters for the label detection request of an
    #   asynchronous label analysis operation. Settings can include filters
    #   for GENERAL\_LABELS.
    #   @return [Types::LabelDetectionSettings]
    #
    class StartLabelDetectionRequest < Struct.new(
      :video,
      :client_request_token,
      :min_confidence,
      :notification_channel,
      :job_tag,
      :features,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the label detection job. Use `JobId` to identify
    #   the job in a subsequent call to `GetLabelDetection`.
    #   @return [String]
    #
    class StartLabelDetectionResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The Amazon SNS topic must have a topic name that begins with
    #   *AmazonRekognition* if you are using the
    #   AmazonRekognitionServiceRole permissions policy.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related
    #   jobs and identify them in the completion notification.
    #   @return [String]
    #
    class StartPersonTrackingRequest < Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the person detection job. Use `JobId` to identify
    #   the job in a subsequent call to `GetPersonTracking`.
    #   @return [String]
    #
    class StartPersonTrackingResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_version_arn
    #   The Amazon Resource Name(ARN) of the model version that you want to
    #   start.
    #   @return [String]
    #
    # @!attribute [rw] min_inference_units
    #   The minimum number of inference units to use. A single inference
    #   unit represents 1 hour of processing.
    #
    #   For information about the number of transactions per second (TPS)
    #   that an inference unit can support, see *Running a trained Amazon
    #   Rekognition Custom Labels model* in the Amazon Rekognition Custom
    #   Labels Guide.
    #
    #   Use a higher number to increase the TPS throughput of your model.
    #   You are charged for the number of inference units that you use.
    #   @return [Integer]
    #
    # @!attribute [rw] max_inference_units
    #   The maximum number of inference units to use for auto-scaling the
    #   model. If you don't specify a value, Amazon Rekognition Custom
    #   Labels doesn't auto-scale the model.
    #   @return [Integer]
    #
    class StartProjectVersionRequest < Struct.new(
      :project_version_arn,
      :min_inference_units,
      :max_inference_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current running status of the model.
    #   @return [String]
    #
    class StartProjectVersionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters applied to the technical cue or shot detection segments. For
    # more information, see StartSegmentDetection.
    #
    # @!attribute [rw] technical_cue_filter
    #   Filters that are specific to technical cues.
    #   @return [Types::StartTechnicalCueDetectionFilter]
    #
    # @!attribute [rw] shot_filter
    #   Filters that are specific to shot detections.
    #   @return [Types::StartShotDetectionFilter]
    #
    class StartSegmentDetectionFilters < Struct.new(
      :technical_cue_filter,
      :shot_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartSegmentDetection` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same
    #   job from being accidently started more than once.
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The ARN of the Amazon SNS topic to which you want Amazon Rekognition
    #   Video to publish the completion status of the segment detection
    #   operation. Note that the Amazon SNS topic must have a topic name
    #   that begins with *AmazonRekognition* if you are using the
    #   AmazonRekognitionServiceRole permissions policy to access the topic.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related
    #   jobs and identify them in the completion notification.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters for technical cue or shot detection.
    #   @return [Types::StartSegmentDetectionFilters]
    #
    # @!attribute [rw] segment_types
    #   An array of segment types to detect in the video. Valid values are
    #   TECHNICAL\_CUE and SHOT.
    #   @return [Array<String>]
    #
    class StartSegmentDetectionRequest < Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag,
      :filters,
      :segment_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Unique identifier for the segment detection job. The `JobId` is
    #   returned from `StartSegmentDetection`.
    #   @return [String]
    #
    class StartSegmentDetectionResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters for the shot detection segments returned by
    # `GetSegmentDetection`. For more information, see
    # StartSegmentDetectionFilters.
    #
    # @!attribute [rw] min_segment_confidence
    #   Specifies the minimum confidence that Amazon Rekognition Video must
    #   have in order to return a detected segment. Confidence represents
    #   how certain Amazon Rekognition is that a segment is correctly
    #   identified. 0 is the lowest confidence. 100 is the highest
    #   confidence. Amazon Rekognition Video doesn't return any segments
    #   with a confidence level lower than this specified value.
    #
    #   If you don't specify `MinSegmentConfidence`, the
    #   `GetSegmentDetection` returns segments with confidence values
    #   greater than or equal to 50 percent.
    #   @return [Float]
    #
    class StartShotDetectionFilter < Struct.new(
      :min_segment_confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the stream processor to start processing.
    #   @return [String]
    #
    # @!attribute [rw] start_selector
    #   Specifies the starting point in the Kinesis stream to start
    #   processing. You can use the producer timestamp or the fragment
    #   number. If you use the producer timestamp, you must put the time in
    #   milliseconds. For more information about fragment numbers, see
    #   [Fragment][1].
    #
    #   This is a required parameter for label detection stream processors
    #   and should not be used to start a face search stream processor.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html
    #   @return [Types::StreamProcessingStartSelector]
    #
    # @!attribute [rw] stop_selector
    #   Specifies when to stop processing the stream. You can specify a
    #   maximum amount of time to process the video.
    #
    #   This is a required parameter for label detection stream processors
    #   and should not be used to start a face search stream processor.
    #   @return [Types::StreamProcessingStopSelector]
    #
    class StartStreamProcessorRequest < Struct.new(
      :name,
      :start_selector,
      :stop_selector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   A unique identifier for the stream processing session.
    #   @return [String]
    #
    class StartStreamProcessorResponse < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters for the technical segments returned by GetSegmentDetection.
    # For more information, see StartSegmentDetectionFilters.
    #
    # @!attribute [rw] min_segment_confidence
    #   Specifies the minimum confidence that Amazon Rekognition Video must
    #   have in order to return a detected segment. Confidence represents
    #   how certain Amazon Rekognition is that a segment is correctly
    #   identified. 0 is the lowest confidence. 100 is the highest
    #   confidence. Amazon Rekognition Video doesn't return any segments
    #   with a confidence level lower than this specified value.
    #
    #   If you don't specify `MinSegmentConfidence`, `GetSegmentDetection`
    #   returns segments with confidence values greater than or equal to 50
    #   percent.
    #   @return [Float]
    #
    # @!attribute [rw] black_frame
    #   A filter that allows you to control the black frame detection by
    #   specifying the black levels and pixel coverage of black pixels in a
    #   frame. Videos can come from multiple sources, formats, and time
    #   periods, with different standards and varying noise levels for black
    #   frames that need to be accounted for.
    #   @return [Types::BlackFrame]
    #
    class StartTechnicalCueDetectionFilter < Struct.new(
      :min_segment_confidence,
      :black_frame)
      SENSITIVE = []
      include Aws::Structure
    end

    # Set of optional parameters that let you set the criteria text must
    # meet to be included in your response. `WordFilter` looks at a word's
    # height, width and minimum confidence. `RegionOfInterest` lets you set
    # a specific region of the screen to look for text in.
    #
    # @!attribute [rw] word_filter
    #   Filters focusing on qualities of the text, such as confidence or
    #   size.
    #   @return [Types::DetectionFilter]
    #
    # @!attribute [rw] regions_of_interest
    #   Filter focusing on a certain area of the frame. Uses a `BoundingBox`
    #   object to set the region of the screen.
    #   @return [Array<Types::RegionOfInterest>]
    #
    class StartTextDetectionFilters < Struct.new(
      :word_filter,
      :regions_of_interest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify
    #   a video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #   @return [Types::Video]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartTextDetection` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same
    #   job from being accidentaly started more than once.
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon Simple Notification Service topic to which Amazon
    #   Rekognition publishes the completion status of a video analysis
    #   operation. For more information, see [Calling Amazon Rekognition
    #   Video operations][1]. Note that the Amazon SNS topic must have a
    #   topic name that begins with *AmazonRekognition* if you are using the
    #   AmazonRekognitionServiceRole permissions policy to access the topic.
    #   For more information, see [Giving access to multiple Amazon SNS
    #   topics][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/rekognition/latest/dg/api-video.html
    #   [2]: https://docs.aws.amazon.com/rekognition/latest/dg/api-video-roles.html#api-video-roles-all-topics
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] job_tag
    #   An identifier returned in the completion status published by your
    #   Amazon Simple Notification Service topic. For example, you can use
    #   `JobTag` to group related jobs and identify them in the completion
    #   notification.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Optional parameters that let you set criteria the text must meet to
    #   be included in your response.
    #   @return [Types::StartTextDetectionFilters]
    #
    class StartTextDetectionRequest < Struct.new(
      :video,
      :client_request_token,
      :notification_channel,
      :job_tag,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Identifier for the text detection job. Use `JobId` to identify the
    #   job in a subsequent call to `GetTextDetection`.
    #   @return [String]
    #
    class StartTextDetectionResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_version_arn
    #   The Amazon Resource Name (ARN) of the model version that you want to
    #   delete.
    #
    #   This operation requires permissions to perform the
    #   `rekognition:StopProjectVersion` action.
    #   @return [String]
    #
    class StopProjectVersionRequest < Struct.new(
      :project_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the stop operation.
    #   @return [String]
    #
    class StopProjectVersionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of a stream processor created by CreateStreamProcessor.
    #   @return [String]
    #
    class StopStreamProcessorRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    class StopStreamProcessorResponse < Aws::EmptyStructure; end

    # This is a required parameter for label detection stream processors and
    # should not be used to start a face search stream processor.
    #
    # @!attribute [rw] kvs_stream_start_selector
    #   Specifies the starting point in the stream to start processing. This
    #   can be done with a producer timestamp or a fragment number in a
    #   Kinesis stream.
    #   @return [Types::KinesisVideoStreamStartSelector]
    #
    class StreamProcessingStartSelector < Struct.new(
      :kvs_stream_start_selector)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies when to stop processing the stream. You can specify a
    # maximum amount of time to process the video.
    #
    # @!attribute [rw] max_duration_in_seconds
    #   Specifies the maximum amount of time in seconds that you want the
    #   stream to be processed. The largest amount of time is 2 minutes. The
    #   default is 10 seconds.
    #   @return [Integer]
    #
    class StreamProcessingStopSelector < Struct.new(
      :max_duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that recognizes faces or labels in a streaming video. An
    # Amazon Rekognition stream processor is created by a call to
    # CreateStreamProcessor. The request parameters for
    # `CreateStreamProcessor` describe the Kinesis video stream source for
    # the streaming video, face recognition parameters, and where to stream
    # the analysis resullts.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to opt in or opt out to share data with Rekognition to
    # improve model performance. You can choose this option at the account
    # level or on a per-stream basis. Note that if you opt out at the
    # account level this setting is ignored on individual streams.
    #
    # @!attribute [rw] opt_in
    #   If this option is set to true, you choose to share data with
    #   Rekognition to improve model performance.
    #   @return [Boolean]
    #
    class StreamProcessorDataSharingPreference < Struct.new(
      :opt_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the source streaming video.
    #
    # @!attribute [rw] kinesis_video_stream
    #   The Kinesis video stream input stream for the source streaming
    #   video.
    #   @return [Types::KinesisVideoStream]
    #
    class StreamProcessorInput < Struct.new(
      :kinesis_video_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Simple Notification Service topic to which Amazon
    # Rekognition publishes the object detection results and completion
    # status of a video analysis operation.
    #
    # Amazon Rekognition publishes a notification the first time an object
    # of interest or a person is detected in the video stream. For example,
    # if Amazon Rekognition detects a person at second 2, a pet at second 4,
    # and a person again at second 5, Amazon Rekognition sends 2 object
    # class detected notifications, one for a person at second 2 and one for
    # a pet at second 4.
    #
    # Amazon Rekognition also publishes an an end-of-session notification
    # with a summary when the stream processing session is complete.
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Number (ARN) of the Amazon Amazon Simple
    #   Notification Service topic to which Amazon Rekognition posts the
    #   completion status.
    #   @return [String]
    #
    class StreamProcessorNotificationChannel < Struct.new(
      :sns_topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon Kinesis Data Streams stream to which a
    # Amazon Rekognition Video stream processor streams the results of a
    # video analysis. For more information, see CreateStreamProcessor in the
    # Amazon Rekognition Developer Guide.
    #
    # @!attribute [rw] kinesis_data_stream
    #   The Amazon Kinesis Data Streams stream to which the Amazon
    #   Rekognition stream processor streams the analysis results.
    #   @return [Types::KinesisDataStream]
    #
    # @!attribute [rw] s3_destination
    #   The Amazon S3 bucket location to which Amazon Rekognition publishes
    #   the detailed inference results of a video analysis operation.
    #   @return [Types::S3Destination]
    #
    class StreamProcessorOutput < Struct.new(
      :kinesis_data_stream,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input parameters used in a streaming video analyzed by a Amazon
    # Rekognition stream processor. You can use `FaceSearch` to recognize
    # faces in a streaming video, or you can use `ConnectedHome` to detect
    # labels.
    #
    # @!attribute [rw] face_search
    #   Face search settings to use on a streaming video.
    #   @return [Types::FaceSearchSettings]
    #
    # @!attribute [rw] connected_home
    #   Label detection settings to use on a streaming video. Defining the
    #   settings is required in the request parameter for
    #   CreateStreamProcessor. Including this setting in the
    #   `CreateStreamProcessor` request enables you to use the stream
    #   processor for label detection. You can then select what you want the
    #   stream processor to detect, such as people or pets. When the stream
    #   processor has started, one notification is sent for each object
    #   class specified. For example, if packages and pets are selected, one
    #   SNS notification is published the first time a package is detected
    #   and one SNS notification is published the first time a pet is
    #   detected, as well as an end-of-session summary.
    #   @return [Types::ConnectedHomeSettings]
    #
    class StreamProcessorSettings < Struct.new(
      :face_search,
      :connected_home)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stream processor settings that you want to update. `ConnectedHome`
    # settings can be updated to detect different labels with a different
    # minimum confidence.
    #
    # @!attribute [rw] connected_home_for_update
    #   The label detection settings you want to use for your stream
    #   processor.
    #   @return [Types::ConnectedHomeSettingsForUpdate]
    #
    class StreamProcessorSettingsForUpdate < Struct.new(
      :connected_home_for_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket that contains the training summary. The training summary
    # includes aggregated evaluation metrics for the entire testing dataset
    # and metrics for each individual label.
    #
    # You get the training summary S3 bucket location by calling
    # DescribeProjectVersions.
    #
    # @!attribute [rw] s3_object
    #   Provides the S3 bucket name and object name.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see How
    #   Amazon Rekognition works with IAM in the Amazon Rekognition
    #   Developer Guide.
    #   @return [Types::S3Object]
    #
    class Summary < Struct.new(
      :s3_object)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the model, collection, or stream
    #   processor that you want to assign the tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value tags to assign to the resource.
    #   @return [Hash<String,String>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # Information about a technical cue segment. For more information, see
    # SegmentDetection.
    #
    # @!attribute [rw] type
    #   The type of the technical cue.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence that Amazon Rekognition Video has in the accuracy of
    #   the detected segment.
    #   @return [Float]
    #
    class TechnicalCueSegment < Struct.new(
      :type,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dataset used for testing. Optionally, if `AutoCreate` is set,
    # Amazon Rekognition Custom Labels uses the training dataset to create a
    # test dataset with a temporary split of the training dataset.
    #
    # @!attribute [rw] assets
    #   The assets used for testing.
    #   @return [Array<Types::Asset>]
    #
    # @!attribute [rw] auto_create
    #   If specified, Amazon Rekognition Custom Labels temporarily splits
    #   the training dataset (80%) to create a test dataset (20%) for the
    #   training job. After training completes, the test dataset is not
    #   stored and the training dataset reverts to its previous size.
    #   @return [Boolean]
    #
    class TestingData < Struct.new(
      :assets,
      :auto_create)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sagemaker Groundtruth format manifest files for the input, output and
    # validation datasets that are used and created during testing.
    #
    # @!attribute [rw] input
    #   The testing dataset that was supplied for training.
    #   @return [Types::TestingData]
    #
    # @!attribute [rw] output
    #   The subset of the dataset that was actually tested. Some images
    #   (assets) might not be tested due to file formatting and other
    #   issues.
    #   @return [Types::TestingData]
    #
    # @!attribute [rw] validation
    #   The location of the data validation manifest. The data validation
    #   manifest is created for the test dataset during model training.
    #   @return [Types::ValidationData]
    #
    class TestingDataResult < Struct.new(
      :input,
      :output,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a word or line of text detected by DetectText.
    #
    # The `DetectedText` field contains the text that Amazon Rekognition
    # detected in the image.
    #
    # Every word and line has an identifier (`Id`). Each word belongs to a
    # line and has a parent identifier (`ParentId`) that identifies the line
    # of text in which the word appears. The word `Id` is also an index for
    # the word within a line of words.
    #
    # For more information, see Detecting text in the Amazon Rekognition
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about text detected in a video. Incudes the detected text,
    # the time in milliseconds from the start of the video that the text was
    # detected, and where it was detected on the screen.
    #
    # @!attribute [rw] timestamp
    #   The time, in milliseconds from the start of the video, that the text
    #   was detected. Note that `Timestamp` is not guaranteed to be accurate
    #   to the individual frame where the text first appears.
    #   @return [Integer]
    #
    # @!attribute [rw] text_detection
    #   Details about text detected in a video.
    #   @return [Types::TextDetection]
    #
    class TextDetectionResult < Struct.new(
      :timestamp,
      :text_detection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Rekognition is temporarily unable to process the request. Try
    # your call again.
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # The dataset used for training.
    #
    # @!attribute [rw] assets
    #   A Sagemaker GroundTruth manifest file that contains the training
    #   images (assets).
    #   @return [Array<Types::Asset>]
    #
    class TrainingData < Struct.new(
      :assets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sagemaker Groundtruth format manifest files for the input, output and
    # validation datasets that are used and created during testing.
    #
    # @!attribute [rw] input
    #   The training assets that you supplied for training.
    #   @return [Types::TrainingData]
    #
    # @!attribute [rw] output
    #   The images (assets) that were actually trained by Amazon Rekognition
    #   Custom Labels.
    #   @return [Types::TrainingData]
    #
    # @!attribute [rw] validation
    #   The location of the data validation manifest. The data validation
    #   manifest is created for the training dataset during model training.
    #   @return [Types::ValidationData]
    #
    class TrainingDataResult < Struct.new(
      :input,
      :output,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A face that IndexFaces detected, but didn't index. Use the `Reasons`
    # response attribute to determine why a face wasn't indexed.
    #
    # @!attribute [rw] reasons
    #   An array of reasons that specify why a face wasn't indexed.
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
    #   The structure that contains attributes of a face that
    #   `IndexFaces`detected, but didn't index.
    #   @return [Types::FaceDetail]
    #
    class UnindexedFace < Struct.new(
      :reasons,
      :face_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Face details inferred from the image but not used for search. The
    # response attribute contains reasons for why a face wasn't used for
    # Search.
    #
    # @!attribute [rw] face_details
    #   Structure containing attributes of the face that the algorithm
    #   detected.
    #
    #   A `FaceDetail` object contains either the default facial attributes
    #   or all facial attributes. The default attributes are `BoundingBox`,
    #   `Confidence`, `Landmarks`, `Pose`, and `Quality`.
    #
    #   GetFaceDetection is the only Amazon Rekognition Video stored video
    #   operation that can return a `FaceDetail` object with all attributes.
    #   To specify which attributes to return, use the `FaceAttributes`
    #   input parameter for StartFaceDetection. The following Amazon
    #   Rekognition Video operations return only the default attributes. The
    #   corresponding Start operations don't have a `FaceAttributes` input
    #   parameter:
    #
    #   * GetCelebrityRecognition
    #
    #   * GetPersonTracking
    #
    #   * GetFaceSearch
    #
    #   The Amazon Rekognition Image DetectFaces and IndexFaces operations
    #   can return all facial attributes. To specify which attributes to
    #   return, use the `Attributes` input parameter for `DetectFaces`. For
    #   `IndexFaces`, use the `DetectAttributes` input parameter.
    #   @return [Types::FaceDetail]
    #
    # @!attribute [rw] reasons
    #   Reasons why a face wasn't used for Search.
    #   @return [Array<String>]
    #
    class UnsearchedFace < Struct.new(
      :face_details,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata like FaceId, UserID, and Reasons, for a face that
    # was unsuccessfully associated.
    #
    # @!attribute [rw] face_id
    #   A unique identifier assigned to the face.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   A provided ID for the UserID. Unique within the collection.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Match confidence with the UserID, provides information regarding if
    #   a face association was unsuccessful because it didn't meet
    #   UserMatchThreshold.
    #   @return [Float]
    #
    # @!attribute [rw] reasons
    #   The reason why the association was unsuccessful.
    #   @return [Array<String>]
    #
    class UnsuccessfulFaceAssociation < Struct.new(
      :face_id,
      :user_id,
      :confidence,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata like FaceId, UserID, and Reasons, for a face that
    # was unsuccessfully deleted.
    #
    # @!attribute [rw] face_id
    #   A unique identifier assigned to the face.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   A provided ID for the UserID. Unique within the collection.
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   The reason why the deletion was unsuccessful.
    #   @return [Array<String>]
    #
    class UnsuccessfulFaceDeletion < Struct.new(
      :face_id,
      :user_id,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata like FaceId, UserID, and Reasons, for a face that
    # was unsuccessfully disassociated.
    #
    # @!attribute [rw] face_id
    #   A unique identifier assigned to the face.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   A provided ID for the UserID. Unique within the collection.
    #   @return [String]
    #
    # @!attribute [rw] reasons
    #   The reason why the deletion was unsuccessful.
    #   @return [Array<String>]
    #
    class UnsuccessfulFaceDisassociation < Struct.new(
      :face_id,
      :user_id,
      :reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Amazon Resource Name (ARN) of the model, collection, or stream
    #   processor that you want to remove the tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the tags that you want to remove.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] changes
    #   The changes that you want to make to the dataset.
    #   @return [Types::DatasetChanges]
    #
    class UpdateDatasetEntriesRequest < Struct.new(
      :dataset_arn,
      :changes)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateDatasetEntriesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Name of the stream processor that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] settings_for_update
    #   The stream processor settings that you want to update. Label
    #   detection settings can be updated to detect different labels with a
    #   different minimum confidence.
    #   @return [Types::StreamProcessorSettingsForUpdate]
    #
    # @!attribute [rw] regions_of_interest_for_update
    #   Specifies locations in the frames where Amazon Rekognition checks
    #   for objects or people. This is an optional parameter for label
    #   detection stream processors.
    #   @return [Array<Types::RegionOfInterest>]
    #
    # @!attribute [rw] data_sharing_preference_for_update
    #   Shows whether you are sharing data with Rekognition to improve model
    #   performance. You can choose this option at the account level or on a
    #   per-stream basis. Note that if you opt out at the account level this
    #   setting is ignored on individual streams.
    #   @return [Types::StreamProcessorDataSharingPreference]
    #
    # @!attribute [rw] parameters_to_delete
    #   A list of parameters you want to delete from the stream processor.
    #   @return [Array<String>]
    #
    class UpdateStreamProcessorRequest < Struct.new(
      :name,
      :settings_for_update,
      :regions_of_interest_for_update,
      :data_sharing_preference_for_update,
      :parameters_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateStreamProcessorResponse < Aws::EmptyStructure; end

    # Metadata of the user stored in a collection.
    #
    # @!attribute [rw] user_id
    #   A provided ID for the User. Unique within the collection.
    #   @return [String]
    #
    # @!attribute [rw] user_status
    #   Communicates if the UserID has been updated with latest set of faces
    #   to be associated with the UserID.
    #   @return [String]
    #
    class User < Struct.new(
      :user_id,
      :user_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides UserID metadata along with the confidence in the match of
    # this UserID with the input face.
    #
    # @!attribute [rw] similarity
    #   Describes the UserID metadata.
    #   @return [Float]
    #
    # @!attribute [rw] user
    #   Confidence in the match of this UserID with the input face.
    #   @return [Types::MatchedUser]
    #
    class UserMatch < Struct.new(
      :similarity,
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Amazon S3 bucket location of the validation data for a
    # model training job.
    #
    # The validation data includes error information for individual JSON
    # Lines in the dataset. For more information, see *Debugging a Failed
    # Model Training* in the Amazon Rekognition Custom Labels Developer
    # Guide.
    #
    # You get the `ValidationData` object for the training dataset
    # (TrainingDataResult) and the test dataset (TestingDataResult) by
    # calling DescribeProjectVersions.
    #
    # The assets array contains a single Asset object. The
    # GroundTruthManifest field of the Asset object contains the S3 bucket
    # location of the validation data.
    #
    # @!attribute [rw] assets
    #   The assets that comprise the validation data.
    #   @return [Array<Types::Asset>]
    #
    class ValidationData < Struct.new(
      :assets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    # start operations such as StartLabelDetection use `Video` to specify a
    # video for analysis. The supported file formats are .mp4, .mov and
    # .avi.
    #
    # @!attribute [rw] s3_object
    #   The Amazon S3 bucket name and file name for the video.
    #   @return [Types::S3Object]
    #
    class Video < Struct.new(
      :s3_object)
      SENSITIVE = []
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
    # @!attribute [rw] color_range
    #   A description of the range of luminance values in a video, either
    #   LIMITED (16 to 235) or FULL (0 to 255).
    #   @return [String]
    #
    class VideoMetadata < Struct.new(
      :codec,
      :duration_millis,
      :format,
      :frame_rate,
      :frame_height,
      :frame_width,
      :color_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # The file size or duration of the supplied media is too large. The
    # maximum file size is 10GB. The maximum duration is 6 hours.
    #
    class VideoTooLargeException < Aws::EmptyStructure; end

  end
end
