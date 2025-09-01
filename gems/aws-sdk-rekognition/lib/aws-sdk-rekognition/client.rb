# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc'

module Aws::Rekognition
  # An API client for Aws::Rekognition.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RekognitionService

    add_plugin(::Aws::Rekognition::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpc)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Rekognition::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Associates one or more faces with an existing UserID. Takes an array of
    #         <code>FaceIds</code>. Each <code>FaceId</code> that are present in the <code>FaceIds</code>
    #       list is associated with the provided UserID. The number of FaceIds that can be used as input
    #       in a single request is limited to 100.</p>
    #          <p>Note that the total number of faces that can be associated with a single
    #       <code>UserID</code> is also limited to 100. Once a <code>UserID</code> has 100 faces
    #       associated with it, no additional faces can be added. If more API calls are made after the
    #       limit is reached, a <code>ServiceQuotaExceededException</code> will result.</p>
    #          <p>The <code>UserMatchThreshold</code> parameter specifies the minimum user match confidence
    #       required for the face to be associated with a UserID that has at least one <code>FaceID</code>
    #       already associated. This ensures that the <code>FaceIds</code> are associated with the right
    #       UserID. The value ranges from 0-100 and default value is 75. </p>
    #          <p>If successful, an array of <code>AssociatedFace</code> objects containing the associated
    #         <code>FaceIds</code> is returned. If a given face is already associated with the given
    #         <code>UserID</code>, it will be ignored and will not be returned in the response. If a given
    #       face is already associated to a different <code>UserID</code>, isn't found in the collection,
    #       doesn’t meet the <code>UserMatchThreshold</code>, or there are already 100 faces associated
    #       with the <code>UserID</code>, it will be returned as part of an array of
    #         <code>UnsuccessfulFaceAssociations.</code>
    #          </p>
    #          <p>The <code>UserStatus</code> reflects the status of an operation which updates a UserID
    #       representation with a list of given faces. The <code>UserStatus</code> can be: </p>
    #          <ul>
    #             <li>
    #                <p>ACTIVE - All associations or disassociations of FaceID(s) for a UserID are
    #           complete.</p>
    #             </li>
    #             <li>
    #                <p>CREATED - A UserID has been created, but has no FaceID(s) associated with it.</p>
    #             </li>
    #             <li>
    #                <p>UPDATING - A UserID is being updated and there are current associations or
    #           disassociations of FaceID(s) taking place.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::AssociateFacesRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection containing the UserID.</p>
    # @option params [String] :user_id
    #   <p>The ID for the existing UserID.</p>
    # @option params [Array<String>] :face_ids
    #   <p>An array of FaceIDs to associate with the UserID.</p>
    # @option params [Float] :user_match_threshold
    #   <p>An optional value specifying the minimum confidence in the UserID match to return. The
    #         default value is 75.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the request to <code>AssociateFaces</code>. If you use
    #         the same token with multiple <code>AssociateFaces</code> requests, the same response is
    #         returned. Use ClientRequestToken to prevent the same request from being processed more than
    #         once.</p>
    # @example AssociateFaces
    #   # This operation associates one or more faces with an existing UserID.
    #   params = {
    #     collection_id: "MyCollection",
    #     user_id: "DemoUser",
    #     face_ids: [
    #       "f5817d37-94f6-4335-bfee-6cf79a3d806e",
    #       "851cb847-dccc-4fea-9309-9f4805967855",
    #       "35ebbb41-7f67-4263-908d-dd0ecba05ab9"
    #     ],
    #     user_match_threshold: 70,
    #     client_request_token: "550e8400-e29b-41d4-a716-446655440002"
    #   }
    #   options = {}
    #   response = client.associate_faces(params, options)
    #   response.to_h #=>
    #   {
    #     unsuccessful_face_associations: [
    #       {
    #         reasons: [
    #           LOW_MATCH_CONFIDENCE
    #         ],
    #         face_id: "f5817d37-94f6-4335-bfee-6cf79a3d806e",
    #         confidence: 0.9375374913215637
    #       },
    #       {
    #         reasons: [
    #           ASSOCIATED_TO_A_DIFFERENT_USER
    #         ],
    #         face_id: "851cb847-dccc-4fea-9309-9f4805967855",
    #         user_id: "demoUser2"
    #       }
    #     ],
    #     user_status: UPDATING,
    #     associated_faces: [
    #       {
    #         face_id: "35ebbb41-7f67-4263-908d-dd0ecba05ab9"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     user_id: "UserId", # required
    #     face_ids: ["FaceId"], # required
    #     user_match_threshold: 1.0,
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.associate_faces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_faces: [
    #       {
    #         face_id: "FaceId"
    #       }
    #     ],
    #     unsuccessful_face_associations: [
    #       {
    #         face_id: "FaceId",
    #         user_id: "UserId",
    #         confidence: 1.0,
    #         reasons: ["FACE_NOT_FOUND" # One of: ["FACE_NOT_FOUND", "ASSOCIATED_TO_A_DIFFERENT_USER", "LOW_MATCH_CONFIDENCE"]]
    #       }
    #     ],
    #     user_status: "ACTIVE" # One of: ["ACTIVE", "UPDATING", "CREATING", "CREATED"]
    #   }
    # @return [Types::AssociateFacesResponse]
    def associate_faces(params = {}, options = {})
      request = build_request(:associate_faces, params)
      request.send_request(options)
    end

    # <p>Compares a face in the <i>source</i> input image with each of the 100
    #       largest faces detected in the <i>target</i> input image. </p>
    #          <p> If the source image contains multiple faces, the service detects the largest face and
    #       compares it with each face detected in the target image. </p>
    #          <note>
    #             <p>CompareFaces uses machine learning algorithms, which are probabilistic. A false negative
    #         is an incorrect prediction that a face in the target image has a low similarity confidence
    #         score when compared to the face in the source image. To reduce the probability of false
    #         negatives, we recommend that you compare the target image against multiple source images. If
    #         you plan to use <code>CompareFaces</code> to make a decision that impacts an individual's
    #         rights, privacy, or access to services, we recommend that you pass the result to a human for
    #         review and further validation before taking action.</p>
    #          </note>
    #          <p>You pass the input and target images either as base64-encoded image bytes or as
    #       references to images in an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes isn't
    #       supported. The image must be formatted as a PNG or JPEG file. </p>
    #          <p>In response, the operation returns an array of face matches ordered by similarity score
    #       in descending order. For each face match, the response provides a bounding box of the face,
    #       facial landmarks, pose details (pitch, roll, and yaw), quality (brightness and sharpness), and
    #       confidence value (indicating the level of confidence that the bounding box contains a face).
    #       The response also provides a similarity score, which indicates how closely the faces match. </p>
    #          <note>
    #             <p>By default, only faces with a similarity score of greater than or equal to 80% are
    #         returned in the response. You can change this value by specifying the
    #           <code>SimilarityThreshold</code> parameter.</p>
    #          </note>
    #          <p>
    #             <code>CompareFaces</code> also returns an array of faces that don't match the source
    #       image. For each face, it returns a bounding box, confidence value, landmarks, pose details,
    #       and quality. The response also returns information about the face in the source image,
    #       including the bounding box of the face and confidence value.</p>
    #          <p>The <code>QualityFilter</code> input parameter allows you to filter out detected faces
    #       that don’t meet a required quality bar. The quality bar is based on a variety of common use
    #       cases. Use <code>QualityFilter</code> to set the quality bar by specifying <code>LOW</code>,
    #         <code>MEDIUM</code>, or <code>HIGH</code>. If you do not want to filter detected faces,
    #       specify <code>NONE</code>. The default value is <code>NONE</code>. </p>
    #          <p>If the image doesn't contain Exif metadata, <code>CompareFaces</code> returns
    #       orientation information for the source and target images. Use these values to display the
    #       images with the correct image orientation.</p>
    #          <p>If no faces are detected in the source or target images, <code>CompareFaces</code>
    #       returns an <code>InvalidParameterException</code> error. </p>
    #          <note>
    #             <p> This is a stateless API operation. That is, data returned by this operation doesn't
    #         persist.</p>
    #          </note>
    #          <p>For an example, see Comparing Faces in Images in the Amazon Rekognition Developer
    #       Guide.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:CompareFaces</code> action.</p>
    # @param [Hash, Types::CompareFacesRequest] params
    # @option params [Types::Image] :source_image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @option params [Types::Image] :target_image
    #   <p>The target image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @option params [Float] :similarity_threshold
    #   <p>The minimum level of confidence in the face matches that a match must meet to be
    #         included in the <code>FaceMatches</code> array.</p>
    # @option params [String] :quality_filter
    #   <p>A filter that specifies a quality bar for how much filtering is done to identify faces.
    #         Filtered faces aren't compared. If you specify <code>AUTO</code>, Amazon Rekognition chooses the
    #         quality bar. If you specify <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>,
    #         filtering removes all faces that don’t meet the chosen quality bar.
    #          The quality bar is
    #         based on a variety of common use cases. Low-quality detections can occur for a number of
    #         reasons. Some examples are an object that's misidentified as a face, a face that's too blurry,
    #         or a face with a pose that's too extreme to use. If you specify <code>NONE</code>, no
    #         filtering is performed. The default value is <code>NONE</code>. </p>
    #            <p>To use quality filtering, the collection you are using must be associated with version 3
    #         of the face model or higher.</p>
    # @example To compare two images
    #   # This operation compares the largest face detected in the source image with each face detected in the target image.
    #   params = {
    #     source_image: {
    #       s3_object: {
    #         bucket: "mybucket",
    #         name: "mysourceimage"
    #       }
    #     },
    #     target_image: {
    #       s3_object: {
    #         bucket: "mybucket",
    #         name: "mytargetimage"
    #       }
    #     },
    #     similarity_threshold: 90
    #   }
    #   options = {}
    #   response = client.compare_faces(params, options)
    #   response.to_h #=>
    #   {
    #     face_matches: [
    #       {
    #         face: {
    #           bounding_box: {
    #             width: 0.25,
    #             top: 0.4933333396911621,
    #             left: 0.31888890266418457,
    #             height: 0.33481481671333313
    #           },
    #           confidence: 99.9991226196289
    #         },
    #         similarity: 100
    #       }
    #     ],
    #     source_image_face: {
    #       bounding_box: {
    #         width: 0.25,
    #         top: 0.4933333396911621,
    #         left: 0.31888890266418457,
    #         height: 0.33481481671333313
    #       },
    #       confidence: 99.9991226196289
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source_image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     target_image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     similarity_threshold: 1.0,
    #     quality_filter: "NONE" # One of: ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #   }
    #   options = {}
    #   response = client.compare_faces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_image_face: {
    #       bounding_box: {
    #         width: 1.0,
    #         height: 1.0,
    #         left: 1.0,
    #         top: 1.0
    #       },
    #       confidence: 1.0
    #     },
    #     face_matches: [
    #       {
    #         similarity: 1.0,
    #         face: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           confidence: 1.0,
    #           landmarks: [
    #             {
    #               type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           pose: {
    #             roll: 1.0,
    #             yaw: 1.0,
    #             pitch: 1.0
    #           },
    #           quality: {
    #             brightness: 1.0,
    #             sharpness: 1.0
    #           },
    #           emotions: [
    #             {
    #               type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #               confidence: 1.0
    #             }
    #           ],
    #           smile: {
    #             value: false,
    #             confidence: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     unmatched_faces: [
    #       {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         confidence: 1.0,
    #         landmarks: [
    #           {
    #             type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ],
    #         pose: {
    #           roll: 1.0,
    #           yaw: 1.0,
    #           pitch: 1.0
    #         },
    #         quality: {
    #           brightness: 1.0,
    #           sharpness: 1.0
    #         },
    #         emotions: [
    #           {
    #             type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #             confidence: 1.0
    #           }
    #         ],
    #         smile: {
    #           value: false,
    #           confidence: 1.0
    #         }
    #       }
    #     ],
    #     source_image_orientation_correction: "ROTATE_0" # One of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"],
    #     target_image_orientation_correction: "ROTATE_0" # One of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #   }
    # @return [Types::CompareFacesResponse]
    def compare_faces(params = {}, options = {})
      request = build_request(:compare_faces, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Copies a version of an Amazon Rekognition Custom Labels model from a source project to a destination project. The source and
    #          destination projects can be in different AWS accounts but must be in the same AWS Region.
    #          You can't copy a model to another AWS service.
    #         
    #       </p>
    #          <p>To copy a model version to a different AWS account, you need to create a resource-based policy known as a
    #          <i>project policy</i>. You attach the project policy to the
    #          source project by calling <a>PutProjectPolicy</a>. The project policy
    #       gives permission to copy the model version from a trusting AWS account to a trusted account.</p>
    #          <p>For more information creating and attaching a project policy, see Attaching a project policy (SDK)
    #          in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.
    #       </p>
    #          <p>If you are copying a model version to a project in the same AWS account, you don't need to create a project policy.</p>
    #          <note>
    #             <p>Copying project versions is supported only for Custom Labels models. </p>
    #             <p>To copy a model, the destination project, source project, and source model version
    #             must already exist.</p>
    #          </note>
    #          <p>Copying a model version takes a while to complete. To get the current status, call <a>DescribeProjectVersions</a> and check the value of <code>Status</code> in the
    #             <a>ProjectVersionDescription</a> object. The copy operation has finished when
    #          the value of <code>Status</code> is <code>COPYING_COMPLETED</code>.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:CopyProjectVersion</code> action.</p>
    # @param [Hash, Types::CopyProjectVersionRequest] params
    # @option params [String] :source_project_arn
    #   <p>The ARN of the source project in the trusting AWS account.</p>
    # @option params [String] :source_project_version_arn
    #   <p>The ARN of the model version in the source project that you want to copy to a destination project.</p>
    # @option params [String] :destination_project_arn
    #   <p>The ARN of the project in the trusted AWS account that you want to copy the model version to. </p>
    # @option params [String] :version_name
    #   <p>A name for the version of the model that's copied to the destination project.</p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>The S3 bucket and folder location where the training output for the source model version is placed.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value tags to assign to the model version. </p>
    # @option params [String] :kms_key_id
    #   <p>The identifier for your AWS Key Management Service key (AWS KMS key).
    #            You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key,
    #            an alias for your KMS key, or an alias ARN.
    #            The key is used to encrypt training results
    #            and manifest files written to the output Amazon S3 bucket (<code>OutputConfig</code>).</p>
    #            <p>If you choose to use your own KMS key, you need the following permissions on the KMS key.</p>
    #            <ul>
    #               <li>
    #                  <p>kms:CreateGrant</p>
    #               </li>
    #               <li>
    #                  <p>kms:DescribeKey</p>
    #               </li>
    #               <li>
    #                  <p>kms:GenerateDataKey</p>
    #               </li>
    #               <li>
    #                  <p>kms:Decrypt</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a value for <code>KmsKeyId</code>, images copied into the service are encrypted
    #            using a key that AWS owns and manages.</p>
    # @example CopyProjectVersion
    #   # Copies a version of an Amazon Rekognition Custom Labels model from a source project to a destination project.
    #   params = {
    #     source_project_arn: "arn:aws:rekognition:us-east-1:111122223333:project/SourceProject/16565123456",
    #     source_project_version_arn: "arn:aws:rekognition:us-east-1:111122223333:project/SourceProject/version/model_1/1656611123456",
    #     destination_project_arn: "arn:aws:rekognition:us-east-1:555555555555:project/DestinationProject/1656705098765",
    #     version_name: "DestinationVersionName_cross_account",
    #     output_config: {
    #       s3_bucket: "bucket-name",
    #       s3_key_prefix: "path_to_folder"
    #     },
    #     tags: {
    #       "key1" => "val1"
    #     },
    #     kms_key_id: "arn:1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.copy_project_version(params, options)
    #   response.to_h #=>
    #   {
    #     project_version_arn: "arn:aws:rekognition:us-east-1:555555555555:project/DestinationProject/version/DestinationVersionName_cross_account/16567050987651"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source_project_arn: "ProjectArn", # required
    #     source_project_version_arn: "ProjectVersionArn", # required
    #     destination_project_arn: "ProjectArn", # required
    #     version_name: "VersionName", # required
    #     output_config: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key_prefix: "S3KeyPrefix"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.copy_project_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_version_arn: "ProjectVersionArn"
    #   }
    # @return [Types::CopyProjectVersionResponse]
    def copy_project_version(params = {}, options = {})
      request = build_request(:copy_project_version, params)
      request.send_request(options)
    end

    # <p>Creates a collection in an AWS Region. You can add faces to the collection using the
    #         <a>IndexFaces</a> operation. </p>
    #          <p>For example, you might create collections, one for each of your application users. A
    #       user can then index faces using the <code>IndexFaces</code> operation and persist results in a
    #       specific collection. Then, a user can search the collection for faces in the user-specific
    #       container. </p>
    #          <p>When you create a collection, it is associated with the latest version of the face model
    #       version.</p>
    #          <note>
    #             <p>Collection names are case-sensitive.</p>
    #          </note>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:CreateCollection</code> action. If you want to tag your collection, you
    #       also require permission to perform the <code>rekognition:TagResource</code>
    #       operation.</p>
    # @param [Hash, Types::CreateCollectionRequest] params
    # @option params [String] :collection_id
    #   <p>ID for the collection that you are creating.</p>
    # @option params [Hash<String, String>] :tags
    #   <p> A set of tags (key-value pairs) that you want to attach to the collection. </p>
    # @example To create a collection
    #   # This operation creates a Rekognition collection for storing image data.
    #   params = {
    #     collection_id: "myphotos"
    #   }
    #   options = {}
    #   response = client.create_collection(params, options)
    #   response.to_h #=>
    #   {
    #     status_code: 200,
    #     collection_arn: "aws:rekognition:us-west-2:123456789012:collection/myphotos"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1,
    #     collection_arn: "String",
    #     face_model_version: "String"
    #   }
    # @return [Types::CreateCollectionResponse]
    def create_collection(params = {}, options = {})
      request = build_request(:create_collection, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Creates a new Amazon Rekognition Custom Labels dataset. You can create a dataset by using
    #    an Amazon Sagemaker format manifest file or by copying an existing Amazon Rekognition Custom Labels dataset.</p>
    #          <p>To create a training dataset for a project, specify <code>TRAIN</code> for the value of 
    #       <code>DatasetType</code>. To create the test dataset for a project,
    #       specify <code>TEST</code> for the value of <code>DatasetType</code>.
    #     </p>
    #          <p>The response from <code>CreateDataset</code> is the Amazon Resource Name (ARN) for the dataset.
    #    Creating a dataset takes a while to complete. Use <a>DescribeDataset</a> to check the 
    #    current status. The dataset created successfully if the value of <code>Status</code> is
    #    <code>CREATE_COMPLETE</code>. </p>
    #          <p>To check if any non-terminal errors occurred, call <a>ListDatasetEntries</a>
    # and check for the presence of <code>errors</code> lists in the JSON Lines.</p>
    #          <p>Dataset creation fails if a terminal error occurs (<code>Status</code> = <code>CREATE_FAILED</code>). 
    #       Currently, you can't access the terminal error information.
    #       
    #    </p>
    #          <p>For more information, see Creating dataset in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:CreateDataset</code> action.
    #    If you want to copy an existing dataset, you also require permission to perform the <code>rekognition:ListDatasetEntries</code> action.</p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [Types::DatasetSource] :dataset_source
    #   <p>
    #   The source files for the dataset. You can specify the ARN of an existing dataset or specify the Amazon S3 bucket location
    #   of an Amazon Sagemaker format manifest file. If you don't specify <code>datasetSource</code>, an empty dataset is created.
    #     To add labeled images to the dataset,  You can use the console or call <a>UpdateDatasetEntries</a>.
    #     
    #   </p>
    # @option params [String] :dataset_type
    #   <p>
    #   The type of the dataset. Specify <code>TRAIN</code> to create a training dataset. Specify <code>TEST</code> 
    #      to create a test dataset.
    #   </p>
    # @option params [String] :project_arn
    #   <p>
    #   The ARN of the Amazon Rekognition Custom Labels project to which you want to asssign the dataset.
    #   </p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of tags (key-value pairs) that you want to attach to the dataset.</p>
    # @example To create an Amazon Rekognition Custom Labels dataset
    #   # Creates an Amazon Rekognition Custom Labels dataset with a manifest file stored in an Amazon S3 bucket.
    #   params = {
    #     dataset_source: {
    #       ground_truth_manifest: {
    #         s3_object: {
    #           bucket: "my-bucket",
    #           name: "datasets/flowers_training/manifests/output/output.manifest"
    #         }
    #       }
    #     },
    #     dataset_type: TRAIN,
    #     project_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/1690474772815"
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    #   response.to_h #=>
    #   {
    #     dataset_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/dataset/train/1690476084535"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_source: {
    #       ground_truth_manifest: {
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion"
    #         }
    #       },
    #       dataset_arn: "DatasetArn"
    #     },
    #     dataset_type: "TRAIN" # One of: ["TRAIN", "TEST"], # required
    #     project_arn: "ProjectArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "DatasetArn"
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p>This API operation initiates a Face Liveness session. It returns a <code>SessionId</code>,
    #       which you can use to start streaming Face Liveness video and get the results for a Face
    #       Liveness session. </p>
    #          <p>You can use the <code>OutputConfig</code> option in the Settings parameter to provide an
    #       Amazon S3 bucket location. The Amazon S3 bucket stores reference images and audit images. If no Amazon S3
    #       bucket is defined, raw bytes are sent instead. </p>
    #          <p>You can use <code>AuditImagesLimit</code> to limit the number of audit images returned
    #       when <code>GetFaceLivenessSessionResults</code> is called. This number is between 0 and 4. By
    #       default, it is set to 0. The limit is best effort and based on the duration of the
    #       selfie-video. </p>
    # @param [Hash, Types::CreateFaceLivenessSessionRequest] params
    # @option params [String] :kms_key_id
    #   <p> The identifier for your AWS Key Management Service key (AWS KMS key). Used to encrypt
    #         audit images and reference images.</p>
    # @option params [Types::CreateFaceLivenessSessionRequestSettings] :settings
    #   <p>A session settings object. It contains settings for the operation to be performed. For
    #         Face Liveness, it accepts <code>OutputConfig</code> and <code>AuditImagesLimit</code>.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token is used to recognize the Face Liveness request. If the same token is used
    #         with multiple <code>CreateFaceLivenessSession</code> requests, the same session is returned.
    #         This token is employed to avoid unintentionally creating the same session multiple
    #         times.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     kms_key_id: "KmsKeyId",
    #     settings: {
    #       output_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key_prefix: "LivenessS3KeyPrefix"
    #       },
    #       audit_images_limit: 1,
    #       challenge_preferences: [
    #         {
    #           type: "FaceMovementAndLightChallenge" # One of: ["FaceMovementAndLightChallenge", "FaceMovementChallenge"], # required
    #           versions: {
    #             minimum: "Version",
    #             maximum: "Version"
    #           }
    #         }
    #       ]
    #     },
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_face_liveness_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "LivenessSessionId", # required
    #   }
    # @return [Types::CreateFaceLivenessSessionResponse]
    def create_face_liveness_session(params = {}, options = {})
      request = build_request(:create_face_liveness_session, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon Rekognition project. A project is a group of resources (datasets, model
    #          versions) that you use to create and manage a Amazon Rekognition Custom Labels Model or custom adapter. You can
    #          specify a feature to create the project with, if no feature is specified then Custom Labels
    #          is used by default. For adapters, you can also choose whether or not to have the project
    #          auto update by using the AutoUpdate argument. This operation requires permissions to
    #          perform the <code>rekognition:CreateProject</code> action.</p>
    # @param [Hash, Types::CreateProjectRequest] params
    # @option params [String] :project_name
    #   <p>The name of the project to create.</p>
    # @option params [String] :feature
    #   <p>Specifies feature that is being customized. If no value is provided CUSTOM_LABELS is used as a default.</p>
    # @option params [String] :auto_update
    #   <p>Specifies whether automatic retraining should be attempted for the versions of the
    #            project. Automatic retraining is done as a best effort. Required argument for Content
    #            Moderation. Applicable only to adapters.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of tags (key-value pairs) that you want to attach to the project.</p>
    # @example To create an Amazon Rekognition Custom Labels project
    #   # Creates an Amazon Rekognition Custom Labels project.
    #   params = {
    #     project_name: "my-project"
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    #   response.to_h #=>
    #   {
    #     project_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/1690405809285"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     feature: "CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "CUSTOM_LABELS"],
    #     auto_update: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_arn: "ProjectArn"
    #   }
    # @return [Types::CreateProjectResponse]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>Creates a new version of Amazon Rekognition project (like a Custom Labels model or a custom adapter)
    #          and begins training. Models and adapters are managed as part of a Rekognition project. The
    #          response from <code>CreateProjectVersion</code> is an Amazon Resource Name (ARN) for the
    #          project version. </p>
    #          <p>The FeatureConfig operation argument allows you to configure specific model or adapter
    #          settings. You can provide a description to the project version by using the
    #          VersionDescription argment. Training can take a while to complete. You can get the current
    #          status by calling <a>DescribeProjectVersions</a>. Training completed
    #          successfully if the value of the <code>Status</code> field is
    #             <code>TRAINING_COMPLETED</code>. Once training has successfully completed, call <a>DescribeProjectVersions</a> to get the training results and evaluate the
    #          model.</p>
    #          <p>This operation requires permissions to perform the
    #             <code>rekognition:CreateProjectVersion</code> action.</p>
    #          <note>
    #             <p>
    #                <i>The following applies only to projects with Amazon Rekognition Custom Labels as the chosen
    #                feature:</i>
    #             </p>
    #             <p>You can train a model in a project that doesn't have associated datasets by specifying manifest files in the
    #          <code>TrainingData</code> and <code>TestingData</code> fields.
    #          </p>
    #             <p>If you open the console after training a model with manifest files, Amazon Rekognition Custom Labels creates
    #             the datasets for you using the most recent manifest files. You can no longer train
    #             a model version for the project by specifying manifest files. </p>
    #             <p>Instead of training with a project without associated datasets,
    #             we recommend that you use the manifest
    #             files to create training and test datasets for the project.</p>
    #          </note>
    #          <p></p>
    # @param [Hash, Types::CreateProjectVersionRequest] params
    # @option params [String] :project_arn
    #   <p>The ARN of the Amazon Rekognition project that will manage the project version you want to
    #            train.</p>
    # @option params [String] :version_name
    #   <p>A name for the version of the project version. This value must be unique.</p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>The Amazon S3 bucket location to store the results of training. The bucket can be any S3
    #            bucket in your AWS account. You need <code>s3:PutObject</code> permission on the bucket.
    #         </p>
    # @option params [Types::TrainingData] :training_data
    #   <p>Specifies an external manifest that the services uses to train the project version.
    #            If you specify <code>TrainingData</code> you must also specify <code>TestingData</code>.
    #            The project must not have any associated datasets. </p>
    # @option params [Types::TestingData] :testing_data
    #   <p>Specifies an external manifest that the service uses to test the project version. If
    #            you specify <code>TestingData</code> you must also specify <code>TrainingData</code>. The
    #            project must not have any associated datasets.</p>
    # @option params [Hash<String, String>] :tags
    #   <p> A set of tags (key-value pairs) that you want to attach to the project version. </p>
    # @option params [String] :kms_key_id
    #   <p>The identifier for your AWS Key Management Service key (AWS KMS key). You can supply
    #            the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key, an alias for
    #            your KMS key, or an alias ARN. The key is used to encrypt training images, test images, and manifest files copied
    #            into the service for the project version. Your source images are unaffected. The
    #            key is also used to encrypt training results and manifest files written to the output Amazon S3
    #            bucket (<code>OutputConfig</code>).</p>
    #            <p>If you choose to use your own KMS key, you need the following permissions on the KMS key.</p>
    #            <ul>
    #               <li>
    #                  <p>kms:CreateGrant</p>
    #               </li>
    #               <li>
    #                  <p>kms:DescribeKey</p>
    #               </li>
    #               <li>
    #                  <p>kms:GenerateDataKey</p>
    #               </li>
    #               <li>
    #                  <p>kms:Decrypt</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a value for <code>KmsKeyId</code>, images copied into the service are encrypted
    #            using a key that AWS owns and manages.</p>
    # @option params [String] :version_description
    #   <p>A description applied to the project version being created.</p>
    # @option params [Types::CustomizationFeatureConfig] :feature_config
    #   <p>Feature-specific configuration of the training job. If the job configuration does not match the feature type associated with the project, an InvalidParameterException is returned.</p>
    # @example To train an Amazon Rekognition Custom Labels model
    #   # Trains a version of an Amazon Rekognition Custom Labels model.
    #   params = {
    #     project_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/1690474772815",
    #     version_name: "1",
    #     output_config: {
    #       s3_bucket: "output_bucket",
    #       s3_key_prefix: "output_folder"
    #     }
    #   }
    #   options = {}
    #   response = client.create_project_version(params, options)
    #   response.to_h #=>
    #   {
    #     project_version_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/version/1/1690556751958"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "ProjectArn", # required
    #     version_name: "VersionName", # required
    #     output_config: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key_prefix: "S3KeyPrefix"
    #     },
    #     training_data: {
    #       assets: [
    #         {
    #           ground_truth_manifest: {
    #             s3_object: {
    #               bucket: "S3Bucket",
    #               name: "S3ObjectName",
    #               version: "S3ObjectVersion"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     testing_data: {
    #       assets: [
    #         {
    #           ground_truth_manifest: {
    #             s3_object: {
    #               bucket: "S3Bucket",
    #               name: "S3ObjectName",
    #               version: "S3ObjectVersion"
    #             }
    #           }
    #         }
    #       ],
    #       auto_create: false
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_id: "KmsKeyId",
    #     version_description: "VersionDescription",
    #     feature_config: {
    #       content_moderation: {
    #         confidence_threshold: 1.0
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_project_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_version_arn: "ProjectVersionArn"
    #   }
    # @return [Types::CreateProjectVersionResponse]
    def create_project_version(params = {}, options = {})
      request = build_request(:create_project_version, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Rekognition stream processor that you can use to detect and recognize faces or to detect labels in a streaming video.</p>
    #          <p>Amazon Rekognition Video is a consumer of live video from Amazon Kinesis Video Streams. There are two different settings for stream processors in Amazon Rekognition: detecting faces and detecting labels.</p>
    #          <ul>
    #             <li>
    #                <p>If you are creating a stream processor for detecting faces, you provide as input a Kinesis video stream
    #                         (<code>Input</code>) and a Kinesis data stream (<code>Output</code>) stream for receiving
    #                     the output. You must use the <code>FaceSearch</code> option in
    #                         <code>Settings</code>, specifying the collection that contains the faces you
    #                     want to recognize. After you have finished analyzing a streaming video, use
    #                         <a>StopStreamProcessor</a> to stop processing.</p>
    #             </li>
    #             <li>
    #                <p>If you are creating a stream processor to detect labels, you provide as input a Kinesis video stream
    #                         (<code>Input</code>), Amazon S3 bucket information (<code>Output</code>), and an
    #                     Amazon SNS topic ARN (<code>NotificationChannel</code>). You can also provide a KMS
    #                     key ID to encrypt the data sent to your Amazon S3 bucket. You specify what you want
    #                     to detect by using the <code>ConnectedHome</code> option in settings, and
    #                     selecting one of the following: <code>PERSON</code>, <code>PET</code>,
    #                         <code>PACKAGE</code>, <code>ALL</code> You can also specify where in the
    #                     frame you want Amazon Rekognition to monitor with <code>RegionsOfInterest</code>. When
    #                     you run the <a>StartStreamProcessor</a> operation on a label
    #                     detection stream processor, you input start and stop information to determine
    #                     the length of the processing time.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             Use <code>Name</code> to assign an identifier for the stream processor. You use <code>Name</code>
    #             to manage the stream processor. For example, you can start processing the source video by calling <a>StartStreamProcessor</a> with
    #             the <code>Name</code> field. </p>
    #          <p>This operation requires permissions to perform the
    #             <code>rekognition:CreateStreamProcessor</code> action. If you want to tag your stream processor, you also require permission to perform the <code>rekognition:TagResource</code> operation.</p>
    # @param [Hash, Types::CreateStreamProcessorRequest] params
    # @option params [Types::StreamProcessorInput] :input
    #   <p>Kinesis video stream stream that provides the source streaming video. If you are using the AWS CLI, the parameter name is <code>StreamProcessorInput</code>. This is required for both face search and label detection stream processors.</p>
    # @option params [Types::StreamProcessorOutput] :output
    #   <p>Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. If you are using the AWS CLI, the parameter name is <code>StreamProcessorOutput</code>. 
    #               This must be a <a>S3Destination</a> of an Amazon S3 bucket that you own for a label detection stream processor or a Kinesis data stream ARN for a face search stream processor.</p>
    # @option params [String] :name
    #   <p>An identifier you assign to the stream processor. You can use <code>Name</code> to
    #               manage the stream processor. For example, you can get the current status of the stream processor by calling <a>DescribeStreamProcessor</a>.
    #               <code>Name</code> is idempotent. This is required for both face search and label detection stream processors.
    #          </p>
    # @option params [Types::StreamProcessorSettings] :settings
    #   <p>Input parameters used in a streaming video analyzed by a stream processor. You can use <code>FaceSearch</code> to recognize faces in a streaming video, or you can use <code>ConnectedHome</code> to detect labels.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. 
    #               The IAM role provides Rekognition read permissions for a Kinesis stream. 
    #               It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.</p>
    # @option params [Hash<String, String>] :tags
    #   <p> A set of tags (key-value pairs) that you want to attach to the stream processor. </p>
    # @option params [Types::StreamProcessorNotificationChannel] :notification_channel
    #   <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the object detection results and completion status of a video analysis operation.</p>
    #            <p>Amazon Rekognition publishes a notification the first time an object of interest or a person is detected in the video stream. For example, if Amazon Rekognition
    #               detects a person at second 2, a pet at second 4, and a person again at second 5, Amazon Rekognition sends 2 object class detected notifications,
    #               one for a person at second 2 and one for a pet at second 4.</p>
    #            <p>Amazon Rekognition also publishes an an end-of-session notification with a summary when the stream processing session is complete.</p>
    # @option params [String] :kms_key_id
    #   <p>
    #               The identifier for your AWS Key Management Service key (AWS KMS key). This is an optional parameter for label detection stream processors and should not be used to create a face search stream processor.
    #               You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key, an alias for your KMS key, or an alias ARN. 
    #               The key is used to encrypt results and data published to your Amazon S3 bucket, which includes  image frames and hero images. Your source images are unaffected. 
    #           </p>
    #            <p>
    #               </p>
    # @option params [Array<Types::RegionOfInterest>] :regions_of_interest
    #   <p>
    #               Specifies locations in the frames where Amazon Rekognition checks for objects or people. You can specify up to 10 regions of interest, and each region has either a polygon or a bounding box. This is an optional parameter for label detection stream processors and should not be used to create a face search stream processor.
    #           </p>
    # @option params [Types::StreamProcessorDataSharingPreference] :data_sharing_preference
    #   <p>
    #               Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.
    #               Note that if you opt out at the account level this setting is ignored on individual streams.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input: { # required
    #       kinesis_video_stream: {
    #         arn: "KinesisVideoArn"
    #       }
    #     },
    #     output: { # required
    #       kinesis_data_stream: {
    #         arn: "KinesisDataArn"
    #       },
    #       s3_destination: {
    #         bucket: "S3Bucket",
    #         key_prefix: "S3KeyPrefix"
    #       }
    #     },
    #     name: "StreamProcessorName", # required
    #     settings: { # required
    #       face_search: {
    #         collection_id: "CollectionId",
    #         face_match_threshold: 1.0
    #       },
    #       connected_home: {
    #         labels: ["ConnectedHomeLabel"], # required
    #         min_confidence: 1.0
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #     },
    #     kms_key_id: "KmsKeyId",
    #     regions_of_interest: [
    #       {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         polygon: [
    #           {
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     data_sharing_preference: {
    #       opt_in: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_stream_processor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_processor_arn: "StreamProcessorArn"
    #   }
    # @return [Types::CreateStreamProcessorResponse]
    def create_stream_processor(params = {}, options = {})
      request = build_request(:create_stream_processor, params)
      request.send_request(options)
    end

    # <p>Creates a new User within a collection specified by <code>CollectionId</code>. Takes
    #         <code>UserId</code> as a parameter, which is a user provided ID which should be unique
    #       within the collection. The provided <code>UserId</code> will alias the system generated UUID
    #       to make the <code>UserId</code> more user friendly. </p>
    #          <p>Uses a <code>ClientToken</code>, an idempotency token that ensures a call to
    #         <code>CreateUser</code> completes only once. If the value is not supplied, the AWS SDK
    #       generates an idempotency token for the requests. This prevents retries after a network error
    #       results from making multiple <code>CreateUser</code> calls. </p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection to which the new UserID needs to be created.</p>
    # @option params [String] :user_id
    #   <p>ID for the UserID to be created. This ID needs to be unique within the collection.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the request to <code>CreateUser</code>. If you use the
    #         same token with multiple <code>CreateUser</code> requests, the same response is returned. Use
    #         ClientRequestToken to prevent the same request from being processed more than once.</p>
    # @example CreateUser
    #   # Creates a new User within a collection specified by CollectionId.
    #   params = {
    #     collection_id: "MyCollection",
    #     user_id: "DemoUser"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     user_id: "UserId", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deletes the specified collection. Note that this operation removes all faces in the
    #       collection. For an example, see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/delete-collection-procedure.html">Deleting a
    #       collection</a>.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:DeleteCollection</code> action.</p>
    # @param [Hash, Types::DeleteCollectionRequest] params
    # @option params [String] :collection_id
    #   <p>ID of the collection to delete.</p>
    # @example To delete a collection
    #   # This operation deletes a Rekognition collection.
    #   params = {
    #     collection_id: "myphotos"
    #   }
    #   options = {}
    #   response = client.delete_collection(params, options)
    #   response.to_h #=>
    #   {
    #     status_code: 200
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1
    #   }
    # @return [Types::DeleteCollectionResponse]
    def delete_collection(params = {}, options = {})
      request = build_request(:delete_collection, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Deletes an existing Amazon Rekognition Custom Labels dataset.
    #    Deleting a dataset might take while. Use <a>DescribeDataset</a> to check the 
    #    current status. The dataset is still deleting if the value of <code>Status</code> is
    #    <code>DELETE_IN_PROGRESS</code>. If you try to access the dataset after it is deleted, you get
    #    a <code>ResourceNotFoundException</code> exception.
    # 
    # </p>
    #          <p>You can't delete a dataset while it is creating (<code>Status</code> =  <code>CREATE_IN_PROGRESS</code>)
    #       or if the dataset is updating (<code>Status</code> =  <code>UPDATE_IN_PROGRESS</code>).</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DeleteDataset</code> action.</p>
    # @param [Hash, Types::DeleteDatasetRequest] params
    # @option params [String] :dataset_arn
    #   <p>
    #   The ARN of the Amazon Rekognition Custom Labels dataset that you want to delete. 
    #   </p>
    # @example To delete an Amazon Rekognition Custom Labels dataset
    #   # Deletes an Amazon Rekognition Custom Labels dataset.
    #   params = {
    #     dataset_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/dataset/test/1690556733321"
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "DatasetArn", # required
    #   }
    #   options = {}
    #   response = client.delete_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDatasetResponse]
    def delete_dataset(params = {}, options = {})
      request = build_request(:delete_dataset, params)
      request.send_request(options)
    end

    # <p>Deletes faces from a collection. You specify a collection ID and an array of face IDs
    #       to remove from the collection.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DeleteFaces</code>
    #       action.</p>
    # @param [Hash, Types::DeleteFacesRequest] params
    # @option params [String] :collection_id
    #   <p>Collection from which to remove the specific faces.</p>
    # @option params [Array<String>] :face_ids
    #   <p>An array of face IDs to delete.</p>
    # @example To delete a face
    #   # This operation deletes one or more faces from a Rekognition collection.
    #   params = {
    #     collection_id: "myphotos",
    #     face_ids: [
    #       "ff43d742-0c13-5d16-a3e8-03d3f58e980b"
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_faces(params, options)
    #   response.to_h #=>
    #   {
    #     deleted_faces: [
    #       "ff43d742-0c13-5d16-a3e8-03d3f58e980b"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     face_ids: ["FaceId"], # required
    #   }
    #   options = {}
    #   response = client.delete_faces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted_faces: ["FaceId"],
    #     unsuccessful_face_deletions: [
    #       {
    #         face_id: "FaceId",
    #         user_id: "UserId",
    #         reasons: ["ASSOCIATED_TO_AN_EXISTING_USER" # One of: ["ASSOCIATED_TO_AN_EXISTING_USER", "FACE_NOT_FOUND"]]
    #       }
    #     ]
    #   }
    # @return [Types::DeleteFacesResponse]
    def delete_faces(params = {}, options = {})
      request = build_request(:delete_faces, params)
      request.send_request(options)
    end

    # <p>Deletes a Amazon Rekognition project. To delete a project you must first delete all models or
    #          adapters associated with the project. To delete a model or adapter, see <a>DeleteProjectVersion</a>.</p>
    #          <p>
    #             <code>DeleteProject</code> is an asynchronous operation. To check if the project is
    #          deleted, call <a>DescribeProjects</a>. The project is deleted when the project
    #          no longer appears in the response. Be aware that deleting a given project will also delete
    #          any <code>ProjectPolicies</code> associated with that project.</p>
    #          <p>This operation requires permissions to perform the
    #             <code>rekognition:DeleteProject</code> action. </p>
    # @param [Hash, Types::DeleteProjectRequest] params
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that you want to delete.</p>
    # @example To delete an Amazon Rekognition Custom Labels project
    #   # Deletes an Amazon Rekognition Custom Labels projects.
    #   params = {
    #     project_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/1690405809285"
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    #   response.to_h #=>
    #   {
    #     status: DELETING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "ProjectArn", # required
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "CREATING" # One of: ["CREATING", "CREATED", "DELETING"]
    #   }
    # @return [Types::DeleteProjectResponse]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Deletes an existing project policy.</p>
    #          <p>To get a list of project policies attached to a project, call <a>ListProjectPolicies</a>. To attach a project policy to a project, call <a>PutProjectPolicy</a>.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DeleteProjectPolicy</code> action.</p>
    # @param [Hash, Types::DeleteProjectPolicyRequest] params
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that the project policy you want to delete is attached to.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy that you want to delete.</p>
    # @option params [String] :policy_revision_id
    #   <p>The ID of the project policy revision that you want to delete.</p>
    # @example DeleteProjectPolicy
    #   # This operation deletes a revision of an existing project policy from an Amazon Rekognition Custom Labels project.
    #   params = {
    #     project_arn: "arn:aws:rekognition:us-east-1:111122223333:project/SourceProject/1656557123456",
    #     policy_name: "testPolicy1",
    #     policy_revision_id: "3b274c25e9203a56a99e00e3ff205fbc"
    #   }
    #   options = {}
    #   response = client.delete_project_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "ProjectArn", # required
    #     policy_name: "ProjectPolicyName", # required
    #     policy_revision_id: "ProjectPolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.delete_project_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProjectPolicyResponse]
    def delete_project_policy(params = {}, options = {})
      request = build_request(:delete_project_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a Rekognition project model or project version, like a Amazon Rekognition Custom Labels model or a custom
    #          adapter.</p>
    #          <p>You can't delete a project version if it is running or if it is training. To check
    #          the status of a project version, use the Status field returned from <a>DescribeProjectVersions</a>. To stop a project version call <a>StopProjectVersion</a>. If the project version is training, wait until it
    #          finishes.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>rekognition:DeleteProjectVersion</code> action. </p>
    # @param [Hash, Types::DeleteProjectVersionRequest] params
    # @option params [String] :project_version_arn
    #   <p>The Amazon Resource Name (ARN) of the project version that you want to
    #            delete.</p>
    # @example To delete an Amazon Rekognition Custom Labels model
    #   # Deletes a version of an Amazon Rekognition Custom Labels model.
    #   params = {
    #     project_version_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/version/1/1690556751958"
    #   }
    #   options = {}
    #   response = client.delete_project_version(params, options)
    #   response.to_h #=>
    #   {
    #     status: DELETING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_version_arn: "ProjectVersionArn", # required
    #   }
    #   options = {}
    #   response = client.delete_project_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "TRAINING_IN_PROGRESS" # One of: ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING", "COPYING_IN_PROGRESS", "COPYING_COMPLETED", "COPYING_FAILED", "DEPRECATED", "EXPIRED"]
    #   }
    # @return [Types::DeleteProjectVersionResponse]
    def delete_project_version(params = {}, options = {})
      request = build_request(:delete_project_version, params)
      request.send_request(options)
    end

    # <p>Deletes the stream processor identified by <code>Name</code>. You assign the value for <code>Name</code> when you create the stream processor with
    #             <a>CreateStreamProcessor</a>. You might not be able to use the same name for a stream processor for a few seconds after calling <code>DeleteStreamProcessor</code>.</p>
    # @param [Hash, Types::DeleteStreamProcessorRequest] params
    # @option params [String] :name
    #   <p>The name of the stream processor you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StreamProcessorName", # required
    #   }
    #   options = {}
    #   response = client.delete_stream_processor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStreamProcessorResponse]
    def delete_stream_processor(params = {}, options = {})
      request = build_request(:delete_stream_processor, params)
      request.send_request(options)
    end

    # <p>Deletes the specified UserID within the collection. Faces that are associated with the
    #       UserID are disassociated from the UserID before deleting the specified UserID. If the
    #       specified <code>Collection</code> or <code>UserID</code> is already deleted or not found, a
    #         <code>ResourceNotFoundException</code> will be thrown. If the action is successful with a
    #       200 response, an empty HTTP body is returned. </p>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection from which the UserID needs to be deleted. </p>
    # @option params [String] :user_id
    #   <p>ID for the UserID to be deleted. </p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the request to <code>DeleteUser</code>. If you use the
    #         same token with multiple <code>DeleteUser </code>requests, the same response is returned. Use
    #         ClientRequestToken to prevent the same request from being processed more than once.</p>
    # @example DeleteUser
    #   # Deletes the specified UserID within the collection.
    #   params = {
    #     collection_id: "MyCollection",
    #     user_id: "DemoUser",
    #     client_request_token: "550e8400-e29b-41d4-a716-446655440001"
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     user_id: "UserId", # required
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserResponse]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Describes the specified collection. You can use <code>DescribeCollection</code> to get
    #          information, such as the number of faces indexed into a collection and the version of the
    #          model used by the collection for face detection.</p>
    #          <p>For more information, see Describing a Collection in the 
    #      Amazon Rekognition Developer Guide.</p>
    # @param [Hash, Types::DescribeCollectionRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of the collection to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #   }
    #   options = {}
    #   response = client.describe_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     face_count: 1,
    #     face_model_version: "String",
    #     collection_arn: "String",
    #     creation_timestamp: Time.now,
    #     user_count: 1
    #   }
    # @return [Types::DescribeCollectionResponse]
    def describe_collection(params = {}, options = {})
      request = build_request(:describe_collection, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>
    # Describes an Amazon Rekognition Custom Labels dataset. You can get information such as the current status of a dataset and
    # statistics about the images and labels in a dataset.  
    # </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DescribeDataset</code> action.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to describe.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "DatasetArn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_description: {
    #       creation_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "DELETE_IN_PROGRESS"],
    #       status_message: "StatusMessage",
    #       status_message_code: "SUCCESS" # One of: ["SUCCESS", "SERVICE_ERROR", "CLIENT_ERROR"],
    #       dataset_stats: {
    #         labeled_entries: 1,
    #         total_entries: 1,
    #         total_labels: 1,
    #         error_entries: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Lists and describes the versions of an Amazon Rekognition project. You can specify up to 10 model or
    #          adapter versions in <code>ProjectVersionArns</code>. If you don't specify a value,
    #          descriptions for all model/adapter versions in the project are returned.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DescribeProjectVersions</code>
    #             action.</p>
    # @param [Hash, Types::DescribeProjectVersionsRequest] params
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that contains the model/adapter you want
    #            to describe.</p>
    # @option params [Array<String>] :version_names
    #   <p>A list of model or project version names that you want to describe. You can add
    #            up to 10 model or project version names to the list. If you don't specify a value, all
    #            project version descriptions are returned. A version name is part of a project version ARN. For example, <code>my-model.2020-01-21T09.10.15</code> is
    #            the version name in the following ARN.
    #                  <code>arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/<i>my-model.2020-01-21T09.10.15</i>/1234567890123</code>.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #              results to retrieve), Amazon Rekognition returns a pagination token in the response. 
    #              You can use this pagination token to retrieve the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. 
    #             The largest value you can specify is 100. If you specify a value greater than 100, a ValidationException
    #             error occurs. The default value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "ProjectArn", # required
    #     version_names: ["VersionName"],
    #     next_token: "ExtendedPaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_project_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_version_descriptions: [
    #       {
    #         project_version_arn: "ProjectVersionArn",
    #         creation_timestamp: Time.now,
    #         min_inference_units: 1,
    #         status: "TRAINING_IN_PROGRESS" # One of: ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING", "COPYING_IN_PROGRESS", "COPYING_COMPLETED", "COPYING_FAILED", "DEPRECATED", "EXPIRED"],
    #         status_message: "StatusMessage",
    #         billable_training_time_in_seconds: 1,
    #         training_end_timestamp: Time.now,
    #         output_config: {
    #           s3_bucket: "S3Bucket",
    #           s3_key_prefix: "S3KeyPrefix"
    #         },
    #         training_data_result: {
    #           input: {
    #             assets: [
    #               {
    #                 ground_truth_manifest: {
    #                   s3_object: {
    #                     bucket: "S3Bucket",
    #                     name: "S3ObjectName",
    #                     version: "S3ObjectVersion"
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           output: {
    #             assets: [
    #               {
    #                 ground_truth_manifest: {
    #                   s3_object: {
    #                     bucket: "S3Bucket",
    #                     name: "S3ObjectName",
    #                     version: "S3ObjectVersion"
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           validation: {
    #             assets: [
    #               {
    #                 ground_truth_manifest: {
    #                   s3_object: {
    #                     bucket: "S3Bucket",
    #                     name: "S3ObjectName",
    #                     version: "S3ObjectVersion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         testing_data_result: {
    #           input: {
    #             assets: [
    #               {
    #                 ground_truth_manifest: {
    #                   s3_object: {
    #                     bucket: "S3Bucket",
    #                     name: "S3ObjectName",
    #                     version: "S3ObjectVersion"
    #                   }
    #                 }
    #               }
    #             ],
    #             auto_create: false
    #           },
    #           output: {
    #             assets: [
    #               {
    #                 ground_truth_manifest: {
    #                   s3_object: {
    #                     bucket: "S3Bucket",
    #                     name: "S3ObjectName",
    #                     version: "S3ObjectVersion"
    #                   }
    #                 }
    #               }
    #             ],
    #             auto_create: false
    #           },
    #           validation: {
    #             assets: [
    #               {
    #                 ground_truth_manifest: {
    #                   s3_object: {
    #                     bucket: "S3Bucket",
    #                     name: "S3ObjectName",
    #                     version: "S3ObjectVersion"
    #                   }
    #                 }
    #               }
    #             ]
    #           }
    #         },
    #         evaluation_result: {
    #           f1_score: 1.0,
    #           summary: {
    #             s3_object: {
    #               bucket: "S3Bucket",
    #               name: "S3ObjectName",
    #               version: "S3ObjectVersion"
    #             }
    #           }
    #         },
    #         manifest_summary: {
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion"
    #           }
    #         },
    #         kms_key_id: "KmsKeyId",
    #         max_inference_units: 1,
    #         source_project_version_arn: "ProjectVersionArn",
    #         version_description: "VersionDescription",
    #         feature: "CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "CUSTOM_LABELS"],
    #         base_model_version: "String",
    #         feature_config: {
    #           content_moderation: {
    #             confidence_threshold: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "ExtendedPaginationToken"
    #   }
    # @return [Types::DescribeProjectVersionsResponse]
    def describe_project_versions(params = {}, options = {})
      request = build_request(:describe_project_versions, params)
      request.send_request(options)
    end

    # <p>Gets information about your Rekognition projects.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DescribeProjects</code> action.</p>
    # @param [Hash, Types::DescribeProjectsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #            results to retrieve), Rekognition returns a pagination token in the response. You can use this pagination 
    #            token to retrieve the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #            If you specify a value greater than 100, a ValidationException
    #            error occurs. The default value is 100. </p>
    # @option params [Array<String>] :project_names
    #   <p>A list of the projects that you want Rekognition to describe. If you don't specify a value, 
    #         the response includes descriptions for all the projects in your AWS account.</p>
    # @option params [Array<String>] :features
    #   <p>Specifies the type of customization to filter projects by. If no value is specified, 
    #            CUSTOM_LABELS is used as a default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "ExtendedPaginationToken",
    #     max_results: 1,
    #     project_names: ["ProjectName"],
    #     features: ["CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "CUSTOM_LABELS"]]
    #   }
    #   options = {}
    #   response = client.describe_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_descriptions: [
    #       {
    #         project_arn: "ProjectArn",
    #         creation_timestamp: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "CREATED", "DELETING"],
    #         datasets: [
    #           {
    #             creation_timestamp: Time.now,
    #             dataset_type: "TRAIN" # One of: ["TRAIN", "TEST"],
    #             dataset_arn: "DatasetArn",
    #             status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "DELETE_IN_PROGRESS"],
    #             status_message: "StatusMessage",
    #             status_message_code: "SUCCESS" # One of: ["SUCCESS", "SERVICE_ERROR", "CLIENT_ERROR"]
    #           }
    #         ],
    #         feature: "CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "CUSTOM_LABELS"],
    #         auto_update: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     next_token: "ExtendedPaginationToken"
    #   }
    # @return [Types::DescribeProjectsResponse]
    def describe_projects(params = {}, options = {})
      request = build_request(:describe_projects, params)
      request.send_request(options)
    end

    # <p>Provides information about a stream processor created by <a>CreateStreamProcessor</a>. You can get information about the input and output streams, the input parameters for the face recognition being performed,
    #             and the current status of the stream processor.</p>
    # @param [Hash, Types::DescribeStreamProcessorRequest] params
    # @option params [String] :name
    #   <p>Name of the stream processor for which you want information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StreamProcessorName", # required
    #   }
    #   options = {}
    #   response = client.describe_stream_processor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "StreamProcessorName",
    #     stream_processor_arn: "StreamProcessorArn",
    #     status: "STOPPED" # One of: ["STOPPED", "STARTING", "RUNNING", "FAILED", "STOPPING", "UPDATING"],
    #     status_message: "String",
    #     creation_timestamp: Time.now,
    #     last_update_timestamp: Time.now,
    #     input: {
    #       kinesis_video_stream: {
    #         arn: "KinesisVideoArn"
    #       }
    #     },
    #     output: {
    #       kinesis_data_stream: {
    #         arn: "KinesisDataArn"
    #       },
    #       s3_destination: {
    #         bucket: "S3Bucket",
    #         key_prefix: "S3KeyPrefix"
    #       }
    #     },
    #     role_arn: "RoleArn",
    #     settings: {
    #       face_search: {
    #         collection_id: "CollectionId",
    #         face_match_threshold: 1.0
    #       },
    #       connected_home: {
    #         labels: ["ConnectedHomeLabel"], # required
    #         min_confidence: 1.0
    #       }
    #     },
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #     },
    #     kms_key_id: "KmsKeyId",
    #     regions_of_interest: [
    #       {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         polygon: [
    #           {
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     data_sharing_preference: {
    #       opt_in: false, # required
    #     }
    #   }
    # @return [Types::DescribeStreamProcessorResponse]
    def describe_stream_processor(params = {}, options = {})
      request = build_request(:describe_stream_processor, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Detects custom labels in a supplied image by using an Amazon Rekognition Custom Labels model. </p>
    #          <p>You specify which version of a model version to use by using the <code>ProjectVersionArn</code> input
    #       parameter. </p>
    #          <p>You pass the input image as base64-encoded image bytes or as a reference to an image in
    #          an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing
    #          image bytes is not supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <p> For each object that the model version detects on an image, the API returns a 
    #          (<code>CustomLabel</code>) object in an array (<code>CustomLabels</code>).
    #          Each <code>CustomLabel</code> object provides the label name (<code>Name</code>), the level
    #          of confidence that the image contains the object (<code>Confidence</code>), and 
    #          object location information, if it exists,  for the label on the image (<code>Geometry</code>). </p>
    #          <p>To filter labels that are returned, specify a value for <code>MinConfidence</code>.
    #          <code>DetectCustomLabelsLabels</code> only returns labels with a confidence that's higher than
    #          the specified value.
    # 
    #          The value of <code>MinConfidence</code> maps to the assumed threshold values
    #          created during training. For more information, see <i>Assumed threshold</i>
    #          in the Amazon Rekognition Custom Labels Developer Guide. 
    #          Amazon Rekognition Custom Labels metrics expresses an assumed threshold as a floating point value between 0-1. The range of
    #          <code>MinConfidence</code> normalizes the threshold value to a percentage value (0-100). Confidence
    #          responses from <code>DetectCustomLabels</code> are also returned as a percentage. 
    #          You can use <code>MinConfidence</code> to change the precision and recall or your model. 
    #          For more information, see 
    #          <i>Analyzing an image</i> in the Amazon Rekognition Custom Labels Developer Guide. </p>
    #          <p>If you don't specify a value for <code>MinConfidence</code>,  <code>DetectCustomLabels</code>
    #       returns labels based on the assumed threshold of each label.</p>
    #          <p>This is a stateless API operation. That is, the operation does not persist any
    #          data.</p>
    #          <p>This operation requires permissions to perform the
    #          <code>rekognition:DetectCustomLabels</code> action. </p>
    #          <p>For more information, see 
    #       <i>Analyzing an image</i> in the Amazon Rekognition Custom Labels Developer Guide. </p>
    # @param [Hash, Types::DetectCustomLabelsRequest] params
    # @option params [String] :project_version_arn
    #   <p>The ARN of the model version that you want to use. Only models associated with Custom
    #            Labels projects accepted by the operation. If a provided ARN refers to a model version
    #            associated with a project for a different feature type, then an InvalidParameterException
    #            is returned.</p>
    # @option params [Types::Image] :image
    #   <p>Provides the input image either as bytes or an S3 object.</p>
    #            <p>You pass image bytes to an Amazon Rekognition API operation by using the <code>Bytes</code>
    #         property. For example, you would use the <code>Bytes</code> property to pass an image loaded
    #         from a local file system. Image bytes passed by using the <code>Bytes</code> property must be
    #         base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to
    #         call Amazon Rekognition API operations. </p>
    #            <p>For more information, see Analyzing an Image Loaded from a Local File System
    #         in the Amazon Rekognition Developer Guide.</p>
    #            <p> You pass images stored in an S3 bucket to an Amazon Rekognition API operation by using the
    #           <code>S3Object</code> property. Images stored in an S3 bucket do not need to be
    #         base64-encoded.</p>
    #            <p>The region for the S3 bucket containing the S3 object must match the region you use for
    #         Amazon Rekognition operations.</p>
    #            <p>If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes using the
    #         Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and
    #         then call the operation using the S3Object property.</p>
    #            <p>For Amazon Rekognition to process an S3 object, the user must have permission to
    #         access the S3 object. For more information, see How Amazon Rekognition works with IAM in the
    #         Amazon Rekognition Developer Guide. </p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results you want the service to return in the response. 
    #            The service returns the specified number of highest confidence labels ranked from highest confidence 
    #         to lowest.</p>
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return. 
    #            <code>DetectCustomLabels</code> doesn't return any labels with a confidence value that's lower than
    #            this specified value. If you specify a
    #         value of 0, <code>DetectCustomLabels</code> returns all labels, regardless of the assumed 
    #            threshold applied to each label.
    #         If you don't specify a value for <code>MinConfidence</code>,  <code>DetectCustomLabels</code>
    #            returns labels based on the assumed threshold of each label.</p>
    # @example To detect custom labels in an image with an Amazon Rekognition Custom Labels model
    #   # Detects custom labels in an image with an Amazon Rekognition Custom Labels model
    #   params = {
    #     project_version_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/version/my-project.2023-07-31T11.49.37/1690829378219",
    #     image: {
    #       s3_object: {
    #         bucket: "custom-labels-console-us-east-1-1111111111",
    #         name: "assets/flowers_1_test_dataset/camellia4.jpg"
    #       }
    #     },
    #     max_results: 100,
    #     min_confidence: 50
    #   }
    #   options = {}
    #   response = client.detect_custom_labels(params, options)
    #   response.to_h #=>
    #   {
    #     custom_labels: [
    #       {
    #         name: "with_leaves",
    #         confidence: 67.56399536132812
    #       },
    #       {
    #         name: "without_leaves",
    #         confidence: 50.65699768066406
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_version_arn: "ProjectVersionArn", # required
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     max_results: 1,
    #     min_confidence: 1.0
    #   }
    #   options = {}
    #   response = client.detect_custom_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_labels: [
    #       {
    #         name: "String",
    #         confidence: 1.0,
    #         geometry: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DetectCustomLabelsResponse]
    def detect_custom_labels(params = {}, options = {})
      request = build_request(:detect_custom_labels, params)
      request.send_request(options)
    end

    # <p>Detects faces within an image that is provided as input.</p>
    #          <p>
    #             <code>DetectFaces</code> detects the 100 largest faces in the image. For each face
    #       detected, the operation returns face details. These details include a bounding box of the
    #       face, a confidence value (that the bounding box contains a face), and a fixed set of
    #       attributes such as facial landmarks (for example, coordinates of eye and mouth), pose,
    #       presence of facial occlusion, and so on.</p>
    #          <p>The face-detection algorithm is most effective on frontal faces. For non-frontal or
    #       obscured faces, the algorithm might not detect the faces or might detect faces with lower
    #       confidence. </p>
    #          <p>You pass the input image either as base64-encoded image bytes or as a reference to an
    #       image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations,
    #       passing image bytes is not supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <note>
    #             <p>This is a stateless API operation. That is, the operation does not persist any
    #         data.</p>
    #          </note>
    #          <p>This operation requires permissions to perform the <code>rekognition:DetectFaces</code>
    #       action. </p>
    # @param [Hash, Types::DetectFacesRequest] params
    # @option params [Types::Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @option params [Array<String>] :attributes
    #   <p>An array of facial attributes you want to be returned. A <code>DEFAULT</code> subset of
    #         facial attributes - <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
    #           <code>Quality</code>, and <code>Landmarks</code> - will always be returned. You can request
    #         for specific facial attributes (in addition to the default list) - by using [<code>"DEFAULT",
    #           "FACE_OCCLUDED"</code>] or just [<code>"FACE_OCCLUDED"</code>]. You can request for all
    #         facial attributes by using [<code>"ALL"]</code>. Requesting more attributes may increase
    #         response time.</p>
    #            <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical "AND"
    #         operator to determine which attributes to return (in this case, all attributes). </p>
    #            <p>Note that while the FaceOccluded and EyeDirection attributes are supported when using
    #           <code>DetectFaces</code>, they aren't supported when analyzing videos with
    #           <code>StartFaceDetection</code> and <code>GetFaceDetection</code>.</p>
    # @example To detect faces in an image
    #   # This operation detects faces in an image stored in an AWS S3 bucket.
    #   params = {
    #     image: {
    #       s3_object: {
    #         bucket: "mybucket",
    #         name: "myphoto"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.detect_faces(params, options)
    #   response.to_h #=>
    #   {
    #     face_details: [
    #       {
    #         bounding_box: {
    #           width: 0.23999999463558197,
    #           top: 0.33666667342185974,
    #           left: 0.5555555820465088,
    #           height: 0.18000000715255737
    #         },
    #         landmarks: [
    #           {
    #             y: 0.40819624066352844,
    #             x: 0.6394737362861633,
    #             type: eyeLeft
    #           },
    #           {
    #             y: 0.41039225459098816,
    #             x: 0.7266660928726196,
    #             type: eyeRight
    #           },
    #           {
    #             y: 0.44240960478782654,
    #             x: 0.6912462115287781,
    #             type: eyeRight
    #           },
    #           {
    #             y: 0.46700039505958557,
    #             x: 0.6306198239326477,
    #             type: mouthDown
    #           },
    #           {
    #             y: 0.47114261984825134,
    #             x: 0.7215608954429626,
    #             type: mouthUp
    #           }
    #         ],
    #         pose: {
    #           yaw: 13.693790435791016,
    #           roll: 0.9950747489929199,
    #           pitch: 4.050806522369385
    #         },
    #         quality: {
    #           sharpness: 80,
    #           brightness: 37.60169982910156
    #         },
    #         confidence: 100
    #       }
    #     ],
    #     orientation_correction: ROTATE_0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     attributes: ["DEFAULT" # One of: ["DEFAULT", "ALL", "AGE_RANGE", "BEARD", "EMOTIONS", "EYE_DIRECTION", "EYEGLASSES", "EYES_OPEN", "GENDER", "MOUTH_OPEN", "MUSTACHE", "FACE_OCCLUDED", "SMILE", "SUNGLASSES"]]
    #   }
    #   options = {}
    #   response = client.detect_faces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     face_details: [
    #       {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         age_range: {
    #           low: 1,
    #           high: 1
    #         },
    #         smile: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         eyeglasses: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         sunglasses: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         gender: {
    #           value: "Male" # One of: ["Male", "Female"],
    #           confidence: 1.0
    #         },
    #         beard: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         mustache: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         eyes_open: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         mouth_open: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         emotions: [
    #           {
    #             type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #             confidence: 1.0
    #           }
    #         ],
    #         landmarks: [
    #           {
    #             type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ],
    #         pose: {
    #           roll: 1.0,
    #           yaw: 1.0,
    #           pitch: 1.0
    #         },
    #         quality: {
    #           brightness: 1.0,
    #           sharpness: 1.0
    #         },
    #         confidence: 1.0,
    #         face_occluded: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         eye_direction: {
    #           yaw: 1.0,
    #           pitch: 1.0,
    #           confidence: 1.0
    #         }
    #       }
    #     ],
    #     orientation_correction: "ROTATE_0" # One of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #   }
    # @return [Types::DetectFacesResponse]
    def detect_faces(params = {}, options = {})
      request = build_request(:detect_faces, params)
      request.send_request(options)
    end

    # <p>Detects instances of real-world entities within an image (JPEG or PNG) provided as
    #       input. This includes objects like flower, tree, and table; events like wedding, graduation,
    #       and birthday party; and concepts like landscape, evening, and nature. </p>
    #          <p>For an example, see Analyzing images stored in an Amazon S3 bucket in the
    #       Amazon Rekognition Developer Guide.</p>
    #          <p>You pass the input image as base64-encoded image bytes or as a reference to an image in
    #       an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <p>
    #             <b>Optional Parameters</b>
    #          </p>
    #          <p>You can specify one or both of the <code>GENERAL_LABELS</code> and
    #         <code>IMAGE_PROPERTIES</code> feature types when calling the DetectLabels API. Including
    #         <code>GENERAL_LABELS</code> will ensure the response includes the labels detected in the
    #       input image, while including <code>IMAGE_PROPERTIES </code>will ensure the response includes
    #       information about the image quality and color.</p>
    #          <p>When using <code>GENERAL_LABELS</code> and/or <code>IMAGE_PROPERTIES</code> you can
    #       provide filtering criteria to the Settings parameter. You can filter with sets of individual
    #       labels or with label categories. You can specify inclusive filters, exclusive filters, or a
    #       combination of inclusive and exclusive filters. For more information on filtering see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/labels-detect-labels-image.html">Detecting
    #         Labels in an Image</a>.</p>
    #          <p>When getting labels, you can specify <code>MinConfidence</code> to control the
    #       confidence threshold for the labels returned. The default is 55%. You can also add the
    #         <code>MaxLabels</code> parameter to limit the number of labels returned. The default and
    #       upper limit is 1000 labels. These arguments are only valid when supplying GENERAL_LABELS as a
    #       feature type.</p>
    #          <p>
    #             <b>Response Elements</b>
    #          </p>
    #          <p> For each object, scene, and concept the API returns one or more labels. The API
    #       returns the following types of information about labels:</p>
    #          <ul>
    #             <li>
    #                <p> Name - The name of the detected label. </p>
    #             </li>
    #             <li>
    #                <p> Confidence - The level of confidence in the label assigned to a detected object.
    #         </p>
    #             </li>
    #             <li>
    #                <p> Parents - The ancestor labels for a detected label. DetectLabels returns a
    #           hierarchical taxonomy of detected labels. For example, a detected car might be assigned
    #           the label car. The label car has two parent labels: Vehicle (its parent) and
    #           Transportation (its grandparent). The response includes the all ancestors for a label,
    #           where every ancestor is a unique label. In the previous example, Car, Vehicle, and
    #           Transportation are returned as unique labels in the response. </p>
    #             </li>
    #             <li>
    #                <p> Aliases - Possible Aliases for the label. </p>
    #             </li>
    #             <li>
    #                <p> Categories - The label categories that the detected label belongs to. </p>
    #             </li>
    #             <li>
    #                <p> BoundingBox — Bounding boxes are described for all instances of detected common
    #           object labels, returned in an array of Instance objects. An Instance object contains a
    #           BoundingBox object, describing the location of the label on the input image. It also
    #           includes the confidence for the accuracy of the detected bounding box. </p>
    #             </li>
    #          </ul>
    #          <p> The API returns the following information regarding the image, as part of the
    #       ImageProperties structure:</p>
    #          <ul>
    #             <li>
    #                <p>Quality - Information about the Sharpness, Brightness, and Contrast of the input
    #           image, scored between 0 to 100. Image quality is returned for the entire image, as well as
    #           the background and the foreground. </p>
    #             </li>
    #             <li>
    #                <p>Dominant Color - An array of the dominant colors in the image. </p>
    #             </li>
    #             <li>
    #                <p>Foreground - Information about the sharpness, brightness, and dominant colors of the
    #           input image’s foreground. </p>
    #             </li>
    #             <li>
    #                <p>Background - Information about the sharpness, brightness, and dominant colors of the
    #           input image’s background.</p>
    #             </li>
    #          </ul>
    #          <p>The list of returned labels will include at least one label for every detected object,
    #       along with information about that label. In the following example, suppose the input image has
    #       a lighthouse, the sea, and a rock. The response includes all three labels, one for each
    #       object, as well as the confidence in the label:</p>
    #          <p>
    #             <code>{Name: lighthouse, Confidence: 98.4629}</code>
    #          </p>
    #          <p>
    #             <code>{Name: rock,Confidence: 79.2097}</code>
    #          </p>
    #          <p>
    #             <code> {Name: sea,Confidence: 75.061}</code>
    #          </p>
    #          <p>The list of labels can include multiple labels for the same object. For example, if the
    #       input image shows a flower (for example, a tulip), the operation might return the following
    #       three labels. </p>
    #          <p>
    #             <code>{Name: flower,Confidence: 99.0562}</code>
    #          </p>
    #          <p>
    #             <code>{Name: plant,Confidence: 99.0562}</code>
    #          </p>
    #          <p>
    #             <code>{Name: tulip,Confidence: 99.0562}</code>
    #          </p>
    #          <p>In this example, the detection algorithm more precisely identifies the flower as a
    #       tulip.</p>
    #          <note>
    #             <p>If the object detected is a person, the operation doesn't provide the same facial
    #         details that the <a>DetectFaces</a> operation provides.</p>
    #          </note>
    #          <p>This is a stateless API operation that doesn't return any data.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:DetectLabels</code> action. </p>
    # @param [Hash, Types::DetectLabelsRequest] params
    # @option params [Types::Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing image bytes is not supported. Images stored in an
    #         S3 Bucket do not need to be base64-encoded.</p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @option params [Integer] :max_labels
    #   <p>Maximum number of labels you want the service to return in the response. The service
    #         returns the specified number of highest confidence labels. Only valid when GENERAL_LABELS is
    #         specified as a feature type in the Feature input parameter.</p>
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't
    #         return any labels with confidence lower than this specified value.</p>
    #            <p>If <code>MinConfidence</code> is not specified, the operation returns labels with a
    #         confidence values greater than or equal to 55 percent. Only valid when GENERAL_LABELS is
    #         specified as a feature type in the Feature input parameter.</p>
    # @option params [Array<String>] :features
    #   <p>A list of the types of analysis to perform. Specifying GENERAL_LABELS uses the label
    #         detection feature, while specifying IMAGE_PROPERTIES returns information regarding image color
    #         and quality. If no option is specified GENERAL_LABELS is used by default.</p>
    # @option params [Types::DetectLabelsSettings] :settings
    #   <p>A list of the filters to be applied to returned detected labels and image properties.
    #         Specified filters can be inclusive, exclusive, or a combination of both. Filters can be used
    #         for individual labels or label categories. The exact label names or label categories must be
    #         supplied. For a full list of labels and label categories, see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/labels.html">Detecting labels</a>.</p>
    # @example To detect labels
    #   # This operation detects labels in the supplied image
    #   params = {
    #     image: {
    #       s3_object: {
    #         bucket: "mybucket",
    #         name: "myphoto"
    #       }
    #     },
    #     max_labels: 123,
    #     min_confidence: 70
    #   }
    #   options = {}
    #   response = client.detect_labels(params, options)
    #   response.to_h #=>
    #   {
    #     labels: [
    #       {
    #         confidence: 99.25072479248047,
    #         name: "People"
    #       },
    #       {
    #         confidence: 99.25074005126953,
    #         name: "Person"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     max_labels: 1,
    #     min_confidence: 1.0,
    #     features: ["GENERAL_LABELS" # One of: ["GENERAL_LABELS", "IMAGE_PROPERTIES"]],
    #     settings: {
    #       general_labels: {
    #         label_inclusion_filters: ["GeneralLabelsFilterValue"],
    #         label_exclusion_filters: ["GeneralLabelsFilterValue"],
    #         label_category_inclusion_filters: ["GeneralLabelsFilterValue"],
    #         label_category_exclusion_filters: ["GeneralLabelsFilterValue"]
    #       },
    #       image_properties: {
    #         max_dominant_colors: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.detect_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     labels: [
    #       {
    #         name: "String",
    #         confidence: 1.0,
    #         instances: [
    #           {
    #             bounding_box: {
    #               width: 1.0,
    #               height: 1.0,
    #               left: 1.0,
    #               top: 1.0
    #             },
    #             confidence: 1.0,
    #             dominant_colors: [
    #               {
    #                 red: 1,
    #                 blue: 1,
    #                 green: 1,
    #                 hex_code: "String",
    #                 css_color: "String",
    #                 simplified_color: "String",
    #                 pixel_percent: 1.0
    #               }
    #             ]
    #           }
    #         ],
    #         parents: [
    #           {
    #             name: "String"
    #           }
    #         ],
    #         aliases: [
    #           {
    #             name: "String"
    #           }
    #         ],
    #         categories: [
    #           {
    #             name: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     orientation_correction: "ROTATE_0" # One of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"],
    #     label_model_version: "String",
    #     image_properties: {
    #       quality: {
    #         brightness: 1.0,
    #         sharpness: 1.0,
    #         contrast: 1.0
    #       },
    #       dominant_colors: [
    #         {
    #           red: 1,
    #           blue: 1,
    #           green: 1,
    #           hex_code: "String",
    #           css_color: "String",
    #           simplified_color: "String",
    #           pixel_percent: 1.0
    #         }
    #       ],
    #       foreground: {
    #         quality: {
    #           brightness: 1.0,
    #           sharpness: 1.0,
    #           contrast: 1.0
    #         },
    #         dominant_colors: [
    #           {
    #             red: 1,
    #             blue: 1,
    #             green: 1,
    #             hex_code: "String",
    #             css_color: "String",
    #             simplified_color: "String",
    #             pixel_percent: 1.0
    #           }
    #         ]
    #       },
    #       background: {
    #         quality: {
    #           brightness: 1.0,
    #           sharpness: 1.0,
    #           contrast: 1.0
    #         },
    #         dominant_colors: [
    #           {
    #             red: 1,
    #             blue: 1,
    #             green: 1,
    #             hex_code: "String",
    #             css_color: "String",
    #             simplified_color: "String",
    #             pixel_percent: 1.0
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DetectLabelsResponse]
    def detect_labels(params = {}, options = {})
      request = build_request(:detect_labels, params)
      request.send_request(options)
    end

    # <p>Detects unsafe content in a specified JPEG or PNG format image. Use
    #         <code>DetectModerationLabels</code> to moderate images depending on your requirements. For
    #       example, you might want to filter images that contain nudity, but not images containing
    #       suggestive content.</p>
    #          <p>To filter images, use the labels returned by <code>DetectModerationLabels</code> to
    #       determine which types of content are appropriate.</p>
    #          <p>For information about moderation labels, see Detecting Unsafe Content in the
    #       Amazon Rekognition Developer Guide.</p>
    #          <p>You pass the input image either as base64-encoded image bytes or as a reference to an
    #       image in an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <p>You can specify an adapter to use when retrieving label predictions by providing a
    #         <code>ProjectVersionArn</code> to the <code>ProjectVersion</code> argument.</p>
    # @param [Hash, Types::DetectModerationLabelsRequest] params
    # @option params [Types::Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence level for the labels to return. Amazon Rekognition doesn't
    #         return any labels with a confidence level lower than this specified value.</p>
    #            <p>If you don't specify <code>MinConfidence</code>, the operation returns labels with
    #         confidence values greater than or equal to 50 percent.</p>
    # @option params [Types::HumanLoopConfig] :human_loop_config
    #   <p>Sets up the configuration for human evaluation, including the FlowDefinition the image
    #         will be sent to.</p>
    # @option params [String] :project_version
    #   <p>Identifier for the custom adapter. Expects the ProjectVersionArn as a value. 
    #            Use the CreateProject or CreateProjectVersion APIs to create a custom adapter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     min_confidence: 1.0,
    #     human_loop_config: {
    #       human_loop_name: "HumanLoopName", # required
    #       flow_definition_arn: "FlowDefinitionArn", # required
    #       data_attributes: {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation" # One of: ["FreeOfPersonallyIdentifiableInformation", "FreeOfAdultContent"]]
    #       }
    #     },
    #     project_version: "ProjectVersionId"
    #   }
    #   options = {}
    #   response = client.detect_moderation_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     moderation_labels: [
    #       {
    #         confidence: 1.0,
    #         name: "String",
    #         parent_name: "String",
    #         taxonomy_level: 1
    #       }
    #     ],
    #     moderation_model_version: "String",
    #     human_loop_activation_output: {
    #       human_loop_arn: "HumanLoopArn",
    #       human_loop_activation_reasons: ["HumanLoopActivationReason"],
    #       human_loop_activation_conditions_evaluation_results: "SynthesizedJsonHumanLoopActivationConditionsEvaluationResults"
    #     },
    #     project_version: "ProjectVersionId",
    #     content_types: [
    #       {
    #         confidence: 1.0,
    #         name: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DetectModerationLabelsResponse]
    def detect_moderation_labels(params = {}, options = {})
      request = build_request(:detect_moderation_labels, params)
      request.send_request(options)
    end

    # <p>Detects Personal Protective Equipment (PPE) worn by people detected in an image. Amazon Rekognition can detect the 
    #          following types of PPE.</p>
    #          <ul>
    #             <li>
    #                <p>Face cover</p>
    #             </li>
    #             <li>
    #                <p>Hand cover</p>
    #             </li>
    #             <li>
    #                <p>Head cover</p>
    #             </li>
    #          </ul>
    #          <p>You pass the input image as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket.
    #          The image must be either a PNG or JPG formatted file. </p>
    #          <p>
    #             <code>DetectProtectiveEquipment</code> detects PPE worn by up to 15 persons detected in an image.</p>
    #          <p>For each person detected in the image the API returns an array of body parts (face, head, left-hand, right-hand).
    #          For each body part, an array of detected items of PPE is returned, including an indicator of whether or not the PPE
    #          covers the body part. The API returns the confidence it has in each detection
    #          (person, PPE, body part and body part coverage). It also returns a bounding box (<a>BoundingBox</a>) for each detected 
    #          person and each detected item of PPE. </p>
    #          <p>You can optionally request a summary of detected PPE items with the <code>SummarizationAttributes</code> input parameter.
    #          The summary provides the following information. </p>
    #          <ul>
    #             <li>
    #                <p>The persons detected as wearing all of the types of PPE that you specify.</p>
    #             </li>
    #             <li>
    #                <p>The persons detected as not wearing all of the types PPE that you specify.</p>
    #             </li>
    #             <li>
    #                <p>The persons detected where PPE adornment could not be determined. </p>
    #             </li>
    #          </ul>
    #          <p>This is a stateless API operation. That is, the operation does not persist any data.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DetectProtectiveEquipment</code> action. </p>
    # @param [Hash, Types::DetectProtectiveEquipmentRequest] params
    # @option params [Types::Image] :image
    #   <p>The image in which you want to detect PPE on detected persons. The image can be passed as image bytes or you can 
    #            reference an image stored in an Amazon S3 bucket. </p>
    # @option params [Types::ProtectiveEquipmentSummarizationAttributes] :summarization_attributes
    #   <p>An array of PPE types that you want to summarize.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     summarization_attributes: {
    #       min_confidence: 1.0, # required
    #       required_equipment_types: ["FACE_COVER" # One of: ["FACE_COVER", "HAND_COVER", "HEAD_COVER"]], # required
    #     }
    #   }
    #   options = {}
    #   response = client.detect_protective_equipment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protective_equipment_model_version: "String",
    #     persons: [
    #       {
    #         body_parts: [
    #           {
    #             name: "FACE" # One of: ["FACE", "HEAD", "LEFT_HAND", "RIGHT_HAND"],
    #             confidence: 1.0,
    #             equipment_detections: [
    #               {
    #                 bounding_box: {
    #                   width: 1.0,
    #                   height: 1.0,
    #                   left: 1.0,
    #                   top: 1.0
    #                 },
    #                 confidence: 1.0,
    #                 type: "FACE_COVER" # One of: ["FACE_COVER", "HAND_COVER", "HEAD_COVER"],
    #                 covers_body_part: {
    #                   confidence: 1.0,
    #                   value: false
    #                 }
    #               }
    #             ]
    #           }
    #         ],
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         confidence: 1.0,
    #         id: 1
    #       }
    #     ],
    #     summary: {
    #       persons_with_required_equipment: [1],
    #       persons_without_required_equipment: [1],
    #       persons_indeterminate: [1]
    #     }
    #   }
    # @return [Types::DetectProtectiveEquipmentResponse]
    def detect_protective_equipment(params = {}, options = {})
      request = build_request(:detect_protective_equipment, params)
      request.send_request(options)
    end

    # <p>Detects text in the input image and converts it into machine-readable text.</p>
    #          <p>Pass the input image as base64-encoded image bytes or as a reference to an image in an
    #       Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, you must pass it as a
    #       reference to an image in an Amazon S3 bucket. For the AWS CLI, passing image bytes is not
    #       supported. The image must be either a .png or .jpeg formatted file. </p>
    #          <p>The <code>DetectText</code> operation returns text in an array of <a>TextDetection</a> elements, <code>TextDetections</code>. Each
    #         <code>TextDetection</code> element provides information about a single word or line of text
    #       that was detected in the image. </p>
    #          <p>A word is one or more script characters that are not separated by spaces.
    #         <code>DetectText</code> can detect up to 100 words in an image.</p>
    #          <p>A line is a string of equally spaced words. A line isn't necessarily a complete
    #       sentence. For example, a driver's license number is detected as a line. A line ends when there
    #       is no aligned text after it. Also, a line ends when there is a large gap between words,
    #       relative to the length of the words. This means, depending on the gap between words, Amazon Rekognition
    #       may detect multiple lines in text aligned in the same direction. Periods don't represent the
    #       end of a line. If a sentence spans multiple lines, the <code>DetectText</code> operation
    #       returns multiple lines.</p>
    #          <p>To determine whether a <code>TextDetection</code> element is a line of text or a word,
    #       use the <code>TextDetection</code> object <code>Type</code> field. </p>
    #          <p>To be detected, text must be within +/- 90 degrees orientation of the horizontal
    #       axis.</p>
    #          <p>For more information, see Detecting text in the Amazon Rekognition Developer
    #       Guide.</p>
    # @param [Hash, Types::DetectTextRequest] params
    # @option params [Types::Image] :image
    #   <p>The input image as base64-encoded bytes or an Amazon S3 object. If you use the AWS
    #         CLI to call Amazon Rekognition operations, you can't pass image bytes. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @option params [Types::DetectTextFilters] :filters
    #   <p>Optional parameters that let you set the criteria that the text must meet to be included
    #         in your response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     filters: {
    #       word_filter: {
    #         min_confidence: 1.0,
    #         min_bounding_box_height: 1.0,
    #         min_bounding_box_width: 1.0
    #       },
    #       regions_of_interest: [
    #         {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.detect_text(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     text_detections: [
    #       {
    #         detected_text: "String",
    #         type: "LINE" # One of: ["LINE", "WORD"],
    #         id: 1,
    #         parent_id: 1,
    #         confidence: 1.0,
    #         geometry: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     text_model_version: "String"
    #   }
    # @return [Types::DetectTextResponse]
    def detect_text(params = {}, options = {})
      request = build_request(:detect_text, params)
      request.send_request(options)
    end

    # <p>Removes the association between a <code>Face</code> supplied in an array of
    #         <code>FaceIds</code> and the User. If the User is not present already, then a
    #         <code>ResourceNotFound</code> exception is thrown. If successful, an array of faces that are
    #       disassociated from the User is returned. If a given face is already disassociated from the
    #       given UserID, it will be ignored and not be returned in the response. If a given face is
    #       already associated with a different User or not found in the collection it will be returned as
    #       part of <code>UnsuccessfulDisassociations</code>. You can remove 1 - 100 face IDs from a user
    #       at one time.</p>
    # @param [Hash, Types::DisassociateFacesRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection containing the UserID.</p>
    # @option params [String] :user_id
    #   <p>ID for the existing UserID.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the request to <code>DisassociateFaces</code>. If you
    #         use the same token with multiple <code>DisassociateFaces</code> requests, the same response is
    #         returned. Use ClientRequestToken to prevent the same request from being processed more than
    #         once.</p>
    # @option params [Array<String>] :face_ids
    #   <p>An array of face IDs to disassociate from the UserID. </p>
    # @example DisassociateFaces
    #   # Removes the association between a Face supplied in an array of FaceIds and the User.
    #   params = {
    #     collection_id: "MyCollection",
    #     user_id: "DemoUser",
    #     face_ids: [
    #       "f5817d37-94f6-4335-bfee-6cf79a3d806e",
    #       "c92265d4-5f9c-43af-a58e-12be0ce02bc3"
    #     ],
    #     client_request_token: "550e8400-e29b-41d4-a716-446655440003"
    #   }
    #   options = {}
    #   response = client.disassociate_faces(params, options)
    #   response.to_h #=>
    #   {
    #     user_status: UPDATING,
    #     disassociated_faces: [
    #       {
    #         face_id: "c92265d4-5f9c-43af-a58e-12be0ce02bc3"
    #       }
    #     ],
    #     unsuccessful_face_disassociations: [
    #       {
    #         reasons: [
    #           ASSOCIATED_TO_A_DIFFERENT_USER
    #         ],
    #         face_id: "f5817d37-94f6-4335-bfee-6cf79a3d806e",
    #         user_id: "demoUser1"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     user_id: "UserId", # required
    #     client_request_token: "ClientRequestToken",
    #     face_ids: ["FaceId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_faces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disassociated_faces: [
    #       {
    #         face_id: "FaceId"
    #       }
    #     ],
    #     unsuccessful_face_disassociations: [
    #       {
    #         face_id: "FaceId",
    #         user_id: "UserId",
    #         reasons: ["FACE_NOT_FOUND" # One of: ["FACE_NOT_FOUND", "ASSOCIATED_TO_A_DIFFERENT_USER"]]
    #       }
    #     ],
    #     user_status: "ACTIVE" # One of: ["ACTIVE", "UPDATING", "CREATING", "CREATED"]
    #   }
    # @return [Types::DisassociateFacesResponse]
    def disassociate_faces(params = {}, options = {})
      request = build_request(:disassociate_faces, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Distributes the entries (images) in a training dataset across the training dataset and the test dataset for a project.
    #          <code>DistributeDatasetEntries</code> moves 20% of the training dataset images to the test dataset.
    #          An entry is a JSON Line that describes an image.
    #       </p>
    #          <p>You supply the Amazon Resource Names (ARN) of a project's training dataset and test dataset. 
    #          The training dataset must contain the images that you want to split. The test dataset 
    #       must be empty. The datasets must belong to the same project. To create training and test datasets for a project, call <a>CreateDataset</a>.</p>
    #          <p>Distributing a dataset takes a while to complete. To check the status call <code>DescribeDataset</code>. The operation
    #          is complete when the <code>Status</code> field for the training dataset and the test dataset is <code>UPDATE_COMPLETE</code>. 
    #          If the dataset split fails, the value of <code>Status</code> is <code>UPDATE_FAILED</code>.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:DistributeDatasetEntries</code> action.</p>
    # @param [Hash, Types::DistributeDatasetEntriesRequest] params
    # @option params [Array<Types::DistributeDataset>] :datasets
    #   <p>The ARNS for the training dataset and test dataset that you want to use. The datasets must belong to
    #            the same project. The test dataset must be empty.
    #            </p>
    # @example To distribute an Amazon Rekognition Custom Labels dataset
    #   # Distributes an Amazon Rekognition Custom Labels training dataset to a test dataset.
    #   params = {
    #     datasets: [
    #       {
    #         arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-proj-2/dataset/train/1690564858106"
    #       },
    #       {
    #         arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-proj-2/dataset/test/1690564858106"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.distribute_dataset_entries(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     datasets: [ # required
    #       {
    #         arn: "DatasetArn", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.distribute_dataset_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DistributeDatasetEntriesResponse]
    def distribute_dataset_entries(params = {}, options = {})
      request = build_request(:distribute_dataset_entries, params)
      request.send_request(options)
    end

    # <p>Gets the name and additional information about a celebrity based on their Amazon Rekognition ID.
    #       The additional information is returned as an array of URLs. If there is no additional
    #       information about the celebrity, this list is empty.</p>
    #          <p>For more information, see Getting information about a celebrity in the
    #       Amazon Rekognition Developer Guide.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:GetCelebrityInfo</code> action. </p>
    # @param [Hash, Types::GetCelebrityInfoRequest] params
    # @option params [String] :id
    #   <p>The ID for the celebrity. You get the celebrity ID from a call to the <a>RecognizeCelebrities</a> operation, which recognizes celebrities in an image.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RekognitionUniqueId", # required
    #   }
    #   options = {}
    #   response = client.get_celebrity_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     urls: ["Url"],
    #     name: "String",
    #     known_gender: {
    #       type: "Male" # One of: ["Male", "Female", "Nonbinary", "Unlisted"]
    #     }
    #   }
    # @return [Types::GetCelebrityInfoResponse]
    def get_celebrity_info(params = {}, options = {})
      request = build_request(:get_celebrity_info, params)
      request.send_request(options)
    end

    # <p>Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by
    #      <a>StartCelebrityRecognition</a>.</p>
    #          <p>Celebrity recognition in a video is an asynchronous operation. Analysis is started by a
    #       call to <a>StartCelebrityRecognition</a> which returns a job identifier
    #         (<code>JobId</code>). </p>
    #          <p>When the celebrity recognition operation finishes, Amazon Rekognition Video publishes a completion
    #       status to the Amazon Simple Notification Service topic registered in the initial call to
    #         <code>StartCelebrityRecognition</code>. To get the results of the celebrity recognition
    #       analysis, first check that the status value published to the Amazon SNS topic is
    #         <code>SUCCEEDED</code>. If so, call <code>GetCelebrityDetection</code> and pass the job
    #       identifier (<code>JobId</code>) from the initial call to <code>StartCelebrityDetection</code>. </p>
    #          <p>For more information, see Working With Stored Videos in the Amazon Rekognition Developer Guide.</p>
    #          <p>
    #             <code>GetCelebrityRecognition</code> returns detected celebrities and the time(s) they
    #       are detected in an array (<code>Celebrities</code>) of <a>CelebrityRecognition</a>
    #        objects. Each <code>CelebrityRecognition</code>
    #       contains information about the celebrity in a <a>CelebrityDetail</a> object and the
    #       time, <code>Timestamp</code>, the celebrity was detected.  This <a>CelebrityDetail</a> object stores information about the detected celebrity's face
    #       attributes, a face bounding box, known gender, the celebrity's name, and a confidence
    #       estimate.</p>
    #          <note>
    #             <p>
    #                <code>GetCelebrityRecognition</code> only returns the default facial
    #         attributes (<code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>,
    #           <code>Pose</code>, and <code>Quality</code>). The <code>BoundingBox</code> field only
    #         applies to the detected face instance. The other facial attributes listed in the
    #           <code>Face</code> object of the following response syntax are not returned. For more
    #         information, see FaceDetail in the Amazon Rekognition Developer Guide. </p>
    #          </note>
    #          <p>By default, the <code>Celebrities</code> array is sorted by time (milliseconds from the start of the video).
    #       You can also sort the array by celebrity by specifying the value <code>ID</code> in the <code>SortBy</code> input parameter.</p>
    #          <p>The <code>CelebrityDetail</code> object includes the celebrity identifer and additional information urls. If you don't store
    #       the additional information urls, you can get them later by calling <a>GetCelebrityInfo</a> with the celebrity identifer.</p>
    #          <p>No information is returned for faces not recognized as celebrities.</p>
    #          <p>Use MaxResults parameter to limit the number of labels returned. If there are more results than
    #       specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a
    #       pagination token for getting the next set of results. To get the next page of results, call <code>GetCelebrityDetection</code>
    #       and populate the <code>NextToken</code> request parameter with the token
    #       value returned from the previous call to <code>GetCelebrityRecognition</code>.</p>
    # @param [Hash, Types::GetCelebrityRecognitionRequest] params
    # @option params [String] :job_id
    #   <p>Job identifier for the required celebrity recognition analysis. You can get the job identifer from
    #         a call to <code>StartCelebrityRecognition</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more recognized celebrities to retrieve), Amazon Rekognition Video returns a pagination
    #         token in the response. You can use this pagination token to retrieve the next set of celebrities. </p>
    # @option params [String] :sort_by
    #   <p>Sort to use for celebrities returned in <code>Celebrities</code> field. Specify <code>ID</code> to sort by the celebrity identifier,
    #           specify <code>TIMESTAMP</code> to sort by the time the celebrity was recognized.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "ID" # One of: ["ID", "TIMESTAMP"]
    #   }
    #   options = {}
    #   response = client.get_celebrity_recognition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     status_message: "StatusMessage",
    #     video_metadata: {
    #       codec: "String",
    #       duration_millis: 1,
    #       format: "String",
    #       frame_rate: 1.0,
    #       frame_height: 1,
    #       frame_width: 1,
    #       color_range: "FULL" # One of: ["FULL", "LIMITED"]
    #     },
    #     next_token: "PaginationToken",
    #     celebrities: [
    #       {
    #         timestamp: 1,
    #         celebrity: {
    #           urls: ["Url"],
    #           name: "String",
    #           id: "RekognitionUniqueId",
    #           confidence: 1.0,
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           face: {
    #             bounding_box: {
    #               width: 1.0,
    #               height: 1.0,
    #               left: 1.0,
    #               top: 1.0
    #             },
    #             age_range: {
    #               low: 1,
    #               high: 1
    #             },
    #             smile: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eyeglasses: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             sunglasses: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             gender: {
    #               value: "Male" # One of: ["Male", "Female"],
    #               confidence: 1.0
    #             },
    #             beard: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             mustache: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eyes_open: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             mouth_open: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             emotions: [
    #               {
    #                 type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #                 confidence: 1.0
    #               }
    #             ],
    #             landmarks: [
    #               {
    #                 type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #                 x: 1.0,
    #                 y: 1.0
    #               }
    #             ],
    #             pose: {
    #               roll: 1.0,
    #               yaw: 1.0,
    #               pitch: 1.0
    #             },
    #             quality: {
    #               brightness: 1.0,
    #               sharpness: 1.0
    #             },
    #             confidence: 1.0,
    #             face_occluded: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eye_direction: {
    #               yaw: 1.0,
    #               pitch: 1.0,
    #               confidence: 1.0
    #             }
    #           },
    #           known_gender: {
    #             type: "Male" # One of: ["Male", "Female", "Nonbinary", "Unlisted"]
    #           }
    #         }
    #       }
    #     ],
    #     job_id: "JobId",
    #     video: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     job_tag: "JobTag"
    #   }
    # @return [Types::GetCelebrityRecognitionResponse]
    def get_celebrity_recognition(params = {}, options = {})
      request = build_request(:get_celebrity_recognition, params)
      request.send_request(options)
    end

    # <p>Gets the inappropriate, unwanted, or offensive content analysis results for a Amazon Rekognition Video analysis started by
    #        <a>StartContentModeration</a>. For a list of moderation labels in Amazon Rekognition, see
    #        <a href="https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api">Using the image and video moderation APIs</a>.</p>
    #          <p>Amazon Rekognition Video inappropriate or offensive content detection in a stored video is an asynchronous operation. You start analysis by calling
    #        <a>StartContentModeration</a> which returns a job identifier (<code>JobId</code>).
    #        When analysis finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service
    #        topic registered in the initial call to <code>StartContentModeration</code>.
    #        To get the results of the content analysis, first check that the status value published to the Amazon SNS
    #        topic is <code>SUCCEEDED</code>. If so, call  <code>GetContentModeration</code> and pass the job identifier
    #        (<code>JobId</code>) from the initial call to <code>StartContentModeration</code>. </p>
    #          <p>For more information, see Working with Stored Videos in the
    #      Amazon Rekognition Devlopers Guide.</p>
    #          <p>
    #             <code>GetContentModeration</code> returns detected inappropriate, unwanted, or offensive content moderation labels,
    #       and the time they are detected, in an array, <code>ModerationLabels</code>, of
    #       <a>ContentModerationDetection</a> objects.
    #      </p>
    #          <p>By default, the moderated labels are returned sorted by time, in milliseconds from the start of the
    #        video. You can also sort them by moderated label by specifying <code>NAME</code> for the <code>SortBy</code>
    #        input parameter. </p>
    #          <p>Since video analysis can return a large number of results, use the <code>MaxResults</code> parameter to limit
    #       the number of labels returned in a single call to <code>GetContentModeration</code>. If there are more results than
    #        specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a
    #        pagination token for getting the next set of results. To get the next page of results, call <code>GetContentModeration</code>
    #        and populate the <code>NextToken</code> request parameter with the value of <code>NextToken</code>
    #        returned from the previous call to <code>GetContentModeration</code>.</p>
    #          <p>For more information, see moderating content in the Amazon Rekognition Developer Guide.</p>
    # @param [Hash, Types::GetContentModerationRequest] params
    # @option params [String] :job_id
    #   <p>The identifier for the inappropriate, unwanted, or offensive content moderation job. Use <code>JobId</code> to identify the job in
    #          a subsequent call to <code>GetContentModeration</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
    #       If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #       The default value is 1000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Rekognition
    #           returns a pagination token in the response. You can use this pagination token
    #           to retrieve the next set of content moderation labels.</p>
    # @option params [String] :sort_by
    #   <p>Sort to use for elements in the <code>ModerationLabelDetections</code> array.
    #          Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.
    #          Use <code>NAME</code> to alphabetically group elements for a label together.
    #          Within each label group, the array element are sorted by detection confidence.
    #          The default sort is by <code>TIMESTAMP</code>.</p>
    # @option params [String] :aggregate_by
    #   <p>Defines how to aggregate results of the StartContentModeration request. Default
    #         aggregation option is TIMESTAMPS. SEGMENTS mode aggregates moderation labels over time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "NAME" # One of: ["NAME", "TIMESTAMP"],
    #     aggregate_by: "TIMESTAMPS" # One of: ["TIMESTAMPS", "SEGMENTS"]
    #   }
    #   options = {}
    #   response = client.get_content_moderation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     status_message: "StatusMessage",
    #     video_metadata: {
    #       codec: "String",
    #       duration_millis: 1,
    #       format: "String",
    #       frame_rate: 1.0,
    #       frame_height: 1,
    #       frame_width: 1,
    #       color_range: "FULL" # One of: ["FULL", "LIMITED"]
    #     },
    #     moderation_labels: [
    #       {
    #         timestamp: 1,
    #         moderation_label: {
    #           confidence: 1.0,
    #           name: "String",
    #           parent_name: "String",
    #           taxonomy_level: 1
    #         },
    #         start_timestamp_millis: 1,
    #         end_timestamp_millis: 1,
    #         duration_millis: 1,
    #         content_types: [
    #           {
    #             confidence: 1.0,
    #             name: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     moderation_model_version: "String",
    #     job_id: "JobId",
    #     video: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     job_tag: "JobTag",
    #     get_request_metadata: {
    #       sort_by: "NAME" # One of: ["NAME", "TIMESTAMP"],
    #       aggregate_by: "TIMESTAMPS" # One of: ["TIMESTAMPS", "SEGMENTS"]
    #     }
    #   }
    # @return [Types::GetContentModerationResponse]
    def get_content_moderation(params = {}, options = {})
      request = build_request(:get_content_moderation, params)
      request.send_request(options)
    end

    # <p>Gets face detection results for a Amazon Rekognition Video analysis started by <a>StartFaceDetection</a>.</p>
    #          <p>Face detection with Amazon Rekognition Video is an asynchronous operation. You start face detection by calling <a>StartFaceDetection</a>
    #      which returns a job identifier (<code>JobId</code>). When the face detection operation finishes, Amazon Rekognition Video publishes a completion status to
    #      the Amazon Simple Notification Service topic registered in the initial call to <code>StartFaceDetection</code>. To get the results
    #      of the face detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
    #      If so, call  <a>GetFaceDetection</a> and pass the job identifier
    #      (<code>JobId</code>) from the initial call to <code>StartFaceDetection</code>.</p>
    #          <p>
    #             <code>GetFaceDetection</code> returns an array of detected faces (<code>Faces</code>) sorted by the time the faces were detected. </p>
    #          <p>Use MaxResults parameter to limit the number of labels returned. If there are more results than
    #    specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set
    #    of results. To get the next page of results, call <code>GetFaceDetection</code> and populate the <code>NextToken</code> request parameter with the token
    #     value returned from the previous call to <code>GetFaceDetection</code>.</p>
    #          <p>Note that for the <code>GetFaceDetection</code> operation, the returned values for
    #         <code>FaceOccluded</code> and <code>EyeDirection</code> will always be "null".</p>
    # @param [Hash, Types::GetFaceDetectionRequest] params
    # @option params [String] :job_id
    #   <p>Unique identifier for the face detection job. The <code>JobId</code> is returned from <code>StartFaceDetection</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
    #          If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #          The default value is 1000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination
    #          token in the response. You can use this pagination token to retrieve the next set of faces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_face_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     status_message: "StatusMessage",
    #     video_metadata: {
    #       codec: "String",
    #       duration_millis: 1,
    #       format: "String",
    #       frame_rate: 1.0,
    #       frame_height: 1,
    #       frame_width: 1,
    #       color_range: "FULL" # One of: ["FULL", "LIMITED"]
    #     },
    #     next_token: "PaginationToken",
    #     faces: [
    #       {
    #         timestamp: 1,
    #         face: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           age_range: {
    #             low: 1,
    #             high: 1
    #           },
    #           smile: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eyeglasses: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           sunglasses: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           gender: {
    #             value: "Male" # One of: ["Male", "Female"],
    #             confidence: 1.0
    #           },
    #           beard: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           mustache: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eyes_open: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           mouth_open: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           emotions: [
    #             {
    #               type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #               confidence: 1.0
    #             }
    #           ],
    #           landmarks: [
    #             {
    #               type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           pose: {
    #             roll: 1.0,
    #             yaw: 1.0,
    #             pitch: 1.0
    #           },
    #           quality: {
    #             brightness: 1.0,
    #             sharpness: 1.0
    #           },
    #           confidence: 1.0,
    #           face_occluded: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eye_direction: {
    #             yaw: 1.0,
    #             pitch: 1.0,
    #             confidence: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     job_id: "JobId",
    #     video: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     job_tag: "JobTag"
    #   }
    # @return [Types::GetFaceDetectionResponse]
    def get_face_detection(params = {}, options = {})
      request = build_request(:get_face_detection, params)
      request.send_request(options)
    end

    # <p>Retrieves the results of a specific Face Liveness session. It requires the
    #         <code>sessionId</code> as input, which was created using
    #         <code>CreateFaceLivenessSession</code>. Returns the corresponding Face Liveness confidence
    #       score, a reference image that includes a face bounding box, and audit images that also contain
    #       face bounding boxes. The Face Liveness confidence score ranges from 0 to 100. </p>
    #          <p>The number of audit images returned by <code>GetFaceLivenessSessionResults</code> is
    #       defined by the <code>AuditImagesLimit</code> paramater when calling
    #         <code>CreateFaceLivenessSession</code>. Reference images are always returned when
    #       possible.</p>
    # @param [Hash, Types::GetFaceLivenessSessionResultsRequest] params
    # @option params [String] :session_id
    #   <p>A unique 128-bit UUID. This is used to uniquely identify the session and also acts as an
    #         idempotency token for all operations associated with the session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "LivenessSessionId", # required
    #   }
    #   options = {}
    #   response = client.get_face_liveness_session_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "LivenessSessionId", # required
    #     status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "EXPIRED"], # required
    #     confidence: 1.0,
    #     reference_image: {
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       },
    #       bounding_box: {
    #         width: 1.0,
    #         height: 1.0,
    #         left: 1.0,
    #         top: 1.0
    #       }
    #     },
    #     audit_images: [
    #       {
    #         bytes: "data",
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion"
    #         },
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         }
    #       }
    #     ],
    #     challenge: {
    #       type: "FaceMovementAndLightChallenge" # One of: ["FaceMovementAndLightChallenge", "FaceMovementChallenge"], # required
    #       version: "Version", # required
    #     }
    #   }
    # @return [Types::GetFaceLivenessSessionResultsResponse]
    def get_face_liveness_session_results(params = {}, options = {})
      request = build_request(:get_face_liveness_session_results, params)
      request.send_request(options)
    end

    # <p>Gets the face search results for Amazon Rekognition Video face search started by
    #       <a>StartFaceSearch</a>. The search returns faces in a collection that match the faces
    #     of persons detected in a video. It also includes the time(s) that faces are matched in the video.</p>
    #          <p>Face search in a video is an asynchronous operation. You start face search by calling
    #       to <a>StartFaceSearch</a> which returns a job identifier (<code>JobId</code>).
    #       When the search operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service
    #       topic registered in the initial call to <code>StartFaceSearch</code>.
    #       To get the search results, first check that the status value published to the Amazon SNS
    #       topic is <code>SUCCEEDED</code>. If so, call  <code>GetFaceSearch</code> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartFaceSearch</code>.</p>
    #          <p>For more information, see Searching Faces in a Collection in the
    #       Amazon Rekognition Developer Guide.</p>
    #          <p>The search results are retured in an array, <code>Persons</code>, of
    #     <a>PersonMatch</a> objects. Each<code>PersonMatch</code> element contains
    #     details about the matching faces in the input collection, person information (facial attributes,
    #     bounding boxes, and person identifer)
    #     for the matched person, and the time the person was matched in the video.</p>
    #          <note>
    #             <p>
    #                <code>GetFaceSearch</code> only returns the default  
    #         facial attributes (<code>BoundingBox</code>, <code>Confidence</code>, 
    #         <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The other facial attributes listed
    #         in the <code>Face</code> object of the following response syntax are not returned. For more information,
    #         see FaceDetail in the Amazon Rekognition Developer Guide. </p>
    #          </note>
    #          <p>By default, the <code>Persons</code> array is sorted by the time, in milliseconds from the
    #     start of the video, persons are matched.
    #     You can also sort by persons by specifying <code>INDEX</code> for the <code>SORTBY</code> input
    #     parameter.</p>
    # @param [Hash, Types::GetFaceSearchRequest] params
    # @option params [String] :job_id
    #   <p>The job identifer for the search request. You get the job identifier from an initial call to <code>StartFaceSearch</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more search results to retrieve), Amazon Rekognition Video returns a pagination
    #         token in the response. You can use this pagination token to retrieve the next set of search results. </p>
    # @option params [String] :sort_by
    #   <p>Sort to use for grouping faces in the response. Use <code>TIMESTAMP</code> to group faces by the time
    #         that they are recognized. Use <code>INDEX</code> to sort by recognized faces. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "INDEX" # One of: ["INDEX", "TIMESTAMP"]
    #   }
    #   options = {}
    #   response = client.get_face_search(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     status_message: "StatusMessage",
    #     next_token: "PaginationToken",
    #     video_metadata: {
    #       codec: "String",
    #       duration_millis: 1,
    #       format: "String",
    #       frame_rate: 1.0,
    #       frame_height: 1,
    #       frame_width: 1,
    #       color_range: "FULL" # One of: ["FULL", "LIMITED"]
    #     },
    #     persons: [
    #       {
    #         timestamp: 1,
    #         person: {
    #           index: 1,
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           face: {
    #             bounding_box: {
    #               width: 1.0,
    #               height: 1.0,
    #               left: 1.0,
    #               top: 1.0
    #             },
    #             age_range: {
    #               low: 1,
    #               high: 1
    #             },
    #             smile: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eyeglasses: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             sunglasses: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             gender: {
    #               value: "Male" # One of: ["Male", "Female"],
    #               confidence: 1.0
    #             },
    #             beard: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             mustache: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eyes_open: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             mouth_open: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             emotions: [
    #               {
    #                 type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #                 confidence: 1.0
    #               }
    #             ],
    #             landmarks: [
    #               {
    #                 type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #                 x: 1.0,
    #                 y: 1.0
    #               }
    #             ],
    #             pose: {
    #               roll: 1.0,
    #               yaw: 1.0,
    #               pitch: 1.0
    #             },
    #             quality: {
    #               brightness: 1.0,
    #               sharpness: 1.0
    #             },
    #             confidence: 1.0,
    #             face_occluded: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eye_direction: {
    #               yaw: 1.0,
    #               pitch: 1.0,
    #               confidence: 1.0
    #             }
    #           }
    #         },
    #         face_matches: [
    #           {
    #             similarity: 1.0,
    #             face: {
    #               face_id: "FaceId",
    #               bounding_box: {
    #                 width: 1.0,
    #                 height: 1.0,
    #                 left: 1.0,
    #                 top: 1.0
    #               },
    #               image_id: "ImageId",
    #               external_image_id: "ExternalImageId",
    #               confidence: 1.0,
    #               index_faces_model_version: "IndexFacesModelVersion",
    #               user_id: "UserId"
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     job_id: "JobId",
    #     video: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     job_tag: "JobTag"
    #   }
    # @return [Types::GetFaceSearchResponse]
    def get_face_search(params = {}, options = {})
      request = build_request(:get_face_search, params)
      request.send_request(options)
    end

    # <p>Gets the label detection results of a Amazon Rekognition Video analysis started by <a>StartLabelDetection</a>.  </p>
    #          <p>The label detection operation is started by a call to <a>StartLabelDetection</a> which returns a job identifier (<code>JobId</code>). When
    #       the label detection operation finishes, Amazon Rekognition publishes a completion status to the
    #       Amazon Simple Notification Service topic registered in the initial call to <code>StartlabelDetection</code>. </p>
    #          <p>To get the results of the label detection operation, first check that the status value
    #       published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetLabelDetection</a> and pass the job identifier (<code>JobId</code>) from the
    #       initial call to <code>StartLabelDetection</code>.</p>
    #          <p>
    #             <code>GetLabelDetection</code> returns an array of detected labels
    #         (<code>Labels</code>) sorted by the time the labels were detected. You can also sort by the
    #       label name by specifying <code>NAME</code> for the <code>SortBy</code> input parameter.  If
    #       there is no <code>NAME</code> specified, the default sort is by
    #       timestamp.</p>
    #          <p>You can select how results are aggregated by using the <code>AggregateBy</code> input
    #       parameter. The default aggregation method is <code>TIMESTAMPS</code>. You can also aggregate
    #       by <code>SEGMENTS</code>, which aggregates all instances of labels detected in a given
    #       segment. </p>
    #          <p>The returned Labels array may include the following attributes:</p>
    #          <ul>
    #             <li>
    #                <p>Name - The name of the detected label.</p>
    #             </li>
    #             <li>
    #                <p>Confidence - The level of confidence in the label assigned to a detected object. </p>
    #             </li>
    #             <li>
    #                <p>Parents - The ancestor labels for a detected label. GetLabelDetection returns a hierarchical
    #           taxonomy of detected labels. For example, a detected car might be assigned the label car.
    #           The label car has two parent labels: Vehicle (its parent) and Transportation (its
    #           grandparent). The response includes the all ancestors for a label, where every ancestor is
    #           a unique label. In the previous example, Car, Vehicle, and Transportation are returned as
    #           unique labels in the response. </p>
    #             </li>
    #             <li>
    #                <p> Aliases - Possible Aliases for the label. </p>
    #             </li>
    #             <li>
    #                <p>Categories - The label categories that the detected label belongs to.</p>
    #             </li>
    #             <li>
    #                <p>BoundingBox — Bounding boxes are described for all instances of detected common object labels, 
    #         returned in an array of Instance objects. An Instance object contains a BoundingBox object, describing 
    #         the location of the label on the input image. It also includes the confidence for the accuracy of the detected bounding box.</p>
    #             </li>
    #             <li>
    #                <p>Timestamp - Time, in milliseconds from the start of the video, that the label was detected.
    #           For aggregation by <code>SEGMENTS</code>,  the <code>StartTimestampMillis</code>,
    #             <code>EndTimestampMillis</code>, and <code>DurationMillis</code> structures are what
    #           define a segment. Although the “Timestamp” structure is still returned with each label,
    #           its value is set to be the same as <code>StartTimestampMillis</code>.</p>
    #             </li>
    #          </ul>
    #          <p>Timestamp and Bounding box information are returned for detected Instances, only if
    #       aggregation is done by <code>TIMESTAMPS</code>. If aggregating by <code>SEGMENTS</code>,
    #       information about detected instances isn’t returned. </p>
    #          <p>The version of the label model used for the detection is also returned.</p>
    #          <p>
    #             <b>Note <code>DominantColors</code> isn't returned for <code>Instances</code>,
    #         although it is shown as part of the response in the sample seen below.</b>
    #          </p>
    #          <p>Use <code>MaxResults</code> parameter to limit the number of labels returned. If
    #       there are more results than specified in <code>MaxResults</code>, the value of
    #         <code>NextToken</code> in the operation response contains a pagination token for getting the
    #       next set of results. To get the next page of results, call <code>GetlabelDetection</code> and
    #       populate the <code>NextToken</code> request parameter with the token value returned from the
    #       previous call to <code>GetLabelDetection</code>.</p>
    #          <p>If you are retrieving results while using the Amazon Simple Notification Service, note that you will receive an
    #       "ERROR" notification if the job encounters an issue.</p>
    # @param [Hash, Types::GetLabelDetectionRequest] params
    # @option params [String] :job_id
    #   <p>Job identifier for the label detection operation for which you want results returned. You get the job identifer from
    #         an initial call to <code>StartlabelDetection</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
    #          If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #          The default value is 1000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of labels. </p>
    # @option params [String] :sort_by
    #   <p>Sort to use for elements in the <code>Labels</code> array.
    #         Use <code>TIMESTAMP</code> to sort array elements by the time labels are detected.
    #         Use <code>NAME</code> to alphabetically group elements for a label together.
    #         Within each label group, the array element are sorted by detection confidence.
    #         The default sort is by <code>TIMESTAMP</code>.</p>
    # @option params [String] :aggregate_by
    #   <p>Defines how to aggregate the returned results. Results can be aggregated by timestamps or segments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "NAME" # One of: ["NAME", "TIMESTAMP"],
    #     aggregate_by: "TIMESTAMPS" # One of: ["TIMESTAMPS", "SEGMENTS"]
    #   }
    #   options = {}
    #   response = client.get_label_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     status_message: "StatusMessage",
    #     video_metadata: {
    #       codec: "String",
    #       duration_millis: 1,
    #       format: "String",
    #       frame_rate: 1.0,
    #       frame_height: 1,
    #       frame_width: 1,
    #       color_range: "FULL" # One of: ["FULL", "LIMITED"]
    #     },
    #     next_token: "PaginationToken",
    #     labels: [
    #       {
    #         timestamp: 1,
    #         label: {
    #           name: "String",
    #           confidence: 1.0,
    #           instances: [
    #             {
    #               bounding_box: {
    #                 width: 1.0,
    #                 height: 1.0,
    #                 left: 1.0,
    #                 top: 1.0
    #               },
    #               confidence: 1.0,
    #               dominant_colors: [
    #                 {
    #                   red: 1,
    #                   blue: 1,
    #                   green: 1,
    #                   hex_code: "String",
    #                   css_color: "String",
    #                   simplified_color: "String",
    #                   pixel_percent: 1.0
    #                 }
    #               ]
    #             }
    #           ],
    #           parents: [
    #             {
    #               name: "String"
    #             }
    #           ],
    #           aliases: [
    #             {
    #               name: "String"
    #             }
    #           ],
    #           categories: [
    #             {
    #               name: "String"
    #             }
    #           ]
    #         },
    #         start_timestamp_millis: 1,
    #         end_timestamp_millis: 1,
    #         duration_millis: 1
    #       }
    #     ],
    #     label_model_version: "String",
    #     job_id: "JobId",
    #     video: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     job_tag: "JobTag",
    #     get_request_metadata: {
    #       sort_by: "NAME" # One of: ["NAME", "TIMESTAMP"],
    #       aggregate_by: "TIMESTAMPS" # One of: ["TIMESTAMPS", "SEGMENTS"]
    #     }
    #   }
    # @return [Types::GetLabelDetectionResponse]
    def get_label_detection(params = {}, options = {})
      request = build_request(:get_label_detection, params)
      request.send_request(options)
    end

    # <p>Retrieves the results for a given media analysis job. 
    #         Takes a <code>JobId</code> returned by StartMediaAnalysisJob.</p>
    # @param [Hash, Types::GetMediaAnalysisJobRequest] params
    # @option params [String] :job_id
    #   <p>Unique identifier for the media analysis job for which you want to retrieve results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "MediaAnalysisJobId", # required
    #   }
    #   options = {}
    #   response = client.get_media_analysis_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "MediaAnalysisJobId", # required
    #     job_name: "MediaAnalysisJobName",
    #     operations_config: { # required
    #       detect_moderation_labels: {
    #         min_confidence: 1.0,
    #         project_version: "ProjectVersionId"
    #       }
    #     },
    #     status: "CREATED" # One of: ["CREATED", "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED"], # required
    #     failure_details: {
    #       code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "INVALID_S3_OBJECT", "INVALID_MANIFEST", "INVALID_OUTPUT_CONFIG", "INVALID_KMS_KEY", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "RESOURCE_NOT_READY", "THROTTLED"],
    #       message: "String"
    #     },
    #     creation_timestamp: Time.now, # required
    #     completion_timestamp: Time.now,
    #     input: { # required
    #       s3_object: { # required
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     output_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key_prefix: "MediaAnalysisS3KeyPrefix"
    #     },
    #     kms_key_id: "KmsKeyId",
    #     results: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       },
    #       model_versions: {
    #         moderation: "String"
    #       }
    #     },
    #     manifest_summary: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     }
    #   }
    # @return [Types::GetMediaAnalysisJobResponse]
    def get_media_analysis_job(params = {}, options = {})
      request = build_request(:get_media_analysis_job, params)
      request.send_request(options)
    end

    # <note>
    #             <p>
    #                <i>End of support notice:</i> On October 31, 2025, AWS will discontinue
    #          support for Amazon Rekognition People Pathing. After October 31, 2025, you will no
    #          longer be able to use the Rekognition People Pathing capability. For more information,
    #          visit this <a href="https://aws.amazon.com/blogs/machine-learning/transitioning-from-amazon-rekognition-people-pathing-exploring-other-alternatives/">blog post</a>.</p>
    #          </note>
    #          <p>Gets the path tracking results of a Amazon Rekognition Video analysis started by <a>StartPersonTracking</a>.</p>
    #          <p>The person path tracking operation is started by a call to <code>StartPersonTracking</code>
    #      which returns a job identifier (<code>JobId</code>). When the operation finishes, Amazon Rekognition Video publishes a completion status to
    #      the Amazon Simple Notification Service topic registered in the initial call to <code>StartPersonTracking</code>.</p>
    #          <p>To get the results of the person path tracking operation, first check 
    #        that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
    #      If so, call  <a>GetPersonTracking</a> and pass the job identifier
    #      (<code>JobId</code>) from the initial call to <code>StartPersonTracking</code>.</p>
    #          <p>
    #             <code>GetPersonTracking</code> returns an array, <code>Persons</code>, of tracked persons and the time(s) their 
    #        paths were tracked in the video. </p>
    #          <note>
    #             <p>
    #                <code>GetPersonTracking</code> only returns the default  
    #        facial attributes (<code>BoundingBox</code>, <code>Confidence</code>, 
    #        <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The other facial attributes listed
    #        in the <code>Face</code> object of the following response syntax are not returned. </p>
    #             <p>For more information, see FaceDetail in the Amazon Rekognition Developer Guide.</p>
    #          </note>
    #          <p>By default, the array is sorted by the time(s) a person's path is tracked in the video.
    #       You can sort by tracked persons by specifying <code>INDEX</code> for the <code>SortBy</code> input parameter.</p>
    #          <p>Use the <code>MaxResults</code> parameter to limit the number of items returned. If there are more results than
    #    specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set
    #    of results. To get the next page of results, call <code>GetPersonTracking</code> and populate the <code>NextToken</code> request parameter with the token
    #     value returned from the previous call to <code>GetPersonTracking</code>.</p>
    # @param [Hash, Types::GetPersonTrackingRequest] params
    # @option params [String] :job_id
    #   <p>The identifier for a job that tracks persons in a video. You get the <code>JobId</code> from a call to <code>StartPersonTracking</code>.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000. 
    #         If you specify a value greater than 1000, a maximum of 1000 results is returned.
    #         The default value is 1000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more persons to retrieve), Amazon Rekognition Video returns a pagination
    #          token in the response. You can use this pagination token to retrieve the next set of persons. </p>
    # @option params [String] :sort_by
    #   <p>Sort to use for elements in the <code>Persons</code> array. Use <code>TIMESTAMP</code> to sort array elements
    #          by the time persons are detected. Use <code>INDEX</code> to sort by the tracked persons.
    #          If you sort by <code>INDEX</code>, the array elements for each person are sorted by detection confidence.
    #          The default sort is by <code>TIMESTAMP</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "INDEX" # One of: ["INDEX", "TIMESTAMP"]
    #   }
    #   options = {}
    #   response = client.get_person_tracking(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     status_message: "StatusMessage",
    #     video_metadata: {
    #       codec: "String",
    #       duration_millis: 1,
    #       format: "String",
    #       frame_rate: 1.0,
    #       frame_height: 1,
    #       frame_width: 1,
    #       color_range: "FULL" # One of: ["FULL", "LIMITED"]
    #     },
    #     next_token: "PaginationToken",
    #     persons: [
    #       {
    #         timestamp: 1,
    #         person: {
    #           index: 1,
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           face: {
    #             bounding_box: {
    #               width: 1.0,
    #               height: 1.0,
    #               left: 1.0,
    #               top: 1.0
    #             },
    #             age_range: {
    #               low: 1,
    #               high: 1
    #             },
    #             smile: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eyeglasses: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             sunglasses: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             gender: {
    #               value: "Male" # One of: ["Male", "Female"],
    #               confidence: 1.0
    #             },
    #             beard: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             mustache: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eyes_open: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             mouth_open: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             emotions: [
    #               {
    #                 type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #                 confidence: 1.0
    #               }
    #             ],
    #             landmarks: [
    #               {
    #                 type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #                 x: 1.0,
    #                 y: 1.0
    #               }
    #             ],
    #             pose: {
    #               roll: 1.0,
    #               yaw: 1.0,
    #               pitch: 1.0
    #             },
    #             quality: {
    #               brightness: 1.0,
    #               sharpness: 1.0
    #             },
    #             confidence: 1.0,
    #             face_occluded: {
    #               value: false,
    #               confidence: 1.0
    #             },
    #             eye_direction: {
    #               yaw: 1.0,
    #               pitch: 1.0,
    #               confidence: 1.0
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     job_id: "JobId",
    #     video: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     job_tag: "JobTag"
    #   }
    # @return [Types::GetPersonTrackingResponse]
    def get_person_tracking(params = {}, options = {})
      request = build_request(:get_person_tracking, params)
      request.send_request(options)
    end

    # <p>Gets the segment detection results of a Amazon Rekognition Video analysis started by <a>StartSegmentDetection</a>.</p>
    #          <p>Segment detection with Amazon Rekognition Video is an asynchronous operation. You start segment detection by 
    #       calling <a>StartSegmentDetection</a> which returns a job identifier (<code>JobId</code>).
    #       When the segment detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service
    #       topic registered in the initial call to <code>StartSegmentDetection</code>. To get the results
    #       of the segment detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. 
    #       if so, call <code>GetSegmentDetection</code> and pass the job identifier (<code>JobId</code>) from the initial call
    #       of <code>StartSegmentDetection</code>.</p>
    #          <p>
    #             <code>GetSegmentDetection</code> returns detected segments in an array (<code>Segments</code>)
    #       of <a>SegmentDetection</a> objects. <code>Segments</code> is sorted by the segment types 
    #       specified in the <code>SegmentTypes</code> input parameter of <code>StartSegmentDetection</code>. 
    #     Each element of the array includes the detected segment, the precentage confidence in the acuracy 
    #       of the detected segment, the type of the segment, and the frame in which the segment was detected.</p>
    #          <p>Use <code>SelectedSegmentTypes</code> to find out the type of segment detection requested in the 
    #     call to <code>StartSegmentDetection</code>.</p>
    #          <p>Use the <code>MaxResults</code> parameter to limit the number of segment detections returned. If there are more results than 
    #       specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains
    #       a pagination token for getting the next set of results. To get the next page of results, call <code>GetSegmentDetection</code>
    #       and populate the <code>NextToken</code> request parameter with the token value returned from the previous 
    #       call to <code>GetSegmentDetection</code>.</p>
    #          <p>For more information, see Detecting video segments in stored video in the Amazon Rekognition Developer Guide.</p>
    # @param [Hash, Types::GetSegmentDetectionRequest] params
    # @option params [String] :job_id
    #   <p>Job identifier for the text detection operation for which you want results returned. 
    #         You get the job identifer from an initial call to <code>StartSegmentDetection</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>
    # @option params [String] :next_token
    #   <p>If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent 
    #         request to retrieve the next set of text.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_segment_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     status_message: "StatusMessage",
    #     video_metadata: [
    #       {
    #         codec: "String",
    #         duration_millis: 1,
    #         format: "String",
    #         frame_rate: 1.0,
    #         frame_height: 1,
    #         frame_width: 1,
    #         color_range: "FULL" # One of: ["FULL", "LIMITED"]
    #       }
    #     ],
    #     audio_metadata: [
    #       {
    #         codec: "String",
    #         duration_millis: 1,
    #         sample_rate: 1,
    #         number_of_channels: 1
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     segments: [
    #       {
    #         type: "TECHNICAL_CUE" # One of: ["TECHNICAL_CUE", "SHOT"],
    #         start_timestamp_millis: 1,
    #         end_timestamp_millis: 1,
    #         duration_millis: 1,
    #         start_timecode_smpte: "Timecode",
    #         end_timecode_smpte: "Timecode",
    #         duration_smpte: "Timecode",
    #         technical_cue_segment: {
    #           type: "ColorBars" # One of: ["ColorBars", "EndCredits", "BlackFrames", "OpeningCredits", "StudioLogo", "Slate", "Content"],
    #           confidence: 1.0
    #         },
    #         shot_segment: {
    #           index: 1,
    #           confidence: 1.0
    #         },
    #         start_frame_number: 1,
    #         end_frame_number: 1,
    #         duration_frames: 1
    #       }
    #     ],
    #     selected_segment_types: [
    #       {
    #         type: "TECHNICAL_CUE" # One of: ["TECHNICAL_CUE", "SHOT"],
    #         model_version: "String"
    #       }
    #     ],
    #     job_id: "JobId",
    #     video: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     job_tag: "JobTag"
    #   }
    # @return [Types::GetSegmentDetectionResponse]
    def get_segment_detection(params = {}, options = {})
      request = build_request(:get_segment_detection, params)
      request.send_request(options)
    end

    # <p>Gets the text detection results of a Amazon Rekognition Video analysis started by <a>StartTextDetection</a>.</p>
    #          <p>Text detection with Amazon Rekognition Video is an asynchronous operation. You start text detection by 
    #      calling <a>StartTextDetection</a> which returns a job identifier (<code>JobId</code>)
    #      When the text detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service
    #      topic registered in the initial call to <code>StartTextDetection</code>. To get the results
    #      of the text detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. 
    #      if so, call <code>GetTextDetection</code> and pass the job identifier (<code>JobId</code>) from the initial call
    #      of <code>StartLabelDetection</code>.</p>
    #          <p>
    #             <code>GetTextDetection</code> returns an array of detected text (<code>TextDetections</code>) sorted by 
    #        the time the text was detected, up to 100 words per frame of video.</p>
    #          <p>Each element of the array includes the detected text, the precentage confidence in the acuracy 
    #        of the detected text, the time the text was detected, bounding box information for where the text
    #        was located, and unique identifiers for words and their lines.</p>
    #          <p>Use MaxResults parameter to limit the number of text detections returned. If there are more results than 
    #      specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains
    #      a pagination token for getting the next set of results. To get the next page of results, call <code>GetTextDetection</code>
    #      and populate the <code>NextToken</code> request parameter with the token value returned from the previous 
    #      call to <code>GetTextDetection</code>.</p>
    # @param [Hash, Types::GetTextDetectionRequest] params
    # @option params [String] :job_id
    #   <p>Job identifier for the text detection operation for which you want results returned. 
    #           You get the job identifer from an initial call to <code>StartTextDetection</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per paginated call. The largest value you can specify is 1000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more labels to retrieve), Amazon Rekognition Video returns 
    #         a pagination token in the response. You can use this pagination token to retrieve the next set of text.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_text_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     status_message: "StatusMessage",
    #     video_metadata: {
    #       codec: "String",
    #       duration_millis: 1,
    #       format: "String",
    #       frame_rate: 1.0,
    #       frame_height: 1,
    #       frame_width: 1,
    #       color_range: "FULL" # One of: ["FULL", "LIMITED"]
    #     },
    #     text_detections: [
    #       {
    #         timestamp: 1,
    #         text_detection: {
    #           detected_text: "String",
    #           type: "LINE" # One of: ["LINE", "WORD"],
    #           id: 1,
    #           parent_id: 1,
    #           confidence: 1.0,
    #           geometry: {
    #             bounding_box: {
    #               width: 1.0,
    #               height: 1.0,
    #               left: 1.0,
    #               top: 1.0
    #             },
    #             polygon: [
    #               {
    #                 x: 1.0,
    #                 y: 1.0
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     text_model_version: "String",
    #     job_id: "JobId",
    #     video: {
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     job_tag: "JobTag"
    #   }
    # @return [Types::GetTextDetectionResponse]
    def get_text_detection(params = {}, options = {})
      request = build_request(:get_text_detection, params)
      request.send_request(options)
    end

    # <p>Detects faces in the input image and adds them to the specified collection. </p>
    #          <p>Amazon Rekognition doesn't save the actual faces that are detected. Instead, the underlying
    #       detection algorithm first detects the faces in the input image. For each face, the algorithm
    #       extracts facial features into a feature vector, and stores it in the backend database.
    #       Amazon Rekognition uses feature vectors when it performs face match and search operations using the
    #         <a>SearchFaces</a> and <a>SearchFacesByImage</a> operations.</p>
    #          <p>For more information, see Adding faces to a collection in the Amazon Rekognition
    #       Developer Guide.</p>
    #          <p>To get the number of faces in a collection, call <a>DescribeCollection</a>. </p>
    #          <p>If you're using version 1.0 of the face detection model, <code>IndexFaces</code>
    #       indexes the 15 largest faces in the input image. Later versions of the face detection model
    #       index the 100 largest faces in the input image. </p>
    #          <p>If you're using version 4 or later of the face model, image orientation information is not
    #       returned in the <code>OrientationCorrection</code> field. </p>
    #          <p>To determine which version of the model you're using, call <a>DescribeCollection</a> and supply the collection ID. You can also get the model
    #       version from the value of <code>FaceModelVersion</code> in the response from
    #         <code>IndexFaces</code>
    #          </p>
    #          <p>For more information, see Model Versioning in the Amazon Rekognition Developer
    #       Guide.</p>
    #          <p>If you provide the optional <code>ExternalImageId</code> for the input image you
    #       provided, Amazon Rekognition associates this ID with all faces that it detects. When you call the <a>ListFaces</a> operation, the response returns the external ID. You can use this
    #       external image ID to create a client-side index to associate the faces with each image. You
    #       can then use the index to find all faces in an image.</p>
    #          <p>You can specify the maximum number of faces to index with the <code>MaxFaces</code> input
    #       parameter. This is useful when you want to index the largest faces in an image and don't want
    #       to index smaller faces, such as those belonging to people standing in the background.</p>
    #          <p>The <code>QualityFilter</code> input parameter allows you to filter out detected faces
    #       that don’t meet a required quality bar. The quality bar is based on a variety of common use
    #       cases. By default, <code>IndexFaces</code> chooses the quality bar that's used to filter
    #       faces. You can also explicitly choose the quality bar. Use <code>QualityFilter</code>, to set
    #       the quality bar by specifying <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>. If
    #       you do not want to filter detected faces, specify <code>NONE</code>. </p>
    #          <note>
    #             <p>To use quality filtering, you need a collection associated with version 3 of the face
    #         model or higher. To get the version of the face model associated with a collection, call
    #           <a>DescribeCollection</a>. </p>
    #          </note>
    #          <p>Information about faces detected in an image, but not indexed, is returned in an array of
    #         <a>UnindexedFace</a> objects, <code>UnindexedFaces</code>. Faces aren't indexed
    #       for reasons such as:</p>
    #          <ul>
    #             <li>
    #                <p>The number of faces detected exceeds the value of the <code>MaxFaces</code> request
    #           parameter.</p>
    #             </li>
    #             <li>
    #                <p>The face is too small compared to the image dimensions.</p>
    #             </li>
    #             <li>
    #                <p>The face is too blurry.</p>
    #             </li>
    #             <li>
    #                <p>The image is too dark.</p>
    #             </li>
    #             <li>
    #                <p>The face has an extreme pose.</p>
    #             </li>
    #             <li>
    #                <p>The face doesn’t have enough detail to be suitable for face search.</p>
    #             </li>
    #          </ul>
    #          <p>In response, the <code>IndexFaces</code> operation returns an array of metadata for all
    #       detected faces, <code>FaceRecords</code>. This includes: </p>
    #          <ul>
    #             <li>
    #                <p>The bounding box, <code>BoundingBox</code>, of the detected face. </p>
    #             </li>
    #             <li>
    #                <p>A confidence value, <code>Confidence</code>, which indicates the confidence that the
    #           bounding box contains a face.</p>
    #             </li>
    #             <li>
    #                <p>A face ID, <code>FaceId</code>, assigned by the service for each face that's detected
    #           and stored.</p>
    #             </li>
    #             <li>
    #                <p>An image ID, <code>ImageId</code>, assigned by the service for the input image.</p>
    #             </li>
    #          </ul>
    #          <p>If you request <code>ALL</code> or specific facial attributes (e.g.,
    #         <code>FACE_OCCLUDED</code>) by using the detectionAttributes parameter, Amazon Rekognition
    #       returns detailed facial attributes, such as facial landmarks (for example, location of eye and
    #       mouth), facial occlusion, and other facial attributes.</p>
    #          <p>If you provide the same image, specify the same collection, and use the same external ID
    #       in the <code>IndexFaces</code> operation, Amazon Rekognition doesn't save duplicate face
    #       metadata.</p>
    #          <p></p>
    #          <p>The input image is passed either as base64-encoded image bytes, or as a reference to an
    #       image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations,
    #       passing image bytes isn't supported. The image must be formatted as a PNG or JPEG file. </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:IndexFaces</code>
    #       action.</p>
    # @param [Hash, Types::IndexFacesRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection to which you want to add the faces that are detected
    #         in the input images.</p>
    # @option params [Types::Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes isn't supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @option params [String] :external_image_id
    #   <p>The ID you want to assign to all the faces detected in the image.</p>
    # @option params [Array<String>] :detection_attributes
    #   <p>An array of facial attributes you want to be returned. A <code>DEFAULT</code> subset of
    #         facial attributes - <code>BoundingBox</code>, <code>Confidence</code>, <code>Pose</code>,
    #           <code>Quality</code>, and <code>Landmarks</code> - will always be returned. You can request
    #         for specific facial attributes (in addition to the default list) - by using <code>["DEFAULT",
    #           "FACE_OCCLUDED"]</code> or just <code>["FACE_OCCLUDED"]</code>. You can request for all
    #         facial attributes by using <code>["ALL"]</code>. Requesting more attributes may increase
    #         response time.</p>
    #            <p>If you provide both, <code>["ALL", "DEFAULT"]</code>, the service uses a logical AND
    #         operator to determine which attributes to return (in this case, all attributes). </p>
    # @option params [Integer] :max_faces
    #   <p>The maximum number of faces to index. The value of <code>MaxFaces</code> must be greater
    #         than or equal to 1. <code>IndexFaces</code> returns no more than 100 detected faces in an
    #         image, even if you specify a larger value for <code>MaxFaces</code>.</p>
    #            <p>If <code>IndexFaces</code> detects more faces than the value of <code>MaxFaces</code>, the
    #         faces with the lowest quality are filtered out first. If there are still more faces than the
    #         value of <code>MaxFaces</code>, the faces with the smallest bounding boxes are filtered out
    #         (up to the number that's needed to satisfy the value of <code>MaxFaces</code>). Information
    #         about the unindexed faces is available in the <code>UnindexedFaces</code> array. </p>
    #            <p>The faces that are returned by <code>IndexFaces</code> are sorted by the largest face
    #         bounding box size to the smallest size, in descending order.</p>
    #            <p>
    #               <code>MaxFaces</code> can be used with a collection associated with any version of the
    #         face model.</p>
    # @option params [String] :quality_filter
    #   <p>A filter that specifies a quality bar for how much filtering is done to identify faces.
    #         Filtered faces aren't indexed. If you specify <code>AUTO</code>, Amazon Rekognition chooses the quality
    #         bar. If you specify <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>, filtering
    #         removes all faces that don’t meet the chosen quality bar. The default value is
    #           <code>AUTO</code>. 
    #         The quality bar is based on a variety of common use cases. Low-quality detections can occur
    #         for a number of reasons. Some examples are an object that's misidentified as a face, a face
    #         that's too blurry, or a face with a pose that's too extreme to use. If you specify
    #           <code>NONE</code>, no filtering is performed. </p>
    #            <p>To use quality filtering, the collection you are using must be associated with version 3
    #         of the face model or higher.</p>
    # @example To add a face to a collection
    #   # This operation detects faces in an image and adds them to the specified Rekognition collection.
    #   params = {
    #     collection_id: "myphotos",
    #     image: {
    #       s3_object: {
    #         bucket: "mybucket",
    #         name: "myphoto"
    #       }
    #     },
    #     external_image_id: "myphotoid",
    #     detection_attributes: [
    #     ]
    #   }
    #   options = {}
    #   response = client.index_faces(params, options)
    #   response.to_h #=>
    #   {
    #     face_records: [
    #       {
    #         face_detail: {
    #           bounding_box: {
    #             width: 0.25,
    #             top: 0.4933333396911621,
    #             left: 0.31888890266418457,
    #             height: 0.33481481671333313
    #           },
    #           landmarks: [
    #             {
    #               y: 0.6248345971107483,
    #               x: 0.3976764678955078,
    #               type: eyeLeft
    #             },
    #             {
    #               y: 0.6317117214202881,
    #               x: 0.4810936450958252,
    #               type: eyeRight
    #             },
    #             {
    #               y: 0.7111940383911133,
    #               x: 0.41986238956451416,
    #               type: noseLeft
    #             },
    #             {
    #               y: 0.7497701048851013,
    #               x: 0.40525302290916443,
    #               type: mouthDown
    #             },
    #             {
    #               y: 0.7558549642562866,
    #               x: 0.4753248989582062,
    #               type: mouthUp
    #             }
    #           ],
    #           pose: {
    #             yaw: -24.438663482666016,
    #             roll: 4.707281112670898,
    #             pitch: -9.713645935058594
    #           },
    #           quality: {
    #             sharpness: 80,
    #             brightness: 29.23358917236328
    #           },
    #           confidence: 99.9991226196289
    #         },
    #         face: {
    #           bounding_box: {
    #             width: 0.25,
    #             top: 0.4933333396911621,
    #             left: 0.31888890266418457,
    #             height: 0.33481481671333313
    #           },
    #           face_id: "ff43d742-0c13-5d16-a3e8-03d3f58e980b",
    #           confidence: 99.9991226196289,
    #           image_id: "465f4e93-763e-51d0-b030-b9667a2d94b1"
    #         }
    #       },
    #       {
    #         face_detail: {
    #           bounding_box: {
    #             width: 0.24444444477558136,
    #             top: 0.15111111104488373,
    #             left: 0.5144444704055786,
    #             height: 0.32592591643333435
    #           },
    #           landmarks: [
    #             {
    #               y: 0.290842205286026,
    #               x: 0.6006892323493958,
    #               type: eyeLeft
    #             },
    #             {
    #               y: 0.29609042406082153,
    #               x: 0.6808141469955444,
    #               type: eyeRight
    #             },
    #             {
    #               y: 0.3522595763206482,
    #               x: 0.6395332217216492,
    #               type: noseLeft
    #             },
    #             {
    #               y: 0.38689887523651123,
    #               x: 0.5892083048820496,
    #               type: mouthDown
    #             },
    #             {
    #               y: 0.394125759601593,
    #               x: 0.674560010433197,
    #               type: mouthUp
    #             }
    #           ],
    #           pose: {
    #             yaw: 6.716655254364014,
    #             roll: 2.1029529571533203,
    #             pitch: -4.683138370513916
    #           },
    #           quality: {
    #             sharpness: 160,
    #             brightness: 34.951698303222656
    #           },
    #           confidence: 99.99950408935547
    #         },
    #         face: {
    #           bounding_box: {
    #             width: 0.24444444477558136,
    #             top: 0.15111111104488373,
    #             left: 0.5144444704055786,
    #             height: 0.32592591643333435
    #           },
    #           face_id: "8be04dba-4e58-520d-850e-9eae4af70eb2",
    #           confidence: 99.99950408935547,
    #           image_id: "465f4e93-763e-51d0-b030-b9667a2d94b1"
    #         }
    #       }
    #     ],
    #     orientation_correction: ROTATE_0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     external_image_id: "ExternalImageId",
    #     detection_attributes: ["DEFAULT" # One of: ["DEFAULT", "ALL", "AGE_RANGE", "BEARD", "EMOTIONS", "EYE_DIRECTION", "EYEGLASSES", "EYES_OPEN", "GENDER", "MOUTH_OPEN", "MUSTACHE", "FACE_OCCLUDED", "SMILE", "SUNGLASSES"]],
    #     max_faces: 1,
    #     quality_filter: "NONE" # One of: ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #   }
    #   options = {}
    #   response = client.index_faces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     face_records: [
    #       {
    #         face: {
    #           face_id: "FaceId",
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           image_id: "ImageId",
    #           external_image_id: "ExternalImageId",
    #           confidence: 1.0,
    #           index_faces_model_version: "IndexFacesModelVersion",
    #           user_id: "UserId"
    #         },
    #         face_detail: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           age_range: {
    #             low: 1,
    #             high: 1
    #           },
    #           smile: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eyeglasses: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           sunglasses: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           gender: {
    #             value: "Male" # One of: ["Male", "Female"],
    #             confidence: 1.0
    #           },
    #           beard: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           mustache: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eyes_open: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           mouth_open: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           emotions: [
    #             {
    #               type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #               confidence: 1.0
    #             }
    #           ],
    #           landmarks: [
    #             {
    #               type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           pose: {
    #             roll: 1.0,
    #             yaw: 1.0,
    #             pitch: 1.0
    #           },
    #           quality: {
    #             brightness: 1.0,
    #             sharpness: 1.0
    #           },
    #           confidence: 1.0,
    #           face_occluded: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eye_direction: {
    #             yaw: 1.0,
    #             pitch: 1.0,
    #             confidence: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     orientation_correction: "ROTATE_0" # One of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"],
    #     face_model_version: "String",
    #     unindexed_faces: [
    #       {
    #         reasons: ["EXCEEDS_MAX_FACES" # One of: ["EXCEEDS_MAX_FACES", "EXTREME_POSE", "LOW_BRIGHTNESS", "LOW_SHARPNESS", "LOW_CONFIDENCE", "SMALL_BOUNDING_BOX", "LOW_FACE_QUALITY"]],
    #         face_detail: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           age_range: {
    #             low: 1,
    #             high: 1
    #           },
    #           smile: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eyeglasses: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           sunglasses: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           gender: {
    #             value: "Male" # One of: ["Male", "Female"],
    #             confidence: 1.0
    #           },
    #           beard: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           mustache: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eyes_open: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           mouth_open: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           emotions: [
    #             {
    #               type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #               confidence: 1.0
    #             }
    #           ],
    #           landmarks: [
    #             {
    #               type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           pose: {
    #             roll: 1.0,
    #             yaw: 1.0,
    #             pitch: 1.0
    #           },
    #           quality: {
    #             brightness: 1.0,
    #             sharpness: 1.0
    #           },
    #           confidence: 1.0,
    #           face_occluded: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eye_direction: {
    #             yaw: 1.0,
    #             pitch: 1.0,
    #             confidence: 1.0
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::IndexFacesResponse]
    def index_faces(params = {}, options = {})
      request = build_request(:index_faces, params)
      request.send_request(options)
    end

    # <p>Returns list of collection IDs in your account. If the result is truncated, the
    #       response also provides a <code>NextToken</code> that you can use in the subsequent request to
    #       fetch the next set of collection IDs.</p>
    #          <p>For an example, see Listing collections in the Amazon Rekognition Developer
    #       Guide.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:ListCollections</code> action.</p>
    # @param [Hash, Types::ListCollectionsRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of collection IDs to return. </p>
    # @example To list the collections
    #   # This operation returns a list of Rekognition collections.
    #   params = {}
    #   options = {}
    #   response = client.list_collections(params, options)
    #   response.to_h #=>
    #   {
    #     collection_ids: [
    #       "myphotos"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_collections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collection_ids: ["CollectionId"],
    #     next_token: "PaginationToken",
    #     face_model_versions: ["String"]
    #   }
    # @return [Types::ListCollectionsResponse]
    def list_collections(params = {}, options = {})
      request = build_request(:list_collections, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>
    # Lists the entries (images) within a dataset. An entry is a
    # JSON Line that contains the information for a single image, including
    # the image location, assigned labels, and object location bounding boxes. For 
    # more information, see <a href="https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-manifest-files.html">Creating a manifest file</a>.</p>
    #          <p>JSON Lines in the response include information about non-terminal
    #    errors found in the dataset. 
    #    Non terminal errors are reported in <code>errors</code> lists within each JSON Line. The
    #    same information is reported in the training and testing validation result manifests that
    #    Amazon Rekognition Custom Labels creates during model training.
    #  </p>
    #          <p>You can filter the response in variety of ways, such as choosing which labels to return and returning JSON Lines created after a specific date.
    # </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:ListDatasetEntries</code> action.</p>
    # @param [Hash, Types::ListDatasetEntriesRequest] params
    # @option params [String] :dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) for the dataset that you want to use. 
    #   </p>
    # @option params [Array<String>] :contains_labels
    #   <p>Specifies a label filter for the response. The response includes an entry only if one or more of the labels in <code>ContainsLabels</code> exist in the entry.       
    #         </p>
    # @option params [Boolean] :labeled
    #   <p>
    #      Specify <code>true</code> to get only the JSON Lines where the image is labeled. 
    #      Specify <code>false</code> to get only the JSON Lines where the image isn't labeled. If you
    #      don't specify <code>Labeled</code>, <code>ListDatasetEntries</code> returns JSON Lines for labeled and unlabeled 
    #      images.
    #   </p>
    # @option params [String] :source_ref_contains
    #   <p>If specified, <code>ListDatasetEntries</code> only returns JSON Lines where the value of <code>SourceRefContains</code> is
    #      part of the <code>source-ref</code> field. The <code>source-ref</code> field contains the Amazon S3 location of the image.
    #      You can use <code>SouceRefContains</code> for tasks such as getting the JSON Line for a single image, or gettting JSON Lines for all images within a specific folder.</p>
    # @option params [Boolean] :has_errors
    #   <p>Specifies an error filter for the response. Specify <code>True</code> to only include entries that have errors.
    #         </p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination 
    #         token to retrieve the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    # @example To list the entries in an Amazon Rekognition Custom Labels dataset
    #   # Lists the JSON line entries in an Amazon Rekognition Custom Labels dataset.
    #   params = {
    #     dataset_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-proj-2/dataset/train/1690564858106",
    #     contains_labels: [
    #       "camellia"
    #     ],
    #     labeled: true,
    #     source_ref_contains: "camellia4.jpg",
    #     has_errors: true,
    #     next_token: "",
    #     max_results: 100
    #   }
    #   options = {}
    #   response = client.list_dataset_entries(params, options)
    #   response.to_h #=>
    #   {
    #     dataset_entries: [
    #       "{\"source-ref\":\"s3://custom-labels-console-us-east-1-1111111111/assets/flowers_1_train_dataset/camellia4.jpg\",\"camellia\":1,\"camellia-metadata\":{\"confidence\":1,\"job-name\":\"labeling-job/camellia\",\"class-name\":\"camellia\",\"human-annotated\":\"yes\",\"creation-date\":\"2021-07-11T03:32:13.456Z\",\"type\":\"groundtruth/image-classification\"},\"with_leaves\":1,\"with_leaves-metadata\":{\"confidence\":1,\"job-name\":\"labeling-job/with_leaves\",\"class-name\":\"with_leaves\",\"human-annotated\":\"yes\",\"creation-date\":\"2021-07-11T03:32:13.456Z\",\"type\":\"groundtruth/image-classification\"},\"cl-metadata\":{\"is_labeled\":true}}"
    #     ],
    #     next_token: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "DatasetArn", # required
    #     contains_labels: ["DatasetLabel"],
    #     labeled: false,
    #     source_ref_contains: "QueryString",
    #     has_errors: false,
    #     next_token: "ExtendedPaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dataset_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_entries: ["DatasetEntry"],
    #     next_token: "ExtendedPaginationToken"
    #   }
    # @return [Types::ListDatasetEntriesResponse]
    def list_dataset_entries(params = {}, options = {})
      request = build_request(:list_dataset_entries, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Lists the labels in a dataset. Amazon Rekognition Custom Labels uses labels to describe images. For more information, see 
    #    <a href="https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/md-labeling-images.html">Labeling images</a>.
    # </p>
    #          <p>
    #       Lists the labels in a dataset. Amazon Rekognition Custom Labels uses labels to describe images. For more information, see Labeling images
    #       in the <i>Amazon Rekognition Custom Labels Developer Guide</i>. </p>
    # @param [Hash, Types::ListDatasetLabelsRequest] params
    # @option params [String] :dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to use.
    #   </p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more
    #         results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination 
    #         token to retrieve the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can specify is 100. 
    #         If you specify a value greater than 100, a ValidationException
    #         error occurs. The default value is 100. </p>
    # @example To list the entries in an Amazon Rekognition Custom Labels dataset
    #   # Lists the JSON line entries in an Amazon Rekognition Custom Labels dataset.
    #   params = {
    #     dataset_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-proj-2/dataset/train/1690564858106",
    #     next_token: "",
    #     max_results: 100
    #   }
    #   options = {}
    #   response = client.list_dataset_labels(params, options)
    #   response.to_h #=>
    #   {
    #     dataset_label_descriptions: [
    #       {
    #         label_name: "camellia",
    #         label_stats: {
    #           entry_count: 1
    #         }
    #       },
    #       {
    #         label_name: "with_leaves",
    #         label_stats: {
    #           entry_count: 2
    #         }
    #       },
    #       {
    #         label_name: "mediterranean_spurge",
    #         label_stats: {
    #           entry_count: 1
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "DatasetArn", # required
    #     next_token: "ExtendedPaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dataset_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_label_descriptions: [
    #       {
    #         label_name: "DatasetLabel",
    #         label_stats: {
    #           entry_count: 1,
    #           bounding_box_count: 1
    #         }
    #       }
    #     ],
    #     next_token: "ExtendedPaginationToken"
    #   }
    # @return [Types::ListDatasetLabelsResponse]
    def list_dataset_labels(params = {}, options = {})
      request = build_request(:list_dataset_labels, params)
      request.send_request(options)
    end

    # <p>Returns metadata for faces in the specified collection. This metadata
    #       includes information such as the bounding box coordinates, the confidence (that the bounding
    #       box contains a face), and face ID. For an example, see Listing Faces in a Collection in the
    #       Amazon Rekognition Developer Guide.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:ListFaces</code>
    #       action.</p>
    # @param [Hash, Types::ListFacesRequest] params
    # @option params [String] :collection_id
    #   <p>ID of the collection from which to list the faces.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #         Amazon Rekognition returns a pagination token in the response. You can use this pagination token to
    #         retrieve the next set of faces.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of faces to return.</p>
    # @option params [String] :user_id
    #   <p>An array of user IDs to filter results with when listing faces in a collection.</p>
    # @option params [Array<String>] :face_ids
    #   <p>An array of face IDs to filter results with when listing faces in a collection.</p>
    # @example To list the faces in a collection
    #   # This operation lists the faces in a Rekognition collection.
    #   params = {
    #     collection_id: "myphotos",
    #     max_results: 20
    #   }
    #   options = {}
    #   response = client.list_faces(params, options)
    #   response.to_h #=>
    #   {
    #     face_model_version: "6.0",
    #     faces: [
    #       {
    #         confidence: 99.76940155029297,
    #         index_faces_model_version: "6.0",
    #         user_id: "demoUser2",
    #         image_id: "56a0ca74-1c83-39dd-b363-051a64168a65",
    #         bounding_box: {
    #           width: 0.03177810087800026,
    #           top: 0.36568498611450195,
    #           left: 0.3453829884529114,
    #           height: 0.056759100407361984
    #         },
    #         face_id: "c92265d4-5f9c-43af-a58e-12be0ce02bc3"
    #       },
    #       {
    #         bounding_box: {
    #           width: 0.03254450112581253,
    #           top: 0.6080359816551208,
    #           left: 0.5160620212554932,
    #           height: 0.06347999721765518
    #         },
    #         index_faces_model_version: "6.0",
    #         face_id: "851cb847-dccc-4fea-9309-9f4805967855",
    #         confidence: 99.94369506835938,
    #         image_id: "a8aed589-ceec-35f7-9c04-82e0b546b024"
    #       },
    #       {
    #         bounding_box: {
    #           width: 0.03094629943370819,
    #           top: 0.4218429923057556,
    #           left: 0.6513839960098267,
    #           height: 0.05266290158033371
    #         },
    #         index_faces_model_version: "6.0",
    #         face_id: "c0eb3b65-24a0-41e1-b23a-1908b1aaeac1",
    #         confidence: 99.82969665527344,
    #         image_id: "56a0ca74-1c83-39dd-b363-051a64168a65"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     user_id: "UserId",
    #     face_ids: ["FaceId"]
    #   }
    #   options = {}
    #   response = client.list_faces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     faces: [
    #       {
    #         face_id: "FaceId",
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         image_id: "ImageId",
    #         external_image_id: "ExternalImageId",
    #         confidence: 1.0,
    #         index_faces_model_version: "IndexFacesModelVersion",
    #         user_id: "UserId"
    #       }
    #     ],
    #     next_token: "String",
    #     face_model_version: "String"
    #   }
    # @return [Types::ListFacesResponse]
    def list_faces(params = {}, options = {})
      request = build_request(:list_faces, params)
      request.send_request(options)
    end

    # <p>Returns a list of media analysis jobs. Results are sorted by <code>CreationTimestamp</code> in descending order.</p>
    # @param [Hash, Types::ListMediaAnalysisJobsRequest] params
    # @option params [String] :next_token
    #   <p>Pagination token, if the previous response was incomplete.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value user can specify is 100. 
    #           If user specifies a value greater than 100, an <code>InvalidParameterException</code> error occurs. The default value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "ExtendedPaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_media_analysis_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ExtendedPaginationToken",
    #     media_analysis_jobs: [ # required
    #       {
    #         job_id: "MediaAnalysisJobId", # required
    #         job_name: "MediaAnalysisJobName",
    #         operations_config: { # required
    #           detect_moderation_labels: {
    #             min_confidence: 1.0,
    #             project_version: "ProjectVersionId"
    #           }
    #         },
    #         status: "CREATED" # One of: ["CREATED", "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED"], # required
    #         failure_details: {
    #           code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "INVALID_S3_OBJECT", "INVALID_MANIFEST", "INVALID_OUTPUT_CONFIG", "INVALID_KMS_KEY", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "RESOURCE_NOT_READY", "THROTTLED"],
    #           message: "String"
    #         },
    #         creation_timestamp: Time.now, # required
    #         completion_timestamp: Time.now,
    #         input: { # required
    #           s3_object: { # required
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion"
    #           }
    #         },
    #         output_config: { # required
    #           s3_bucket: "S3Bucket", # required
    #           s3_key_prefix: "MediaAnalysisS3KeyPrefix"
    #         },
    #         kms_key_id: "KmsKeyId",
    #         results: {
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion"
    #           },
    #           model_versions: {
    #             moderation: "String"
    #           }
    #         },
    #         manifest_summary: {
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion"
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListMediaAnalysisJobsResponse]
    def list_media_analysis_jobs(params = {}, options = {})
      request = build_request(:list_media_analysis_jobs, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Gets a list of the project policies attached to a project.</p>
    #          <p>To attach a project policy to a project, call <a>PutProjectPolicy</a>. To remove a project policy from a project, call <a>DeleteProjectPolicy</a>.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:ListProjectPolicies</code> action.</p>
    # @param [Hash, Types::ListProjectPoliciesRequest] params
    # @option params [String] :project_arn
    #   <p>The ARN of the project for which you want to list the project policies.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more results to retrieve),
    #            Amazon Rekognition Custom Labels returns a pagination token in the response. You can use this pagination token
    #            to retrieve the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #            specify is 5. If you specify a value greater than 5, a ValidationException error
    #            occurs. The default value is 5. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "ProjectArn", # required
    #     next_token: "ExtendedPaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_project_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_policies: [
    #       {
    #         project_arn: "ProjectArn",
    #         policy_name: "ProjectPolicyName",
    #         policy_revision_id: "ProjectPolicyRevisionId",
    #         policy_document: "ProjectPolicyDocument",
    #         creation_timestamp: Time.now,
    #         last_updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "ExtendedPaginationToken"
    #   }
    # @return [Types::ListProjectPoliciesResponse]
    def list_project_policies(params = {}, options = {})
      request = build_request(:list_project_policies, params)
      request.send_request(options)
    end

    # <p>Gets a list of stream processors that you have created with <a>CreateStreamProcessor</a>. </p>
    # @param [Hash, Types::ListStreamProcessorsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video
    #               returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors. </p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stream_processors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     stream_processors: [
    #       {
    #         name: "StreamProcessorName",
    #         status: "STOPPED" # One of: ["STOPPED", "STARTING", "RUNNING", "FAILED", "STOPPING", "UPDATING"]
    #       }
    #     ]
    #   }
    # @return [Types::ListStreamProcessorsResponse]
    def list_stream_processors(params = {}, options = {})
      request = build_request(:list_stream_processors, params)
      request.send_request(options)
    end

    # <p> Returns a list of tags in an Amazon Rekognition collection, stream processor, or Custom Labels
    #       model. </p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:ListTagsForResource</code> action. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> Amazon Resource Name (ARN) of the model, collection, or stream processor that contains
    #         the tags that you want a list of. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns metadata of the User such as <code>UserID</code> in the specified collection.
    #       Anonymous User (to reserve faces without any identity) is not returned as part of this
    #       request. The results are sorted by system generated primary key ID. If the response is
    #       truncated, <code>NextToken</code> is returned in the response that can be used in the
    #       subsequent request to retrieve the next set of identities.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of UsersID to return. </p>
    # @option params [String] :next_token
    #   <p>Pagingation token to receive the next set of UsersID.</p>
    # @example ListUsers
    #   # Returns metadata of the User such as UserID in the specified collection.
    #   params = {
    #     collection_id: "MyCollection"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "MGYZLAHX1T5a....",
    #     users: [
    #       {
    #         user_id: "demoUser4",
    #         user_status: CREATED
    #       },
    #       {
    #         user_id: "demoUser2",
    #         user_status: CREATED
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         user_id: "UserId",
    #         user_status: "ACTIVE" # One of: ["ACTIVE", "UPDATING", "CREATING", "CREATED"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Attaches a project policy to a Amazon Rekognition Custom Labels project in a trusting AWS account. A
    #          project policy specifies that a trusted AWS account can copy a model version from a
    #          trusting AWS account to a project in the trusted AWS account. To copy a model version
    #          you use the <a>CopyProjectVersion</a> operation. Only applies to Custom Labels
    #          projects.</p>
    #          <p>For more information about the format of a project policy document, see Attaching a project policy (SDK)
    #          in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.
    #       </p>
    #          <p>The response from <code>PutProjectPolicy</code> is a revision ID for the project policy.
    #          You can attach multiple project policies to a project. You can also update an existing
    #          project policy by specifying the policy revision ID of the existing policy.</p>
    #          <p>To remove a project policy from a project, call <a>DeleteProjectPolicy</a>.
    #          To get a list of project policies attached to a project, call <a>ListProjectPolicies</a>. </p>
    #          <p>You copy a model version by calling <a>CopyProjectVersion</a>.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:PutProjectPolicy</code> action.</p>
    # @param [Hash, Types::PutProjectPolicyRequest] params
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project that the project policy is attached to.</p>
    # @option params [String] :policy_name
    #   <p>A name for the policy.</p>
    # @option params [String] :policy_revision_id
    #   <p>The revision ID for the Project Policy. Each time you modify a policy, Amazon Rekognition Custom Labels
    #            generates and assigns a new <code>PolicyRevisionId</code> and then deletes the previous version of the
    #            policy.</p>
    # @option params [String] :policy_document
    #   <p>A resource policy to add to the model. The policy is a JSON structure that contains
    #            one or more statements that define the policy. 
    #            The policy must follow the IAM syntax. For
    #            more information about the contents of a JSON policy document, see 
    #            <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM JSON policy reference</a>. </p>
    # @example PutProjectPolicy
    #   # This operation attaches a project policy to a Amazon Rekognition Custom Labels project in a trusting AWS account.
    #   params = {
    #     project_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-sdk-project/1656557051929",
    #     policy_name: "SamplePolicy",
    #     policy_revision_id: "0123456789abcdef",
    #     policy_document: "'{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"ALLOW\",\"Principal\":{\"AWS\":\"principal\"},\"Action\":\"rekognition:CopyProjectVersion\",\"Resource\":\"arn:aws:rekognition:us-east-1:123456789012:project/my-sdk-project/version/DestinationVersionName/1627045542080\"}]}'"
    #   }
    #   options = {}
    #   response = client.put_project_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_revision_id: "0123456789abcdef"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "ProjectArn", # required
    #     policy_name: "ProjectPolicyName", # required
    #     policy_revision_id: "ProjectPolicyRevisionId",
    #     policy_document: "ProjectPolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_project_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_revision_id: "ProjectPolicyRevisionId"
    #   }
    # @return [Types::PutProjectPolicyResponse]
    def put_project_policy(params = {}, options = {})
      request = build_request(:put_project_policy, params)
      request.send_request(options)
    end

    # <p>Returns an array of celebrities recognized in the input image. For more
    #       information, see Recognizing celebrities in the Amazon Rekognition Developer Guide. </p>
    #          <p>
    #             <code>RecognizeCelebrities</code> returns the 64 largest faces in the image. It lists
    #       the recognized celebrities in the <code>CelebrityFaces</code> array and any unrecognized faces
    #       in the <code>UnrecognizedFaces</code> array. <code>RecognizeCelebrities</code> doesn't return
    #       celebrities whose faces aren't among the largest 64 faces in the image.</p>
    #          <p>For each celebrity recognized, <code>RecognizeCelebrities</code> returns a
    #         <code>Celebrity</code> object. The <code>Celebrity</code> object contains the celebrity
    #       name, ID, URL links to additional information, match confidence, and a
    #         <code>ComparedFace</code> object that you can use to locate the celebrity's face on the
    #       image.</p>
    #          <p>Amazon Rekognition doesn't retain information about which images a celebrity has been recognized
    #       in. Your application must store this information and use the <code>Celebrity</code> ID
    #       property as a unique identifier for the celebrity. If you don't store the celebrity name or
    #       additional information URLs returned by <code>RecognizeCelebrities</code>, you will need the
    #       ID to identify the celebrity in a call to the <a>GetCelebrityInfo</a>
    #       operation.</p>
    #          <p>You pass the input image either as base64-encoded image bytes or as a reference to an
    #       image in an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <p>For an example, see Recognizing celebrities in an image in the Amazon Rekognition
    #       Developer Guide.</p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:RecognizeCelebrities</code> operation.</p>
    # @param [Hash, Types::RecognizeCelebritiesRequest] params
    # @option params [Types::Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.recognize_celebrities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     celebrity_faces: [
    #       {
    #         urls: ["Url"],
    #         name: "String",
    #         id: "RekognitionUniqueId",
    #         face: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           confidence: 1.0,
    #           landmarks: [
    #             {
    #               type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           pose: {
    #             roll: 1.0,
    #             yaw: 1.0,
    #             pitch: 1.0
    #           },
    #           quality: {
    #             brightness: 1.0,
    #             sharpness: 1.0
    #           },
    #           emotions: [
    #             {
    #               type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #               confidence: 1.0
    #             }
    #           ],
    #           smile: {
    #             value: false,
    #             confidence: 1.0
    #           }
    #         },
    #         match_confidence: 1.0,
    #         known_gender: {
    #           type: "Male" # One of: ["Male", "Female", "Nonbinary", "Unlisted"]
    #         }
    #       }
    #     ],
    #     unrecognized_faces: [
    #       {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         confidence: 1.0,
    #         landmarks: [
    #           {
    #             type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ],
    #         pose: {
    #           roll: 1.0,
    #           yaw: 1.0,
    #           pitch: 1.0
    #         },
    #         quality: {
    #           brightness: 1.0,
    #           sharpness: 1.0
    #         },
    #         emotions: [
    #           {
    #             type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #             confidence: 1.0
    #           }
    #         ],
    #         smile: {
    #           value: false,
    #           confidence: 1.0
    #         }
    #       }
    #     ],
    #     orientation_correction: "ROTATE_0" # One of: ["ROTATE_0", "ROTATE_90", "ROTATE_180", "ROTATE_270"]
    #   }
    # @return [Types::RecognizeCelebritiesResponse]
    def recognize_celebrities(params = {}, options = {})
      request = build_request(:recognize_celebrities, params)
      request.send_request(options)
    end

    # <p>For a given input face ID, searches for matching faces in the collection the face
    #       belongs to. You get a face ID when you add a face to the collection using the <a>IndexFaces</a> operation. The operation compares the features of the input face with
    #       faces in the specified collection. </p>
    #          <note>
    #             <p>You can also search faces without indexing faces by using the
    #           <code>SearchFacesByImage</code> operation.</p>
    #          </note>
    #          <p> The operation response returns an array of faces that match, ordered by similarity
    #       score with the highest similarity first. More specifically, it is an array of metadata for
    #       each face match that is found. Along with the metadata, the response also includes a
    #         <code>confidence</code> value for each face match, indicating the confidence that the
    #       specific face matches the input face. </p>
    #          <p>For an example, see Searching for a face using its face ID in the Amazon Rekognition
    #       Developer Guide.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:SearchFaces</code>
    #       action.</p>
    # @param [Hash, Types::SearchFacesRequest] params
    # @option params [String] :collection_id
    #   <p>ID of the collection the face belongs to.</p>
    # @option params [String] :face_id
    #   <p>ID of a face to find matches for in the collection.</p>
    # @option params [Integer] :max_faces
    #   <p>Maximum number of faces to return. The operation returns the maximum number of faces
    #         with the highest confidence in the match.</p>
    # @option params [Float] :face_match_threshold
    #   <p>Optional value specifying the minimum confidence in the face match to return. For
    #         example, don't return any matches where confidence in matches is less than 70%. The default
    #         value is 80%. </p>
    # @example To delete a face
    #   # This operation searches for matching faces in the collection the supplied face belongs to.
    #   params = {
    #     collection_id: "myphotos",
    #     face_id: "70008e50-75e4-55d0-8e80-363fb73b3a14",
    #     max_faces: 10,
    #     face_match_threshold: 90
    #   }
    #   options = {}
    #   response = client.search_faces(params, options)
    #   response.to_h #=>
    #   {
    #     searched_face_id: "70008e50-75e4-55d0-8e80-363fb73b3a14",
    #     face_matches: [
    #       {
    #         face: {
    #           bounding_box: {
    #             width: 0.24444399774074554,
    #             top: 0.15111100673675537,
    #             left: 0.5144439935684204,
    #             height: 0.3259260058403015
    #           },
    #           face_id: "8be04dba-4e58-520d-850e-9eae4af70eb2",
    #           confidence: 99.99949645996094,
    #           image_id: "465f4e93-763e-51d0-b030-b9667a2d94b1"
    #         },
    #         similarity: 99.97222137451172
    #       },
    #       {
    #         face: {
    #           bounding_box: {
    #             width: 0.22074100375175476,
    #             top: 0.7066670060157776,
    #             left: 0.30963000655174255,
    #             height: 0.16555599868297577
    #           },
    #           face_id: "29a75abe-397b-5101-ba4f-706783b2246c",
    #           confidence: 100,
    #           image_id: "147fdf82-7a71-52cf-819b-e786c7b9746e"
    #         },
    #         similarity: 97.04154968261719
    #       },
    #       {
    #         face: {
    #           bounding_box: {
    #             width: 0.25222599506378174,
    #             top: 0.2355560064315796,
    #             left: 0.3783380091190338,
    #             height: 0.18888899683952332
    #           },
    #           face_id: "908544ad-edc3-59df-8faf-6a87cc256cf5",
    #           confidence: 99.9999008178711,
    #           image_id: "3c731605-d772-541a-a5e7-0375dbc68a07"
    #         },
    #         similarity: 95.94520568847656
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     face_id: "FaceId", # required
    #     max_faces: 1,
    #     face_match_threshold: 1.0
    #   }
    #   options = {}
    #   response = client.search_faces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     searched_face_id: "FaceId",
    #     face_matches: [
    #       {
    #         similarity: 1.0,
    #         face: {
    #           face_id: "FaceId",
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           image_id: "ImageId",
    #           external_image_id: "ExternalImageId",
    #           confidence: 1.0,
    #           index_faces_model_version: "IndexFacesModelVersion",
    #           user_id: "UserId"
    #         }
    #       }
    #     ],
    #     face_model_version: "String"
    #   }
    # @return [Types::SearchFacesResponse]
    def search_faces(params = {}, options = {})
      request = build_request(:search_faces, params)
      request.send_request(options)
    end

    # <p>For a given input image, first detects the largest face in the image, and then searches
    #       the specified collection for matching faces. The operation compares the features of the input
    #       face with faces in the specified collection. </p>
    #          <note>
    #             <p>To search for all faces in an input image, you might first call the <a>IndexFaces</a> operation, and then use the face IDs returned in subsequent calls
    #         to the <a>SearchFaces</a> operation. </p>
    #             <p> You can also call the <code>DetectFaces</code> operation and use the bounding boxes
    #         in the response to make face crops, which then you can pass in to the
    #           <code>SearchFacesByImage</code> operation. </p>
    #          </note>
    #          <p>You pass the input image either as base64-encoded image bytes or as a reference to an
    #       image in an Amazon S3 bucket. If you use the
    #       AWS
    #       CLI to call Amazon Rekognition operations, passing image bytes is not
    #       supported. The image must be either a PNG or JPEG formatted file. </p>
    #          <p> The response returns an array of faces that match, ordered by similarity score with
    #       the highest similarity first. More specifically, it is an array of metadata for each face
    #       match found. Along with the metadata, the response also includes a <code>similarity</code>
    #       indicating how similar the face is to the input face. In the response, the operation also
    #       returns the bounding box (and a confidence level that the bounding box contains a face) of the
    #       face that Amazon Rekognition used for the input image. </p>
    #          <p>If no faces are detected in the input image, <code>SearchFacesByImage</code> returns an
    #         <code>InvalidParameterException</code> error. </p>
    #          <p>For an example, Searching for a Face Using an Image in the Amazon Rekognition
    #       Developer Guide.</p>
    #          <p>The <code>QualityFilter</code> input parameter allows you to filter out detected faces
    #       that don’t meet a required quality bar. The quality bar is based on a variety of common use
    #       cases. Use <code>QualityFilter</code> to set the quality bar for filtering by specifying
    #         <code>LOW</code>, <code>MEDIUM</code>, or <code>HIGH</code>. If you do not want to filter
    #       detected faces, specify <code>NONE</code>. The default value is <code>NONE</code>.</p>
    #          <note>
    #             <p>To use quality filtering, you need a collection associated with version 3 of the face
    #         model or higher. To get the version of the face model associated with a collection, call
    #           <a>DescribeCollection</a>. </p>
    #          </note>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:SearchFacesByImage</code> action.</p>
    # @param [Hash, Types::SearchFacesByImageRequest] params
    # @option params [String] :collection_id
    #   <p>ID of the collection to search.</p>
    # @option params [Types::Image] :image
    #   <p>The input image as base64-encoded bytes or an S3 object. If you use the AWS CLI to
    #         call Amazon Rekognition operations, passing base64-encoded image bytes is not supported. </p>
    #            <p>If you are using an AWS SDK to call Amazon Rekognition, you might not need to
    #         base64-encode image bytes passed using the <code>Bytes</code> field. For more information, see
    #         Images in the Amazon Rekognition developer guide.</p>
    # @option params [Integer] :max_faces
    #   <p>Maximum number of faces to return. The operation returns the maximum number of faces
    #         with the highest confidence in the match.</p>
    # @option params [Float] :face_match_threshold
    #   <p>(Optional) Specifies the minimum confidence in the face match to return. For example,
    #         don't return any matches where confidence in matches is less than 70%. The default value is
    #         80%.</p>
    # @option params [String] :quality_filter
    #   <p>A filter that specifies a quality bar for how much filtering is done to identify faces.
    #         Filtered faces aren't searched for in the collection. If you specify <code>AUTO</code>,
    #         Amazon Rekognition chooses the quality bar. If you specify <code>LOW</code>, <code>MEDIUM</code>, or
    #           <code>HIGH</code>, filtering removes all faces that don’t meet the chosen quality bar.
    #          The quality bar is
    #         based on a variety of common use cases. Low-quality detections can occur for a number of
    #         reasons. Some examples are an object that's misidentified as a face, a face that's too blurry,
    #         or a face with a pose that's too extreme to use. If you specify <code>NONE</code>, no
    #         filtering is performed. The default value is <code>NONE</code>. </p>
    #            <p>To use quality filtering, the collection you are using must be associated with version 3
    #         of the face model or higher.</p>
    # @example To search for faces matching a supplied image
    #   # This operation searches for faces in a Rekognition collection that match the largest face in an S3 bucket stored image.
    #   params = {
    #     collection_id: "myphotos",
    #     image: {
    #       s3_object: {
    #         bucket: "mybucket",
    #         name: "myphoto"
    #       }
    #     },
    #     max_faces: 5,
    #     face_match_threshold: 95
    #   }
    #   options = {}
    #   response = client.search_faces_by_image(params, options)
    #   response.to_h #=>
    #   {
    #     searched_face_bounding_box: {
    #       width: 0.25,
    #       top: 0.4933333396911621,
    #       left: 0.31888890266418457,
    #       height: 0.33481481671333313
    #     },
    #     searched_face_confidence: 99.9991226196289,
    #     face_matches: [
    #       {
    #         face: {
    #           bounding_box: {
    #             width: 0.24222199618816376,
    #             top: 0.5,
    #             left: 0.3233329951763153,
    #             height: 0.3234420120716095
    #           },
    #           face_id: "38271d79-7bc2-5efb-b752-398a8d575b85",
    #           confidence: 99.99829864501953,
    #           image_id: "d5631190-d039-54e4-b267-abd22c8647c5"
    #         },
    #         similarity: 99.97036743164062
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     max_faces: 1,
    #     face_match_threshold: 1.0,
    #     quality_filter: "NONE" # One of: ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #   }
    #   options = {}
    #   response = client.search_faces_by_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     searched_face_bounding_box: {
    #       width: 1.0,
    #       height: 1.0,
    #       left: 1.0,
    #       top: 1.0
    #     },
    #     searched_face_confidence: 1.0,
    #     face_matches: [
    #       {
    #         similarity: 1.0,
    #         face: {
    #           face_id: "FaceId",
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           image_id: "ImageId",
    #           external_image_id: "ExternalImageId",
    #           confidence: 1.0,
    #           index_faces_model_version: "IndexFacesModelVersion",
    #           user_id: "UserId"
    #         }
    #       }
    #     ],
    #     face_model_version: "String"
    #   }
    # @return [Types::SearchFacesByImageResponse]
    def search_faces_by_image(params = {}, options = {})
      request = build_request(:search_faces_by_image, params)
      request.send_request(options)
    end

    # <p>Searches for UserIDs within a collection based on a <code>FaceId</code> or
    #         <code>UserId</code>. This API can be used to find the closest UserID (with a highest
    #       similarity) to associate a face. The request must be provided with either <code>FaceId</code>
    #       or <code>UserId</code>. The operation returns an array of UserID that match the
    #         <code>FaceId</code> or <code>UserId</code>, ordered by similarity score with the highest
    #       similarity first. </p>
    # @param [Hash, Types::SearchUsersRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection containing the UserID, used with a UserId or FaceId. If a
    #         FaceId is provided, UserId isn’t required to be present in the Collection.</p>
    # @option params [String] :user_id
    #   <p>ID for the existing User.</p>
    # @option params [String] :face_id
    #   <p>ID for the existing face.</p>
    # @option params [Float] :user_match_threshold
    #   <p>Optional value that specifies the minimum confidence in the matched UserID to return.
    #         Default value of 80.</p>
    # @option params [Integer] :max_users
    #   <p>Maximum number of identities to return.</p>
    # @example SearchUsers
    #   # Searches for UserIDs within a collection based on a FaceId or UserId.
    #   params = {
    #     collection_id: "MyCollection",
    #     user_id: "DemoUser",
    #     max_users: 2,
    #     user_match_threshold: 70
    #   }
    #   options = {}
    #   response = client.search_users(params, options)
    #   response.to_h #=>
    #   {
    #     searched_user: {
    #       user_id: "DemoUser"
    #     },
    #     user_matches: [
    #       {
    #         user: {
    #           user_id: "demoUser1",
    #           user_status: ACTIVE
    #         },
    #         similarity: 99.88186645507812
    #       }
    #     ],
    #     face_model_version: "6"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     user_id: "UserId",
    #     face_id: "FaceId",
    #     user_match_threshold: 1.0,
    #     max_users: 1
    #   }
    #   options = {}
    #   response = client.search_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_matches: [
    #       {
    #         similarity: 1.0,
    #         user: {
    #           user_id: "UserId",
    #           user_status: "ACTIVE" # One of: ["ACTIVE", "UPDATING", "CREATING", "CREATED"]
    #         }
    #       }
    #     ],
    #     face_model_version: "String",
    #     searched_face: {
    #       face_id: "FaceId"
    #     },
    #     searched_user: {
    #       user_id: "UserId"
    #     }
    #   }
    # @return [Types::SearchUsersResponse]
    def search_users(params = {}, options = {})
      request = build_request(:search_users, params)
      request.send_request(options)
    end

    # <p>Searches for UserIDs using a supplied image. It first detects the largest face in the
    #       image, and then searches a specified collection for matching UserIDs. </p>
    #          <p>The operation returns an array of UserIDs that match the face in the supplied image,
    #       ordered by similarity score with the highest similarity first. It also returns a bounding box
    #       for the face found in the input image. </p>
    #          <p>Information about faces detected in the supplied image, but not used for the search, is
    #       returned in an array of <code>UnsearchedFace</code> objects. If no valid face is detected in
    #       the image, the response will contain an empty <code>UserMatches</code> list and no
    #         <code>SearchedFace</code> object. </p>
    # @param [Hash, Types::SearchUsersByImageRequest] params
    # @option params [String] :collection_id
    #   <p>The ID of an existing collection containing the UserID.</p>
    # @option params [Types::Image] :image
    #   <p>Provides the input image either as bytes or an S3 object.</p>
    #            <p>You pass image bytes to an Amazon Rekognition API operation by using the <code>Bytes</code>
    #         property. For example, you would use the <code>Bytes</code> property to pass an image loaded
    #         from a local file system. Image bytes passed by using the <code>Bytes</code> property must be
    #         base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to
    #         call Amazon Rekognition API operations. </p>
    #            <p>For more information, see Analyzing an Image Loaded from a Local File System
    #         in the Amazon Rekognition Developer Guide.</p>
    #            <p> You pass images stored in an S3 bucket to an Amazon Rekognition API operation by using the
    #           <code>S3Object</code> property. Images stored in an S3 bucket do not need to be
    #         base64-encoded.</p>
    #            <p>The region for the S3 bucket containing the S3 object must match the region you use for
    #         Amazon Rekognition operations.</p>
    #            <p>If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes using the
    #         Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and
    #         then call the operation using the S3Object property.</p>
    #            <p>For Amazon Rekognition to process an S3 object, the user must have permission to
    #         access the S3 object. For more information, see How Amazon Rekognition works with IAM in the
    #         Amazon Rekognition Developer Guide. </p>
    # @option params [Float] :user_match_threshold
    #   <p>Specifies the minimum confidence in the UserID match to return. Default value is
    #         80.</p>
    # @option params [Integer] :max_users
    #   <p>Maximum number of UserIDs to return.</p>
    # @option params [String] :quality_filter
    #   <p>A filter that specifies a quality bar for how much filtering is done to identify faces.
    #         Filtered faces aren't searched for in the collection. The default value is NONE.</p>
    # @example SearchUsersByImage
    #   # Searches for UserIDs using a supplied image.
    #   params = {
    #     collection_id: "MyCollection",
    #     image: {
    #       s3_object: {
    #         bucket: "bucket",
    #         name: "input.jpg"
    #       }
    #     },
    #     max_users: 2,
    #     user_match_threshold: 70,
    #     quality_filter: MEDIUM
    #   }
    #   options = {}
    #   response = client.search_users_by_image(params, options)
    #   response.to_h #=>
    #   {
    #     searched_face: {
    #       face_detail: {
    #         bounding_box: {
    #           width: 0.03692837432026863,
    #           top: 0.5391526818275452,
    #           left: 0.3598678708076477,
    #           height: 0.07510016113519669
    #         }
    #       }
    #     },
    #     user_matches: [
    #       {
    #         user: {
    #           user_id: "demoUser1",
    #           user_status: ACTIVE
    #         },
    #         similarity: 99.88186645507812
    #       }
    #     ],
    #     face_model_version: "6",
    #     unsearched_faces: [
    #       {
    #         face_details: {
    #           bounding_box: {
    #             width: 0.031677018851041794,
    #             top: 0.5593535900115967,
    #             left: 0.6102562546730042,
    #             height: 0.0682177022099495
    #           }
    #         },
    #         reasons: [
    #           FACE_NOT_LARGEST
    #         ]
    #       },
    #       {
    #         face_details: {
    #           bounding_box: {
    #             width: 0.03254449740052223,
    #             top: 0.6080358028411865,
    #             left: 0.516062319278717,
    #             height: 0.06347997486591339
    #           }
    #         },
    #         reasons: [
    #           FACE_NOT_LARGEST
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_id: "CollectionId", # required
    #     image: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     user_match_threshold: 1.0,
    #     max_users: 1,
    #     quality_filter: "NONE" # One of: ["NONE", "AUTO", "LOW", "MEDIUM", "HIGH"]
    #   }
    #   options = {}
    #   response = client.search_users_by_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_matches: [
    #       {
    #         similarity: 1.0,
    #         user: {
    #           user_id: "UserId",
    #           user_status: "ACTIVE" # One of: ["ACTIVE", "UPDATING", "CREATING", "CREATED"]
    #         }
    #       }
    #     ],
    #     face_model_version: "String",
    #     searched_face: {
    #       face_detail: {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         age_range: {
    #           low: 1,
    #           high: 1
    #         },
    #         smile: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         eyeglasses: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         sunglasses: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         gender: {
    #           value: "Male" # One of: ["Male", "Female"],
    #           confidence: 1.0
    #         },
    #         beard: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         mustache: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         eyes_open: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         mouth_open: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         emotions: [
    #           {
    #             type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #             confidence: 1.0
    #           }
    #         ],
    #         landmarks: [
    #           {
    #             type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ],
    #         pose: {
    #           roll: 1.0,
    #           yaw: 1.0,
    #           pitch: 1.0
    #         },
    #         quality: {
    #           brightness: 1.0,
    #           sharpness: 1.0
    #         },
    #         confidence: 1.0,
    #         face_occluded: {
    #           value: false,
    #           confidence: 1.0
    #         },
    #         eye_direction: {
    #           yaw: 1.0,
    #           pitch: 1.0,
    #           confidence: 1.0
    #         }
    #       }
    #     },
    #     unsearched_faces: [
    #       {
    #         face_details: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           age_range: {
    #             low: 1,
    #             high: 1
    #           },
    #           smile: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eyeglasses: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           sunglasses: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           gender: {
    #             value: "Male" # One of: ["Male", "Female"],
    #             confidence: 1.0
    #           },
    #           beard: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           mustache: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eyes_open: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           mouth_open: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           emotions: [
    #             {
    #               type: "HAPPY" # One of: ["HAPPY", "SAD", "ANGRY", "CONFUSED", "DISGUSTED", "SURPRISED", "CALM", "UNKNOWN", "FEAR"],
    #               confidence: 1.0
    #             }
    #           ],
    #           landmarks: [
    #             {
    #               type: "eyeLeft" # One of: ["eyeLeft", "eyeRight", "nose", "mouthLeft", "mouthRight", "leftEyeBrowLeft", "leftEyeBrowRight", "leftEyeBrowUp", "rightEyeBrowLeft", "rightEyeBrowRight", "rightEyeBrowUp", "leftEyeLeft", "leftEyeRight", "leftEyeUp", "leftEyeDown", "rightEyeLeft", "rightEyeRight", "rightEyeUp", "rightEyeDown", "noseLeft", "noseRight", "mouthUp", "mouthDown", "leftPupil", "rightPupil", "upperJawlineLeft", "midJawlineLeft", "chinBottom", "midJawlineRight", "upperJawlineRight"],
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           pose: {
    #             roll: 1.0,
    #             yaw: 1.0,
    #             pitch: 1.0
    #           },
    #           quality: {
    #             brightness: 1.0,
    #             sharpness: 1.0
    #           },
    #           confidence: 1.0,
    #           face_occluded: {
    #             value: false,
    #             confidence: 1.0
    #           },
    #           eye_direction: {
    #             yaw: 1.0,
    #             pitch: 1.0,
    #             confidence: 1.0
    #           }
    #         },
    #         reasons: ["FACE_NOT_LARGEST" # One of: ["FACE_NOT_LARGEST", "EXCEEDS_MAX_FACES", "EXTREME_POSE", "LOW_BRIGHTNESS", "LOW_SHARPNESS", "LOW_CONFIDENCE", "SMALL_BOUNDING_BOX", "LOW_FACE_QUALITY"]]
    #       }
    #     ]
    #   }
    # @return [Types::SearchUsersByImageResponse]
    def search_users_by_image(params = {}, options = {})
      request = build_request(:search_users_by_image, params)
      request.send_request(options)
    end

    # <p>Starts asynchronous recognition of celebrities in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect celebrities in a video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #       and the filename of the video.
    #       <code>StartCelebrityRecognition</code>
    #       returns a job identifier (<code>JobId</code>) which you use to get the results of the analysis.
    #       When celebrity recognition analysis is finished, Amazon Rekognition Video publishes a completion status
    #       to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.
    #       To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS
    #       topic is <code>SUCCEEDED</code>. If so, call  <a>GetCelebrityRecognition</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartCelebrityRecognition</code>. </p>
    #          <p>For more information, see Recognizing celebrities in the Amazon Rekognition Developer Guide.</p>
    # @param [Hash, Types::StartCelebrityRecognitionRequest] params
    # @option params [Types::Video] :video
    #   <p>The video in which you want to recognize celebrities. The video must be stored
    #         in an Amazon S3 bucket.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #       <code>StartCelebrityRecognition</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the
    #         celebrity recognition analysis to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag"
    #   }
    #   options = {}
    #   response = client.start_celebrity_recognition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartCelebrityRecognitionResponse]
    def start_celebrity_recognition(params = {}, options = {})
      request = build_request(:start_celebrity_recognition, params)
      request.send_request(options)
    end

    # <p> Starts asynchronous detection of inappropriate, unwanted, or offensive content in a stored video. For a list of moderation labels in Amazon Rekognition, see
    #       <a href="https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api">Using the image and video moderation APIs</a>.</p>
    #          <p>Amazon Rekognition Video can moderate content in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #       and the filename of the video. <code>StartContentModeration</code>
    #         returns a job identifier (<code>JobId</code>) which you use to get the results of the analysis.
    #         When content analysis is finished, Amazon Rekognition Video publishes a completion status
    #         to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.</p>
    #          <p>To get the results of the content analysis, first check that the status value published to the Amazon SNS
    #         topic is <code>SUCCEEDED</code>. If so, call <a>GetContentModeration</a> and pass the job identifier
    #         (<code>JobId</code>) from the initial call to <code>StartContentModeration</code>. </p>
    #          <p>For more information, see Moderating content in the Amazon Rekognition Developer Guide.</p>
    # @param [Hash, Types::StartContentModerationRequest] params
    # @option params [Types::Video] :video
    #   <p>The video in which you want to detect inappropriate, unwanted, or offensive content. The video must be stored
    #         in an Amazon S3 bucket.</p>
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence that Amazon Rekognition must have in order to return a moderated content label. Confidence
    #         represents how certain Amazon Rekognition is that the moderated content is correctly identified. 0 is the lowest confidence.
    #         100 is the highest confidence.  Amazon Rekognition doesn't return any moderated content labels with a confidence level
    #         lower than this specified value. If you don't specify <code>MinConfidence</code>, <code>GetContentModeration</code>
    #          returns labels with confidence values greater than or equal to 50 percent.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartContentModeration</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the
    #         content analysis to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     min_confidence: 1.0,
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag"
    #   }
    #   options = {}
    #   response = client.start_content_moderation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartContentModerationResponse]
    def start_content_moderation(params = {}, options = {})
      request = build_request(:start_content_moderation, params)
      request.send_request(options)
    end

    # <p>Starts asynchronous detection of faces in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect faces in a video stored in an Amazon S3 bucket.
    #        Use <a>Video</a> to specify the bucket name and the filename of the video.
    #        <code>StartFaceDetection</code> returns a job identifier (<code>JobId</code>) that you
    #        use to get the results of the operation.
    #        When face detection is finished, Amazon Rekognition Video publishes a completion status
    #        to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.
    #        To get the results of the face detection operation, first check that the status value published to the Amazon SNS
    #        topic is <code>SUCCEEDED</code>. If so, call  <a>GetFaceDetection</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartFaceDetection</code>.</p>
    #          <p>For more information, see Detecting faces in a stored video in the 
    #      Amazon Rekognition Developer Guide.</p>
    # @param [Hash, Types::StartFaceDetectionRequest] params
    # @option params [Types::Video] :video
    #   <p>The video in which you want to detect faces. The video must be stored
    #         in an Amazon S3 bucket.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartFaceDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the
    #            face detection operation. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    # @option params [String] :face_attributes
    #   <p>The face attributes you want returned.</p>
    #            <p>
    #               <code>DEFAULT</code> - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks. </p>
    #            <p>
    #               <code>ALL</code> - All facial attributes are returned.</p>
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     face_attributes: "DEFAULT" # One of: ["DEFAULT", "ALL"],
    #     job_tag: "JobTag"
    #   }
    #   options = {}
    #   response = client.start_face_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartFaceDetectionResponse]
    def start_face_detection(params = {}, options = {})
      request = build_request(:start_face_detection, params)
      request.send_request(options)
    end

    # <p>Starts the asynchronous search for faces in a collection that match the faces of persons detected in a stored video.</p>
    #          <p>The video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #       and the filename of the video. <code>StartFaceSearch</code>
    #       returns a job identifier (<code>JobId</code>) which you use to get the search results once the search has completed.
    #       When searching is finished, Amazon Rekognition Video publishes a completion status
    #       to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.
    #       To get the search results, first check that the status value published to the Amazon SNS
    #       topic is <code>SUCCEEDED</code>. If so, call <a>GetFaceSearch</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartFaceSearch</code>. For more information, see
    #       <a href="https://docs.aws.amazon.com/rekognition/latest/dg/procedure-person-search-videos.html">Searching stored videos for faces</a>.
    #     </p>
    # @param [Hash, Types::StartFaceSearchRequest] params
    # @option params [Types::Video] :video
    #   <p>The video you want to search. The video must be stored in an Amazon S3 bucket. </p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartFaceSearch</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    # @option params [Float] :face_match_threshold
    #   <p>The minimum confidence in the person match to return. For example, don't return any matches where confidence in matches is less than 70%.
    #         The default value is 80%.</p>
    # @option params [String] :collection_id
    #   <p>ID of the collection that contains the faces you want to search for.</p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the search. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     face_match_threshold: 1.0,
    #     collection_id: "CollectionId", # required
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag"
    #   }
    #   options = {}
    #   response = client.start_face_search(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartFaceSearchResponse]
    def start_face_search(params = {}, options = {})
      request = build_request(:start_face_search, params)
      request.send_request(options)
    end

    # <p>Starts asynchronous detection of labels in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect labels in a video. Labels are instances of real-world entities.
    #        This includes objects like flower, tree, and table; events like
    #        wedding, graduation, and birthday party; concepts like landscape, evening, and nature; and activities
    #        like a person getting out of a car or a person skiing.</p>
    #          <p>The video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #        and the filename of the video.
    #         <code>StartLabelDetection</code> returns a job identifier (<code>JobId</code>) which you use to get the
    #        results of the operation. When label detection is finished, Amazon Rekognition Video publishes a completion status
    #         to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.</p>
    #          <p>To get the results of the label detection operation, first check that the status value published to the Amazon SNS
    #         topic is <code>SUCCEEDED</code>. If so, call  <a>GetLabelDetection</a> and pass the job identifier
    #        (<code>JobId</code>) from the initial call to <code>StartLabelDetection</code>.</p>
    #          <p>
    #             <i>Optional Parameters</i>
    #          </p>
    #          <p>
    #             <code>StartLabelDetection</code> has the <code>GENERAL_LABELS</code> Feature applied by
    #       default.  This feature allows you to provide filtering criteria to the <code>Settings</code>
    #       parameter. You can filter with sets of individual labels or with label categories. You can
    #       specify inclusive filters, exclusive filters, or a combination of inclusive and exclusive
    #       filters. For more information on filtering, see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/labels-detecting-labels-video.html">Detecting labels in a
    #         video</a>.</p>
    #          <p>You can specify <code>MinConfidence</code> to control the confidence threshold for the
    #       labels returned. The default is 50.</p>
    # @param [Hash, Types::StartLabelDetectionRequest] params
    # @option params [Types::Video] :video
    #   <p>The video in which you want to detect labels. The video must be stored
    #         in an Amazon S3 bucket.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartLabelDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    # @option params [Float] :min_confidence
    #   <p>Specifies the minimum confidence that Amazon Rekognition Video must have in order to return a detected label. Confidence
    #          represents how certain Amazon Rekognition is that a label is correctly identified.0 is the lowest confidence.
    #          100 is the highest confidence.  Amazon Rekognition Video doesn't return any labels with a confidence level
    #          lower than this specified value.</p>
    #            <p>If you don't specify <code>MinConfidence</code>, the operation returns labels and
    #         bounding boxes (if detected)  with confidence values greater than or equal to 50
    #         percent.</p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the label detection
    #           operation to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    # @option params [Array<String>] :features
    #   <p>The features to return after video analysis. You can specify that GENERAL_LABELS are returned.</p>
    # @option params [Types::LabelDetectionSettings] :settings
    #   <p>The settings for a StartLabelDetection request.Contains the specified parameters for the label detection request of an asynchronous label analysis operation. 
    #         Settings can include filters for GENERAL_LABELS.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     min_confidence: 1.0,
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag",
    #     features: ["GENERAL_LABELS" # One of: ["GENERAL_LABELS"]],
    #     settings: {
    #       general_labels: {
    #         label_inclusion_filters: ["GeneralLabelsFilterValue"],
    #         label_exclusion_filters: ["GeneralLabelsFilterValue"],
    #         label_category_inclusion_filters: ["GeneralLabelsFilterValue"],
    #         label_category_exclusion_filters: ["GeneralLabelsFilterValue"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_label_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartLabelDetectionResponse]
    def start_label_detection(params = {}, options = {})
      request = build_request(:start_label_detection, params)
      request.send_request(options)
    end

    # <p>Initiates a new media analysis job. Accepts a manifest file in an Amazon S3 bucket. The
    #             output is a manifest file and a summary of the manifest stored in the Amazon S3 bucket.</p>
    # @param [Hash, Types::StartMediaAnalysisJobRequest] params
    # @option params [String] :client_request_token
    #   <p>Idempotency token used to prevent the accidental creation of duplicate versions. If
    #               you use the same token with multiple <code>StartMediaAnalysisJobRequest</code> requests, the same
    #               response is returned. Use <code>ClientRequestToken</code> to prevent the same request from being
    #               processed more than once.</p>
    # @option params [String] :job_name
    #   <p>The name of the job. Does not have to be unique.</p>
    # @option params [Types::MediaAnalysisOperationsConfig] :operations_config
    #   <p>Configuration options for the media analysis job to be created.</p>
    # @option params [Types::MediaAnalysisInput] :input
    #   <p>Input data to be analyzed by the job.</p>
    # @option params [Types::MediaAnalysisOutputConfig] :output_config
    #   <p>The Amazon S3 bucket location to store the results.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier of customer managed AWS KMS key (name or ARN). The key 
    #           is used to encrypt images copied into the service. The key is also used 
    #           to encrypt results and manifest files written to the output Amazon S3 bucket.</p>
    # @example StartMediaAnalysisJob
    #   # Initiates a new media analysis job.
    #   params = {
    #     job_name: "job-name",
    #     operations_config: {
    #       detect_moderation_labels: {
    #         min_confidence: 50,
    #         project_version: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/version/1/1690556751958"
    #       }
    #     },
    #     input: {
    #       s3_object: {
    #         bucket: "input-bucket",
    #         name: "input-manifest.json"
    #       }
    #     },
    #     output_config: {
    #       s3_bucket: "output-bucket",
    #       s3_key_prefix: "output-location"
    #     }
    #   }
    #   options = {}
    #   response = client.start_media_analysis_job(params, options)
    #   response.to_h #=>
    #   {
    #     job_id: "861a0645d98ef88efb75477628c011c04942d9d5f58faf2703c393c8cf8c1537"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     job_name: "MediaAnalysisJobName",
    #     operations_config: { # required
    #       detect_moderation_labels: {
    #         min_confidence: 1.0,
    #         project_version: "ProjectVersionId"
    #       }
    #     },
    #     input: { # required
    #       s3_object: { # required
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     output_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key_prefix: "MediaAnalysisS3KeyPrefix"
    #     },
    #     kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.start_media_analysis_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "MediaAnalysisJobId", # required
    #   }
    # @return [Types::StartMediaAnalysisJobResponse]
    def start_media_analysis_job(params = {}, options = {})
      request = build_request(:start_media_analysis_job, params)
      request.send_request(options)
    end

    # <note>
    #             <p>
    #                <i>End of support notice:</i> On October 31, 2025, AWS will discontinue
    #          support for Amazon Rekognition People Pathing. After October 31, 2025, you will no
    #          longer be able to use the Rekognition People Pathing capability. For more information,
    #          visit this <a href="https://aws.amazon.com/blogs/machine-learning/transitioning-from-amazon-rekognition-people-pathing-exploring-other-alternatives/">blog post</a>.</p>
    #          </note>
    #          <p>Starts the asynchronous tracking of a person's path in a stored video.</p>
    #          <p>Amazon Rekognition Video can track the path of people in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name
    #        and the filename of the video. <code>StartPersonTracking</code>
    #        returns a job identifier (<code>JobId</code>) which you use to get the results of the operation.
    #        When label detection is finished, Amazon Rekognition publishes a completion status
    #        to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>. </p>
    #          <p>To get the results of the person detection operation, first check that the status value published to the Amazon SNS
    #        topic is <code>SUCCEEDED</code>. If so, call  <a>GetPersonTracking</a> and pass the job identifier
    #       (<code>JobId</code>) from the initial call to <code>StartPersonTracking</code>.</p>
    # @param [Hash, Types::StartPersonTrackingRequest] params
    # @option params [Types::Video] :video
    #   <p>The video in which you want to detect people. The video must be stored
    #         in an Amazon S3 bucket.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartPersonTracking</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN you want Amazon Rekognition Video to publish the completion status of the people detection
    #           operation to. The Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy.</p>
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     job_tag: "JobTag"
    #   }
    #   options = {}
    #   response = client.start_person_tracking(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartPersonTrackingResponse]
    def start_person_tracking(params = {}, options = {})
      request = build_request(:start_person_tracking, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Starts the running of the version of a model. Starting a model takes a while to
    #          complete. To check the current state of the model, use <a>DescribeProjectVersions</a>. </p>
    #          <p>Once the model is running, you can detect custom labels in new images by calling 
    #          <a>DetectCustomLabels</a>.</p>
    #          <note>
    #             <p>You are charged for the amount of time that the model is running. To stop a running
    #       model, call <a>StopProjectVersion</a>.</p>
    #          </note>
    #          <p>This operation requires permissions to perform the 
    #          <code>rekognition:StartProjectVersion</code> action.</p>
    # @param [Hash, Types::StartProjectVersionRequest] params
    # @option params [String] :project_version_arn
    #   <p>The Amazon Resource Name(ARN) of the model version that you want to start.</p>
    # @option params [Integer] :min_inference_units
    #   <p>The minimum number of inference units to use. A single
    #         inference unit represents 1 hour of processing. </p>
    #            <p>Use a higher number to increase the TPS throughput of your model. You are charged for the number
    #         of inference units that you use.
    #       </p>
    # @option params [Integer] :max_inference_units
    #   <p>The maximum number of inference units to use for auto-scaling the model. If you don't
    #            specify a value, Amazon Rekognition Custom Labels doesn't auto-scale the model.</p>
    # @example To start an Amazon Rekognition Custom Labels model
    #   # Starts a version of an Amazon Rekognition Custom Labels model.
    #   params = {
    #     project_version_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/version/1/1690556751958",
    #     min_inference_units: 1,
    #     max_inference_units: 1
    #   }
    #   options = {}
    #   response = client.start_project_version(params, options)
    #   response.to_h #=>
    #   {
    #     status: STARTING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_version_arn: "ProjectVersionArn", # required
    #     min_inference_units: 1, # required
    #     max_inference_units: 1
    #   }
    #   options = {}
    #   response = client.start_project_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "TRAINING_IN_PROGRESS" # One of: ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING", "COPYING_IN_PROGRESS", "COPYING_COMPLETED", "COPYING_FAILED", "DEPRECATED", "EXPIRED"]
    #   }
    # @return [Types::StartProjectVersionResponse]
    def start_project_version(params = {}, options = {})
      request = build_request(:start_project_version, params)
      request.send_request(options)
    end

    # <p>Starts asynchronous detection of segment detection in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect segments in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and 
    #       the filename of the video. <code>StartSegmentDetection</code> returns a job identifier (<code>JobId</code>) which you use to get 
    #       the results of the operation. When segment detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic
    #       that you specify in <code>NotificationChannel</code>.</p>
    #          <p>You can use the <code>Filters</code> (<a>StartSegmentDetectionFilters</a>) 
    #       input parameter to specify the minimum detection confidence returned in the response. 
    #       Within <code>Filters</code>, use <code>ShotFilter</code> (<a>StartShotDetectionFilter</a>)
    #       to filter detected shots. Use  <code>TechnicalCueFilter</code> (<a>StartTechnicalCueDetectionFilter</a>)
    #       to filter technical cues. </p>
    #          <p>To get the results of the segment detection operation, first check that the status value published to the Amazon SNS 
    #       topic is <code>SUCCEEDED</code>. if so, call <a>GetSegmentDetection</a> and pass the job identifier (<code>JobId</code>) 
    #       from the initial call to <code>StartSegmentDetection</code>. </p>
    #          <p>For more information, see Detecting video segments in stored video in the Amazon Rekognition Developer Guide.</p>
    # @param [Hash, Types::StartSegmentDetectionRequest] params
    # @option params [Types::Video] :video
    #   <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to
    #               specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple
    #         <code>StartSegmentDetection</code> requests, the same <code>JobId</code> is returned. Use
    #         <code>ClientRequestToken</code> to prevent the same job from being accidently started more than once. </p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the
    #         segment detection operation. Note that the Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.</p>
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic.
    #         For example, you can use <code>JobTag</code> to group related jobs and identify them in the completion notification.</p>
    # @option params [Types::StartSegmentDetectionFilters] :filters
    #   <p>Filters for technical cue or shot detection.</p>
    # @option params [Array<String>] :segment_types
    #   <p>An array of segment types to detect in the video. Valid values are TECHNICAL_CUE and SHOT.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
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
    #         black_frame: {
    #           max_pixel_threshold: 1.0,
    #           min_coverage_percentage: 1.0
    #         }
    #       },
    #       shot_filter: {
    #         min_segment_confidence: 1.0
    #       }
    #     },
    #     segment_types: ["TECHNICAL_CUE" # One of: ["TECHNICAL_CUE", "SHOT"]], # required
    #   }
    #   options = {}
    #   response = client.start_segment_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartSegmentDetectionResponse]
    def start_segment_detection(params = {}, options = {})
      request = build_request(:start_segment_detection, params)
      request.send_request(options)
    end

    # <p>Starts processing a stream processor. You create a stream processor by calling <a>CreateStreamProcessor</a>.
    #             To tell <code>StartStreamProcessor</code> which stream processor to start, use the value of the <code>Name</code> field specified in the call to
    #             <code>CreateStreamProcessor</code>.</p>
    #          <p>If you are using a label detection stream processor to detect labels, you need to provide a <code>Start selector</code> and a <code>Stop selector</code> to determine the length of the stream processing time.</p>
    # @param [Hash, Types::StartStreamProcessorRequest] params
    # @option params [String] :name
    #   <p>The name of the stream processor to start processing.</p>
    # @option params [Types::StreamProcessingStartSelector] :start_selector
    #   <p>
    #               Specifies the starting point in the Kinesis stream to start processing. 
    #               You can use the producer timestamp or the fragment number. If you use the producer timestamp, you must put the time in milliseconds.
    #               For more information about fragment numbers, see <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_reader_Fragment.html">Fragment</a>. 
    #           </p>
    #            <p>This is a required parameter for label detection stream processors and should not be used to start a face search stream processor.</p>
    # @option params [Types::StreamProcessingStopSelector] :stop_selector
    #   <p>
    #               Specifies when to stop processing the stream. You can specify a 
    #               maximum amount of time to process the video. 
    #           </p>
    #            <p>This is a required parameter for label detection stream processors and should not be used to start a face search stream processor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StreamProcessorName", # required
    #     start_selector: {
    #       kvs_stream_start_selector: {
    #         producer_timestamp: 1,
    #         fragment_number: "KinesisVideoStreamFragmentNumber"
    #       }
    #     },
    #     stop_selector: {
    #       max_duration_in_seconds: 1
    #     }
    #   }
    #   options = {}
    #   response = client.start_stream_processor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "StartStreamProcessorSessionId"
    #   }
    # @return [Types::StartStreamProcessorResponse]
    def start_stream_processor(params = {}, options = {})
      request = build_request(:start_stream_processor, params)
      request.send_request(options)
    end

    # <p>Starts asynchronous detection of text in a stored video.</p>
    #          <p>Amazon Rekognition Video can detect text in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and 
    #        the filename of the video. <code>StartTextDetection</code> returns a job identifier (<code>JobId</code>) which you use to get 
    #        the results of the operation. When text detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic
    #        that you specify in <code>NotificationChannel</code>.</p>
    #          <p>To get the results of the text detection operation, first check that the status value published to the Amazon SNS 
    #        topic is <code>SUCCEEDED</code>. if so, call <a>GetTextDetection</a> and pass the job identifier (<code>JobId</code>) 
    #        from the initial call to <code>StartTextDetection</code>. </p>
    # @param [Hash, Types::StartTextDetectionRequest] params
    # @option params [Types::Video] :video
    #   <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to
    #               specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token used to identify the start request. If you use the same token with multiple <code>StartTextDetection</code>
    #         requests, the same <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same job 
    #           from being accidentaly started more than once.</p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see
    #             <a href="https://docs.aws.amazon.com/rekognition/latest/dg/api-video.html">Calling Amazon Rekognition Video operations</a>. Note that the Amazon SNS topic must have a topic name that begins with <i>AmazonRekognition</i> if you are using the AmazonRekognitionServiceRole permissions policy to access the topic.
    #             For more information, see <a href="https://docs.aws.amazon.com/rekognition/latest/dg/api-video-roles.html#api-video-roles-all-topics">Giving access to multiple Amazon SNS topics</a>.</p>
    # @option params [String] :job_tag
    #   <p>An identifier returned in the completion status published by your Amazon Simple Notification Service topic.  For example, you can use <code>JobTag</code> to group related jobs
    #         and identify them in the completion notification.</p>
    # @option params [Types::StartTextDetectionFilters] :filters
    #   <p>Optional parameters that let you set criteria the text must meet to be included in your response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     video: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
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
    #         min_bounding_box_width: 1.0
    #       },
    #       regions_of_interest: [
    #         {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.start_text_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartTextDetectionResponse]
    def start_text_detection(params = {}, options = {})
      request = build_request(:start_text_detection, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Stops a running model. The operation might take a while to complete. To check the
    #          current status, call <a>DescribeProjectVersions</a>. Only applies to Custom
    #          Labels projects.</p>
    #          <p>This operation requires permissions to perform the <code>rekognition:StopProjectVersion</code> action.</p>
    # @param [Hash, Types::StopProjectVersionRequest] params
    # @option params [String] :project_version_arn
    #   <p>The Amazon Resource Name (ARN) of the model version that you want to stop.</p>
    #            <p>This operation requires permissions to perform the <code>rekognition:StopProjectVersion</code> action.</p>
    # @example To stop an Amazon Rekognition Custom Labels model.
    #   # Stops a version of an Amazon Rekognition Custom Labels model.
    #   params = {
    #     project_version_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-project/version/1/1690556751958"
    #   }
    #   options = {}
    #   response = client.stop_project_version(params, options)
    #   response.to_h #=>
    #   {
    #     status: STOPPING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_version_arn: "ProjectVersionArn", # required
    #   }
    #   options = {}
    #   response = client.stop_project_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "TRAINING_IN_PROGRESS" # One of: ["TRAINING_IN_PROGRESS", "TRAINING_COMPLETED", "TRAINING_FAILED", "STARTING", "RUNNING", "FAILED", "STOPPING", "STOPPED", "DELETING", "COPYING_IN_PROGRESS", "COPYING_COMPLETED", "COPYING_FAILED", "DEPRECATED", "EXPIRED"]
    #   }
    # @return [Types::StopProjectVersionResponse]
    def stop_project_version(params = {}, options = {})
      request = build_request(:stop_project_version, params)
      request.send_request(options)
    end

    # <p>Stops a running stream processor that was created by <a>CreateStreamProcessor</a>.</p>
    # @param [Hash, Types::StopStreamProcessorRequest] params
    # @option params [String] :name
    #   <p>The name of a stream processor created by <a>CreateStreamProcessor</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StreamProcessorName", # required
    #   }
    #   options = {}
    #   response = client.stop_stream_processor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopStreamProcessorResponse]
    def stop_stream_processor(params = {}, options = {})
      request = build_request(:stop_stream_processor, params)
      request.send_request(options)
    end

    # <p> Adds one or more key-value tags to an Amazon Rekognition collection, stream processor, or Custom
    #       Labels model. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging AWS
    #         Resources</a>. </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:TagResource</code>
    #       action. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to
    #         assign the tags to. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The key-value tags to assign to the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p> Removes one or more tags from an Amazon Rekognition collection, stream processor, or Custom Labels
    #       model. </p>
    #          <p>This operation requires permissions to perform the
    #         <code>rekognition:UntagResource</code> action. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> Amazon Resource Name (ARN) of the model, collection, or stream processor that you want to
    #         remove the tags from. </p>
    # @option params [Array<String>] :tag_keys
    #   <p> A list of the tags that you want to remove. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation applies only to Amazon Rekognition Custom Labels.</p>
    #          </note>
    #          <p>Adds or updates one or more entries (images) in a dataset. An entry is a JSON Line which contains the
    #       information for a single image,  including
    #       the image location, assigned labels, and object location bounding boxes.  For more information, 
    #       see Image-Level labels in manifest files and Object localization in manifest files in the <i>Amazon Rekognition Custom Labels Developer Guide</i>.
    #      </p>
    #          <p>If the <code>source-ref</code> field in the JSON line references an existing image, the existing image in the dataset
    #       is updated. 
    #       If <code>source-ref</code> field doesn't reference an existing image, the image is added as a new image to the dataset. </p>
    #          <p>You specify the changes that you want to make in the <code>Changes</code> input parameter. 
    #     There isn't a limit to the number JSON Lines that you can change, but the size of <code>Changes</code> must be less
    # than 5MB.</p>
    #          <p>
    #             <code>UpdateDatasetEntries</code> returns immediatly, but the dataset update might take a while to complete.
    #       Use <a>DescribeDataset</a> to check the 
    #       current status. The dataset updated successfully if the value of <code>Status</code> is
    #       <code>UPDATE_COMPLETE</code>. </p>
    #          <p>To check if any non-terminal errors occured, call <a>ListDatasetEntries</a>
    #       and check for the presence of <code>errors</code> lists in the JSON Lines.</p>
    #          <p>Dataset update fails if a terminal error occurs (<code>Status</code> = <code>UPDATE_FAILED</code>). 
    #       Currently, you can't access the terminal error information from the Amazon Rekognition Custom Labels SDK.
    #    </p>
    #          <p>This operation requires permissions to perform the <code>rekognition:UpdateDatasetEntries</code> action.</p>
    # @param [Hash, Types::UpdateDatasetEntriesRequest] params
    # @option params [String] :dataset_arn
    #   <p>
    #   The Amazon Resource Name (ARN) of the dataset that you want to update.
    #   </p>
    # @option params [Types::DatasetChanges] :changes
    #   <p>
    #      The changes that you want to make to the dataset. 
    #   </p>
    # @example To-add dataset entries to an Amazon Rekognition Custom Labels dataset
    #   # Adds dataset entries to an Amazon Rekognition Custom Labels dataset.
    #   params = {
    #     dataset_arn: "arn:aws:rekognition:us-east-1:111122223333:project/my-proj-2/dataset/train/1690564858106",
    #     changes: {
    #       ground_truth: "{\"source-ref\":\"s3://custom-labels-console-us-east-1-111111111/assets/flowers_1_test_dataset/mediterranean_spurge4.jpg\",\"mediterranean_spurge\":1,\"mediterranean_spurge-metadata\":{\"confidence\":1,\"job-name\":\"labeling-job/mediterranean_spurge\",\"class-name\":\"mediterranean_spurge\",\"human-annotated\":\"yes\",\"creation-date\":\"2021-07-11T03:33:42.025Z\",\"type\":\"groundtruth/image-classification\"},\"with_leaves\":1,\"with_leaves-metadata\":{\"confidence\":1,\"job-name\":\"labeling-job/with_leaves\",\"class-name\":\"with_leaves\",\"human-annotated\":\"yes\",\"creation-date\":\"2021-07-11T03:33:42.025Z\",\"type\":\"groundtruth/image-classification\"}}"
    #     }
    #   }
    #   options = {}
    #   response = client.update_dataset_entries(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "DatasetArn", # required
    #     changes: { # required
    #       ground_truth: "data", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_dataset_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDatasetEntriesResponse]
    def update_dataset_entries(params = {}, options = {})
      request = build_request(:update_dataset_entries, params)
      request.send_request(options)
    end

    # <p>
    #             Allows you to update a stream processor. You can change some settings and regions of interest and delete certain parameters.
    #         </p>
    # @param [Hash, Types::UpdateStreamProcessorRequest] params
    # @option params [String] :name
    #   <p>
    #               Name of the stream processor that you want to update.
    #           </p>
    # @option params [Types::StreamProcessorSettingsForUpdate] :settings_for_update
    #   <p>
    #               The stream processor settings that you want to update. Label detection settings can be updated to detect different labels with a different minimum confidence.
    #           </p>
    # @option params [Array<Types::RegionOfInterest>] :regions_of_interest_for_update
    #   <p>
    #               Specifies locations in the frames where Amazon Rekognition checks for objects or people. This is an optional parameter for label detection stream processors.
    #           </p>
    # @option params [Types::StreamProcessorDataSharingPreference] :data_sharing_preference_for_update
    #   <p>
    #               Shows whether you are sharing data with Rekognition to improve model performance. You can choose this option at the account level or on a per-stream basis.
    #               Note that if you opt out at the account level this setting is ignored on individual streams.
    #           </p>
    # @option params [Array<String>] :parameters_to_delete
    #   <p>
    #               A list of parameters you want to delete from the stream processor.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StreamProcessorName", # required
    #     settings_for_update: {
    #       connected_home_for_update: {
    #         labels: ["ConnectedHomeLabel"],
    #         min_confidence: 1.0
    #       }
    #     },
    #     regions_of_interest_for_update: [
    #       {
    #         bounding_box: {
    #           width: 1.0,
    #           height: 1.0,
    #           left: 1.0,
    #           top: 1.0
    #         },
    #         polygon: [
    #           {
    #             x: 1.0,
    #             y: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     data_sharing_preference_for_update: {
    #       opt_in: false, # required
    #     },
    #     parameters_to_delete: ["ConnectedHomeMinConfidence" # One of: ["ConnectedHomeMinConfidence", "RegionsOfInterest"]]
    #   }
    #   options = {}
    #   response = client.update_stream_processor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateStreamProcessorResponse]
    def update_stream_processor(params = {}, options = {})
      request = build_request(:update_stream_processor, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-rekognition'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

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
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
