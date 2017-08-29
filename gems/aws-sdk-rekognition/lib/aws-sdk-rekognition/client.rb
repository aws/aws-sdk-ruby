# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:rekognition)

module Aws::Rekognition
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :rekognition

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Compares a face in the *source* input image with each face detected in
    # the *target* input image.
    #
    # <note markdown="1"> If the source image contains multiple faces, the service detects the
    # largest face and compares it with each face detected in the target
    # image.
    #
    #  </note>
    #
    # In response, the operation returns an array of face matches ordered by
    # similarity score in descending order. For each face match, the
    # response provides a bounding box of the face, facial landmarks, pose
    # details (pitch, role, and yaw), quality (brightness and sharpness),
    # and confidence value (indicating the level of confidence that the
    # bounding box contains a face). The response also provides a similarity
    # score, which indicates how closely the faces match.
    #
    # <note markdown="1"> By default, only faces with a similarity score of greater than or
    # equal to 80% are returned in the response. You can change this value
    # by specifying the `SimilarityThreshold` parameter.
    #
    #  </note>
    #
    # `CompareFaces` also returns an array of faces that don't match the
    # source image. For each face, it returns a bounding box, confidence
    # value, landmarks, pose details, and quality. The response also returns
    # information about the face in the source image, including the bounding
    # box of the face and confidence value.
    #
    # If the image doesn't contain Exif metadata, `CompareFaces` returns
    # orientation information for the source and target images. Use these
    # values to display the images with the correct image orientation.
    #
    # <note markdown="1"> This is a stateless API operation. That is, data returned by this
    # operation doesn't persist.
    #
    #  </note>
    #
    # For an example, see get-started-exercise-compare-faces.
    #
    # This operation requires permissions to perform the
    # `rekognition:CompareFaces` action.
    #
    # @option params [required, Types::Image] :source_image
    #   The source image, either as bytes or as an S3 object.
    #
    # @option params [required, Types::Image] :target_image
    #   The target image, either as bytes or as an S3 object.
    #
    # @option params [Float] :similarity_threshold
    #   The minimum level of confidence in the face matches that a match must
    #   meet to be included in the `FaceMatches` array.
    #
    # @return [Types::CompareFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CompareFacesResponse#source_image_face #source_image_face} => Types::ComparedSourceImageFace
    #   * {Types::CompareFacesResponse#face_matches #face_matches} => Array&lt;Types::CompareFacesMatch&gt;
    #   * {Types::CompareFacesResponse#unmatched_faces #unmatched_faces} => Array&lt;Types::ComparedFace&gt;
    #   * {Types::CompareFacesResponse#source_image_orientation_correction #source_image_orientation_correction} => String
    #   * {Types::CompareFacesResponse#target_image_orientation_correction #target_image_orientation_correction} => String
    #
    #
    # @example Example: To compare two images
    #
    #   # This operation compares the largest face detected in the source image with each face detected in the target image.
    #
    #   resp = client.compare_faces({
    #     similarity_threshold: 90, 
    #     source_image: {
    #       s3_object: {
    #         bucket: "mybucket", 
    #         name: "mysourceimage", 
    #       }, 
    #     }, 
    #     target_image: {
    #       s3_object: {
    #         bucket: "mybucket", 
    #         name: "mytargetimage", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     face_matches: [
    #       {
    #         face: {
    #           bounding_box: {
    #             height: 0.33481481671333313, 
    #             left: 0.31888890266418457, 
    #             top: 0.4933333396911621, 
    #             width: 0.25, 
    #           }, 
    #           confidence: 99.9991226196289, 
    #         }, 
    #         similarity: 100, 
    #       }, 
    #     ], 
    #     source_image_face: {
    #       bounding_box: {
    #         height: 0.33481481671333313, 
    #         left: 0.31888890266418457, 
    #         top: 0.4933333396911621, 
    #         width: 0.25, 
    #       }, 
    #       confidence: 99.9991226196289, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.compare_faces({
    #     source_image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     target_image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     similarity_threshold: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.source_image_face.bounding_box.width #=> Float
    #   resp.source_image_face.bounding_box.height #=> Float
    #   resp.source_image_face.bounding_box.left #=> Float
    #   resp.source_image_face.bounding_box.top #=> Float
    #   resp.source_image_face.confidence #=> Float
    #   resp.face_matches #=> Array
    #   resp.face_matches[0].similarity #=> Float
    #   resp.face_matches[0].face.bounding_box.width #=> Float
    #   resp.face_matches[0].face.bounding_box.height #=> Float
    #   resp.face_matches[0].face.bounding_box.left #=> Float
    #   resp.face_matches[0].face.bounding_box.top #=> Float
    #   resp.face_matches[0].face.confidence #=> Float
    #   resp.face_matches[0].face.landmarks #=> Array
    #   resp.face_matches[0].face.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil"
    #   resp.face_matches[0].face.landmarks[0].x #=> Float
    #   resp.face_matches[0].face.landmarks[0].y #=> Float
    #   resp.face_matches[0].face.pose.roll #=> Float
    #   resp.face_matches[0].face.pose.yaw #=> Float
    #   resp.face_matches[0].face.pose.pitch #=> Float
    #   resp.face_matches[0].face.quality.brightness #=> Float
    #   resp.face_matches[0].face.quality.sharpness #=> Float
    #   resp.unmatched_faces #=> Array
    #   resp.unmatched_faces[0].bounding_box.width #=> Float
    #   resp.unmatched_faces[0].bounding_box.height #=> Float
    #   resp.unmatched_faces[0].bounding_box.left #=> Float
    #   resp.unmatched_faces[0].bounding_box.top #=> Float
    #   resp.unmatched_faces[0].confidence #=> Float
    #   resp.unmatched_faces[0].landmarks #=> Array
    #   resp.unmatched_faces[0].landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil"
    #   resp.unmatched_faces[0].landmarks[0].x #=> Float
    #   resp.unmatched_faces[0].landmarks[0].y #=> Float
    #   resp.unmatched_faces[0].pose.roll #=> Float
    #   resp.unmatched_faces[0].pose.yaw #=> Float
    #   resp.unmatched_faces[0].pose.pitch #=> Float
    #   resp.unmatched_faces[0].quality.brightness #=> Float
    #   resp.unmatched_faces[0].quality.sharpness #=> Float
    #   resp.source_image_orientation_correction #=> String, one of "ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"
    #   resp.target_image_orientation_correction #=> String, one of "ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"
    #
    # @overload compare_faces(params = {})
    # @param [Hash] params ({})
    def compare_faces(params = {}, options = {})
      req = build_request(:compare_faces, params)
      req.send_request(options)
    end

    # Creates a collection in an AWS Region. You can add faces to the
    # collection using the operation.
    #
    # For example, you might create collections, one for each of your
    # application users. A user can then index faces using the `IndexFaces`
    # operation and persist results in a specific collection. Then, a user
    # can search the collection for faces in the user-specific container.
    #
    # <note markdown="1"> Collection names are case-sensitive.
    #
    #  </note>
    #
    # For an example, see example1.
    #
    # This operation requires permissions to perform the
    # `rekognition:CreateCollection` action.
    #
    # @option params [required, String] :collection_id
    #   ID for the collection that you are creating.
    #
    # @return [Types::CreateCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCollectionResponse#status_code #status_code} => Integer
    #   * {Types::CreateCollectionResponse#collection_arn #collection_arn} => String
    #
    #
    # @example Example: To create a collection
    #
    #   # This operation creates a Rekognition collection for storing image data.
    #
    #   resp = client.create_collection({
    #     collection_id: "myphotos", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     collection_arn: "aws:rekognition:us-west-2:123456789012:collection/myphotos", 
    #     status_code: 200, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_collection({
    #     collection_id: "CollectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.collection_arn #=> String
    #
    # @overload create_collection(params = {})
    # @param [Hash] params ({})
    def create_collection(params = {}, options = {})
      req = build_request(:create_collection, params)
      req.send_request(options)
    end

    # Deletes the specified collection. Note that this operation removes all
    # faces in the collection. For an example, see example1.
    #
    # This operation requires permissions to perform the
    # `rekognition:DeleteCollection` action.
    #
    # @option params [required, String] :collection_id
    #   ID of the collection to delete.
    #
    # @return [Types::DeleteCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCollectionResponse#status_code #status_code} => Integer
    #
    #
    # @example Example: To delete a collection
    #
    #   # This operation deletes a Rekognition collection.
    #
    #   resp = client.delete_collection({
    #     collection_id: "myphotos", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     status_code: 200, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_collection({
    #     collection_id: "CollectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #
    # @overload delete_collection(params = {})
    # @param [Hash] params ({})
    def delete_collection(params = {}, options = {})
      req = build_request(:delete_collection, params)
      req.send_request(options)
    end

    # Deletes faces from a collection. You specify a collection ID and an
    # array of face IDs to remove from the collection.
    #
    # This operation requires permissions to perform the
    # `rekognition:DeleteFaces` action.
    #
    # @option params [required, String] :collection_id
    #   Collection from which to remove the specific faces.
    #
    # @option params [required, Array<String>] :face_ids
    #   An array of face IDs to delete.
    #
    # @return [Types::DeleteFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFacesResponse#deleted_faces #deleted_faces} => Array&lt;String&gt;
    #
    #
    # @example Example: To delete a face
    #
    #   # This operation deletes one or more faces from a Rekognition collection.
    #
    #   resp = client.delete_faces({
    #     collection_id: "myphotos", 
    #     face_ids: [
    #       "ff43d742-0c13-5d16-a3e8-03d3f58e980b", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     deleted_faces: [
    #       "ff43d742-0c13-5d16-a3e8-03d3f58e980b", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_faces({
    #     collection_id: "CollectionId", # required
    #     face_ids: ["FaceId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted_faces #=> Array
    #   resp.deleted_faces[0] #=> String
    #
    # @overload delete_faces(params = {})
    # @param [Hash] params ({})
    def delete_faces(params = {}, options = {})
      req = build_request(:delete_faces, params)
      req.send_request(options)
    end

    # Detects faces within an image (JPEG or PNG) that is provided as input.
    #
    # For each face detected, the operation returns face details including a
    # bounding box of the face, a confidence value (that the bounding box
    # contains a face), and a fixed set of attributes such as facial
    # landmarks (for example, coordinates of eye and mouth), gender,
    # presence of beard, sunglasses, etc.
    #
    # The face-detection algorithm is most effective on frontal faces. For
    # non-frontal or obscured faces, the algorithm may not detect the faces
    # or might detect faces with lower confidence.
    #
    # <note markdown="1"> This is a stateless API operation. That is, the operation does not
    # persist any data.
    #
    #  </note>
    #
    # For an example, see get-started-exercise-detect-faces.
    #
    # This operation requires permissions to perform the
    # `rekognition:DetectFaces` action.
    #
    # @option params [required, Types::Image] :image
    #   The image in which you want to detect faces. You can specify a blob or
    #   an S3 object.
    #
    # @option params [Array<String>] :attributes
    #   An array of facial attributes you want to be returned. This can be the
    #   default list of attributes or all attributes. If you don't specify a
    #   value for `Attributes` or if you specify `["DEFAULT"]`, the API
    #   returns the following subset of facial attributes: `BoundingBox`,
    #   `Confidence`, `Pose`, `Quality` and `Landmarks`. If you provide
    #   `["ALL"]`, all facial attributes are returned but the operation will
    #   take longer to complete.
    #
    #   If you provide both, `["ALL", "DEFAULT"]`, the service uses a logical
    #   AND operator to determine which attributes to return (in this case,
    #   all attributes).
    #
    # @return [Types::DetectFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectFacesResponse#face_details #face_details} => Array&lt;Types::FaceDetail&gt;
    #   * {Types::DetectFacesResponse#orientation_correction #orientation_correction} => String
    #
    #
    # @example Example: To detect faces in an image
    #
    #   # This operation detects faces in an image stored in an AWS S3 bucket.
    #
    #   resp = client.detect_faces({
    #     image: {
    #       s3_object: {
    #         bucket: "mybucket", 
    #         name: "myphoto", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     face_details: [
    #       {
    #         bounding_box: {
    #           height: 0.18000000715255737, 
    #           left: 0.5555555820465088, 
    #           top: 0.33666667342185974, 
    #           width: 0.23999999463558197, 
    #         }, 
    #         confidence: 100, 
    #         landmarks: [
    #           {
    #             type: "eyeLeft", 
    #             x: 0.6394737362861633, 
    #             y: 0.40819624066352844, 
    #           }, 
    #           {
    #             type: "eyeRight", 
    #             x: 0.7266660928726196, 
    #             y: 0.41039225459098816, 
    #           }, 
    #           {
    #             type: "eyeRight", 
    #             x: 0.6912462115287781, 
    #             y: 0.44240960478782654, 
    #           }, 
    #           {
    #             type: "mouthDown", 
    #             x: 0.6306198239326477, 
    #             y: 0.46700039505958557, 
    #           }, 
    #           {
    #             type: "mouthUp", 
    #             x: 0.7215608954429626, 
    #             y: 0.47114261984825134, 
    #           }, 
    #         ], 
    #         pose: {
    #           pitch: 4.050806522369385, 
    #           roll: 0.9950747489929199, 
    #           yaw: 13.693790435791016, 
    #         }, 
    #         quality: {
    #           brightness: 37.60169982910156, 
    #           sharpness: 80, 
    #         }, 
    #       }, 
    #     ], 
    #     orientation_correction: "ROTATE_0", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_faces({
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     attributes: ["DEFAULT"], # accepts DEFAULT, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.face_details #=> Array
    #   resp.face_details[0].bounding_box.width #=> Float
    #   resp.face_details[0].bounding_box.height #=> Float
    #   resp.face_details[0].bounding_box.left #=> Float
    #   resp.face_details[0].bounding_box.top #=> Float
    #   resp.face_details[0].age_range.low #=> Integer
    #   resp.face_details[0].age_range.high #=> Integer
    #   resp.face_details[0].smile.value #=> Boolean
    #   resp.face_details[0].smile.confidence #=> Float
    #   resp.face_details[0].eyeglasses.value #=> Boolean
    #   resp.face_details[0].eyeglasses.confidence #=> Float
    #   resp.face_details[0].sunglasses.value #=> Boolean
    #   resp.face_details[0].sunglasses.confidence #=> Float
    #   resp.face_details[0].gender.value #=> String, one of "Male", "Female"
    #   resp.face_details[0].gender.confidence #=> Float
    #   resp.face_details[0].beard.value #=> Boolean
    #   resp.face_details[0].beard.confidence #=> Float
    #   resp.face_details[0].mustache.value #=> Boolean
    #   resp.face_details[0].mustache.confidence #=> Float
    #   resp.face_details[0].eyes_open.value #=> Boolean
    #   resp.face_details[0].eyes_open.confidence #=> Float
    #   resp.face_details[0].mouth_open.value #=> Boolean
    #   resp.face_details[0].mouth_open.confidence #=> Float
    #   resp.face_details[0].emotions #=> Array
    #   resp.face_details[0].emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN"
    #   resp.face_details[0].emotions[0].confidence #=> Float
    #   resp.face_details[0].landmarks #=> Array
    #   resp.face_details[0].landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil"
    #   resp.face_details[0].landmarks[0].x #=> Float
    #   resp.face_details[0].landmarks[0].y #=> Float
    #   resp.face_details[0].pose.roll #=> Float
    #   resp.face_details[0].pose.yaw #=> Float
    #   resp.face_details[0].pose.pitch #=> Float
    #   resp.face_details[0].quality.brightness #=> Float
    #   resp.face_details[0].quality.sharpness #=> Float
    #   resp.face_details[0].confidence #=> Float
    #   resp.orientation_correction #=> String, one of "ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"
    #
    # @overload detect_faces(params = {})
    # @param [Hash] params ({})
    def detect_faces(params = {}, options = {})
      req = build_request(:detect_faces, params)
      req.send_request(options)
    end

    # Detects instances of real-world labels within an image (JPEG or PNG)
    # provided as input. This includes objects like flower, tree, and table;
    # events like wedding, graduation, and birthday party; and concepts like
    # landscape, evening, and nature. For an example, see
    # get-started-exercise-detect-labels.
    #
    # For each object, scene, and concept the API returns one or more
    # labels. Each label provides the object name, and the level of
    # confidence that the image contains the object. For example, suppose
    # the input image has a lighthouse, the sea, and a rock. The response
    # will include all three labels, one for each object.
    #
    # `\{Name: lighthouse, Confidence: 98.4629\}`
    #
    # `\{Name: rock,Confidence: 79.2097\}`
    #
    # ` \{Name: sea,Confidence: 75.061\}`
    #
    # In the preceding example, the operation returns one label for each of
    # the three objects. The operation can also return multiple labels for
    # the same object in the image. For example, if the input image shows a
    # flower (for example, a tulip), the operation might return the
    # following three labels.
    #
    # `\{Name: flower,Confidence: 99.0562\}`
    #
    # `\{Name: plant,Confidence: 99.0562\}`
    #
    # `\{Name: tulip,Confidence: 99.0562\}`
    #
    # In this example, the detection algorithm more precisely identifies the
    # flower as a tulip.
    #
    # You can provide the input image as an S3 object or as base64-encoded
    # bytes. In response, the API returns an array of labels. In addition,
    # the response also includes the orientation correction. Optionally, you
    # can specify `MinConfidence` to control the confidence threshold for
    # the labels returned. The default is 50%. You can also add the
    # `MaxLabels` parameter to limit the number of labels returned.
    #
    # <note markdown="1"> If the object detected is a person, the operation doesn't provide the
    # same facial details that the DetectFaces operation provides.
    #
    #  </note>
    #
    # This is a stateless API operation. That is, the operation does not
    # persist any data.
    #
    # This operation requires permissions to perform the
    # `rekognition:DetectLabels` action.
    #
    # @option params [required, Types::Image] :image
    #   The input image. You can provide a blob of image bytes or an S3
    #   object.
    #
    # @option params [Integer] :max_labels
    #   Maximum number of labels you want the service to return in the
    #   response. The service returns the specified number of highest
    #   confidence labels.
    #
    # @option params [Float] :min_confidence
    #   Specifies the minimum confidence level for the labels to return.
    #   Amazon Rekognition doesn't return any labels with confidence lower
    #   than this specified value.
    #
    #   If `MinConfidence` is not specified, the operation returns labels with
    #   a confidence values greater than or equal to 50 percent.
    #
    # @return [Types::DetectLabelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectLabelsResponse#labels #labels} => Array&lt;Types::Label&gt;
    #   * {Types::DetectLabelsResponse#orientation_correction #orientation_correction} => String
    #
    #
    # @example Example: To detect labels
    #
    #   # This operation detects labels in the supplied image
    #
    #   resp = client.detect_labels({
    #     image: {
    #       s3_object: {
    #         bucket: "mybucket", 
    #         name: "myphoto", 
    #       }, 
    #     }, 
    #     max_labels: 123, 
    #     min_confidence: 70, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     labels: [
    #       {
    #         confidence: 99.25072479248047, 
    #         name: "People", 
    #       }, 
    #       {
    #         confidence: 99.25074005126953, 
    #         name: "Person", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_labels({
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     max_labels: 1,
    #     min_confidence: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.labels #=> Array
    #   resp.labels[0].name #=> String
    #   resp.labels[0].confidence #=> Float
    #   resp.orientation_correction #=> String, one of "ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"
    #
    # @overload detect_labels(params = {})
    # @param [Hash] params ({})
    def detect_labels(params = {}, options = {})
      req = build_request(:detect_labels, params)
      req.send_request(options)
    end

    # Detects explicit or suggestive adult content in a specified JPEG or
    # PNG format image. Use `DetectModerationLabels` to moderate images
    # depending on your requirements. For example, you might want to filter
    # images that contain nudity, but not images containing suggestive
    # content.
    #
    # To filter images, use the labels returned by `DetectModerationLabels`
    # to determine which types of content are appropriate. For information
    # about moderation labels, see image-moderation.
    #
    # @option params [required, Types::Image] :image
    #   The input image as bytes or an S3 object.
    #
    # @option params [Float] :min_confidence
    #   Specifies the minimum confidence level for the labels to return.
    #   Amazon Rekognition doesn't return any labels with a confidence level
    #   lower than this specified value.
    #
    #   If you don't specify `MinConfidence`, the operation returns labels
    #   with confidence values greater than or equal to 50 percent.
    #
    # @return [Types::DetectModerationLabelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectModerationLabelsResponse#moderation_labels #moderation_labels} => Array&lt;Types::ModerationLabel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_moderation_labels({
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     min_confidence: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.moderation_labels #=> Array
    #   resp.moderation_labels[0].confidence #=> Float
    #   resp.moderation_labels[0].name #=> String
    #   resp.moderation_labels[0].parent_name #=> String
    #
    # @overload detect_moderation_labels(params = {})
    # @param [Hash] params ({})
    def detect_moderation_labels(params = {}, options = {})
      req = build_request(:detect_moderation_labels, params)
      req.send_request(options)
    end

    # Gets the name and additional information about a celebrity based on
    # his or her Rekognition ID. The additional information is returned as
    # an array of URLs. If there is no additional information about the
    # celebrity, this list is empty. For more information, see
    # celebrity-recognition.
    #
    # This operation requires permissions to perform the
    # `rekognition:GetCelebrityInfo` action.
    #
    # @option params [required, String] :id
    #   The ID for the celebrity. You get the celebrity ID from a call to the
    #   operation, which recognizes celebrities in an image.
    #
    # @return [Types::GetCelebrityInfoResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCelebrityInfoResponse#urls #urls} => Array&lt;String&gt;
    #   * {Types::GetCelebrityInfoResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_celebrity_info({
    #     id: "RekognitionUniqueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.urls #=> Array
    #   resp.urls[0] #=> String
    #   resp.name #=> String
    #
    # @overload get_celebrity_info(params = {})
    # @param [Hash] params ({})
    def get_celebrity_info(params = {}, options = {})
      req = build_request(:get_celebrity_info, params)
      req.send_request(options)
    end

    # Detects faces in the input image and adds them to the specified
    # collection.
    #
    # Amazon Rekognition does not save the actual faces detected. Instead,
    # the underlying detection algorithm first detects the faces in the
    # input image, and for each face extracts facial features into a feature
    # vector, and stores it in the back-end database. Amazon Rekognition
    # uses feature vectors when performing face match and search operations
    # using the and operations.
    #
    # If you provide the optional `externalImageID` for the input image you
    # provided, Amazon Rekognition associates this ID with all faces that it
    # detects. When you call the operation, the response returns the
    # external ID. You can use this external image ID to create a
    # client-side index to associate the faces with each image. You can then
    # use the index to find all faces in an image.
    #
    # In response, the operation returns an array of metadata for all
    # detected faces. This includes, the bounding box of the detected face,
    # confidence value (indicating the bounding box contains a face), a face
    # ID assigned by the service for each face that is detected and stored,
    # and an image ID assigned by the service for the input image. If you
    # request all facial attributes (using the `detectionAttributes`
    # parameter, Amazon Rekognition returns detailed facial attributes such
    # as facial landmarks (for example, location of eye and mount) and other
    # facial attributes such gender. If you provide the same image, specify
    # the same collection, and use the same external ID in the `IndexFaces`
    # operation, Amazon Rekognition doesn't save duplicate face metadata.
    #
    # For an example, see example2.
    #
    # This operation requires permissions to perform the
    # `rekognition:IndexFaces` action.
    #
    # @option params [required, String] :collection_id
    #   The ID of an existing collection to which you want to add the faces
    #   that are detected in the input images.
    #
    # @option params [required, Types::Image] :image
    #   The input image as bytes or an S3 object.
    #
    # @option params [String] :external_image_id
    #   ID you want to assign to all the faces detected in the image.
    #
    # @option params [Array<String>] :detection_attributes
    #   An array of facial attributes that you want to be returned. This can
    #   be the default list of attributes or all attributes. If you don't
    #   specify a value for `Attributes` or if you specify `["DEFAULT"]`, the
    #   API returns the following subset of facial attributes: `BoundingBox`,
    #   `Confidence`, `Pose`, `Quality` and `Landmarks`. If you provide
    #   `["ALL"]`, all facial attributes are returned but the operation will
    #   take longer to complete.
    #
    #   If you provide both, `["ALL", "DEFAULT"]`, the service uses a logical
    #   AND operator to determine which attributes to return (in this case,
    #   all attributes).
    #
    # @return [Types::IndexFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IndexFacesResponse#face_records #face_records} => Array&lt;Types::FaceRecord&gt;
    #   * {Types::IndexFacesResponse#orientation_correction #orientation_correction} => String
    #
    #
    # @example Example: To add a face to a collection
    #
    #   # This operation detects faces in an image and adds them to the specified Rekognition collection.
    #
    #   resp = client.index_faces({
    #     collection_id: "myphotos", 
    #     detection_attributes: [
    #     ], 
    #     external_image_id: "myphotoid", 
    #     image: {
    #       s3_object: {
    #         bucket: "mybucket", 
    #         name: "myphoto", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     face_records: [
    #       {
    #         face: {
    #           bounding_box: {
    #             height: 0.33481481671333313, 
    #             left: 0.31888890266418457, 
    #             top: 0.4933333396911621, 
    #             width: 0.25, 
    #           }, 
    #           confidence: 99.9991226196289, 
    #           face_id: "ff43d742-0c13-5d16-a3e8-03d3f58e980b", 
    #           image_id: "465f4e93-763e-51d0-b030-b9667a2d94b1", 
    #         }, 
    #         face_detail: {
    #           bounding_box: {
    #             height: 0.33481481671333313, 
    #             left: 0.31888890266418457, 
    #             top: 0.4933333396911621, 
    #             width: 0.25, 
    #           }, 
    #           confidence: 99.9991226196289, 
    #           landmarks: [
    #             {
    #               type: "eyeLeft", 
    #               x: 0.3976764678955078, 
    #               y: 0.6248345971107483, 
    #             }, 
    #             {
    #               type: "eyeRight", 
    #               x: 0.4810936450958252, 
    #               y: 0.6317117214202881, 
    #             }, 
    #             {
    #               type: "noseLeft", 
    #               x: 0.41986238956451416, 
    #               y: 0.7111940383911133, 
    #             }, 
    #             {
    #               type: "mouthDown", 
    #               x: 0.40525302290916443, 
    #               y: 0.7497701048851013, 
    #             }, 
    #             {
    #               type: "mouthUp", 
    #               x: 0.4753248989582062, 
    #               y: 0.7558549642562866, 
    #             }, 
    #           ], 
    #           pose: {
    #             pitch: -9.713645935058594, 
    #             roll: 4.707281112670898, 
    #             yaw: -24.438663482666016, 
    #           }, 
    #           quality: {
    #             brightness: 29.23358917236328, 
    #             sharpness: 80, 
    #           }, 
    #         }, 
    #       }, 
    #       {
    #         face: {
    #           bounding_box: {
    #             height: 0.32592591643333435, 
    #             left: 0.5144444704055786, 
    #             top: 0.15111111104488373, 
    #             width: 0.24444444477558136, 
    #           }, 
    #           confidence: 99.99950408935547, 
    #           face_id: "8be04dba-4e58-520d-850e-9eae4af70eb2", 
    #           image_id: "465f4e93-763e-51d0-b030-b9667a2d94b1", 
    #         }, 
    #         face_detail: {
    #           bounding_box: {
    #             height: 0.32592591643333435, 
    #             left: 0.5144444704055786, 
    #             top: 0.15111111104488373, 
    #             width: 0.24444444477558136, 
    #           }, 
    #           confidence: 99.99950408935547, 
    #           landmarks: [
    #             {
    #               type: "eyeLeft", 
    #               x: 0.6006892323493958, 
    #               y: 0.290842205286026, 
    #             }, 
    #             {
    #               type: "eyeRight", 
    #               x: 0.6808141469955444, 
    #               y: 0.29609042406082153, 
    #             }, 
    #             {
    #               type: "noseLeft", 
    #               x: 0.6395332217216492, 
    #               y: 0.3522595763206482, 
    #             }, 
    #             {
    #               type: "mouthDown", 
    #               x: 0.5892083048820496, 
    #               y: 0.38689887523651123, 
    #             }, 
    #             {
    #               type: "mouthUp", 
    #               x: 0.674560010433197, 
    #               y: 0.394125759601593, 
    #             }, 
    #           ], 
    #           pose: {
    #             pitch: -4.683138370513916, 
    #             roll: 2.1029529571533203, 
    #             yaw: 6.716655254364014, 
    #           }, 
    #           quality: {
    #             brightness: 34.951698303222656, 
    #             sharpness: 160, 
    #           }, 
    #         }, 
    #       }, 
    #     ], 
    #     orientation_correction: "ROTATE_0", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.index_faces({
    #     collection_id: "CollectionId", # required
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     external_image_id: "ExternalImageId",
    #     detection_attributes: ["DEFAULT"], # accepts DEFAULT, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.face_records #=> Array
    #   resp.face_records[0].face.face_id #=> String
    #   resp.face_records[0].face.bounding_box.width #=> Float
    #   resp.face_records[0].face.bounding_box.height #=> Float
    #   resp.face_records[0].face.bounding_box.left #=> Float
    #   resp.face_records[0].face.bounding_box.top #=> Float
    #   resp.face_records[0].face.image_id #=> String
    #   resp.face_records[0].face.external_image_id #=> String
    #   resp.face_records[0].face.confidence #=> Float
    #   resp.face_records[0].face_detail.bounding_box.width #=> Float
    #   resp.face_records[0].face_detail.bounding_box.height #=> Float
    #   resp.face_records[0].face_detail.bounding_box.left #=> Float
    #   resp.face_records[0].face_detail.bounding_box.top #=> Float
    #   resp.face_records[0].face_detail.age_range.low #=> Integer
    #   resp.face_records[0].face_detail.age_range.high #=> Integer
    #   resp.face_records[0].face_detail.smile.value #=> Boolean
    #   resp.face_records[0].face_detail.smile.confidence #=> Float
    #   resp.face_records[0].face_detail.eyeglasses.value #=> Boolean
    #   resp.face_records[0].face_detail.eyeglasses.confidence #=> Float
    #   resp.face_records[0].face_detail.sunglasses.value #=> Boolean
    #   resp.face_records[0].face_detail.sunglasses.confidence #=> Float
    #   resp.face_records[0].face_detail.gender.value #=> String, one of "Male", "Female"
    #   resp.face_records[0].face_detail.gender.confidence #=> Float
    #   resp.face_records[0].face_detail.beard.value #=> Boolean
    #   resp.face_records[0].face_detail.beard.confidence #=> Float
    #   resp.face_records[0].face_detail.mustache.value #=> Boolean
    #   resp.face_records[0].face_detail.mustache.confidence #=> Float
    #   resp.face_records[0].face_detail.eyes_open.value #=> Boolean
    #   resp.face_records[0].face_detail.eyes_open.confidence #=> Float
    #   resp.face_records[0].face_detail.mouth_open.value #=> Boolean
    #   resp.face_records[0].face_detail.mouth_open.confidence #=> Float
    #   resp.face_records[0].face_detail.emotions #=> Array
    #   resp.face_records[0].face_detail.emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN"
    #   resp.face_records[0].face_detail.emotions[0].confidence #=> Float
    #   resp.face_records[0].face_detail.landmarks #=> Array
    #   resp.face_records[0].face_detail.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil"
    #   resp.face_records[0].face_detail.landmarks[0].x #=> Float
    #   resp.face_records[0].face_detail.landmarks[0].y #=> Float
    #   resp.face_records[0].face_detail.pose.roll #=> Float
    #   resp.face_records[0].face_detail.pose.yaw #=> Float
    #   resp.face_records[0].face_detail.pose.pitch #=> Float
    #   resp.face_records[0].face_detail.quality.brightness #=> Float
    #   resp.face_records[0].face_detail.quality.sharpness #=> Float
    #   resp.face_records[0].face_detail.confidence #=> Float
    #   resp.orientation_correction #=> String, one of "ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"
    #
    # @overload index_faces(params = {})
    # @param [Hash] params ({})
    def index_faces(params = {}, options = {})
      req = build_request(:index_faces, params)
      req.send_request(options)
    end

    # Returns list of collection IDs in your account. If the result is
    # truncated, the response also provides a `NextToken` that you can use
    # in the subsequent request to fetch the next set of collection IDs.
    #
    # For an example, see example1.
    #
    # This operation requires permissions to perform the
    # `rekognition:ListCollections` action.
    #
    # @option params [String] :next_token
    #   Pagination token from the previous response.
    #
    # @option params [Integer] :max_results
    #   Maximum number of collection IDs to return.
    #
    # @return [Types::ListCollectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollectionsResponse#collection_ids #collection_ids} => Array&lt;String&gt;
    #   * {Types::ListCollectionsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list the collections
    #
    #   # This operation returns a list of Rekognition collections.
    #
    #   resp = client.list_collections({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     collection_ids: [
    #       "myphotos", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collections({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.collection_ids #=> Array
    #   resp.collection_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_collections(params = {})
    # @param [Hash] params ({})
    def list_collections(params = {}, options = {})
      req = build_request(:list_collections, params)
      req.send_request(options)
    end

    # Returns metadata for faces in the specified collection. This metadata
    # includes information such as the bounding box coordinates, the
    # confidence (that the bounding box contains a face), and face ID. For
    # an example, see example3.
    #
    # This operation requires permissions to perform the
    # `rekognition:ListFaces` action.
    #
    # @option params [required, String] :collection_id
    #   ID of the collection from which to list the faces.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Rekognition returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of faces.
    #
    # @option params [Integer] :max_results
    #   Maximum number of faces to return.
    #
    # @return [Types::ListFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFacesResponse#faces #faces} => Array&lt;Types::Face&gt;
    #   * {Types::ListFacesResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list the faces in a collection
    #
    #   # This operation lists the faces in a Rekognition collection.
    #
    #   resp = client.list_faces({
    #     collection_id: "myphotos", 
    #     max_results: 20, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     faces: [
    #       {
    #         bounding_box: {
    #           height: 0.18000000715255737, 
    #           left: 0.5555559992790222, 
    #           top: 0.336667001247406, 
    #           width: 0.23999999463558197, 
    #         }, 
    #         confidence: 100, 
    #         face_id: "1c62e8b5-69a7-5b7d-b3cd-db4338a8a7e7", 
    #         image_id: "147fdf82-7a71-52cf-819b-e786c7b9746e", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.16555599868297577, 
    #           left: 0.30963000655174255, 
    #           top: 0.7066670060157776, 
    #           width: 0.22074100375175476, 
    #         }, 
    #         confidence: 100, 
    #         face_id: "29a75abe-397b-5101-ba4f-706783b2246c", 
    #         image_id: "147fdf82-7a71-52cf-819b-e786c7b9746e", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.3234420120716095, 
    #           left: 0.3233329951763153, 
    #           top: 0.5, 
    #           width: 0.24222199618816376, 
    #         }, 
    #         confidence: 99.99829864501953, 
    #         face_id: "38271d79-7bc2-5efb-b752-398a8d575b85", 
    #         image_id: "d5631190-d039-54e4-b267-abd22c8647c5", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.03555560111999512, 
    #           left: 0.37388700246810913, 
    #           top: 0.2477779984474182, 
    #           width: 0.04747769981622696, 
    #         }, 
    #         confidence: 99.99210357666016, 
    #         face_id: "3b01bef0-c883-5654-ba42-d5ad28b720b3", 
    #         image_id: "812d9f04-86f9-54fc-9275-8d0dcbcb6784", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.05333330109715462, 
    #           left: 0.2937690019607544, 
    #           top: 0.35666701197624207, 
    #           width: 0.07121659815311432, 
    #         }, 
    #         confidence: 99.99919891357422, 
    #         face_id: "4839a608-49d0-566c-8301-509d71b534d1", 
    #         image_id: "812d9f04-86f9-54fc-9275-8d0dcbcb6784", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.3249259889125824, 
    #           left: 0.5155559778213501, 
    #           top: 0.1513350009918213, 
    #           width: 0.24333299696445465, 
    #         }, 
    #         confidence: 99.99949645996094, 
    #         face_id: "70008e50-75e4-55d0-8e80-363fb73b3a14", 
    #         image_id: "d5631190-d039-54e4-b267-abd22c8647c5", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.03777780011296272, 
    #           left: 0.7002969980239868, 
    #           top: 0.18777799606323242, 
    #           width: 0.05044509842991829, 
    #         }, 
    #         confidence: 99.92639923095703, 
    #         face_id: "7f5f88ed-d684-5a88-b0df-01e4a521552b", 
    #         image_id: "812d9f04-86f9-54fc-9275-8d0dcbcb6784", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.05555560067296028, 
    #           left: 0.13946600258350372, 
    #           top: 0.46333301067352295, 
    #           width: 0.07270029932260513, 
    #         }, 
    #         confidence: 99.99469757080078, 
    #         face_id: "895b4e2c-81de-5902-a4bd-d1792bda00b2", 
    #         image_id: "812d9f04-86f9-54fc-9275-8d0dcbcb6784", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.3259260058403015, 
    #           left: 0.5144439935684204, 
    #           top: 0.15111100673675537, 
    #           width: 0.24444399774074554, 
    #         }, 
    #         confidence: 99.99949645996094, 
    #         face_id: "8be04dba-4e58-520d-850e-9eae4af70eb2", 
    #         image_id: "465f4e93-763e-51d0-b030-b9667a2d94b1", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.18888899683952332, 
    #           left: 0.3783380091190338, 
    #           top: 0.2355560064315796, 
    #           width: 0.25222599506378174, 
    #         }, 
    #         confidence: 99.9999008178711, 
    #         face_id: "908544ad-edc3-59df-8faf-6a87cc256cf5", 
    #         image_id: "3c731605-d772-541a-a5e7-0375dbc68a07", 
    #       }, 
    #       {
    #         bounding_box: {
    #           height: 0.33481499552726746, 
    #           left: 0.31888899207115173, 
    #           top: 0.49333301186561584, 
    #           width: 0.25, 
    #         }, 
    #         confidence: 99.99909973144531, 
    #         face_id: "ff43d742-0c13-5d16-a3e8-03d3f58e980b", 
    #         image_id: "465f4e93-763e-51d0-b030-b9667a2d94b1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_faces({
    #     collection_id: "CollectionId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.faces #=> Array
    #   resp.faces[0].face_id #=> String
    #   resp.faces[0].bounding_box.width #=> Float
    #   resp.faces[0].bounding_box.height #=> Float
    #   resp.faces[0].bounding_box.left #=> Float
    #   resp.faces[0].bounding_box.top #=> Float
    #   resp.faces[0].image_id #=> String
    #   resp.faces[0].external_image_id #=> String
    #   resp.faces[0].confidence #=> Float
    #   resp.next_token #=> String
    #
    # @overload list_faces(params = {})
    # @param [Hash] params ({})
    def list_faces(params = {}, options = {})
      req = build_request(:list_faces, params)
      req.send_request(options)
    end

    # Returns an array of celebrities recognized in the input image. The
    # image is passed either as base64-encoded image bytes or as a reference
    # to an image in an Amazon S3 bucket. The image must be either a PNG or
    # JPEG formatted file. For more information, see celebrity-recognition.
    #
    # `RecognizeCelebrities` returns the 15 largest faces in the image. It
    # lists recognized celebrities in the `CelebrityFaces` list and
    # unrecognized faces in the `UnrecognizedFaces` list. The operation
    # doesn't return celebrities whose face sizes are smaller than the
    # largest 15 faces in the image.
    #
    # For each celebrity recognized, the API returns a `Celebrity` object.
    # The `Celebrity` object contains the celebrity name, ID, URL links to
    # additional information, match confidence, and a `ComparedFace` object
    # that you can use to locate the celebrity's face on the image.
    #
    # Rekognition does not retain information about which images a celebrity
    # has been recognized in. Your application must store this information
    # and use the `Celebrity` ID property as a unique identifier for the
    # celebrity. If you don't store the celebrity name or additional
    # information URLs returned by `RecognizeCelebrities`, you will need the
    # ID to identify the celebrity in a call to the operation.
    #
    # For an example, see recognize-celebrities-tutorial.
    #
    # This operation requires permissions to perform the
    # `rekognition:RecognizeCelebrities` operation.
    #
    # @option params [required, Types::Image] :image
    #   The input image to use for celebrity recognition.
    #
    # @return [Types::RecognizeCelebritiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RecognizeCelebritiesResponse#celebrity_faces #celebrity_faces} => Array&lt;Types::Celebrity&gt;
    #   * {Types::RecognizeCelebritiesResponse#unrecognized_faces #unrecognized_faces} => Array&lt;Types::ComparedFace&gt;
    #   * {Types::RecognizeCelebritiesResponse#orientation_correction #orientation_correction} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.recognize_celebrities({
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.celebrity_faces #=> Array
    #   resp.celebrity_faces[0].urls #=> Array
    #   resp.celebrity_faces[0].urls[0] #=> String
    #   resp.celebrity_faces[0].name #=> String
    #   resp.celebrity_faces[0].id #=> String
    #   resp.celebrity_faces[0].face.bounding_box.width #=> Float
    #   resp.celebrity_faces[0].face.bounding_box.height #=> Float
    #   resp.celebrity_faces[0].face.bounding_box.left #=> Float
    #   resp.celebrity_faces[0].face.bounding_box.top #=> Float
    #   resp.celebrity_faces[0].face.confidence #=> Float
    #   resp.celebrity_faces[0].face.landmarks #=> Array
    #   resp.celebrity_faces[0].face.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil"
    #   resp.celebrity_faces[0].face.landmarks[0].x #=> Float
    #   resp.celebrity_faces[0].face.landmarks[0].y #=> Float
    #   resp.celebrity_faces[0].face.pose.roll #=> Float
    #   resp.celebrity_faces[0].face.pose.yaw #=> Float
    #   resp.celebrity_faces[0].face.pose.pitch #=> Float
    #   resp.celebrity_faces[0].face.quality.brightness #=> Float
    #   resp.celebrity_faces[0].face.quality.sharpness #=> Float
    #   resp.celebrity_faces[0].match_confidence #=> Float
    #   resp.unrecognized_faces #=> Array
    #   resp.unrecognized_faces[0].bounding_box.width #=> Float
    #   resp.unrecognized_faces[0].bounding_box.height #=> Float
    #   resp.unrecognized_faces[0].bounding_box.left #=> Float
    #   resp.unrecognized_faces[0].bounding_box.top #=> Float
    #   resp.unrecognized_faces[0].confidence #=> Float
    #   resp.unrecognized_faces[0].landmarks #=> Array
    #   resp.unrecognized_faces[0].landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil"
    #   resp.unrecognized_faces[0].landmarks[0].x #=> Float
    #   resp.unrecognized_faces[0].landmarks[0].y #=> Float
    #   resp.unrecognized_faces[0].pose.roll #=> Float
    #   resp.unrecognized_faces[0].pose.yaw #=> Float
    #   resp.unrecognized_faces[0].pose.pitch #=> Float
    #   resp.unrecognized_faces[0].quality.brightness #=> Float
    #   resp.unrecognized_faces[0].quality.sharpness #=> Float
    #   resp.orientation_correction #=> String, one of "ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"
    #
    # @overload recognize_celebrities(params = {})
    # @param [Hash] params ({})
    def recognize_celebrities(params = {}, options = {})
      req = build_request(:recognize_celebrities, params)
      req.send_request(options)
    end

    # For a given input face ID, searches for matching faces in the
    # collection the face belongs to. You get a face ID when you add a face
    # to the collection using the IndexFaces operation. The operation
    # compares the features of the input face with faces in the specified
    # collection.
    #
    # <note markdown="1"> You can also search faces without indexing faces by using the
    # `SearchFacesByImage` operation.
    #
    #  </note>
    #
    # The operation response returns an array of faces that match, ordered
    # by similarity score with the highest similarity first. More
    # specifically, it is an array of metadata for each face match that is
    # found. Along with the metadata, the response also includes a
    # `confidence` value for each face match, indicating the confidence that
    # the specific face matches the input face.
    #
    # For an example, see example3.
    #
    # This operation requires permissions to perform the
    # `rekognition:SearchFaces` action.
    #
    # @option params [required, String] :collection_id
    #   ID of the collection the face belongs to.
    #
    # @option params [required, String] :face_id
    #   ID of a face to find matches for in the collection.
    #
    # @option params [Integer] :max_faces
    #   Maximum number of faces to return. The operation returns the maximum
    #   number of faces with the highest confidence in the match.
    #
    # @option params [Float] :face_match_threshold
    #   Optional value specifying the minimum confidence in the face match to
    #   return. For example, don't return any matches where confidence in
    #   matches is less than 70%.
    #
    # @return [Types::SearchFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFacesResponse#searched_face_id #searched_face_id} => String
    #   * {Types::SearchFacesResponse#face_matches #face_matches} => Array&lt;Types::FaceMatch&gt;
    #
    #
    # @example Example: To delete a face
    #
    #   # This operation searches for matching faces in the collection the supplied face belongs to.
    #
    #   resp = client.search_faces({
    #     collection_id: "myphotos", 
    #     face_id: "70008e50-75e4-55d0-8e80-363fb73b3a14", 
    #     face_match_threshold: 90, 
    #     max_faces: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     face_matches: [
    #       {
    #         face: {
    #           bounding_box: {
    #             height: 0.3259260058403015, 
    #             left: 0.5144439935684204, 
    #             top: 0.15111100673675537, 
    #             width: 0.24444399774074554, 
    #           }, 
    #           confidence: 99.99949645996094, 
    #           face_id: "8be04dba-4e58-520d-850e-9eae4af70eb2", 
    #           image_id: "465f4e93-763e-51d0-b030-b9667a2d94b1", 
    #         }, 
    #         similarity: 99.97222137451172, 
    #       }, 
    #       {
    #         face: {
    #           bounding_box: {
    #             height: 0.16555599868297577, 
    #             left: 0.30963000655174255, 
    #             top: 0.7066670060157776, 
    #             width: 0.22074100375175476, 
    #           }, 
    #           confidence: 100, 
    #           face_id: "29a75abe-397b-5101-ba4f-706783b2246c", 
    #           image_id: "147fdf82-7a71-52cf-819b-e786c7b9746e", 
    #         }, 
    #         similarity: 97.04154968261719, 
    #       }, 
    #       {
    #         face: {
    #           bounding_box: {
    #             height: 0.18888899683952332, 
    #             left: 0.3783380091190338, 
    #             top: 0.2355560064315796, 
    #             width: 0.25222599506378174, 
    #           }, 
    #           confidence: 99.9999008178711, 
    #           face_id: "908544ad-edc3-59df-8faf-6a87cc256cf5", 
    #           image_id: "3c731605-d772-541a-a5e7-0375dbc68a07", 
    #         }, 
    #         similarity: 95.94520568847656, 
    #       }, 
    #     ], 
    #     searched_face_id: "70008e50-75e4-55d0-8e80-363fb73b3a14", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_faces({
    #     collection_id: "CollectionId", # required
    #     face_id: "FaceId", # required
    #     max_faces: 1,
    #     face_match_threshold: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.searched_face_id #=> String
    #   resp.face_matches #=> Array
    #   resp.face_matches[0].similarity #=> Float
    #   resp.face_matches[0].face.face_id #=> String
    #   resp.face_matches[0].face.bounding_box.width #=> Float
    #   resp.face_matches[0].face.bounding_box.height #=> Float
    #   resp.face_matches[0].face.bounding_box.left #=> Float
    #   resp.face_matches[0].face.bounding_box.top #=> Float
    #   resp.face_matches[0].face.image_id #=> String
    #   resp.face_matches[0].face.external_image_id #=> String
    #   resp.face_matches[0].face.confidence #=> Float
    #
    # @overload search_faces(params = {})
    # @param [Hash] params ({})
    def search_faces(params = {}, options = {})
      req = build_request(:search_faces, params)
      req.send_request(options)
    end

    # For a given input image, first detects the largest face in the image,
    # and then searches the specified collection for matching faces. The
    # operation compares the features of the input face with faces in the
    # specified collection.
    #
    # <note markdown="1"> To search for all faces in an input image, you might first call the
    # operation, and then use the face IDs returned in subsequent calls to
    # the operation.
    #
    #  You can also call the `DetectFaces` operation and use the bounding
    # boxes in the response to make face crops, which then you can pass in
    # to the `SearchFacesByImage` operation.
    #
    #  </note>
    #
    # The response returns an array of faces that match, ordered by
    # similarity score with the highest similarity first. More specifically,
    # it is an array of metadata for each face match found. Along with the
    # metadata, the response also includes a `similarity` indicating how
    # similar the face is to the input face. In the response, the operation
    # also returns the bounding box (and a confidence level that the
    # bounding box contains a face) of the face that Amazon Rekognition used
    # for the input image.
    #
    # For an example, see example3.
    #
    # This operation requires permissions to perform the
    # `rekognition:SearchFacesByImage` action.
    #
    # @option params [required, String] :collection_id
    #   ID of the collection to search.
    #
    # @option params [required, Types::Image] :image
    #   The input image as bytes or an S3 object.
    #
    # @option params [Integer] :max_faces
    #   Maximum number of faces to return. The operation returns the maximum
    #   number of faces with the highest confidence in the match.
    #
    # @option params [Float] :face_match_threshold
    #   (Optional) Specifies the minimum confidence in the face match to
    #   return. For example, don't return any matches where confidence in
    #   matches is less than 70%.
    #
    # @return [Types::SearchFacesByImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFacesByImageResponse#searched_face_bounding_box #searched_face_bounding_box} => Types::BoundingBox
    #   * {Types::SearchFacesByImageResponse#searched_face_confidence #searched_face_confidence} => Float
    #   * {Types::SearchFacesByImageResponse#face_matches #face_matches} => Array&lt;Types::FaceMatch&gt;
    #
    #
    # @example Example: To search for faces matching a supplied image
    #
    #   # This operation searches for faces in a Rekognition collection that match the largest face in an S3 bucket stored image.
    #
    #   resp = client.search_faces_by_image({
    #     collection_id: "myphotos", 
    #     face_match_threshold: 95, 
    #     image: {
    #       s3_object: {
    #         bucket: "mybucket", 
    #         name: "myphoto", 
    #       }, 
    #     }, 
    #     max_faces: 5, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     face_matches: [
    #       {
    #         face: {
    #           bounding_box: {
    #             height: 0.3234420120716095, 
    #             left: 0.3233329951763153, 
    #             top: 0.5, 
    #             width: 0.24222199618816376, 
    #           }, 
    #           confidence: 99.99829864501953, 
    #           face_id: "38271d79-7bc2-5efb-b752-398a8d575b85", 
    #           image_id: "d5631190-d039-54e4-b267-abd22c8647c5", 
    #         }, 
    #         similarity: 99.97036743164062, 
    #       }, 
    #     ], 
    #     searched_face_bounding_box: {
    #       height: 0.33481481671333313, 
    #       left: 0.31888890266418457, 
    #       top: 0.4933333396911621, 
    #       width: 0.25, 
    #     }, 
    #     searched_face_confidence: 99.9991226196289, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_faces_by_image({
    #     collection_id: "CollectionId", # required
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     max_faces: 1,
    #     face_match_threshold: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.searched_face_bounding_box.width #=> Float
    #   resp.searched_face_bounding_box.height #=> Float
    #   resp.searched_face_bounding_box.left #=> Float
    #   resp.searched_face_bounding_box.top #=> Float
    #   resp.searched_face_confidence #=> Float
    #   resp.face_matches #=> Array
    #   resp.face_matches[0].similarity #=> Float
    #   resp.face_matches[0].face.face_id #=> String
    #   resp.face_matches[0].face.bounding_box.width #=> Float
    #   resp.face_matches[0].face.bounding_box.height #=> Float
    #   resp.face_matches[0].face.bounding_box.left #=> Float
    #   resp.face_matches[0].face.bounding_box.top #=> Float
    #   resp.face_matches[0].face.image_id #=> String
    #   resp.face_matches[0].face.external_image_id #=> String
    #   resp.face_matches[0].face.confidence #=> Float
    #
    # @overload search_faces_by_image(params = {})
    # @param [Hash] params ({})
    def search_faces_by_image(params = {}, options = {})
      req = build_request(:search_faces_by_image, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-rekognition'
      context[:gem_version] = '1.0.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
