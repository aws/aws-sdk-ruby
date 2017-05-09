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
    # largest face and uses it to compare with each face detected in the
    # target image.
    #
    #  </note>
    #
    # In response, the operation returns an array of face matches ordered by
    # similarity score with the highest similarity scores first. For each
    # face match, the response provides a bounding box of the face and
    # `confidence` value (indicating the level of confidence that the
    # bounding box contains a face). The response also provides a
    # `similarity` score, which indicates how closely the faces match.
    #
    # <note markdown="1"> By default, only faces with the similarity score of greater than or
    # equal to 80% are returned in the response. You can change this value.
    #
    #  </note>
    #
    # In addition to the face matches, the response returns information
    # about the face in the source image, including the bounding box of the
    # face and confidence value.
    #
    # <note markdown="1"> This is a stateless API operation. That is, the operation does not
    # persist any data.
    #
    #  </note>
    #
    # For an example, see get-started-exercise-compare-faces
    #
    # This operation requires permissions to perform the
    # `rekognition:CompareFaces` action.
    #
    # @option params [required, Types::Image] :source_image
    #   Source image either as bytes or an S3 object
    #
    # @option params [required, Types::Image] :target_image
    #   Target image either as bytes or an S3 object
    #
    # @option params [Float] :similarity_threshold
    #   The minimum level of confidence in the match you want included in the
    #   result.
    #
    # @return [Types::CompareFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CompareFacesResponse#source_image_face #source_image_face} => Types::ComparedSourceImageFace
    #   * {Types::CompareFacesResponse#face_matches #face_matches} => Array&lt;Types::CompareFacesMatch&gt;
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
    #   A list of facial attributes you want to be returned. This can be the
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
    #   resp.face_details[0].gender.value #=> String, one of "MALE", "FEMALE"
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
    #   resp.face_details[0].landmarks[0].type #=> String, one of "EYE_LEFT", "EYE_RIGHT", "NOSE", "MOUTH_LEFT", "MOUTH_RIGHT", "LEFT_EYEBROW_LEFT", "LEFT_EYEBROW_RIGHT", "LEFT_EYEBROW_UP", "RIGHT_EYEBROW_LEFT", "RIGHT_EYEBROW_RIGHT", "RIGHT_EYEBROW_UP", "LEFT_EYE_LEFT", "LEFT_EYE_RIGHT", "LEFT_EYE_UP", "LEFT_EYE_DOWN", "RIGHT_EYE_LEFT", "RIGHT_EYE_RIGHT", "RIGHT_EYE_UP", "RIGHT_EYE_DOWN", "NOSE_LEFT", "NOSE_RIGHT", "MOUTH_UP", "MOUTH_DOWN", "LEFT_PUPIL", "RIGHT_PUPIL"
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

    # Detects explicit or suggestive adult content in a specified .jpeg or
    # .png image. Use `DetectModerationLabels` to moderate images depending
    # on your requirements. For example, you might want to filter images
    # that contain nudity, but not images containing suggestive content.
    #
    # To filter images, use the labels returned by `DetectModerationLabels`
    # to determine which types of content are appropriate. For information
    # about moderation labels, see howitworks-moderateimage.
    #
    # @option params [required, Types::Image] :image
    #   Provides the source image either as bytes or an S3 object.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   You may need to Base64-encode the image bytes depending on the
    #   language you are using and whether or not you are using the AWS SDK.
    #   For more information, see example4.
    #
    #   If you use the Amazon CLI to call Amazon Rekognition operations,
    #   passing image bytes using the Bytes property is not supported. You
    #   must first upload the image to an Amazon S3 bucket and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see
    #   manage-access-resource-policies.
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
    # and an image ID assigned by the service for the input image If you
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
    #   Provides the source image either as bytes or an S3 object.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   You may need to Base64-encode the image bytes depending on the
    #   language you are using and whether or not you are using the AWS SDK.
    #   For more information, see example4.
    #
    #   If you use the Amazon CLI to call Amazon Rekognition operations,
    #   passing image bytes using the Bytes property is not supported. You
    #   must first upload the image to an Amazon S3 bucket and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see
    #   manage-access-resource-policies.
    #
    # @option params [String] :external_image_id
    #   ID you want to assign to all the faces detected in the image.
    #
    # @option params [Array<String>] :detection_attributes
    #   A list of facial attributes that you want to be returned. This can be
    #   the default list of attributes or all attributes. If you don't
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
    #   resp.face_records[0].face_detail.gender.value #=> String, one of "MALE", "FEMALE"
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
    #   resp.face_records[0].face_detail.landmarks[0].type #=> String, one of "EYE_LEFT", "EYE_RIGHT", "NOSE", "MOUTH_LEFT", "MOUTH_RIGHT", "LEFT_EYEBROW_LEFT", "LEFT_EYEBROW_RIGHT", "LEFT_EYEBROW_UP", "RIGHT_EYEBROW_LEFT", "RIGHT_EYEBROW_RIGHT", "RIGHT_EYEBROW_UP", "LEFT_EYE_LEFT", "LEFT_EYE_RIGHT", "LEFT_EYE_UP", "LEFT_EYE_DOWN", "RIGHT_EYE_LEFT", "RIGHT_EYE_RIGHT", "RIGHT_EYE_UP", "RIGHT_EYE_DOWN", "NOSE_LEFT", "NOSE_RIGHT", "MOUTH_UP", "MOUTH_DOWN", "LEFT_PUPIL", "RIGHT_PUPIL"
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
    #   Provides the source image either as bytes or an S3 object.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   You may need to Base64-encode the image bytes depending on the
    #   language you are using and whether or not you are using the AWS SDK.
    #   For more information, see example4.
    #
    #   If you use the Amazon CLI to call Amazon Rekognition operations,
    #   passing image bytes using the Bytes property is not supported. You
    #   must first upload the image to an Amazon S3 bucket and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see
    #   manage-access-resource-policies.
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
      context[:gem_version] = '1.0.0.rc8'
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
