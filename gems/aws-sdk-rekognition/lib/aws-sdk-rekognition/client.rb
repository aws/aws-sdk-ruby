# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:rekognition)

module Aws::Rekognition
  # An API client for Rekognition.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Rekognition::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Compares a face in the *source* input image with each of the 100
    # largest faces detected in the *target* input image.
    #
    # <note markdown="1"> If the source image contains multiple faces, the service detects the
    # largest face and compares it with each face detected in the target
    # image.
    #
    #  </note>
    #
    # You pass the input and target images either as base64-encoded image
    # bytes or as references to images in an Amazon S3 bucket. If you use
    # the AWS CLI to call Amazon Rekognition operations, passing image bytes
    # isn't supported. The image must be formatted as a PNG or JPEG file.
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
    # The `QualityFilter` input parameter allows you to filter out detected
    # faces that don’t meet a required quality bar. The quality bar is based
    # on a variety of common use cases. Use `QualityFilter` to set the
    # quality bar by specifying `LOW`, `MEDIUM`, or `HIGH`. If you do not
    # want to filter detected faces, specify `NONE`. The default value is
    # `NONE`.
    #
    # If the image doesn't contain Exif metadata, `CompareFaces` returns
    # orientation information for the source and target images. Use these
    # values to display the images with the correct image orientation.
    #
    # If no faces are detected in the source or target images,
    # `CompareFaces` returns an `InvalidParameterException` error.
    #
    # <note markdown="1"> This is a stateless API operation. That is, data returned by this
    # operation doesn't persist.
    #
    #  </note>
    #
    # For an example, see Comparing Faces in Images in the Amazon
    # Rekognition Developer Guide.
    #
    # This operation requires permissions to perform the
    # `rekognition:CompareFaces` action.
    #
    # @option params [required, Types::Image] :source_image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
    #
    # @option params [required, Types::Image] :target_image
    #   The target image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
    #
    # @option params [Float] :similarity_threshold
    #   The minimum level of confidence in the face matches that a match must
    #   meet to be included in the `FaceMatches` array.
    #
    # @option params [String] :quality_filter
    #   A filter that specifies a quality bar for how much filtering is done
    #   to identify faces. Filtered faces aren't compared. If you specify
    #   `AUTO`, Amazon Rekognition chooses the quality bar. If you specify
    #   `LOW`, `MEDIUM`, or `HIGH`, filtering removes all faces that don’t
    #   meet the chosen quality bar. The quality bar is based on a variety of
    #   common use cases. Low-quality detections can occur for a number of
    #   reasons. Some examples are an object that's misidentified as a face,
    #   a face that's too blurry, or a face with a pose that's too extreme
    #   to use. If you specify `NONE`, no filtering is performed. The default
    #   value is `NONE`.
    #
    #   To use quality filtering, the collection you are using must be
    #   associated with version 3 of the face model or higher.
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
    #     quality_filter: "NONE", # accepts NONE, AUTO, LOW, MEDIUM, HIGH
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
    #   resp.face_matches[0].face.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
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
    #   resp.unmatched_faces[0].landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
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
    # collection using the IndexFaces operation.
    #
    # For example, you might create collections, one for each of your
    # application users. A user can then index faces using the `IndexFaces`
    # operation and persist results in a specific collection. Then, a user
    # can search the collection for faces in the user-specific container.
    #
    # When you create a collection, it is associated with the latest version
    # of the face model version.
    #
    # <note markdown="1"> Collection names are case-sensitive.
    #
    #  </note>
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
    #   * {Types::CreateCollectionResponse#face_model_version #face_model_version} => String
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
    #   resp.face_model_version #=> String
    #
    # @overload create_collection(params = {})
    # @param [Hash] params ({})
    def create_collection(params = {}, options = {})
      req = build_request(:create_collection, params)
      req.send_request(options)
    end

    # Creates a new Amazon Rekognition Custom Labels project. A project is a
    # logical grouping of resources (images, Labels, models) and operations
    # (training, evaluation and detection).
    #
    # This operation requires permissions to perform the
    # `rekognition:CreateProject` action.
    #
    # @option params [required, String] :project_name
    #   The name of the project to create.
    #
    # @return [Types::CreateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResponse#project_arn #project_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     project_name: "ProjectName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project_arn #=> String
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Creates a new version of a model and begins training. Models are
    # managed as part of an Amazon Rekognition Custom Labels project. You
    # can specify one training dataset and one testing dataset. The response
    # from `CreateProjectVersion` is an Amazon Resource Name (ARN) for the
    # version of the model.
    #
    # Training takes a while to complete. You can get the current status by
    # calling DescribeProjectVersions.
    #
    # Once training has successfully completed, call DescribeProjectVersions
    # to get the training results and evaluate the model.
    #
    # After evaluating the model, you start the model by calling
    # StartProjectVersion.
    #
    # This operation requires permissions to perform the
    # `rekognition:CreateProjectVersion` action.
    #
    # @option params [required, String] :project_arn
    #   The ARN of the Amazon Rekognition Custom Labels project that manages
    #   the model that you want to train.
    #
    # @option params [required, String] :version_name
    #   A name for the version of the model. This value must be unique.
    #
    # @option params [required, Types::OutputConfig] :output_config
    #   The Amazon S3 location to store the results of training.
    #
    # @option params [required, Types::TrainingData] :training_data
    #   The dataset to use for training.
    #
    # @option params [required, Types::TestingData] :testing_data
    #   The dataset to use for testing.
    #
    # @return [Types::CreateProjectVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectVersionResponse#project_version_arn #project_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project_version({
    #     project_arn: "ProjectArn", # required
    #     version_name: "VersionName", # required
    #     output_config: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key_prefix: "S3KeyPrefix",
    #     },
    #     training_data: { # required
    #       assets: [
    #         {
    #           ground_truth_manifest: {
    #             s3_object: {
    #               bucket: "S3Bucket",
    #               name: "S3ObjectName",
    #               version: "S3ObjectVersion",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     testing_data: { # required
    #       assets: [
    #         {
    #           ground_truth_manifest: {
    #             s3_object: {
    #               bucket: "S3Bucket",
    #               name: "S3ObjectName",
    #               version: "S3ObjectVersion",
    #             },
    #           },
    #         },
    #       ],
    #       auto_create: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.project_version_arn #=> String
    #
    # @overload create_project_version(params = {})
    # @param [Hash] params ({})
    def create_project_version(params = {}, options = {})
      req = build_request(:create_project_version, params)
      req.send_request(options)
    end

    # Creates an Amazon Rekognition stream processor that you can use to
    # detect and recognize faces in a streaming video.
    #
    # Amazon Rekognition Video is a consumer of live video from Amazon
    # Kinesis Video Streams. Amazon Rekognition Video sends analysis results
    # to Amazon Kinesis Data Streams.
    #
    # You provide as input a Kinesis video stream (`Input`) and a Kinesis
    # data stream (`Output`) stream. You also specify the face recognition
    # criteria in `Settings`. For example, the collection containing faces
    # that you want to recognize. Use `Name` to assign an identifier for the
    # stream processor. You use `Name` to manage the stream processor. For
    # example, you can start processing the source video by calling
    # StartStreamProcessor with the `Name` field.
    #
    # After you have finished analyzing a streaming video, use
    # StopStreamProcessor to stop processing. You can delete the stream
    # processor by calling DeleteStreamProcessor.
    #
    # @option params [required, Types::StreamProcessorInput] :input
    #   Kinesis video stream stream that provides the source streaming video.
    #   If you are using the AWS CLI, the parameter name is
    #   `StreamProcessorInput`.
    #
    # @option params [required, Types::StreamProcessorOutput] :output
    #   Kinesis data stream stream to which Amazon Rekognition Video puts the
    #   analysis results. If you are using the AWS CLI, the parameter name is
    #   `StreamProcessorOutput`.
    #
    # @option params [required, String] :name
    #   An identifier you assign to the stream processor. You can use `Name`
    #   to manage the stream processor. For example, you can get the current
    #   status of the stream processor by calling DescribeStreamProcessor.
    #   `Name` is idempotent.
    #
    # @option params [required, Types::StreamProcessorSettings] :settings
    #   Face recognition input parameters to be used by the stream processor.
    #   Includes the collection to use for face recognition and the face
    #   attributes to detect.
    #
    # @option params [required, String] :role_arn
    #   ARN of the IAM role that allows access to the stream processor.
    #
    # @return [Types::CreateStreamProcessorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamProcessorResponse#stream_processor_arn #stream_processor_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream_processor({
    #     input: { # required
    #       kinesis_video_stream: {
    #         arn: "KinesisVideoArn",
    #       },
    #     },
    #     output: { # required
    #       kinesis_data_stream: {
    #         arn: "KinesisDataArn",
    #       },
    #     },
    #     name: "StreamProcessorName", # required
    #     settings: { # required
    #       face_search: {
    #         collection_id: "CollectionId",
    #         face_match_threshold: 1.0,
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_processor_arn #=> String
    #
    # @overload create_stream_processor(params = {})
    # @param [Hash] params ({})
    def create_stream_processor(params = {}, options = {})
      req = build_request(:create_stream_processor, params)
      req.send_request(options)
    end

    # Deletes the specified collection. Note that this operation removes all
    # faces in the collection. For an example, see
    # delete-collection-procedure.
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

    # Deletes an Amazon Rekognition Custom Labels project. To delete a
    # project you must first delete all models associated with the project.
    # To delete a model, see DeleteProjectVersion.
    #
    # This operation requires permissions to perform the
    # `rekognition:DeleteProject` action.
    #
    # @option params [required, String] :project_arn
    #   The Amazon Resource Name (ARN) of the project that you want to delete.
    #
    # @return [Types::DeleteProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProjectResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     project_arn: "ProjectArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "CREATED", "DELETING"
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes an Amazon Rekognition Custom Labels model.
    #
    # You can't delete a model if it is running or if it is training. To
    # check the status of a model, use the `Status` field returned from
    # DescribeProjectVersions. To stop a running model call
    # StopProjectVersion. If the model is training, wait until it finishes.
    #
    # This operation requires permissions to perform the
    # `rekognition:DeleteProjectVersion` action.
    #
    # @option params [required, String] :project_version_arn
    #   The Amazon Resource Name (ARN) of the model version that you want to
    #   delete.
    #
    # @return [Types::DeleteProjectVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProjectVersionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project_version({
    #     project_version_arn: "ProjectVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #
    # @overload delete_project_version(params = {})
    # @param [Hash] params ({})
    def delete_project_version(params = {}, options = {})
      req = build_request(:delete_project_version, params)
      req.send_request(options)
    end

    # Deletes the stream processor identified by `Name`. You assign the
    # value for `Name` when you create the stream processor with
    # CreateStreamProcessor. You might not be able to use the same name for
    # a stream processor for a few seconds after calling
    # `DeleteStreamProcessor`.
    #
    # @option params [required, String] :name
    #   The name of the stream processor you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream_processor({
    #     name: "StreamProcessorName", # required
    #   })
    #
    # @overload delete_stream_processor(params = {})
    # @param [Hash] params ({})
    def delete_stream_processor(params = {}, options = {})
      req = build_request(:delete_stream_processor, params)
      req.send_request(options)
    end

    # Describes the specified collection. You can use `DescribeCollection`
    # to get information, such as the number of faces indexed into a
    # collection and the version of the model used by the collection for
    # face detection.
    #
    # For more information, see Describing a Collection in the Amazon
    # Rekognition Developer Guide.
    #
    # @option params [required, String] :collection_id
    #   The ID of the collection to describe.
    #
    # @return [Types::DescribeCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCollectionResponse#face_count #face_count} => Integer
    #   * {Types::DescribeCollectionResponse#face_model_version #face_model_version} => String
    #   * {Types::DescribeCollectionResponse#collection_arn #collection_arn} => String
    #   * {Types::DescribeCollectionResponse#creation_timestamp #creation_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_collection({
    #     collection_id: "CollectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.face_count #=> Integer
    #   resp.face_model_version #=> String
    #   resp.collection_arn #=> String
    #   resp.creation_timestamp #=> Time
    #
    # @overload describe_collection(params = {})
    # @param [Hash] params ({})
    def describe_collection(params = {}, options = {})
      req = build_request(:describe_collection, params)
      req.send_request(options)
    end

    # Lists and describes the models in an Amazon Rekognition Custom Labels
    # project. You can specify up to 10 model versions in
    # `ProjectVersionArns`. If you don't specify a value, descriptions for
    # all models are returned.
    #
    # This operation requires permissions to perform the
    # `rekognition:DescribeProjectVersions` action.
    #
    # @option params [required, String] :project_arn
    #   The Amazon Resource Name (ARN) of the project that contains the models
    #   you want to describe.
    #
    # @option params [Array<String>] :version_names
    #   A list of model version names that you want to describe. You can add
    #   up to 10 model version names to the list. If you don't specify a
    #   value, all model descriptions are returned. A version name is part of
    #   a model (ProjectVersion) ARN. For example,
    #   `my-model.2020-01-21T09.10.15` is the version name in the following
    #   ARN.
    #   `arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/my-model.2020-01-21T09.10.15/1234567890123`.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more results
    #   to retrieve), Amazon Rekognition Custom Labels returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #
    # @return [Types::DescribeProjectVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProjectVersionsResponse#project_version_descriptions #project_version_descriptions} => Array&lt;Types::ProjectVersionDescription&gt;
    #   * {Types::DescribeProjectVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project_versions({
    #     project_arn: "ProjectArn", # required
    #     version_names: ["VersionName"],
    #     next_token: "ExtendedPaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.project_version_descriptions #=> Array
    #   resp.project_version_descriptions[0].project_version_arn #=> String
    #   resp.project_version_descriptions[0].creation_timestamp #=> Time
    #   resp.project_version_descriptions[0].min_inference_units #=> Integer
    #   resp.project_version_descriptions[0].status #=> String, one of "TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #   resp.project_version_descriptions[0].status_message #=> String
    #   resp.project_version_descriptions[0].billable_training_time_in_seconds #=> Integer
    #   resp.project_version_descriptions[0].training_end_timestamp #=> Time
    #   resp.project_version_descriptions[0].output_config.s3_bucket #=> String
    #   resp.project_version_descriptions[0].output_config.s3_key_prefix #=> String
    #   resp.project_version_descriptions[0].training_data_result.input.assets #=> Array
    #   resp.project_version_descriptions[0].training_data_result.input.assets[0].ground_truth_manifest.s3_object.bucket #=> String
    #   resp.project_version_descriptions[0].training_data_result.input.assets[0].ground_truth_manifest.s3_object.name #=> String
    #   resp.project_version_descriptions[0].training_data_result.input.assets[0].ground_truth_manifest.s3_object.version #=> String
    #   resp.project_version_descriptions[0].training_data_result.output.assets #=> Array
    #   resp.project_version_descriptions[0].training_data_result.output.assets[0].ground_truth_manifest.s3_object.bucket #=> String
    #   resp.project_version_descriptions[0].training_data_result.output.assets[0].ground_truth_manifest.s3_object.name #=> String
    #   resp.project_version_descriptions[0].training_data_result.output.assets[0].ground_truth_manifest.s3_object.version #=> String
    #   resp.project_version_descriptions[0].training_data_result.validation.assets #=> Array
    #   resp.project_version_descriptions[0].training_data_result.validation.assets[0].ground_truth_manifest.s3_object.bucket #=> String
    #   resp.project_version_descriptions[0].training_data_result.validation.assets[0].ground_truth_manifest.s3_object.name #=> String
    #   resp.project_version_descriptions[0].training_data_result.validation.assets[0].ground_truth_manifest.s3_object.version #=> String
    #   resp.project_version_descriptions[0].testing_data_result.input.assets #=> Array
    #   resp.project_version_descriptions[0].testing_data_result.input.assets[0].ground_truth_manifest.s3_object.bucket #=> String
    #   resp.project_version_descriptions[0].testing_data_result.input.assets[0].ground_truth_manifest.s3_object.name #=> String
    #   resp.project_version_descriptions[0].testing_data_result.input.assets[0].ground_truth_manifest.s3_object.version #=> String
    #   resp.project_version_descriptions[0].testing_data_result.input.auto_create #=> Boolean
    #   resp.project_version_descriptions[0].testing_data_result.output.assets #=> Array
    #   resp.project_version_descriptions[0].testing_data_result.output.assets[0].ground_truth_manifest.s3_object.bucket #=> String
    #   resp.project_version_descriptions[0].testing_data_result.output.assets[0].ground_truth_manifest.s3_object.name #=> String
    #   resp.project_version_descriptions[0].testing_data_result.output.assets[0].ground_truth_manifest.s3_object.version #=> String
    #   resp.project_version_descriptions[0].testing_data_result.output.auto_create #=> Boolean
    #   resp.project_version_descriptions[0].testing_data_result.validation.assets #=> Array
    #   resp.project_version_descriptions[0].testing_data_result.validation.assets[0].ground_truth_manifest.s3_object.bucket #=> String
    #   resp.project_version_descriptions[0].testing_data_result.validation.assets[0].ground_truth_manifest.s3_object.name #=> String
    #   resp.project_version_descriptions[0].testing_data_result.validation.assets[0].ground_truth_manifest.s3_object.version #=> String
    #   resp.project_version_descriptions[0].evaluation_result.f1_score #=> Float
    #   resp.project_version_descriptions[0].evaluation_result.summary.s3_object.bucket #=> String
    #   resp.project_version_descriptions[0].evaluation_result.summary.s3_object.name #=> String
    #   resp.project_version_descriptions[0].evaluation_result.summary.s3_object.version #=> String
    #   resp.project_version_descriptions[0].manifest_summary.s3_object.bucket #=> String
    #   resp.project_version_descriptions[0].manifest_summary.s3_object.name #=> String
    #   resp.project_version_descriptions[0].manifest_summary.s3_object.version #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * project_version_running
    #   * project_version_training_completed
    #
    # @overload describe_project_versions(params = {})
    # @param [Hash] params ({})
    def describe_project_versions(params = {}, options = {})
      req = build_request(:describe_project_versions, params)
      req.send_request(options)
    end

    # Lists and gets information about your Amazon Rekognition Custom Labels
    # projects.
    #
    # This operation requires permissions to perform the
    # `rekognition:DescribeProjects` action.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more results
    #   to retrieve), Amazon Rekognition Custom Labels returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 100. If you specify a value greater
    #   than 100, a ValidationException error occurs. The default value is
    #   100.
    #
    # @return [Types::DescribeProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProjectsResponse#project_descriptions #project_descriptions} => Array&lt;Types::ProjectDescription&gt;
    #   * {Types::DescribeProjectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_projects({
    #     next_token: "ExtendedPaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.project_descriptions #=> Array
    #   resp.project_descriptions[0].project_arn #=> String
    #   resp.project_descriptions[0].creation_timestamp #=> Time
    #   resp.project_descriptions[0].status #=> String, one of "CREATING", "CREATED", "DELETING"
    #   resp.next_token #=> String
    #
    # @overload describe_projects(params = {})
    # @param [Hash] params ({})
    def describe_projects(params = {}, options = {})
      req = build_request(:describe_projects, params)
      req.send_request(options)
    end

    # Provides information about a stream processor created by
    # CreateStreamProcessor. You can get information about the input and
    # output streams, the input parameters for the face recognition being
    # performed, and the current status of the stream processor.
    #
    # @option params [required, String] :name
    #   Name of the stream processor for which you want information.
    #
    # @return [Types::DescribeStreamProcessorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStreamProcessorResponse#name #name} => String
    #   * {Types::DescribeStreamProcessorResponse#stream_processor_arn #stream_processor_arn} => String
    #   * {Types::DescribeStreamProcessorResponse#status #status} => String
    #   * {Types::DescribeStreamProcessorResponse#status_message #status_message} => String
    #   * {Types::DescribeStreamProcessorResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::DescribeStreamProcessorResponse#last_update_timestamp #last_update_timestamp} => Time
    #   * {Types::DescribeStreamProcessorResponse#input #input} => Types::StreamProcessorInput
    #   * {Types::DescribeStreamProcessorResponse#output #output} => Types::StreamProcessorOutput
    #   * {Types::DescribeStreamProcessorResponse#role_arn #role_arn} => String
    #   * {Types::DescribeStreamProcessorResponse#settings #settings} => Types::StreamProcessorSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream_processor({
    #     name: "StreamProcessorName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.stream_processor_arn #=> String
    #   resp.status #=> String, one of "STOPPED", "STARTING", "RUNNING", "FAILED", "STOPPING"
    #   resp.status_message #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.last_update_timestamp #=> Time
    #   resp.input.kinesis_video_stream.arn #=> String
    #   resp.output.kinesis_data_stream.arn #=> String
    #   resp.role_arn #=> String
    #   resp.settings.face_search.collection_id #=> String
    #   resp.settings.face_search.face_match_threshold #=> Float
    #
    # @overload describe_stream_processor(params = {})
    # @param [Hash] params ({})
    def describe_stream_processor(params = {}, options = {})
      req = build_request(:describe_stream_processor, params)
      req.send_request(options)
    end

    # Detects custom labels in a supplied image by using an Amazon
    # Rekognition Custom Labels model.
    #
    # You specify which version of a model version to use by using the
    # `ProjectVersionArn` input parameter.
    #
    # You pass the input image as base64-encoded image bytes or as a
    # reference to an image in an Amazon S3 bucket. If you use the AWS CLI
    # to call Amazon Rekognition operations, passing image bytes is not
    # supported. The image must be either a PNG or JPEG formatted file.
    #
    # For each object that the model version detects on an image, the API
    # returns a (`CustomLabel`) object in an array (`CustomLabels`). Each
    # `CustomLabel` object provides the label name (`Name`), the level of
    # confidence that the image contains the object (`Confidence`), and
    # object location information, if it exists, for the label on the image
    # (`Geometry`).
    #
    # During training model calculates a threshold value that determines if
    # a prediction for a label is true. By default, `DetectCustomLabels`
    # doesn't return labels whose confidence value is below the model's
    # calculated threshold value. To filter labels that are returned,
    # specify a value for `MinConfidence` that is higher than the model's
    # calculated threshold. You can get the model's calculated threshold
    # from the model's training results shown in the Amazon Rekognition
    # Custom Labels console. To get all labels, regardless of confidence,
    # specify a `MinConfidence` value of 0.
    #
    # You can also add the `MaxResults` parameter to limit the number of
    # labels returned.
    #
    # This is a stateless API operation. That is, the operation does not
    # persist any data.
    #
    # This operation requires permissions to perform the
    # `rekognition:DetectCustomLabels` action.
    #
    # @option params [required, String] :project_version_arn
    #   The ARN of the model version that you want to use.
    #
    # @option params [required, Types::Image] :image
    #   Provides the input image either as bytes or an S3 object.
    #
    #   You pass image bytes to an Amazon Rekognition API operation by using
    #   the `Bytes` property. For example, you would use the `Bytes` property
    #   to pass an image loaded from a local file system. Image bytes passed
    #   by using the `Bytes` property must be base64-encoded. Your code may
    #   not need to encode image bytes if you are using an AWS SDK to call
    #   Amazon Rekognition API operations.
    #
    #   For more information, see Analyzing an Image Loaded from a Local File
    #   System in the Amazon Rekognition Developer Guide.
    #
    #   You pass images stored in an S3 bucket to an Amazon Rekognition API
    #   operation by using the `S3Object` property. Images stored in an S3
    #   bucket do not need to be base64-encoded.
    #
    #   The region for the S3 bucket containing the S3 object must match the
    #   region you use for Amazon Rekognition operations.
    #
    #   If you use the AWS CLI to call Amazon Rekognition operations, passing
    #   image bytes using the Bytes property is not supported. You must first
    #   upload the image to an Amazon S3 bucket and then call the operation
    #   using the S3Object property.
    #
    #   For Amazon Rekognition to process an S3 object, the user must have
    #   permission to access the S3 object. For more information, see Resource
    #   Based Policies in the Amazon Rekognition Developer Guide.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results you want the service to return in the
    #   response. The service returns the specified number of highest
    #   confidence labels ranked from highest confidence to lowest.
    #
    # @option params [Float] :min_confidence
    #   Specifies the minimum confidence level for the labels to return.
    #   Amazon Rekognition doesn't return any labels with a confidence lower
    #   than this specified value. If you specify a value of 0, all labels are
    #   return, regardless of the default thresholds that the model version
    #   applies.
    #
    # @return [Types::DetectCustomLabelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectCustomLabelsResponse#custom_labels #custom_labels} => Array&lt;Types::CustomLabel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_custom_labels({
    #     project_version_arn: "ProjectVersionArn", # required
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     max_results: 1,
    #     min_confidence: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_labels #=> Array
    #   resp.custom_labels[0].name #=> String
    #   resp.custom_labels[0].confidence #=> Float
    #   resp.custom_labels[0].geometry.bounding_box.width #=> Float
    #   resp.custom_labels[0].geometry.bounding_box.height #=> Float
    #   resp.custom_labels[0].geometry.bounding_box.left #=> Float
    #   resp.custom_labels[0].geometry.bounding_box.top #=> Float
    #   resp.custom_labels[0].geometry.polygon #=> Array
    #   resp.custom_labels[0].geometry.polygon[0].x #=> Float
    #   resp.custom_labels[0].geometry.polygon[0].y #=> Float
    #
    # @overload detect_custom_labels(params = {})
    # @param [Hash] params ({})
    def detect_custom_labels(params = {}, options = {})
      req = build_request(:detect_custom_labels, params)
      req.send_request(options)
    end

    # Detects faces within an image that is provided as input.
    #
    # `DetectFaces` detects the 100 largest faces in the image. For each
    # face detected, the operation returns face details. These details
    # include a bounding box of the face, a confidence value (that the
    # bounding box contains a face), and a fixed set of attributes such as
    # facial landmarks (for example, coordinates of eye and mouth), presence
    # of beard, sunglasses, and so on.
    #
    # The face-detection algorithm is most effective on frontal faces. For
    # non-frontal or obscured faces, the algorithm might not detect the
    # faces or might detect faces with lower confidence.
    #
    # You pass the input image either as base64-encoded image bytes or as a
    # reference to an image in an Amazon S3 bucket. If you use the AWS CLI
    # to call Amazon Rekognition operations, passing image bytes is not
    # supported. The image must be either a PNG or JPEG formatted file.
    #
    # <note markdown="1"> This is a stateless API operation. That is, the operation does not
    # persist any data.
    #
    #  </note>
    #
    # This operation requires permissions to perform the
    # `rekognition:DetectFaces` action.
    #
    # @option params [required, Types::Image] :image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
    #
    # @option params [Array<String>] :attributes
    #   An array of facial attributes you want to be returned. This can be the
    #   default list of attributes or all attributes. If you don't specify a
    #   value for `Attributes` or if you specify `["DEFAULT"]`, the API
    #   returns the following subset of facial attributes: `BoundingBox`,
    #   `Confidence`, `Pose`, `Quality`, and `Landmarks`. If you provide
    #   `["ALL"]`, all facial attributes are returned, but the operation takes
    #   longer to complete.
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
    #   resp.face_details[0].emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"
    #   resp.face_details[0].emotions[0].confidence #=> Float
    #   resp.face_details[0].landmarks #=> Array
    #   resp.face_details[0].landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
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

    # Detects instances of real-world entities within an image (JPEG or PNG)
    # provided as input. This includes objects like flower, tree, and table;
    # events like wedding, graduation, and birthday party; and concepts like
    # landscape, evening, and nature.
    #
    # For an example, see Analyzing Images Stored in an Amazon S3 Bucket in
    # the Amazon Rekognition Developer Guide.
    #
    # <note markdown="1"> `DetectLabels` does not support the detection of activities. However,
    # activity detection is supported for label detection in videos. For
    # more information, see StartLabelDetection in the Amazon Rekognition
    # Developer Guide.
    #
    #  </note>
    #
    # You pass the input image as base64-encoded image bytes or as a
    # reference to an image in an Amazon S3 bucket. If you use the AWS CLI
    # to call Amazon Rekognition operations, passing image bytes is not
    # supported. The image must be either a PNG or JPEG formatted file.
    #
    # For each object, scene, and concept the API returns one or more
    # labels. Each label provides the object name, and the level of
    # confidence that the image contains the object. For example, suppose
    # the input image has a lighthouse, the sea, and a rock. The response
    # includes all three labels, one for each object.
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
    # In response, the API returns an array of labels. In addition, the
    # response also includes the orientation correction. Optionally, you can
    # specify `MinConfidence` to control the confidence threshold for the
    # labels returned. The default is 55%. You can also add the `MaxLabels`
    # parameter to limit the number of labels returned.
    #
    # <note markdown="1"> If the object detected is a person, the operation doesn't provide the
    # same facial details that the DetectFaces operation provides.
    #
    #  </note>
    #
    # `DetectLabels` returns bounding boxes for instances of common object
    # labels in an array of Instance objects. An `Instance` object contains
    # a BoundingBox object, for the location of the label on the image. It
    # also includes the confidence by which the bounding box was detected.
    #
    # `DetectLabels` also returns a hierarchical taxonomy of detected
    # labels. For example, a detected car might be assigned the label *car*.
    # The label *car* has two parent labels: *Vehicle* (its parent) and
    # *Transportation* (its grandparent). The response returns the entire
    # list of ancestors for a label. Each ancestor is a unique label in the
    # response. In the previous example, *Car*, *Vehicle*, and
    # *Transportation* are returned as unique labels in the response.
    #
    # This is a stateless API operation. That is, the operation does not
    # persist any data.
    #
    # This operation requires permissions to perform the
    # `rekognition:DetectLabels` action.
    #
    # @option params [required, Types::Image] :image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing image bytes
    #   is not supported. Images stored in an S3 Bucket do not need to be
    #   base64-encoded.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
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
    #   a confidence values greater than or equal to 55 percent.
    #
    # @return [Types::DetectLabelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectLabelsResponse#labels #labels} => Array&lt;Types::Label&gt;
    #   * {Types::DetectLabelsResponse#orientation_correction #orientation_correction} => String
    #   * {Types::DetectLabelsResponse#label_model_version #label_model_version} => String
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
    #   resp.labels[0].instances #=> Array
    #   resp.labels[0].instances[0].bounding_box.width #=> Float
    #   resp.labels[0].instances[0].bounding_box.height #=> Float
    #   resp.labels[0].instances[0].bounding_box.left #=> Float
    #   resp.labels[0].instances[0].bounding_box.top #=> Float
    #   resp.labels[0].instances[0].confidence #=> Float
    #   resp.labels[0].parents #=> Array
    #   resp.labels[0].parents[0].name #=> String
    #   resp.orientation_correction #=> String, one of "ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"
    #   resp.label_model_version #=> String
    #
    # @overload detect_labels(params = {})
    # @param [Hash] params ({})
    def detect_labels(params = {}, options = {})
      req = build_request(:detect_labels, params)
      req.send_request(options)
    end

    # Detects unsafe content in a specified JPEG or PNG format image. Use
    # `DetectModerationLabels` to moderate images depending on your
    # requirements. For example, you might want to filter images that
    # contain nudity, but not images containing suggestive content.
    #
    # To filter images, use the labels returned by `DetectModerationLabels`
    # to determine which types of content are appropriate.
    #
    # For information about moderation labels, see Detecting Unsafe Content
    # in the Amazon Rekognition Developer Guide.
    #
    # You pass the input image either as base64-encoded image bytes or as a
    # reference to an image in an Amazon S3 bucket. If you use the AWS CLI
    # to call Amazon Rekognition operations, passing image bytes is not
    # supported. The image must be either a PNG or JPEG formatted file.
    #
    # @option params [required, Types::Image] :image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
    #
    # @option params [Float] :min_confidence
    #   Specifies the minimum confidence level for the labels to return.
    #   Amazon Rekognition doesn't return any labels with a confidence level
    #   lower than this specified value.
    #
    #   If you don't specify `MinConfidence`, the operation returns labels
    #   with confidence values greater than or equal to 50 percent.
    #
    # @option params [Types::HumanLoopConfig] :human_loop_config
    #   Sets up the configuration for human evaluation, including the
    #   FlowDefinition the image will be sent to.
    #
    # @return [Types::DetectModerationLabelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectModerationLabelsResponse#moderation_labels #moderation_labels} => Array&lt;Types::ModerationLabel&gt;
    #   * {Types::DetectModerationLabelsResponse#moderation_model_version #moderation_model_version} => String
    #   * {Types::DetectModerationLabelsResponse#human_loop_activation_output #human_loop_activation_output} => Types::HumanLoopActivationOutput
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
    #     human_loop_config: {
    #       human_loop_name: "HumanLoopName", # required
    #       flow_definition_arn: "FlowDefinitionArn", # required
    #       data_attributes: {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.moderation_labels #=> Array
    #   resp.moderation_labels[0].confidence #=> Float
    #   resp.moderation_labels[0].name #=> String
    #   resp.moderation_labels[0].parent_name #=> String
    #   resp.moderation_model_version #=> String
    #   resp.human_loop_activation_output.human_loop_arn #=> String
    #   resp.human_loop_activation_output.human_loop_activation_reasons #=> Array
    #   resp.human_loop_activation_output.human_loop_activation_reasons[0] #=> String
    #   resp.human_loop_activation_output.human_loop_activation_conditions_evaluation_results #=> String
    #
    # @overload detect_moderation_labels(params = {})
    # @param [Hash] params ({})
    def detect_moderation_labels(params = {}, options = {})
      req = build_request(:detect_moderation_labels, params)
      req.send_request(options)
    end

    # Detects Personal Protective Equipment (PPE) worn by people detected in
    # an image. Amazon Rekognition can detect the following types of PPE.
    #
    # * Face cover
    #
    # * Hand cover
    #
    # * Head cover
    #
    # You pass the input image as base64-encoded image bytes or as a
    # reference to an image in an Amazon S3 bucket. The image must be either
    # a PNG or JPG formatted file.
    #
    # `DetectProtectiveEquipment` detects PPE worn by up to 15 persons
    # detected in an image.
    #
    # For each person detected in the image the API returns an array of body
    # parts (face, head, left-hand, right-hand). For each body part, an
    # array of detected items of PPE is returned, including an indicator of
    # whether or not the PPE covers the body part. The API returns the
    # confidence it has in each detection (person, PPE, body part and body
    # part coverage). It also returns a bounding box (BoundingBox) for each
    # detected person and each detected item of PPE.
    #
    # You can optionally request a summary of detected PPE items with the
    # `SummarizationAttributes` input parameter. The summary provides the
    # following information.
    #
    # * The persons detected as wearing all of the types of PPE that you
    #   specify.
    #
    # * The persons detected as not wearing all of the types PPE that you
    #   specify.
    #
    # * The persons detected where PPE adornment could not be determined.
    #
    # This is a stateless API operation. That is, the operation does not
    # persist any data.
    #
    # This operation requires permissions to perform the
    # `rekognition:DetectProtectiveEquipment` action.
    #
    # @option params [required, Types::Image] :image
    #   The image in which you want to detect PPE on detected persons. The
    #   image can be passed as image bytes or you can reference an image
    #   stored in an Amazon S3 bucket.
    #
    # @option params [Types::ProtectiveEquipmentSummarizationAttributes] :summarization_attributes
    #   An array of PPE types that you want to summarize.
    #
    # @return [Types::DetectProtectiveEquipmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectProtectiveEquipmentResponse#protective_equipment_model_version #protective_equipment_model_version} => String
    #   * {Types::DetectProtectiveEquipmentResponse#persons #persons} => Array&lt;Types::ProtectiveEquipmentPerson&gt;
    #   * {Types::DetectProtectiveEquipmentResponse#summary #summary} => Types::ProtectiveEquipmentSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_protective_equipment({
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     summarization_attributes: {
    #       min_confidence: 1.0, # required
    #       required_equipment_types: ["FACE_COVER"], # required, accepts FACE_COVER, HAND_COVER, HEAD_COVER
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.protective_equipment_model_version #=> String
    #   resp.persons #=> Array
    #   resp.persons[0].body_parts #=> Array
    #   resp.persons[0].body_parts[0].name #=> String, one of "FACE", "HEAD", "LEFT_HAND", "RIGHT_HAND"
    #   resp.persons[0].body_parts[0].confidence #=> Float
    #   resp.persons[0].body_parts[0].equipment_detections #=> Array
    #   resp.persons[0].body_parts[0].equipment_detections[0].bounding_box.width #=> Float
    #   resp.persons[0].body_parts[0].equipment_detections[0].bounding_box.height #=> Float
    #   resp.persons[0].body_parts[0].equipment_detections[0].bounding_box.left #=> Float
    #   resp.persons[0].body_parts[0].equipment_detections[0].bounding_box.top #=> Float
    #   resp.persons[0].body_parts[0].equipment_detections[0].confidence #=> Float
    #   resp.persons[0].body_parts[0].equipment_detections[0].type #=> String, one of "FACE_COVER", "HAND_COVER", "HEAD_COVER"
    #   resp.persons[0].body_parts[0].equipment_detections[0].covers_body_part.confidence #=> Float
    #   resp.persons[0].body_parts[0].equipment_detections[0].covers_body_part.value #=> Boolean
    #   resp.persons[0].bounding_box.width #=> Float
    #   resp.persons[0].bounding_box.height #=> Float
    #   resp.persons[0].bounding_box.left #=> Float
    #   resp.persons[0].bounding_box.top #=> Float
    #   resp.persons[0].confidence #=> Float
    #   resp.persons[0].id #=> Integer
    #   resp.summary.persons_with_required_equipment #=> Array
    #   resp.summary.persons_with_required_equipment[0] #=> Integer
    #   resp.summary.persons_without_required_equipment #=> Array
    #   resp.summary.persons_without_required_equipment[0] #=> Integer
    #   resp.summary.persons_indeterminate #=> Array
    #   resp.summary.persons_indeterminate[0] #=> Integer
    #
    # @overload detect_protective_equipment(params = {})
    # @param [Hash] params ({})
    def detect_protective_equipment(params = {}, options = {})
      req = build_request(:detect_protective_equipment, params)
      req.send_request(options)
    end

    # Detects text in the input image and converts it into machine-readable
    # text.
    #
    # Pass the input image as base64-encoded image bytes or as a reference
    # to an image in an Amazon S3 bucket. If you use the AWS CLI to call
    # Amazon Rekognition operations, you must pass it as a reference to an
    # image in an Amazon S3 bucket. For the AWS CLI, passing image bytes is
    # not supported. The image must be either a .png or .jpeg formatted
    # file.
    #
    # The `DetectText` operation returns text in an array of TextDetection
    # elements, `TextDetections`. Each `TextDetection` element provides
    # information about a single word or line of text that was detected in
    # the image.
    #
    # A word is one or more ISO basic latin script characters that are not
    # separated by spaces. `DetectText` can detect up to 50 words in an
    # image.
    #
    # A line is a string of equally spaced words. A line isn't necessarily
    # a complete sentence. For example, a driver's license number is
    # detected as a line. A line ends when there is no aligned text after
    # it. Also, a line ends when there is a large gap between words,
    # relative to the length of the words. This means, depending on the gap
    # between words, Amazon Rekognition may detect multiple lines in text
    # aligned in the same direction. Periods don't represent the end of a
    # line. If a sentence spans multiple lines, the `DetectText` operation
    # returns multiple lines.
    #
    # To determine whether a `TextDetection` element is a line of text or a
    # word, use the `TextDetection` object `Type` field.
    #
    # To be detected, text must be within +/- 90 degrees orientation of the
    # horizontal axis.
    #
    # For more information, see DetectText in the Amazon Rekognition
    # Developer Guide.
    #
    # @option params [required, Types::Image] :image
    #   The input image as base64-encoded bytes or an Amazon S3 object. If you
    #   use the AWS CLI to call Amazon Rekognition operations, you can't pass
    #   image bytes.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
    #
    # @option params [Types::DetectTextFilters] :filters
    #   Optional parameters that let you set the criteria that the text must
    #   meet to be included in your response.
    #
    # @return [Types::DetectTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectTextResponse#text_detections #text_detections} => Array&lt;Types::TextDetection&gt;
    #   * {Types::DetectTextResponse#text_model_version #text_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_text({
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     filters: {
    #       word_filter: {
    #         min_confidence: 1.0,
    #         min_bounding_box_height: 1.0,
    #         min_bounding_box_width: 1.0,
    #       },
    #       regions_of_interest: [
    #         {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0,
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.text_detections #=> Array
    #   resp.text_detections[0].detected_text #=> String
    #   resp.text_detections[0].type #=> String, one of "LINE", "WORD"
    #   resp.text_detections[0].id #=> Integer
    #   resp.text_detections[0].parent_id #=> Integer
    #   resp.text_detections[0].confidence #=> Float
    #   resp.text_detections[0].geometry.bounding_box.width #=> Float
    #   resp.text_detections[0].geometry.bounding_box.height #=> Float
    #   resp.text_detections[0].geometry.bounding_box.left #=> Float
    #   resp.text_detections[0].geometry.bounding_box.top #=> Float
    #   resp.text_detections[0].geometry.polygon #=> Array
    #   resp.text_detections[0].geometry.polygon[0].x #=> Float
    #   resp.text_detections[0].geometry.polygon[0].y #=> Float
    #   resp.text_model_version #=> String
    #
    # @overload detect_text(params = {})
    # @param [Hash] params ({})
    def detect_text(params = {}, options = {})
      req = build_request(:detect_text, params)
      req.send_request(options)
    end

    # Gets the name and additional information about a celebrity based on
    # his or her Amazon Rekognition ID. The additional information is
    # returned as an array of URLs. If there is no additional information
    # about the celebrity, this list is empty.
    #
    # For more information, see Recognizing Celebrities in an Image in the
    # Amazon Rekognition Developer Guide.
    #
    # This operation requires permissions to perform the
    # `rekognition:GetCelebrityInfo` action.
    #
    # @option params [required, String] :id
    #   The ID for the celebrity. You get the celebrity ID from a call to the
    #   RecognizeCelebrities operation, which recognizes celebrities in an
    #   image.
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

    # Gets the celebrity recognition results for a Amazon Rekognition Video
    # analysis started by StartCelebrityRecognition.
    #
    # Celebrity recognition in a video is an asynchronous operation.
    # Analysis is started by a call to StartCelebrityRecognition which
    # returns a job identifier (`JobId`). When the celebrity recognition
    # operation finishes, Amazon Rekognition Video publishes a completion
    # status to the Amazon Simple Notification Service topic registered in
    # the initial call to `StartCelebrityRecognition`. To get the results of
    # the celebrity recognition analysis, first check that the status value
    # published to the Amazon SNS topic is `SUCCEEDED`. If so, call
    # `GetCelebrityDetection` and pass the job identifier (`JobId`) from the
    # initial call to `StartCelebrityDetection`.
    #
    # For more information, see Working With Stored Videos in the Amazon
    # Rekognition Developer Guide.
    #
    # `GetCelebrityRecognition` returns detected celebrities and the time(s)
    # they are detected in an array (`Celebrities`) of CelebrityRecognition
    # objects. Each `CelebrityRecognition` contains information about the
    # celebrity in a CelebrityDetail object and the time, `Timestamp`, the
    # celebrity was detected.
    #
    # <note markdown="1"> `GetCelebrityRecognition` only returns the default facial attributes
    # (`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The
    # other facial attributes listed in the `Face` object of the following
    # response syntax are not returned. For more information, see FaceDetail
    # in the Amazon Rekognition Developer Guide.
    #
    #  </note>
    #
    # By default, the `Celebrities` array is sorted by time (milliseconds
    # from the start of the video). You can also sort the array by celebrity
    # by specifying the value `ID` in the `SortBy` input parameter.
    #
    # The `CelebrityDetail` object includes the celebrity identifer and
    # additional information urls. If you don't store the additional
    # information urls, you can get them later by calling GetCelebrityInfo
    # with the celebrity identifer.
    #
    # No information is returned for faces not recognized as celebrities.
    #
    # Use MaxResults parameter to limit the number of labels returned. If
    # there are more results than specified in `MaxResults`, the value of
    # `NextToken` in the operation response contains a pagination token for
    # getting the next set of results. To get the next page of results, call
    # `GetCelebrityDetection` and populate the `NextToken` request parameter
    # with the token value returned from the previous call to
    # `GetCelebrityRecognition`.
    #
    # @option params [required, String] :job_id
    #   Job identifier for the required celebrity recognition analysis. You
    #   can get the job identifer from a call to `StartCelebrityRecognition`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more
    #   recognized celebrities to retrieve), Amazon Rekognition Video returns
    #   a pagination token in the response. You can use this pagination token
    #   to retrieve the next set of celebrities.
    #
    # @option params [String] :sort_by
    #   Sort to use for celebrities returned in `Celebrities` field. Specify
    #   `ID` to sort by the celebrity identifier, specify `TIMESTAMP` to sort
    #   by the time the celebrity was recognized.
    #
    # @return [Types::GetCelebrityRecognitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCelebrityRecognitionResponse#job_status #job_status} => String
    #   * {Types::GetCelebrityRecognitionResponse#status_message #status_message} => String
    #   * {Types::GetCelebrityRecognitionResponse#video_metadata #video_metadata} => Types::VideoMetadata
    #   * {Types::GetCelebrityRecognitionResponse#next_token #next_token} => String
    #   * {Types::GetCelebrityRecognitionResponse#celebrities #celebrities} => Array&lt;Types::CelebrityRecognition&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_celebrity_recognition({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "ID", # accepts ID, TIMESTAMP
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.video_metadata.codec #=> String
    #   resp.video_metadata.duration_millis #=> Integer
    #   resp.video_metadata.format #=> String
    #   resp.video_metadata.frame_rate #=> Float
    #   resp.video_metadata.frame_height #=> Integer
    #   resp.video_metadata.frame_width #=> Integer
    #   resp.next_token #=> String
    #   resp.celebrities #=> Array
    #   resp.celebrities[0].timestamp #=> Integer
    #   resp.celebrities[0].celebrity.urls #=> Array
    #   resp.celebrities[0].celebrity.urls[0] #=> String
    #   resp.celebrities[0].celebrity.name #=> String
    #   resp.celebrities[0].celebrity.id #=> String
    #   resp.celebrities[0].celebrity.confidence #=> Float
    #   resp.celebrities[0].celebrity.bounding_box.width #=> Float
    #   resp.celebrities[0].celebrity.bounding_box.height #=> Float
    #   resp.celebrities[0].celebrity.bounding_box.left #=> Float
    #   resp.celebrities[0].celebrity.bounding_box.top #=> Float
    #   resp.celebrities[0].celebrity.face.bounding_box.width #=> Float
    #   resp.celebrities[0].celebrity.face.bounding_box.height #=> Float
    #   resp.celebrities[0].celebrity.face.bounding_box.left #=> Float
    #   resp.celebrities[0].celebrity.face.bounding_box.top #=> Float
    #   resp.celebrities[0].celebrity.face.age_range.low #=> Integer
    #   resp.celebrities[0].celebrity.face.age_range.high #=> Integer
    #   resp.celebrities[0].celebrity.face.smile.value #=> Boolean
    #   resp.celebrities[0].celebrity.face.smile.confidence #=> Float
    #   resp.celebrities[0].celebrity.face.eyeglasses.value #=> Boolean
    #   resp.celebrities[0].celebrity.face.eyeglasses.confidence #=> Float
    #   resp.celebrities[0].celebrity.face.sunglasses.value #=> Boolean
    #   resp.celebrities[0].celebrity.face.sunglasses.confidence #=> Float
    #   resp.celebrities[0].celebrity.face.gender.value #=> String, one of "Male", "Female"
    #   resp.celebrities[0].celebrity.face.gender.confidence #=> Float
    #   resp.celebrities[0].celebrity.face.beard.value #=> Boolean
    #   resp.celebrities[0].celebrity.face.beard.confidence #=> Float
    #   resp.celebrities[0].celebrity.face.mustache.value #=> Boolean
    #   resp.celebrities[0].celebrity.face.mustache.confidence #=> Float
    #   resp.celebrities[0].celebrity.face.eyes_open.value #=> Boolean
    #   resp.celebrities[0].celebrity.face.eyes_open.confidence #=> Float
    #   resp.celebrities[0].celebrity.face.mouth_open.value #=> Boolean
    #   resp.celebrities[0].celebrity.face.mouth_open.confidence #=> Float
    #   resp.celebrities[0].celebrity.face.emotions #=> Array
    #   resp.celebrities[0].celebrity.face.emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"
    #   resp.celebrities[0].celebrity.face.emotions[0].confidence #=> Float
    #   resp.celebrities[0].celebrity.face.landmarks #=> Array
    #   resp.celebrities[0].celebrity.face.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
    #   resp.celebrities[0].celebrity.face.landmarks[0].x #=> Float
    #   resp.celebrities[0].celebrity.face.landmarks[0].y #=> Float
    #   resp.celebrities[0].celebrity.face.pose.roll #=> Float
    #   resp.celebrities[0].celebrity.face.pose.yaw #=> Float
    #   resp.celebrities[0].celebrity.face.pose.pitch #=> Float
    #   resp.celebrities[0].celebrity.face.quality.brightness #=> Float
    #   resp.celebrities[0].celebrity.face.quality.sharpness #=> Float
    #   resp.celebrities[0].celebrity.face.confidence #=> Float
    #
    # @overload get_celebrity_recognition(params = {})
    # @param [Hash] params ({})
    def get_celebrity_recognition(params = {}, options = {})
      req = build_request(:get_celebrity_recognition, params)
      req.send_request(options)
    end

    # Gets the unsafe content analysis results for a Amazon Rekognition
    # Video analysis started by StartContentModeration.
    #
    # Unsafe content analysis of a video is an asynchronous operation. You
    # start analysis by calling StartContentModeration which returns a job
    # identifier (`JobId`). When analysis finishes, Amazon Rekognition Video
    # publishes a completion status to the Amazon Simple Notification
    # Service topic registered in the initial call to
    # `StartContentModeration`. To get the results of the unsafe content
    # analysis, first check that the status value published to the Amazon
    # SNS topic is `SUCCEEDED`. If so, call `GetContentModeration` and pass
    # the job identifier (`JobId`) from the initial call to
    # `StartContentModeration`.
    #
    # For more information, see Working with Stored Videos in the Amazon
    # Rekognition Devlopers Guide.
    #
    # `GetContentModeration` returns detected unsafe content labels, and the
    # time they are detected, in an array, `ModerationLabels`, of
    # ContentModerationDetection objects.
    #
    # By default, the moderated labels are returned sorted by time, in
    # milliseconds from the start of the video. You can also sort them by
    # moderated label by specifying `NAME` for the `SortBy` input parameter.
    #
    # Since video analysis can return a large number of results, use the
    # `MaxResults` parameter to limit the number of labels returned in a
    # single call to `GetContentModeration`. If there are more results than
    # specified in `MaxResults`, the value of `NextToken` in the operation
    # response contains a pagination token for getting the next set of
    # results. To get the next page of results, call `GetContentModeration`
    # and populate the `NextToken` request parameter with the value of
    # `NextToken` returned from the previous call to `GetContentModeration`.
    #
    # For more information, see Detecting Unsafe Content in the Amazon
    # Rekognition Developer Guide.
    #
    # @option params [required, String] :job_id
    #   The identifier for the unsafe content job. Use `JobId` to identify the
    #   job in a subsequent call to `GetContentModeration`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Rekognition returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of unsafe content labels.
    #
    # @option params [String] :sort_by
    #   Sort to use for elements in the `ModerationLabelDetections` array. Use
    #   `TIMESTAMP` to sort array elements by the time labels are detected.
    #   Use `NAME` to alphabetically group elements for a label together.
    #   Within each label group, the array element are sorted by detection
    #   confidence. The default sort is by `TIMESTAMP`.
    #
    # @return [Types::GetContentModerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContentModerationResponse#job_status #job_status} => String
    #   * {Types::GetContentModerationResponse#status_message #status_message} => String
    #   * {Types::GetContentModerationResponse#video_metadata #video_metadata} => Types::VideoMetadata
    #   * {Types::GetContentModerationResponse#moderation_labels #moderation_labels} => Array&lt;Types::ContentModerationDetection&gt;
    #   * {Types::GetContentModerationResponse#next_token #next_token} => String
    #   * {Types::GetContentModerationResponse#moderation_model_version #moderation_model_version} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content_moderation({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "NAME", # accepts NAME, TIMESTAMP
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.video_metadata.codec #=> String
    #   resp.video_metadata.duration_millis #=> Integer
    #   resp.video_metadata.format #=> String
    #   resp.video_metadata.frame_rate #=> Float
    #   resp.video_metadata.frame_height #=> Integer
    #   resp.video_metadata.frame_width #=> Integer
    #   resp.moderation_labels #=> Array
    #   resp.moderation_labels[0].timestamp #=> Integer
    #   resp.moderation_labels[0].moderation_label.confidence #=> Float
    #   resp.moderation_labels[0].moderation_label.name #=> String
    #   resp.moderation_labels[0].moderation_label.parent_name #=> String
    #   resp.next_token #=> String
    #   resp.moderation_model_version #=> String
    #
    # @overload get_content_moderation(params = {})
    # @param [Hash] params ({})
    def get_content_moderation(params = {}, options = {})
      req = build_request(:get_content_moderation, params)
      req.send_request(options)
    end

    # Gets face detection results for a Amazon Rekognition Video analysis
    # started by StartFaceDetection.
    #
    # Face detection with Amazon Rekognition Video is an asynchronous
    # operation. You start face detection by calling StartFaceDetection
    # which returns a job identifier (`JobId`). When the face detection
    # operation finishes, Amazon Rekognition Video publishes a completion
    # status to the Amazon Simple Notification Service topic registered in
    # the initial call to `StartFaceDetection`. To get the results of the
    # face detection operation, first check that the status value published
    # to the Amazon SNS topic is `SUCCEEDED`. If so, call GetFaceDetection
    # and pass the job identifier (`JobId`) from the initial call to
    # `StartFaceDetection`.
    #
    # `GetFaceDetection` returns an array of detected faces (`Faces`) sorted
    # by the time the faces were detected.
    #
    # Use MaxResults parameter to limit the number of labels returned. If
    # there are more results than specified in `MaxResults`, the value of
    # `NextToken` in the operation response contains a pagination token for
    # getting the next set of results. To get the next page of results, call
    # `GetFaceDetection` and populate the `NextToken` request parameter with
    # the token value returned from the previous call to `GetFaceDetection`.
    #
    # @option params [required, String] :job_id
    #   Unique identifier for the face detection job. The `JobId` is returned
    #   from `StartFaceDetection`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more faces
    #   to retrieve), Amazon Rekognition Video returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of faces.
    #
    # @return [Types::GetFaceDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFaceDetectionResponse#job_status #job_status} => String
    #   * {Types::GetFaceDetectionResponse#status_message #status_message} => String
    #   * {Types::GetFaceDetectionResponse#video_metadata #video_metadata} => Types::VideoMetadata
    #   * {Types::GetFaceDetectionResponse#next_token #next_token} => String
    #   * {Types::GetFaceDetectionResponse#faces #faces} => Array&lt;Types::FaceDetection&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_face_detection({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.video_metadata.codec #=> String
    #   resp.video_metadata.duration_millis #=> Integer
    #   resp.video_metadata.format #=> String
    #   resp.video_metadata.frame_rate #=> Float
    #   resp.video_metadata.frame_height #=> Integer
    #   resp.video_metadata.frame_width #=> Integer
    #   resp.next_token #=> String
    #   resp.faces #=> Array
    #   resp.faces[0].timestamp #=> Integer
    #   resp.faces[0].face.bounding_box.width #=> Float
    #   resp.faces[0].face.bounding_box.height #=> Float
    #   resp.faces[0].face.bounding_box.left #=> Float
    #   resp.faces[0].face.bounding_box.top #=> Float
    #   resp.faces[0].face.age_range.low #=> Integer
    #   resp.faces[0].face.age_range.high #=> Integer
    #   resp.faces[0].face.smile.value #=> Boolean
    #   resp.faces[0].face.smile.confidence #=> Float
    #   resp.faces[0].face.eyeglasses.value #=> Boolean
    #   resp.faces[0].face.eyeglasses.confidence #=> Float
    #   resp.faces[0].face.sunglasses.value #=> Boolean
    #   resp.faces[0].face.sunglasses.confidence #=> Float
    #   resp.faces[0].face.gender.value #=> String, one of "Male", "Female"
    #   resp.faces[0].face.gender.confidence #=> Float
    #   resp.faces[0].face.beard.value #=> Boolean
    #   resp.faces[0].face.beard.confidence #=> Float
    #   resp.faces[0].face.mustache.value #=> Boolean
    #   resp.faces[0].face.mustache.confidence #=> Float
    #   resp.faces[0].face.eyes_open.value #=> Boolean
    #   resp.faces[0].face.eyes_open.confidence #=> Float
    #   resp.faces[0].face.mouth_open.value #=> Boolean
    #   resp.faces[0].face.mouth_open.confidence #=> Float
    #   resp.faces[0].face.emotions #=> Array
    #   resp.faces[0].face.emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"
    #   resp.faces[0].face.emotions[0].confidence #=> Float
    #   resp.faces[0].face.landmarks #=> Array
    #   resp.faces[0].face.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
    #   resp.faces[0].face.landmarks[0].x #=> Float
    #   resp.faces[0].face.landmarks[0].y #=> Float
    #   resp.faces[0].face.pose.roll #=> Float
    #   resp.faces[0].face.pose.yaw #=> Float
    #   resp.faces[0].face.pose.pitch #=> Float
    #   resp.faces[0].face.quality.brightness #=> Float
    #   resp.faces[0].face.quality.sharpness #=> Float
    #   resp.faces[0].face.confidence #=> Float
    #
    # @overload get_face_detection(params = {})
    # @param [Hash] params ({})
    def get_face_detection(params = {}, options = {})
      req = build_request(:get_face_detection, params)
      req.send_request(options)
    end

    # Gets the face search results for Amazon Rekognition Video face search
    # started by StartFaceSearch. The search returns faces in a collection
    # that match the faces of persons detected in a video. It also includes
    # the time(s) that faces are matched in the video.
    #
    # Face search in a video is an asynchronous operation. You start face
    # search by calling to StartFaceSearch which returns a job identifier
    # (`JobId`). When the search operation finishes, Amazon Rekognition
    # Video publishes a completion status to the Amazon Simple Notification
    # Service topic registered in the initial call to `StartFaceSearch`. To
    # get the search results, first check that the status value published to
    # the Amazon SNS topic is `SUCCEEDED`. If so, call `GetFaceSearch` and
    # pass the job identifier (`JobId`) from the initial call to
    # `StartFaceSearch`.
    #
    # For more information, see Searching Faces in a Collection in the
    # Amazon Rekognition Developer Guide.
    #
    # The search results are retured in an array, `Persons`, of PersonMatch
    # objects. Each`PersonMatch` element contains details about the matching
    # faces in the input collection, person information (facial attributes,
    # bounding boxes, and person identifer) for the matched person, and the
    # time the person was matched in the video.
    #
    # <note markdown="1"> `GetFaceSearch` only returns the default facial attributes
    # (`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The
    # other facial attributes listed in the `Face` object of the following
    # response syntax are not returned. For more information, see FaceDetail
    # in the Amazon Rekognition Developer Guide.
    #
    #  </note>
    #
    # By default, the `Persons` array is sorted by the time, in milliseconds
    # from the start of the video, persons are matched. You can also sort by
    # persons by specifying `INDEX` for the `SORTBY` input parameter.
    #
    # @option params [required, String] :job_id
    #   The job identifer for the search request. You get the job identifier
    #   from an initial call to `StartFaceSearch`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more search
    #   results to retrieve), Amazon Rekognition Video returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of search results.
    #
    # @option params [String] :sort_by
    #   Sort to use for grouping faces in the response. Use `TIMESTAMP` to
    #   group faces by the time that they are recognized. Use `INDEX` to sort
    #   by recognized faces.
    #
    # @return [Types::GetFaceSearchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFaceSearchResponse#job_status #job_status} => String
    #   * {Types::GetFaceSearchResponse#status_message #status_message} => String
    #   * {Types::GetFaceSearchResponse#next_token #next_token} => String
    #   * {Types::GetFaceSearchResponse#video_metadata #video_metadata} => Types::VideoMetadata
    #   * {Types::GetFaceSearchResponse#persons #persons} => Array&lt;Types::PersonMatch&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_face_search({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "INDEX", # accepts INDEX, TIMESTAMP
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.next_token #=> String
    #   resp.video_metadata.codec #=> String
    #   resp.video_metadata.duration_millis #=> Integer
    #   resp.video_metadata.format #=> String
    #   resp.video_metadata.frame_rate #=> Float
    #   resp.video_metadata.frame_height #=> Integer
    #   resp.video_metadata.frame_width #=> Integer
    #   resp.persons #=> Array
    #   resp.persons[0].timestamp #=> Integer
    #   resp.persons[0].person.index #=> Integer
    #   resp.persons[0].person.bounding_box.width #=> Float
    #   resp.persons[0].person.bounding_box.height #=> Float
    #   resp.persons[0].person.bounding_box.left #=> Float
    #   resp.persons[0].person.bounding_box.top #=> Float
    #   resp.persons[0].person.face.bounding_box.width #=> Float
    #   resp.persons[0].person.face.bounding_box.height #=> Float
    #   resp.persons[0].person.face.bounding_box.left #=> Float
    #   resp.persons[0].person.face.bounding_box.top #=> Float
    #   resp.persons[0].person.face.age_range.low #=> Integer
    #   resp.persons[0].person.face.age_range.high #=> Integer
    #   resp.persons[0].person.face.smile.value #=> Boolean
    #   resp.persons[0].person.face.smile.confidence #=> Float
    #   resp.persons[0].person.face.eyeglasses.value #=> Boolean
    #   resp.persons[0].person.face.eyeglasses.confidence #=> Float
    #   resp.persons[0].person.face.sunglasses.value #=> Boolean
    #   resp.persons[0].person.face.sunglasses.confidence #=> Float
    #   resp.persons[0].person.face.gender.value #=> String, one of "Male", "Female"
    #   resp.persons[0].person.face.gender.confidence #=> Float
    #   resp.persons[0].person.face.beard.value #=> Boolean
    #   resp.persons[0].person.face.beard.confidence #=> Float
    #   resp.persons[0].person.face.mustache.value #=> Boolean
    #   resp.persons[0].person.face.mustache.confidence #=> Float
    #   resp.persons[0].person.face.eyes_open.value #=> Boolean
    #   resp.persons[0].person.face.eyes_open.confidence #=> Float
    #   resp.persons[0].person.face.mouth_open.value #=> Boolean
    #   resp.persons[0].person.face.mouth_open.confidence #=> Float
    #   resp.persons[0].person.face.emotions #=> Array
    #   resp.persons[0].person.face.emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"
    #   resp.persons[0].person.face.emotions[0].confidence #=> Float
    #   resp.persons[0].person.face.landmarks #=> Array
    #   resp.persons[0].person.face.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
    #   resp.persons[0].person.face.landmarks[0].x #=> Float
    #   resp.persons[0].person.face.landmarks[0].y #=> Float
    #   resp.persons[0].person.face.pose.roll #=> Float
    #   resp.persons[0].person.face.pose.yaw #=> Float
    #   resp.persons[0].person.face.pose.pitch #=> Float
    #   resp.persons[0].person.face.quality.brightness #=> Float
    #   resp.persons[0].person.face.quality.sharpness #=> Float
    #   resp.persons[0].person.face.confidence #=> Float
    #   resp.persons[0].face_matches #=> Array
    #   resp.persons[0].face_matches[0].similarity #=> Float
    #   resp.persons[0].face_matches[0].face.face_id #=> String
    #   resp.persons[0].face_matches[0].face.bounding_box.width #=> Float
    #   resp.persons[0].face_matches[0].face.bounding_box.height #=> Float
    #   resp.persons[0].face_matches[0].face.bounding_box.left #=> Float
    #   resp.persons[0].face_matches[0].face.bounding_box.top #=> Float
    #   resp.persons[0].face_matches[0].face.image_id #=> String
    #   resp.persons[0].face_matches[0].face.external_image_id #=> String
    #   resp.persons[0].face_matches[0].face.confidence #=> Float
    #
    # @overload get_face_search(params = {})
    # @param [Hash] params ({})
    def get_face_search(params = {}, options = {})
      req = build_request(:get_face_search, params)
      req.send_request(options)
    end

    # Gets the label detection results of a Amazon Rekognition Video
    # analysis started by StartLabelDetection.
    #
    # The label detection operation is started by a call to
    # StartLabelDetection which returns a job identifier (`JobId`). When the
    # label detection operation finishes, Amazon Rekognition publishes a
    # completion status to the Amazon Simple Notification Service topic
    # registered in the initial call to `StartlabelDetection`. To get the
    # results of the label detection operation, first check that the status
    # value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
    # GetLabelDetection and pass the job identifier (`JobId`) from the
    # initial call to `StartLabelDetection`.
    #
    # `GetLabelDetection` returns an array of detected labels (`Labels`)
    # sorted by the time the labels were detected. You can also sort by the
    # label name by specifying `NAME` for the `SortBy` input parameter.
    #
    # The labels returned include the label name, the percentage confidence
    # in the accuracy of the detected label, and the time the label was
    # detected in the video.
    #
    # The returned labels also include bounding box information for common
    # objects, a hierarchical taxonomy of detected labels, and the version
    # of the label model used for detection.
    #
    # Use MaxResults parameter to limit the number of labels returned. If
    # there are more results than specified in `MaxResults`, the value of
    # `NextToken` in the operation response contains a pagination token for
    # getting the next set of results. To get the next page of results, call
    # `GetlabelDetection` and populate the `NextToken` request parameter
    # with the token value returned from the previous call to
    # `GetLabelDetection`.
    #
    # @option params [required, String] :job_id
    #   Job identifier for the label detection operation for which you want
    #   results returned. You get the job identifer from an initial call to
    #   `StartlabelDetection`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more labels
    #   to retrieve), Amazon Rekognition Video returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of labels.
    #
    # @option params [String] :sort_by
    #   Sort to use for elements in the `Labels` array. Use `TIMESTAMP` to
    #   sort array elements by the time labels are detected. Use `NAME` to
    #   alphabetically group elements for a label together. Within each label
    #   group, the array element are sorted by detection confidence. The
    #   default sort is by `TIMESTAMP`.
    #
    # @return [Types::GetLabelDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLabelDetectionResponse#job_status #job_status} => String
    #   * {Types::GetLabelDetectionResponse#status_message #status_message} => String
    #   * {Types::GetLabelDetectionResponse#video_metadata #video_metadata} => Types::VideoMetadata
    #   * {Types::GetLabelDetectionResponse#next_token #next_token} => String
    #   * {Types::GetLabelDetectionResponse#labels #labels} => Array&lt;Types::LabelDetection&gt;
    #   * {Types::GetLabelDetectionResponse#label_model_version #label_model_version} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_label_detection({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "NAME", # accepts NAME, TIMESTAMP
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.video_metadata.codec #=> String
    #   resp.video_metadata.duration_millis #=> Integer
    #   resp.video_metadata.format #=> String
    #   resp.video_metadata.frame_rate #=> Float
    #   resp.video_metadata.frame_height #=> Integer
    #   resp.video_metadata.frame_width #=> Integer
    #   resp.next_token #=> String
    #   resp.labels #=> Array
    #   resp.labels[0].timestamp #=> Integer
    #   resp.labels[0].label.name #=> String
    #   resp.labels[0].label.confidence #=> Float
    #   resp.labels[0].label.instances #=> Array
    #   resp.labels[0].label.instances[0].bounding_box.width #=> Float
    #   resp.labels[0].label.instances[0].bounding_box.height #=> Float
    #   resp.labels[0].label.instances[0].bounding_box.left #=> Float
    #   resp.labels[0].label.instances[0].bounding_box.top #=> Float
    #   resp.labels[0].label.instances[0].confidence #=> Float
    #   resp.labels[0].label.parents #=> Array
    #   resp.labels[0].label.parents[0].name #=> String
    #   resp.label_model_version #=> String
    #
    # @overload get_label_detection(params = {})
    # @param [Hash] params ({})
    def get_label_detection(params = {}, options = {})
      req = build_request(:get_label_detection, params)
      req.send_request(options)
    end

    # Gets the path tracking results of a Amazon Rekognition Video analysis
    # started by StartPersonTracking.
    #
    # The person path tracking operation is started by a call to
    # `StartPersonTracking` which returns a job identifier (`JobId`). When
    # the operation finishes, Amazon Rekognition Video publishes a
    # completion status to the Amazon Simple Notification Service topic
    # registered in the initial call to `StartPersonTracking`.
    #
    # To get the results of the person path tracking operation, first check
    # that the status value published to the Amazon SNS topic is
    # `SUCCEEDED`. If so, call GetPersonTracking and pass the job identifier
    # (`JobId`) from the initial call to `StartPersonTracking`.
    #
    # `GetPersonTracking` returns an array, `Persons`, of tracked persons
    # and the time(s) their paths were tracked in the video.
    #
    # <note markdown="1"> `GetPersonTracking` only returns the default facial attributes
    # (`BoundingBox`, `Confidence`, `Landmarks`, `Pose`, and `Quality`). The
    # other facial attributes listed in the `Face` object of the following
    # response syntax are not returned.
    #
    #  For more information, see FaceDetail in the Amazon Rekognition
    # Developer Guide.
    #
    #  </note>
    #
    # By default, the array is sorted by the time(s) a person's path is
    # tracked in the video. You can sort by tracked persons by specifying
    # `INDEX` for the `SortBy` input parameter.
    #
    # Use the `MaxResults` parameter to limit the number of items returned.
    # If there are more results than specified in `MaxResults`, the value of
    # `NextToken` in the operation response contains a pagination token for
    # getting the next set of results. To get the next page of results, call
    # `GetPersonTracking` and populate the `NextToken` request parameter
    # with the token value returned from the previous call to
    # `GetPersonTracking`.
    #
    # @option params [required, String] :job_id
    #   The identifier for a job that tracks persons in a video. You get the
    #   `JobId` from a call to `StartPersonTracking`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000. If you specify a value greater than
    #   1000, a maximum of 1000 results is returned. The default value is
    #   1000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more
    #   persons to retrieve), Amazon Rekognition Video returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of persons.
    #
    # @option params [String] :sort_by
    #   Sort to use for elements in the `Persons` array. Use `TIMESTAMP` to
    #   sort array elements by the time persons are detected. Use `INDEX` to
    #   sort by the tracked persons. If you sort by `INDEX`, the array
    #   elements for each person are sorted by detection confidence. The
    #   default sort is by `TIMESTAMP`.
    #
    # @return [Types::GetPersonTrackingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPersonTrackingResponse#job_status #job_status} => String
    #   * {Types::GetPersonTrackingResponse#status_message #status_message} => String
    #   * {Types::GetPersonTrackingResponse#video_metadata #video_metadata} => Types::VideoMetadata
    #   * {Types::GetPersonTrackingResponse#next_token #next_token} => String
    #   * {Types::GetPersonTrackingResponse#persons #persons} => Array&lt;Types::PersonDetection&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_person_tracking({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "INDEX", # accepts INDEX, TIMESTAMP
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.video_metadata.codec #=> String
    #   resp.video_metadata.duration_millis #=> Integer
    #   resp.video_metadata.format #=> String
    #   resp.video_metadata.frame_rate #=> Float
    #   resp.video_metadata.frame_height #=> Integer
    #   resp.video_metadata.frame_width #=> Integer
    #   resp.next_token #=> String
    #   resp.persons #=> Array
    #   resp.persons[0].timestamp #=> Integer
    #   resp.persons[0].person.index #=> Integer
    #   resp.persons[0].person.bounding_box.width #=> Float
    #   resp.persons[0].person.bounding_box.height #=> Float
    #   resp.persons[0].person.bounding_box.left #=> Float
    #   resp.persons[0].person.bounding_box.top #=> Float
    #   resp.persons[0].person.face.bounding_box.width #=> Float
    #   resp.persons[0].person.face.bounding_box.height #=> Float
    #   resp.persons[0].person.face.bounding_box.left #=> Float
    #   resp.persons[0].person.face.bounding_box.top #=> Float
    #   resp.persons[0].person.face.age_range.low #=> Integer
    #   resp.persons[0].person.face.age_range.high #=> Integer
    #   resp.persons[0].person.face.smile.value #=> Boolean
    #   resp.persons[0].person.face.smile.confidence #=> Float
    #   resp.persons[0].person.face.eyeglasses.value #=> Boolean
    #   resp.persons[0].person.face.eyeglasses.confidence #=> Float
    #   resp.persons[0].person.face.sunglasses.value #=> Boolean
    #   resp.persons[0].person.face.sunglasses.confidence #=> Float
    #   resp.persons[0].person.face.gender.value #=> String, one of "Male", "Female"
    #   resp.persons[0].person.face.gender.confidence #=> Float
    #   resp.persons[0].person.face.beard.value #=> Boolean
    #   resp.persons[0].person.face.beard.confidence #=> Float
    #   resp.persons[0].person.face.mustache.value #=> Boolean
    #   resp.persons[0].person.face.mustache.confidence #=> Float
    #   resp.persons[0].person.face.eyes_open.value #=> Boolean
    #   resp.persons[0].person.face.eyes_open.confidence #=> Float
    #   resp.persons[0].person.face.mouth_open.value #=> Boolean
    #   resp.persons[0].person.face.mouth_open.confidence #=> Float
    #   resp.persons[0].person.face.emotions #=> Array
    #   resp.persons[0].person.face.emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"
    #   resp.persons[0].person.face.emotions[0].confidence #=> Float
    #   resp.persons[0].person.face.landmarks #=> Array
    #   resp.persons[0].person.face.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
    #   resp.persons[0].person.face.landmarks[0].x #=> Float
    #   resp.persons[0].person.face.landmarks[0].y #=> Float
    #   resp.persons[0].person.face.pose.roll #=> Float
    #   resp.persons[0].person.face.pose.yaw #=> Float
    #   resp.persons[0].person.face.pose.pitch #=> Float
    #   resp.persons[0].person.face.quality.brightness #=> Float
    #   resp.persons[0].person.face.quality.sharpness #=> Float
    #   resp.persons[0].person.face.confidence #=> Float
    #
    # @overload get_person_tracking(params = {})
    # @param [Hash] params ({})
    def get_person_tracking(params = {}, options = {})
      req = build_request(:get_person_tracking, params)
      req.send_request(options)
    end

    # Gets the segment detection results of a Amazon Rekognition Video
    # analysis started by StartSegmentDetection.
    #
    # Segment detection with Amazon Rekognition Video is an asynchronous
    # operation. You start segment detection by calling
    # StartSegmentDetection which returns a job identifier (`JobId`). When
    # the segment detection operation finishes, Amazon Rekognition publishes
    # a completion status to the Amazon Simple Notification Service topic
    # registered in the initial call to `StartSegmentDetection`. To get the
    # results of the segment detection operation, first check that the
    # status value published to the Amazon SNS topic is `SUCCEEDED`. if so,
    # call `GetSegmentDetection` and pass the job identifier (`JobId`) from
    # the initial call of `StartSegmentDetection`.
    #
    # `GetSegmentDetection` returns detected segments in an array
    # (`Segments`) of SegmentDetection objects. `Segments` is sorted by the
    # segment types specified in the `SegmentTypes` input parameter of
    # `StartSegmentDetection`. Each element of the array includes the
    # detected segment, the precentage confidence in the acuracy of the
    # detected segment, the type of the segment, and the frame in which the
    # segment was detected.
    #
    # Use `SelectedSegmentTypes` to find out the type of segment detection
    # requested in the call to `StartSegmentDetection`.
    #
    # Use the `MaxResults` parameter to limit the number of segment
    # detections returned. If there are more results than specified in
    # `MaxResults`, the value of `NextToken` in the operation response
    # contains a pagination token for getting the next set of results. To
    # get the next page of results, call `GetSegmentDetection` and populate
    # the `NextToken` request parameter with the token value returned from
    # the previous call to `GetSegmentDetection`.
    #
    # For more information, see Detecting Video Segments in Stored Video in
    # the Amazon Rekognition Developer Guide.
    #
    # @option params [required, String] :job_id
    #   Job identifier for the text detection operation for which you want
    #   results returned. You get the job identifer from an initial call to
    #   `StartSegmentDetection`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000.
    #
    # @option params [String] :next_token
    #   If the response is truncated, Amazon Rekognition Video returns this
    #   token that you can use in the subsequent request to retrieve the next
    #   set of text.
    #
    # @return [Types::GetSegmentDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentDetectionResponse#job_status #job_status} => String
    #   * {Types::GetSegmentDetectionResponse#status_message #status_message} => String
    #   * {Types::GetSegmentDetectionResponse#video_metadata #video_metadata} => Array&lt;Types::VideoMetadata&gt;
    #   * {Types::GetSegmentDetectionResponse#audio_metadata #audio_metadata} => Array&lt;Types::AudioMetadata&gt;
    #   * {Types::GetSegmentDetectionResponse#next_token #next_token} => String
    #   * {Types::GetSegmentDetectionResponse#segments #segments} => Array&lt;Types::SegmentDetection&gt;
    #   * {Types::GetSegmentDetectionResponse#selected_segment_types #selected_segment_types} => Array&lt;Types::SegmentTypeInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_detection({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.video_metadata #=> Array
    #   resp.video_metadata[0].codec #=> String
    #   resp.video_metadata[0].duration_millis #=> Integer
    #   resp.video_metadata[0].format #=> String
    #   resp.video_metadata[0].frame_rate #=> Float
    #   resp.video_metadata[0].frame_height #=> Integer
    #   resp.video_metadata[0].frame_width #=> Integer
    #   resp.audio_metadata #=> Array
    #   resp.audio_metadata[0].codec #=> String
    #   resp.audio_metadata[0].duration_millis #=> Integer
    #   resp.audio_metadata[0].sample_rate #=> Integer
    #   resp.audio_metadata[0].number_of_channels #=> Integer
    #   resp.next_token #=> String
    #   resp.segments #=> Array
    #   resp.segments[0].type #=> String, one of "TECHNICAL_CUE", "SHOT"
    #   resp.segments[0].start_timestamp_millis #=> Integer
    #   resp.segments[0].end_timestamp_millis #=> Integer
    #   resp.segments[0].duration_millis #=> Integer
    #   resp.segments[0].start_timecode_smpte #=> String
    #   resp.segments[0].end_timecode_smpte #=> String
    #   resp.segments[0].duration_smpte #=> String
    #   resp.segments[0].technical_cue_segment.type #=> String, one of "ColorBars", "EndCredits", "BlackFrames"
    #   resp.segments[0].technical_cue_segment.confidence #=> Float
    #   resp.segments[0].shot_segment.index #=> Integer
    #   resp.segments[0].shot_segment.confidence #=> Float
    #   resp.selected_segment_types #=> Array
    #   resp.selected_segment_types[0].type #=> String, one of "TECHNICAL_CUE", "SHOT"
    #   resp.selected_segment_types[0].model_version #=> String
    #
    # @overload get_segment_detection(params = {})
    # @param [Hash] params ({})
    def get_segment_detection(params = {}, options = {})
      req = build_request(:get_segment_detection, params)
      req.send_request(options)
    end

    # Gets the text detection results of a Amazon Rekognition Video analysis
    # started by StartTextDetection.
    #
    # Text detection with Amazon Rekognition Video is an asynchronous
    # operation. You start text detection by calling StartTextDetection
    # which returns a job identifier (`JobId`) When the text detection
    # operation finishes, Amazon Rekognition publishes a completion status
    # to the Amazon Simple Notification Service topic registered in the
    # initial call to `StartTextDetection`. To get the results of the text
    # detection operation, first check that the status value published to
    # the Amazon SNS topic is `SUCCEEDED`. if so, call `GetTextDetection`
    # and pass the job identifier (`JobId`) from the initial call of
    # `StartLabelDetection`.
    #
    # `GetTextDetection` returns an array of detected text
    # (`TextDetections`) sorted by the time the text was detected, up to 50
    # words per frame of video.
    #
    # Each element of the array includes the detected text, the precentage
    # confidence in the acuracy of the detected text, the time the text was
    # detected, bounding box information for where the text was located, and
    # unique identifiers for words and their lines.
    #
    # Use MaxResults parameter to limit the number of text detections
    # returned. If there are more results than specified in `MaxResults`,
    # the value of `NextToken` in the operation response contains a
    # pagination token for getting the next set of results. To get the next
    # page of results, call `GetTextDetection` and populate the `NextToken`
    # request parameter with the token value returned from the previous call
    # to `GetTextDetection`.
    #
    # @option params [required, String] :job_id
    #   Job identifier for the text detection operation for which you want
    #   results returned. You get the job identifer from an initial call to
    #   `StartTextDetection`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per paginated call. The largest
    #   value you can specify is 1000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more labels
    #   to retrieve), Amazon Rekognition Video returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of text.
    #
    # @return [Types::GetTextDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTextDetectionResponse#job_status #job_status} => String
    #   * {Types::GetTextDetectionResponse#status_message #status_message} => String
    #   * {Types::GetTextDetectionResponse#video_metadata #video_metadata} => Types::VideoMetadata
    #   * {Types::GetTextDetectionResponse#text_detections #text_detections} => Array&lt;Types::TextDetectionResult&gt;
    #   * {Types::GetTextDetectionResponse#next_token #next_token} => String
    #   * {Types::GetTextDetectionResponse#text_model_version #text_model_version} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_text_detection({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.video_metadata.codec #=> String
    #   resp.video_metadata.duration_millis #=> Integer
    #   resp.video_metadata.format #=> String
    #   resp.video_metadata.frame_rate #=> Float
    #   resp.video_metadata.frame_height #=> Integer
    #   resp.video_metadata.frame_width #=> Integer
    #   resp.text_detections #=> Array
    #   resp.text_detections[0].timestamp #=> Integer
    #   resp.text_detections[0].text_detection.detected_text #=> String
    #   resp.text_detections[0].text_detection.type #=> String, one of "LINE", "WORD"
    #   resp.text_detections[0].text_detection.id #=> Integer
    #   resp.text_detections[0].text_detection.parent_id #=> Integer
    #   resp.text_detections[0].text_detection.confidence #=> Float
    #   resp.text_detections[0].text_detection.geometry.bounding_box.width #=> Float
    #   resp.text_detections[0].text_detection.geometry.bounding_box.height #=> Float
    #   resp.text_detections[0].text_detection.geometry.bounding_box.left #=> Float
    #   resp.text_detections[0].text_detection.geometry.bounding_box.top #=> Float
    #   resp.text_detections[0].text_detection.geometry.polygon #=> Array
    #   resp.text_detections[0].text_detection.geometry.polygon[0].x #=> Float
    #   resp.text_detections[0].text_detection.geometry.polygon[0].y #=> Float
    #   resp.next_token #=> String
    #   resp.text_model_version #=> String
    #
    # @overload get_text_detection(params = {})
    # @param [Hash] params ({})
    def get_text_detection(params = {}, options = {})
      req = build_request(:get_text_detection, params)
      req.send_request(options)
    end

    # Detects faces in the input image and adds them to the specified
    # collection.
    #
    # Amazon Rekognition doesn't save the actual faces that are detected.
    # Instead, the underlying detection algorithm first detects the faces in
    # the input image. For each face, the algorithm extracts facial features
    # into a feature vector, and stores it in the backend database. Amazon
    # Rekognition uses feature vectors when it performs face match and
    # search operations using the SearchFaces and SearchFacesByImage
    # operations.
    #
    # For more information, see Adding Faces to a Collection in the Amazon
    # Rekognition Developer Guide.
    #
    # To get the number of faces in a collection, call DescribeCollection.
    #
    # If you're using version 1.0 of the face detection model, `IndexFaces`
    # indexes the 15 largest faces in the input image. Later versions of the
    # face detection model index the 100 largest faces in the input image.
    #
    # If you're using version 4 or later of the face model, image
    # orientation information is not returned in the `OrientationCorrection`
    # field.
    #
    # To determine which version of the model you're using, call
    # DescribeCollection and supply the collection ID. You can also get the
    # model version from the value of `FaceModelVersion` in the response
    # from `IndexFaces`
    #
    # For more information, see Model Versioning in the Amazon Rekognition
    # Developer Guide.
    #
    # If you provide the optional `ExternalImageId` for the input image you
    # provided, Amazon Rekognition associates this ID with all faces that it
    # detects. When you call the ListFaces operation, the response returns
    # the external ID. You can use this external image ID to create a
    # client-side index to associate the faces with each image. You can then
    # use the index to find all faces in an image.
    #
    # You can specify the maximum number of faces to index with the
    # `MaxFaces` input parameter. This is useful when you want to index the
    # largest faces in an image and don't want to index smaller faces, such
    # as those belonging to people standing in the background.
    #
    # The `QualityFilter` input parameter allows you to filter out detected
    # faces that don’t meet a required quality bar. The quality bar is based
    # on a variety of common use cases. By default, `IndexFaces` chooses the
    # quality bar that's used to filter faces. You can also explicitly
    # choose the quality bar. Use `QualityFilter`, to set the quality bar by
    # specifying `LOW`, `MEDIUM`, or `HIGH`. If you do not want to filter
    # detected faces, specify `NONE`.
    #
    # <note markdown="1"> To use quality filtering, you need a collection associated with
    # version 3 of the face model or higher. To get the version of the face
    # model associated with a collection, call DescribeCollection.
    #
    #  </note>
    #
    # Information about faces detected in an image, but not indexed, is
    # returned in an array of UnindexedFace objects, `UnindexedFaces`. Faces
    # aren't indexed for reasons such as:
    #
    # * The number of faces detected exceeds the value of the `MaxFaces`
    #   request parameter.
    #
    # * The face is too small compared to the image dimensions.
    #
    # * The face is too blurry.
    #
    # * The image is too dark.
    #
    # * The face has an extreme pose.
    #
    # * The face doesn’t have enough detail to be suitable for face search.
    #
    # In response, the `IndexFaces` operation returns an array of metadata
    # for all detected faces, `FaceRecords`. This includes:
    #
    # * The bounding box, `BoundingBox`, of the detected face.
    #
    # * A confidence value, `Confidence`, which indicates the confidence
    #   that the bounding box contains a face.
    #
    # * A face ID, `FaceId`, assigned by the service for each face that's
    #   detected and stored.
    #
    # * An image ID, `ImageId`, assigned by the service for the input image.
    #
    # If you request all facial attributes (by using the
    # `detectionAttributes` parameter), Amazon Rekognition returns detailed
    # facial attributes, such as facial landmarks (for example, location of
    # eye and mouth) and other facial attributes. If you provide the same
    # image, specify the same collection, and use the same external ID in
    # the `IndexFaces` operation, Amazon Rekognition doesn't save duplicate
    # face metadata.
    #
    #
    #
    # The input image is passed either as base64-encoded image bytes, or as
    # a reference to an image in an Amazon S3 bucket. If you use the AWS CLI
    # to call Amazon Rekognition operations, passing image bytes isn't
    # supported. The image must be formatted as a PNG or JPEG file.
    #
    # This operation requires permissions to perform the
    # `rekognition:IndexFaces` action.
    #
    # @option params [required, String] :collection_id
    #   The ID of an existing collection to which you want to add the faces
    #   that are detected in the input images.
    #
    # @option params [required, Types::Image] :image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes isn't supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
    #
    # @option params [String] :external_image_id
    #   The ID you want to assign to all the faces detected in the image.
    #
    # @option params [Array<String>] :detection_attributes
    #   An array of facial attributes that you want to be returned. This can
    #   be the default list of attributes or all attributes. If you don't
    #   specify a value for `Attributes` or if you specify `["DEFAULT"]`, the
    #   API returns the following subset of facial attributes: `BoundingBox`,
    #   `Confidence`, `Pose`, `Quality`, and `Landmarks`. If you provide
    #   `["ALL"]`, all facial attributes are returned, but the operation takes
    #   longer to complete.
    #
    #   If you provide both, `["ALL", "DEFAULT"]`, the service uses a logical
    #   AND operator to determine which attributes to return (in this case,
    #   all attributes).
    #
    # @option params [Integer] :max_faces
    #   The maximum number of faces to index. The value of `MaxFaces` must be
    #   greater than or equal to 1. `IndexFaces` returns no more than 100
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
    #   The faces that are returned by `IndexFaces` are sorted by the largest
    #   face bounding box size to the smallest size, in descending order.
    #
    #   `MaxFaces` can be used with a collection associated with any version
    #   of the face model.
    #
    # @option params [String] :quality_filter
    #   A filter that specifies a quality bar for how much filtering is done
    #   to identify faces. Filtered faces aren't indexed. If you specify
    #   `AUTO`, Amazon Rekognition chooses the quality bar. If you specify
    #   `LOW`, `MEDIUM`, or `HIGH`, filtering removes all faces that don’t
    #   meet the chosen quality bar. The default value is `AUTO`. The quality
    #   bar is based on a variety of common use cases. Low-quality detections
    #   can occur for a number of reasons. Some examples are an object that's
    #   misidentified as a face, a face that's too blurry, or a face with a
    #   pose that's too extreme to use. If you specify `NONE`, no filtering
    #   is performed.
    #
    #   To use quality filtering, the collection you are using must be
    #   associated with version 3 of the face model or higher.
    #
    # @return [Types::IndexFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IndexFacesResponse#face_records #face_records} => Array&lt;Types::FaceRecord&gt;
    #   * {Types::IndexFacesResponse#orientation_correction #orientation_correction} => String
    #   * {Types::IndexFacesResponse#face_model_version #face_model_version} => String
    #   * {Types::IndexFacesResponse#unindexed_faces #unindexed_faces} => Array&lt;Types::UnindexedFace&gt;
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
    #     max_faces: 1,
    #     quality_filter: "NONE", # accepts NONE, AUTO, LOW, MEDIUM, HIGH
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
    #   resp.face_records[0].face_detail.emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"
    #   resp.face_records[0].face_detail.emotions[0].confidence #=> Float
    #   resp.face_records[0].face_detail.landmarks #=> Array
    #   resp.face_records[0].face_detail.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
    #   resp.face_records[0].face_detail.landmarks[0].x #=> Float
    #   resp.face_records[0].face_detail.landmarks[0].y #=> Float
    #   resp.face_records[0].face_detail.pose.roll #=> Float
    #   resp.face_records[0].face_detail.pose.yaw #=> Float
    #   resp.face_records[0].face_detail.pose.pitch #=> Float
    #   resp.face_records[0].face_detail.quality.brightness #=> Float
    #   resp.face_records[0].face_detail.quality.sharpness #=> Float
    #   resp.face_records[0].face_detail.confidence #=> Float
    #   resp.orientation_correction #=> String, one of "ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"
    #   resp.face_model_version #=> String
    #   resp.unindexed_faces #=> Array
    #   resp.unindexed_faces[0].reasons #=> Array
    #   resp.unindexed_faces[0].reasons[0] #=> String, one of "EXCEEDS_MAX_FACES", "EXTREME_POSE", "LOW_BRIGHTNESS", "LOW_SHARPNESS", "LOW_CONFIDENCE", "SMALL_BOUNDING_BOX", "LOW_FACE_QUALITY"
    #   resp.unindexed_faces[0].face_detail.bounding_box.width #=> Float
    #   resp.unindexed_faces[0].face_detail.bounding_box.height #=> Float
    #   resp.unindexed_faces[0].face_detail.bounding_box.left #=> Float
    #   resp.unindexed_faces[0].face_detail.bounding_box.top #=> Float
    #   resp.unindexed_faces[0].face_detail.age_range.low #=> Integer
    #   resp.unindexed_faces[0].face_detail.age_range.high #=> Integer
    #   resp.unindexed_faces[0].face_detail.smile.value #=> Boolean
    #   resp.unindexed_faces[0].face_detail.smile.confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.eyeglasses.value #=> Boolean
    #   resp.unindexed_faces[0].face_detail.eyeglasses.confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.sunglasses.value #=> Boolean
    #   resp.unindexed_faces[0].face_detail.sunglasses.confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.gender.value #=> String, one of "Male", "Female"
    #   resp.unindexed_faces[0].face_detail.gender.confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.beard.value #=> Boolean
    #   resp.unindexed_faces[0].face_detail.beard.confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.mustache.value #=> Boolean
    #   resp.unindexed_faces[0].face_detail.mustache.confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.eyes_open.value #=> Boolean
    #   resp.unindexed_faces[0].face_detail.eyes_open.confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.mouth_open.value #=> Boolean
    #   resp.unindexed_faces[0].face_detail.mouth_open.confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.emotions #=> Array
    #   resp.unindexed_faces[0].face_detail.emotions[0].type #=> String, one of "HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"
    #   resp.unindexed_faces[0].face_detail.emotions[0].confidence #=> Float
    #   resp.unindexed_faces[0].face_detail.landmarks #=> Array
    #   resp.unindexed_faces[0].face_detail.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
    #   resp.unindexed_faces[0].face_detail.landmarks[0].x #=> Float
    #   resp.unindexed_faces[0].face_detail.landmarks[0].y #=> Float
    #   resp.unindexed_faces[0].face_detail.pose.roll #=> Float
    #   resp.unindexed_faces[0].face_detail.pose.yaw #=> Float
    #   resp.unindexed_faces[0].face_detail.pose.pitch #=> Float
    #   resp.unindexed_faces[0].face_detail.quality.brightness #=> Float
    #   resp.unindexed_faces[0].face_detail.quality.sharpness #=> Float
    #   resp.unindexed_faces[0].face_detail.confidence #=> Float
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
    # For an example, see Listing Collections in the Amazon Rekognition
    # Developer Guide.
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
    #   * {Types::ListCollectionsResponse#face_model_versions #face_model_versions} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.face_model_versions #=> Array
    #   resp.face_model_versions[0] #=> String
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
    # an example, see Listing Faces in a Collection in the Amazon
    # Rekognition Developer Guide.
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
    #   * {Types::ListFacesResponse#face_model_version #face_model_version} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.face_model_version #=> String
    #
    # @overload list_faces(params = {})
    # @param [Hash] params ({})
    def list_faces(params = {}, options = {})
      req = build_request(:list_faces, params)
      req.send_request(options)
    end

    # Gets a list of stream processors that you have created with
    # CreateStreamProcessor.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more stream
    #   processors to retrieve), Amazon Rekognition Video returns a pagination
    #   token in the response. You can use this pagination token to retrieve
    #   the next set of stream processors.
    #
    # @option params [Integer] :max_results
    #   Maximum number of stream processors you want Amazon Rekognition Video
    #   to return in the response. The default is 1000.
    #
    # @return [Types::ListStreamProcessorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamProcessorsResponse#next_token #next_token} => String
    #   * {Types::ListStreamProcessorsResponse#stream_processors #stream_processors} => Array&lt;Types::StreamProcessor&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_processors({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.stream_processors #=> Array
    #   resp.stream_processors[0].name #=> String
    #   resp.stream_processors[0].status #=> String, one of "STOPPED", "STARTING", "RUNNING", "FAILED", "STOPPING"
    #
    # @overload list_stream_processors(params = {})
    # @param [Hash] params ({})
    def list_stream_processors(params = {}, options = {})
      req = build_request(:list_stream_processors, params)
      req.send_request(options)
    end

    # Returns an array of celebrities recognized in the input image. For
    # more information, see Recognizing Celebrities in the Amazon
    # Rekognition Developer Guide.
    #
    # `RecognizeCelebrities` returns the 64 largest faces in the image. It
    # lists recognized celebrities in the `CelebrityFaces` array and
    # unrecognized faces in the `UnrecognizedFaces` array.
    # `RecognizeCelebrities` doesn't return celebrities whose faces aren't
    # among the largest 64 faces in the image.
    #
    # For each celebrity recognized, `RecognizeCelebrities` returns a
    # `Celebrity` object. The `Celebrity` object contains the celebrity
    # name, ID, URL links to additional information, match confidence, and a
    # `ComparedFace` object that you can use to locate the celebrity's face
    # on the image.
    #
    # Amazon Rekognition doesn't retain information about which images a
    # celebrity has been recognized in. Your application must store this
    # information and use the `Celebrity` ID property as a unique identifier
    # for the celebrity. If you don't store the celebrity name or
    # additional information URLs returned by `RecognizeCelebrities`, you
    # will need the ID to identify the celebrity in a call to the
    # GetCelebrityInfo operation.
    #
    # You pass the input image either as base64-encoded image bytes or as a
    # reference to an image in an Amazon S3 bucket. If you use the AWS CLI
    # to call Amazon Rekognition operations, passing image bytes is not
    # supported. The image must be either a PNG or JPEG formatted file.
    #
    # For an example, see Recognizing Celebrities in an Image in the Amazon
    # Rekognition Developer Guide.
    #
    # This operation requires permissions to perform the
    # `rekognition:RecognizeCelebrities` operation.
    #
    # @option params [required, Types::Image] :image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
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
    #   resp.celebrity_faces[0].face.landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
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
    #   resp.unrecognized_faces[0].landmarks[0].type #=> String, one of "eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"
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
    # For an example, see Searching for a Face Using Its Face ID in the
    # Amazon Rekognition Developer Guide.
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
    #   matches is less than 70%. The default value is 80%.
    #
    # @return [Types::SearchFacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFacesResponse#searched_face_id #searched_face_id} => String
    #   * {Types::SearchFacesResponse#face_matches #face_matches} => Array&lt;Types::FaceMatch&gt;
    #   * {Types::SearchFacesResponse#face_model_version #face_model_version} => String
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
    #   resp.face_model_version #=> String
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
    # IndexFaces operation, and then use the face IDs returned in subsequent
    # calls to the SearchFaces operation.
    #
    #  You can also call the `DetectFaces` operation and use the bounding
    # boxes in the response to make face crops, which then you can pass in
    # to the `SearchFacesByImage` operation.
    #
    #  </note>
    #
    # You pass the input image either as base64-encoded image bytes or as a
    # reference to an image in an Amazon S3 bucket. If you use the AWS CLI
    # to call Amazon Rekognition operations, passing image bytes is not
    # supported. The image must be either a PNG or JPEG formatted file.
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
    # For an example, Searching for a Face Using an Image in the Amazon
    # Rekognition Developer Guide.
    #
    # The `QualityFilter` input parameter allows you to filter out detected
    # faces that don’t meet a required quality bar. The quality bar is based
    # on a variety of common use cases. Use `QualityFilter` to set the
    # quality bar for filtering by specifying `LOW`, `MEDIUM`, or `HIGH`. If
    # you do not want to filter detected faces, specify `NONE`. The default
    # value is `NONE`.
    #
    # <note markdown="1"> To use quality filtering, you need a collection associated with
    # version 3 of the face model or higher. To get the version of the face
    # model associated with a collection, call DescribeCollection.
    #
    #  </note>
    #
    # This operation requires permissions to perform the
    # `rekognition:SearchFacesByImage` action.
    #
    # @option params [required, String] :collection_id
    #   ID of the collection to search.
    #
    # @option params [required, Types::Image] :image
    #   The input image as base64-encoded bytes or an S3 object. If you use
    #   the AWS CLI to call Amazon Rekognition operations, passing
    #   base64-encoded image bytes is not supported.
    #
    #   If you are using an AWS SDK to call Amazon Rekognition, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field. For
    #   more information, see Images in the Amazon Rekognition developer
    #   guide.
    #
    # @option params [Integer] :max_faces
    #   Maximum number of faces to return. The operation returns the maximum
    #   number of faces with the highest confidence in the match.
    #
    # @option params [Float] :face_match_threshold
    #   (Optional) Specifies the minimum confidence in the face match to
    #   return. For example, don't return any matches where confidence in
    #   matches is less than 70%. The default value is 80%.
    #
    # @option params [String] :quality_filter
    #   A filter that specifies a quality bar for how much filtering is done
    #   to identify faces. Filtered faces aren't searched for in the
    #   collection. If you specify `AUTO`, Amazon Rekognition chooses the
    #   quality bar. If you specify `LOW`, `MEDIUM`, or `HIGH`, filtering
    #   removes all faces that don’t meet the chosen quality bar. The quality
    #   bar is based on a variety of common use cases. Low-quality detections
    #   can occur for a number of reasons. Some examples are an object that's
    #   misidentified as a face, a face that's too blurry, or a face with a
    #   pose that's too extreme to use. If you specify `NONE`, no filtering
    #   is performed. The default value is `NONE`.
    #
    #   To use quality filtering, the collection you are using must be
    #   associated with version 3 of the face model or higher.
    #
    # @return [Types::SearchFacesByImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFacesByImageResponse#searched_face_bounding_box #searched_face_bounding_box} => Types::BoundingBox
    #   * {Types::SearchFacesByImageResponse#searched_face_confidence #searched_face_confidence} => Float
    #   * {Types::SearchFacesByImageResponse#face_matches #face_matches} => Array&lt;Types::FaceMatch&gt;
    #   * {Types::SearchFacesByImageResponse#face_model_version #face_model_version} => String
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
    #     quality_filter: "NONE", # accepts NONE, AUTO, LOW, MEDIUM, HIGH
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
    #   resp.face_model_version #=> String
    #
    # @overload search_faces_by_image(params = {})
    # @param [Hash] params ({})
    def search_faces_by_image(params = {}, options = {})
      req = build_request(:search_faces_by_image, params)
      req.send_request(options)
    end

    # Starts asynchronous recognition of celebrities in a stored video.
    #
    # Amazon Rekognition Video can detect celebrities in a video must be
    # stored in an Amazon S3 bucket. Use Video to specify the bucket name
    # and the filename of the video. `StartCelebrityRecognition` returns a
    # job identifier (`JobId`) which you use to get the results of the
    # analysis. When celebrity recognition analysis is finished, Amazon
    # Rekognition Video publishes a completion status to the Amazon Simple
    # Notification Service topic that you specify in `NotificationChannel`.
    # To get the results of the celebrity recognition analysis, first check
    # that the status value published to the Amazon SNS topic is
    # `SUCCEEDED`. If so, call GetCelebrityRecognition and pass the job
    # identifier (`JobId`) from the initial call to
    # `StartCelebrityRecognition`.
    #
    # For more information, see Recognizing Celebrities in the Amazon
    # Rekognition Developer Guide.
    #
    # @option params [required, Types::Video] :video
    #   The video in which you want to recognize celebrities. The video must
    #   be stored in an Amazon S3 bucket.
    #
    # @option params [String] :client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartCelebrityRecognition` requests, the
    #   same `JobId` is returned. Use `ClientRequestToken` to prevent the same
    #   job from being accidently started more than once.
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Rekognition Video to
    #   publish the completion status of the celebrity recognition analysis
    #   to.
    #
    # @option params [String] :job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related jobs
    #   and identify them in the completion notification.
    #
    # @return [Types::StartCelebrityRecognitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCelebrityRecognitionResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_celebrity_recognition({
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @overload start_celebrity_recognition(params = {})
    # @param [Hash] params ({})
    def start_celebrity_recognition(params = {}, options = {})
      req = build_request(:start_celebrity_recognition, params)
      req.send_request(options)
    end

    # Starts asynchronous detection of unsafe content in a stored video.
    #
    # Amazon Rekognition Video can moderate content in a video stored in an
    # Amazon S3 bucket. Use Video to specify the bucket name and the
    # filename of the video. `StartContentModeration` returns a job
    # identifier (`JobId`) which you use to get the results of the analysis.
    # When unsafe content analysis is finished, Amazon Rekognition Video
    # publishes a completion status to the Amazon Simple Notification
    # Service topic that you specify in `NotificationChannel`.
    #
    # To get the results of the unsafe content analysis, first check that
    # the status value published to the Amazon SNS topic is `SUCCEEDED`. If
    # so, call GetContentModeration and pass the job identifier (`JobId`)
    # from the initial call to `StartContentModeration`.
    #
    # For more information, see Detecting Unsafe Content in the Amazon
    # Rekognition Developer Guide.
    #
    # @option params [required, Types::Video] :video
    #   The video in which you want to detect unsafe content. The video must
    #   be stored in an Amazon S3 bucket.
    #
    # @option params [Float] :min_confidence
    #   Specifies the minimum confidence that Amazon Rekognition must have in
    #   order to return a moderated content label. Confidence represents how
    #   certain Amazon Rekognition is that the moderated content is correctly
    #   identified. 0 is the lowest confidence. 100 is the highest confidence.
    #   Amazon Rekognition doesn't return any moderated content labels with a
    #   confidence level lower than this specified value. If you don't
    #   specify `MinConfidence`, `GetContentModeration` returns labels with
    #   confidence values greater than or equal to 50 percent.
    #
    # @option params [String] :client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartContentModeration` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same job
    #   from being accidently started more than once.
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Rekognition Video to
    #   publish the completion status of the unsafe content analysis to.
    #
    # @option params [String] :job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related jobs
    #   and identify them in the completion notification.
    #
    # @return [Types::StartContentModerationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartContentModerationResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_content_moderation({
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     min_confidence: 1.0,
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @overload start_content_moderation(params = {})
    # @param [Hash] params ({})
    def start_content_moderation(params = {}, options = {})
      req = build_request(:start_content_moderation, params)
      req.send_request(options)
    end

    # Starts asynchronous detection of faces in a stored video.
    #
    # Amazon Rekognition Video can detect faces in a video stored in an
    # Amazon S3 bucket. Use Video to specify the bucket name and the
    # filename of the video. `StartFaceDetection` returns a job identifier
    # (`JobId`) that you use to get the results of the operation. When face
    # detection is finished, Amazon Rekognition Video publishes a completion
    # status to the Amazon Simple Notification Service topic that you
    # specify in `NotificationChannel`. To get the results of the face
    # detection operation, first check that the status value published to
    # the Amazon SNS topic is `SUCCEEDED`. If so, call GetFaceDetection and
    # pass the job identifier (`JobId`) from the initial call to
    # `StartFaceDetection`.
    #
    # For more information, see Detecting Faces in a Stored Video in the
    # Amazon Rekognition Developer Guide.
    #
    # @option params [required, Types::Video] :video
    #   The video in which you want to detect faces. The video must be stored
    #   in an Amazon S3 bucket.
    #
    # @option params [String] :client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartFaceDetection` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same job
    #   from being accidently started more than once.
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The ARN of the Amazon SNS topic to which you want Amazon Rekognition
    #   Video to publish the completion status of the face detection
    #   operation.
    #
    # @option params [String] :face_attributes
    #   The face attributes you want returned.
    #
    #   `DEFAULT` - The following subset of facial attributes are returned:
    #   BoundingBox, Confidence, Pose, Quality and Landmarks.
    #
    #   `ALL` - All facial attributes are returned.
    #
    # @option params [String] :job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related jobs
    #   and identify them in the completion notification.
    #
    # @return [Types::StartFaceDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFaceDetectionResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_face_detection({
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     face_attributes: "DEFAULT", # accepts DEFAULT, ALL
    #     job_tag: "JobTag",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @overload start_face_detection(params = {})
    # @param [Hash] params ({})
    def start_face_detection(params = {}, options = {})
      req = build_request(:start_face_detection, params)
      req.send_request(options)
    end

    # Starts the asynchronous search for faces in a collection that match
    # the faces of persons detected in a stored video.
    #
    # The video must be stored in an Amazon S3 bucket. Use Video to specify
    # the bucket name and the filename of the video. `StartFaceSearch`
    # returns a job identifier (`JobId`) which you use to get the search
    # results once the search has completed. When searching is finished,
    # Amazon Rekognition Video publishes a completion status to the Amazon
    # Simple Notification Service topic that you specify in
    # `NotificationChannel`. To get the search results, first check that the
    # status value published to the Amazon SNS topic is `SUCCEEDED`. If so,
    # call GetFaceSearch and pass the job identifier (`JobId`) from the
    # initial call to `StartFaceSearch`. For more information, see
    # procedure-person-search-videos.
    #
    # @option params [required, Types::Video] :video
    #   The video you want to search. The video must be stored in an Amazon S3
    #   bucket.
    #
    # @option params [String] :client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartFaceSearch` requests, the same `JobId`
    #   is returned. Use `ClientRequestToken` to prevent the same job from
    #   being accidently started more than once.
    #
    # @option params [Float] :face_match_threshold
    #   The minimum confidence in the person match to return. For example,
    #   don't return any matches where confidence in matches is less than
    #   70%. The default value is 80%.
    #
    # @option params [required, String] :collection_id
    #   ID of the collection that contains the faces you want to search for.
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The ARN of the Amazon SNS topic to which you want Amazon Rekognition
    #   Video to publish the completion status of the search.
    #
    # @option params [String] :job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related jobs
    #   and identify them in the completion notification.
    #
    # @return [Types::StartFaceSearchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFaceSearchResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_face_search({
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     face_match_threshold: 1.0,
    #     collection_id: "CollectionId", # required
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @overload start_face_search(params = {})
    # @param [Hash] params ({})
    def start_face_search(params = {}, options = {})
      req = build_request(:start_face_search, params)
      req.send_request(options)
    end

    # Starts asynchronous detection of labels in a stored video.
    #
    # Amazon Rekognition Video can detect labels in a video. Labels are
    # instances of real-world entities. This includes objects like flower,
    # tree, and table; events like wedding, graduation, and birthday party;
    # concepts like landscape, evening, and nature; and activities like a
    # person getting out of a car or a person skiing.
    #
    # The video must be stored in an Amazon S3 bucket. Use Video to specify
    # the bucket name and the filename of the video. `StartLabelDetection`
    # returns a job identifier (`JobId`) which you use to get the results of
    # the operation. When label detection is finished, Amazon Rekognition
    # Video publishes a completion status to the Amazon Simple Notification
    # Service topic that you specify in `NotificationChannel`.
    #
    # To get the results of the label detection operation, first check that
    # the status value published to the Amazon SNS topic is `SUCCEEDED`. If
    # so, call GetLabelDetection and pass the job identifier (`JobId`) from
    # the initial call to `StartLabelDetection`.
    #
    # @option params [required, Types::Video] :video
    #   The video in which you want to detect labels. The video must be stored
    #   in an Amazon S3 bucket.
    #
    # @option params [String] :client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartLabelDetection` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same job
    #   from being accidently started more than once.
    #
    # @option params [Float] :min_confidence
    #   Specifies the minimum confidence that Amazon Rekognition Video must
    #   have in order to return a detected label. Confidence represents how
    #   certain Amazon Rekognition is that a label is correctly identified.0
    #   is the lowest confidence. 100 is the highest confidence. Amazon
    #   Rekognition Video doesn't return any labels with a confidence level
    #   lower than this specified value.
    #
    #   If you don't specify `MinConfidence`, the operation returns labels
    #   with confidence values greater than or equal to 50 percent.
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN you want Amazon Rekognition Video to publish
    #   the completion status of the label detection operation to.
    #
    # @option params [String] :job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related jobs
    #   and identify them in the completion notification.
    #
    # @return [Types::StartLabelDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartLabelDetectionResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_label_detection({
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     min_confidence: 1.0,
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @overload start_label_detection(params = {})
    # @param [Hash] params ({})
    def start_label_detection(params = {}, options = {})
      req = build_request(:start_label_detection, params)
      req.send_request(options)
    end

    # Starts the asynchronous tracking of a person's path in a stored
    # video.
    #
    # Amazon Rekognition Video can track the path of people in a video
    # stored in an Amazon S3 bucket. Use Video to specify the bucket name
    # and the filename of the video. `StartPersonTracking` returns a job
    # identifier (`JobId`) which you use to get the results of the
    # operation. When label detection is finished, Amazon Rekognition
    # publishes a completion status to the Amazon Simple Notification
    # Service topic that you specify in `NotificationChannel`.
    #
    # To get the results of the person detection operation, first check that
    # the status value published to the Amazon SNS topic is `SUCCEEDED`. If
    # so, call GetPersonTracking and pass the job identifier (`JobId`) from
    # the initial call to `StartPersonTracking`.
    #
    # @option params [required, Types::Video] :video
    #   The video in which you want to detect people. The video must be stored
    #   in an Amazon S3 bucket.
    #
    # @option params [String] :client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartPersonTracking` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same job
    #   from being accidently started more than once.
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN you want Amazon Rekognition Video to publish
    #   the completion status of the people detection operation to.
    #
    # @option params [String] :job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related jobs
    #   and identify them in the completion notification.
    #
    # @return [Types::StartPersonTrackingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPersonTrackingResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_person_tracking({
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @overload start_person_tracking(params = {})
    # @param [Hash] params ({})
    def start_person_tracking(params = {}, options = {})
      req = build_request(:start_person_tracking, params)
      req.send_request(options)
    end

    # Starts the running of the version of a model. Starting a model takes a
    # while to complete. To check the current state of the model, use
    # DescribeProjectVersions.
    #
    # Once the model is running, you can detect custom labels in new images
    # by calling DetectCustomLabels.
    #
    # <note markdown="1"> You are charged for the amount of time that the model is running. To
    # stop a running model, call StopProjectVersion.
    #
    #  </note>
    #
    # This operation requires permissions to perform the
    # `rekognition:StartProjectVersion` action.
    #
    # @option params [required, String] :project_version_arn
    #   The Amazon Resource Name(ARN) of the model version that you want to
    #   start.
    #
    # @option params [required, Integer] :min_inference_units
    #   The minimum number of inference units to use. A single inference unit
    #   represents 1 hour of processing and can support up to 5 Transaction
    #   Pers Second (TPS). Use a higher number to increase the TPS throughput
    #   of your model. You are charged for the number of inference units that
    #   you use.
    #
    # @return [Types::StartProjectVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartProjectVersionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_project_version({
    #     project_version_arn: "ProjectVersionArn", # required
    #     min_inference_units: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #
    # @overload start_project_version(params = {})
    # @param [Hash] params ({})
    def start_project_version(params = {}, options = {})
      req = build_request(:start_project_version, params)
      req.send_request(options)
    end

    # Starts asynchronous detection of segment detection in a stored video.
    #
    # Amazon Rekognition Video can detect segments in a video stored in an
    # Amazon S3 bucket. Use Video to specify the bucket name and the
    # filename of the video. `StartSegmentDetection` returns a job
    # identifier (`JobId`) which you use to get the results of the
    # operation. When segment detection is finished, Amazon Rekognition
    # Video publishes a completion status to the Amazon Simple Notification
    # Service topic that you specify in `NotificationChannel`.
    #
    # You can use the `Filters` (StartSegmentDetectionFilters) input
    # parameter to specify the minimum detection confidence returned in the
    # response. Within `Filters`, use `ShotFilter`
    # (StartShotDetectionFilter) to filter detected shots. Use
    # `TechnicalCueFilter` (StartTechnicalCueDetectionFilter) to filter
    # technical cues.
    #
    # To get the results of the segment detection operation, first check
    # that the status value published to the Amazon SNS topic is
    # `SUCCEEDED`. if so, call GetSegmentDetection and pass the job
    # identifier (`JobId`) from the initial call to `StartSegmentDetection`.
    #
    # For more information, see Detecting Video Segments in Stored Video in
    # the Amazon Rekognition Developer Guide.
    #
    # @option params [required, Types::Video] :video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify a
    #   video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #
    # @option params [String] :client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartSegmentDetection` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same job
    #   from being accidently started more than once.
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The ARN of the Amazon SNS topic to which you want Amazon Rekognition
    #   Video to publish the completion status of the segment detection
    #   operation.
    #
    # @option params [String] :job_tag
    #   An identifier you specify that's returned in the completion
    #   notification that's published to your Amazon Simple Notification
    #   Service topic. For example, you can use `JobTag` to group related jobs
    #   and identify them in the completion notification.
    #
    # @option params [Types::StartSegmentDetectionFilters] :filters
    #   Filters for technical cue or shot detection.
    #
    # @option params [required, Array<String>] :segment_types
    #   An array of segment types to detect in the video. Valid values are
    #   TECHNICAL\_CUE and SHOT.
    #
    # @return [Types::StartSegmentDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSegmentDetectionResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_segment_detection({
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag",
    #     filters: {
    #       technical_cue_filter: {
    #         min_segment_confidence: 1.0,
    #       },
    #       shot_filter: {
    #         min_segment_confidence: 1.0,
    #       },
    #     },
    #     segment_types: ["TECHNICAL_CUE"], # required, accepts TECHNICAL_CUE, SHOT
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @overload start_segment_detection(params = {})
    # @param [Hash] params ({})
    def start_segment_detection(params = {}, options = {})
      req = build_request(:start_segment_detection, params)
      req.send_request(options)
    end

    # Starts processing a stream processor. You create a stream processor by
    # calling CreateStreamProcessor. To tell `StartStreamProcessor` which
    # stream processor to start, use the value of the `Name` field specified
    # in the call to `CreateStreamProcessor`.
    #
    # @option params [required, String] :name
    #   The name of the stream processor to start processing.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_stream_processor({
    #     name: "StreamProcessorName", # required
    #   })
    #
    # @overload start_stream_processor(params = {})
    # @param [Hash] params ({})
    def start_stream_processor(params = {}, options = {})
      req = build_request(:start_stream_processor, params)
      req.send_request(options)
    end

    # Starts asynchronous detection of text in a stored video.
    #
    # Amazon Rekognition Video can detect text in a video stored in an
    # Amazon S3 bucket. Use Video to specify the bucket name and the
    # filename of the video. `StartTextDetection` returns a job identifier
    # (`JobId`) which you use to get the results of the operation. When text
    # detection is finished, Amazon Rekognition Video publishes a completion
    # status to the Amazon Simple Notification Service topic that you
    # specify in `NotificationChannel`.
    #
    # To get the results of the text detection operation, first check that
    # the status value published to the Amazon SNS topic is `SUCCEEDED`. if
    # so, call GetTextDetection and pass the job identifier (`JobId`) from
    # the initial call to `StartTextDetection`.
    #
    # @option params [required, Types::Video] :video
    #   Video file stored in an Amazon S3 bucket. Amazon Rekognition video
    #   start operations such as StartLabelDetection use `Video` to specify a
    #   video for analysis. The supported file formats are .mp4, .mov and
    #   .avi.
    #
    # @option params [String] :client_request_token
    #   Idempotent token used to identify the start request. If you use the
    #   same token with multiple `StartTextDetection` requests, the same
    #   `JobId` is returned. Use `ClientRequestToken` to prevent the same job
    #   from being accidentaly started more than once.
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon Simple Notification Service topic to which Amazon
    #   Rekognition publishes the completion status of a video analysis
    #   operation. For more information, see api-video.
    #
    # @option params [String] :job_tag
    #   An identifier returned in the completion status published by your
    #   Amazon Simple Notification Service topic. For example, you can use
    #   `JobTag` to group related jobs and identify them in the completion
    #   notification.
    #
    # @option params [Types::StartTextDetectionFilters] :filters
    #   Optional parameters that let you set criteria the text must meet to be
    #   included in your response.
    #
    # @return [Types::StartTextDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTextDetectionResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_text_detection({
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag",
    #     filters: {
    #       word_filter: {
    #         min_confidence: 1.0,
    #         min_bounding_box_height: 1.0,
    #         min_bounding_box_width: 1.0,
    #       },
    #       regions_of_interest: [
    #         {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0,
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @overload start_text_detection(params = {})
    # @param [Hash] params ({})
    def start_text_detection(params = {}, options = {})
      req = build_request(:start_text_detection, params)
      req.send_request(options)
    end

    # Stops a running model. The operation might take a while to complete.
    # To check the current status, call DescribeProjectVersions.
    #
    # @option params [required, String] :project_version_arn
    #   The Amazon Resource Name (ARN) of the model version that you want to
    #   delete.
    #
    #   This operation requires permissions to perform the
    #   `rekognition:StopProjectVersion` action.
    #
    # @return [Types::StopProjectVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopProjectVersionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_project_version({
    #     project_version_arn: "ProjectVersionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #
    # @overload stop_project_version(params = {})
    # @param [Hash] params ({})
    def stop_project_version(params = {}, options = {})
      req = build_request(:stop_project_version, params)
      req.send_request(options)
    end

    # Stops a running stream processor that was created by
    # CreateStreamProcessor.
    #
    # @option params [required, String] :name
    #   The name of a stream processor created by CreateStreamProcessor.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stream_processor({
    #     name: "StreamProcessorName", # required
    #   })
    #
    # @overload stop_stream_processor(params = {})
    # @param [Hash] params ({})
    def stop_stream_processor(params = {}, options = {})
      req = build_request(:stop_stream_processor, params)
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
      context[:gem_version] = '1.47.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                        | params                             | :delay   | :max_attempts |
    # | ---------------------------------- | ---------------------------------- | -------- | ------------- |
    # | project_version_running            | {Client#describe_project_versions} | 30       | 40            |
    # | project_version_training_completed | {Client#describe_project_versions} | 120      | 360           |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        project_version_running: Waiters::ProjectVersionRunning,
        project_version_training_completed: Waiters::ProjectVersionTrainingCompleted
      }
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
