# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::ChimeSDKMediaPipelines
  # An API client for ChimeSDKMediaPipelines.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ChimeSDKMediaPipelines::Client.new(
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

    @identifier = :chimesdkmediapipelines

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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::ChimeSDKMediaPipelines::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::ChimeSDKMediaPipelines::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ChimeSDKMediaPipelines::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a media pipeline.
    #
    # @option params [required, String] :source_type
    #   Source type from which the media artifacts are captured. A Chime SDK
    #   Meeting is the only supported source.
    #
    # @option params [required, String] :source_arn
    #   ARN of the source from which the media artifacts are captured.
    #
    # @option params [required, String] :sink_type
    #   Destination type to which the media artifacts are saved. You must use
    #   an S3 bucket.
    #
    # @option params [required, String] :sink_arn
    #   The ARN of the sink type.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the client request. The token makes the API
    #   request idempotent. Use a unique token for each media pipeline
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::ChimeSdkMeetingConfiguration] :chime_sdk_meeting_configuration
    #   The configuration for a specified media pipeline. `SourceType` must be
    #   `ChimeSdkMeeting`.
    #
    # @option params [Types::SseAwsKeyManagementParams] :sse_aws_key_management_params
    #   An object that contains server side encryption parameters to be used
    #   by media capture pipeline. The parameters can also be used by media
    #   concatenation pipeline taking media capture pipeline as a media
    #   source.
    #
    # @option params [String] :sink_iam_role_arn
    #   The Amazon Resource Name (ARN) of the sink role to be used with
    #   `AwsKmsKeyId` in `SseAwsKeyManagementParams`. Can only interact with
    #   `S3Bucket` sink type. The role must belong to the caller’s account and
    #   be able to act on behalf of the caller during the API call. All
    #   minimum policy permissions requirements for the caller to perform
    #   sink-related actions are the same for `SinkIamRoleArn`.
    #
    #   Additionally, the role must have permission to `kms:GenerateDataKey`
    #   using KMS key supplied as `AwsKmsKeyId` in
    #   `SseAwsKeyManagementParams`. If media concatenation will be required
    #   later, the role must also have permission to `kms:Decrypt` for the
    #   same KMS key.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @return [Types::CreateMediaCapturePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMediaCapturePipelineResponse#media_capture_pipeline #media_capture_pipeline} => Types::MediaCapturePipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_capture_pipeline({
    #     source_type: "ChimeSdkMeeting", # required, accepts ChimeSdkMeeting
    #     source_arn: "Arn", # required
    #     sink_type: "S3Bucket", # required, accepts S3Bucket
    #     sink_arn: "Arn", # required
    #     client_request_token: "ClientRequestToken",
    #     chime_sdk_meeting_configuration: {
    #       source_configuration: {
    #         selected_video_streams: {
    #           attendee_ids: ["GuidString"],
    #           external_user_ids: ["ExternalUserIdType"],
    #         },
    #       },
    #       artifacts_configuration: {
    #         audio: { # required
    #           mux_type: "AudioOnly", # required, accepts AudioOnly, AudioWithActiveSpeakerVideo, AudioWithCompositedVideo
    #         },
    #         video: { # required
    #           state: "Enabled", # required, accepts Enabled, Disabled
    #           mux_type: "VideoOnly", # accepts VideoOnly
    #         },
    #         content: { # required
    #           state: "Enabled", # required, accepts Enabled, Disabled
    #           mux_type: "ContentOnly", # accepts ContentOnly
    #         },
    #         composited_video: {
    #           layout: "GridView", # accepts GridView
    #           resolution: "HD", # accepts HD, FHD
    #           grid_view_configuration: { # required
    #             content_share_layout: "PresenterOnly", # required, accepts PresenterOnly, Horizontal, Vertical, ActiveSpeakerOnly
    #             presenter_only_configuration: {
    #               presenter_position: "TopLeft", # accepts TopLeft, TopRight, BottomLeft, BottomRight
    #             },
    #             active_speaker_only_configuration: {
    #               active_speaker_position: "TopLeft", # accepts TopLeft, TopRight, BottomLeft, BottomRight
    #             },
    #             horizontal_layout_configuration: {
    #               tile_order: "JoinSequence", # accepts JoinSequence, SpeakerSequence
    #               tile_position: "Top", # accepts Top, Bottom
    #               tile_count: 1,
    #               tile_aspect_ratio: "TileAspectRatio",
    #             },
    #             vertical_layout_configuration: {
    #               tile_order: "JoinSequence", # accepts JoinSequence, SpeakerSequence
    #               tile_position: "Left", # accepts Left, Right
    #               tile_count: 1,
    #               tile_aspect_ratio: "TileAspectRatio",
    #             },
    #             video_attribute: {
    #               corner_radius: 1,
    #               border_color: "Black", # accepts Black, Blue, Red, Green, White, Yellow
    #               highlight_color: "Black", # accepts Black, Blue, Red, Green, White, Yellow
    #               border_thickness: 1,
    #             },
    #             canvas_orientation: "Landscape", # accepts Landscape, Portrait
    #           },
    #         },
    #       },
    #     },
    #     sse_aws_key_management_params: {
    #       aws_kms_key_id: "String", # required
    #       aws_kms_encryption_context: "String",
    #     },
    #     sink_iam_role_arn: "Arn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.media_capture_pipeline.media_pipeline_arn #=> String
    #   resp.media_capture_pipeline.source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_capture_pipeline.source_arn #=> String
    #   resp.media_capture_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_capture_pipeline.sink_type #=> String, one of "S3Bucket"
    #   resp.media_capture_pipeline.sink_arn #=> String
    #   resp.media_capture_pipeline.created_timestamp #=> Time
    #   resp.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of "AudioOnly", "AudioWithActiveSpeakerVideo", "AudioWithCompositedVideo"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of "VideoOnly"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of "ContentOnly"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.layout #=> String, one of "GridView"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.resolution #=> String, one of "HD", "FHD"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.active_speaker_only_configuration.active_speaker_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_position #=> String, one of "Top", "Bottom"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_count #=> Integer
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_position #=> String, one of "Left", "Right"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_count #=> Integer
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.corner_radius #=> Integer
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.border_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.highlight_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.border_thickness #=> Integer
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.canvas_orientation #=> String, one of "Landscape", "Portrait"
    #   resp.media_capture_pipeline.sse_aws_key_management_params.aws_kms_key_id #=> String
    #   resp.media_capture_pipeline.sse_aws_key_management_params.aws_kms_encryption_context #=> String
    #   resp.media_capture_pipeline.sink_iam_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaCapturePipeline AWS API Documentation
    #
    # @overload create_media_capture_pipeline(params = {})
    # @param [Hash] params ({})
    def create_media_capture_pipeline(params = {}, options = {})
      req = build_request(:create_media_capture_pipeline, params)
      req.send_request(options)
    end

    # Creates a media concatenation pipeline.
    #
    # @option params [required, Array<Types::ConcatenationSource>] :sources
    #   An object that specifies the sources for the media concatenation
    #   pipeline.
    #
    # @option params [required, Array<Types::ConcatenationSink>] :sinks
    #   An object that specifies the data sinks for the media concatenation
    #   pipeline.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the client request. The token makes the API
    #   request idempotent. Use a unique token for each media concatenation
    #   pipeline request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the media concatenation pipeline.
    #
    # @return [Types::CreateMediaConcatenationPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMediaConcatenationPipelineResponse#media_concatenation_pipeline #media_concatenation_pipeline} => Types::MediaConcatenationPipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_concatenation_pipeline({
    #     sources: [ # required
    #       {
    #         type: "MediaCapturePipeline", # required, accepts MediaCapturePipeline
    #         media_capture_pipeline_source_configuration: { # required
    #           media_pipeline_arn: "Arn", # required
    #           chime_sdk_meeting_configuration: { # required
    #             artifacts_configuration: { # required
    #               audio: { # required
    #                 state: "Enabled", # required, accepts Enabled
    #               },
    #               video: { # required
    #                 state: "Enabled", # required, accepts Enabled, Disabled
    #               },
    #               content: { # required
    #                 state: "Enabled", # required, accepts Enabled, Disabled
    #               },
    #               data_channel: { # required
    #                 state: "Enabled", # required, accepts Enabled, Disabled
    #               },
    #               transcription_messages: { # required
    #                 state: "Enabled", # required, accepts Enabled, Disabled
    #               },
    #               meeting_events: { # required
    #                 state: "Enabled", # required, accepts Enabled, Disabled
    #               },
    #               composited_video: { # required
    #                 state: "Enabled", # required, accepts Enabled, Disabled
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     sinks: [ # required
    #       {
    #         type: "S3Bucket", # required, accepts S3Bucket
    #         s3_bucket_sink_configuration: { # required
    #           destination: "Arn", # required
    #         },
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.media_concatenation_pipeline.media_pipeline_id #=> String
    #   resp.media_concatenation_pipeline.media_pipeline_arn #=> String
    #   resp.media_concatenation_pipeline.sources #=> Array
    #   resp.media_concatenation_pipeline.sources[0].type #=> String, one of "MediaCapturePipeline"
    #   resp.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.media_pipeline_arn #=> String
    #   resp.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.audio.state #=> String, one of "Enabled"
    #   resp.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.data_channel.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.transcription_messages.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.meeting_events.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_concatenation_pipeline.sinks #=> Array
    #   resp.media_concatenation_pipeline.sinks[0].type #=> String, one of "S3Bucket"
    #   resp.media_concatenation_pipeline.sinks[0].s3_bucket_sink_configuration.destination #=> String
    #   resp.media_concatenation_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_concatenation_pipeline.created_timestamp #=> Time
    #   resp.media_concatenation_pipeline.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaConcatenationPipeline AWS API Documentation
    #
    # @overload create_media_concatenation_pipeline(params = {})
    # @param [Hash] params ({})
    def create_media_concatenation_pipeline(params = {}, options = {})
      req = build_request(:create_media_concatenation_pipeline, params)
      req.send_request(options)
    end

    # Creates a media insights pipeline.
    #
    # @option params [required, String] :media_insights_pipeline_configuration_arn
    #   The ARN of the pipeline's configuration.
    #
    # @option params [Types::KinesisVideoStreamSourceRuntimeConfiguration] :kinesis_video_stream_source_runtime_configuration
    #   The runtime configuration for the Kinesis video stream source of the
    #   media insights pipeline.
    #
    # @option params [Hash<String,String>] :media_insights_runtime_metadata
    #   The runtime metadata for the media insights pipeline. Consists of a
    #   key-value map of strings.
    #
    # @option params [Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration] :kinesis_video_stream_recording_source_runtime_configuration
    #   The runtime configuration for the Kinesis video recording stream
    #   source.
    #
    # @option params [Types::S3RecordingSinkRuntimeConfiguration] :s3_recording_sink_runtime_configuration
    #   The runtime configuration for the S3 recording sink. If specified, the
    #   settings in this structure override any settings in
    #   `S3RecordingSinkConfiguration`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags assigned to the media insights pipeline.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the media insights pipeline request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateMediaInsightsPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMediaInsightsPipelineResponse#media_insights_pipeline #media_insights_pipeline} => Types::MediaInsightsPipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_insights_pipeline({
    #     media_insights_pipeline_configuration_arn: "Arn", # required
    #     kinesis_video_stream_source_runtime_configuration: {
    #       streams: [ # required
    #         {
    #           stream_arn: "KinesisVideoStreamArn", # required
    #           fragment_number: "FragmentNumberString",
    #           stream_channel_definition: { # required
    #             number_of_channels: 1, # required
    #             channel_definitions: [
    #               {
    #                 channel_id: 1, # required
    #                 participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       media_encoding: "pcm", # required, accepts pcm
    #       media_sample_rate: 1, # required
    #     },
    #     media_insights_runtime_metadata: {
    #       "NonEmptyString" => "String",
    #     },
    #     kinesis_video_stream_recording_source_runtime_configuration: {
    #       streams: [ # required
    #         {
    #           stream_arn: "KinesisVideoStreamArn",
    #         },
    #       ],
    #       fragment_selector: { # required
    #         fragment_selector_type: "ProducerTimestamp", # required, accepts ProducerTimestamp, ServerTimestamp
    #         timestamp_range: { # required
    #           start_timestamp: Time.now, # required
    #           end_timestamp: Time.now, # required
    #         },
    #       },
    #     },
    #     s3_recording_sink_runtime_configuration: {
    #       destination: "Arn", # required
    #       recording_file_format: "Wav", # required, accepts Wav, Opus
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.media_insights_pipeline.media_pipeline_id #=> String
    #   resp.media_insights_pipeline.media_pipeline_arn #=> String
    #   resp.media_insights_pipeline.media_insights_pipeline_configuration_arn #=> String
    #   resp.media_insights_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams #=> Array
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_arn #=> String
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].fragment_number #=> String
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_channel_definition.number_of_channels #=> Integer
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_channel_definition.channel_definitions #=> Array
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_channel_definition.channel_definitions[0].channel_id #=> Integer
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_channel_definition.channel_definitions[0].participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.media_encoding #=> String, one of "pcm"
    #   resp.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.media_sample_rate #=> Integer
    #   resp.media_insights_pipeline.media_insights_runtime_metadata #=> Hash
    #   resp.media_insights_pipeline.media_insights_runtime_metadata["NonEmptyString"] #=> String
    #   resp.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.streams #=> Array
    #   resp.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.streams[0].stream_arn #=> String
    #   resp.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.fragment_selector.fragment_selector_type #=> String, one of "ProducerTimestamp", "ServerTimestamp"
    #   resp.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.fragment_selector.timestamp_range.start_timestamp #=> Time
    #   resp.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.fragment_selector.timestamp_range.end_timestamp #=> Time
    #   resp.media_insights_pipeline.s3_recording_sink_runtime_configuration.destination #=> String
    #   resp.media_insights_pipeline.s3_recording_sink_runtime_configuration.recording_file_format #=> String, one of "Wav", "Opus"
    #   resp.media_insights_pipeline.created_timestamp #=> Time
    #   resp.media_insights_pipeline.element_statuses #=> Array
    #   resp.media_insights_pipeline.element_statuses[0].type #=> String, one of "AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"
    #   resp.media_insights_pipeline.element_statuses[0].status #=> String, one of "NotStarted", "NotSupported", "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaInsightsPipeline AWS API Documentation
    #
    # @overload create_media_insights_pipeline(params = {})
    # @param [Hash] params ({})
    def create_media_insights_pipeline(params = {}, options = {})
      req = build_request(:create_media_insights_pipeline, params)
      req.send_request(options)
    end

    # A structure that contains the static configurations for a media
    # insights pipeline.
    #
    # @option params [required, String] :media_insights_pipeline_configuration_name
    #   The name of the media insights pipeline configuration.
    #
    # @option params [required, String] :resource_access_role_arn
    #   The ARN of the role used by the service to access Amazon Web Services
    #   resources, including `Transcribe` and `Transcribe Call Analytics`, on
    #   the caller’s behalf.
    #
    # @option params [Types::RealTimeAlertConfiguration] :real_time_alert_configuration
    #   The configuration settings for the real-time alerts in a media
    #   insights pipeline configuration.
    #
    # @option params [required, Array<Types::MediaInsightsPipelineConfigurationElement>] :elements
    #   The elements in the request, such as a processor for Amazon Transcribe
    #   or a sink for a Kinesis Data Stream.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags assigned to the media insights pipeline configuration.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the media insights pipeline configuration
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateMediaInsightsPipelineConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMediaInsightsPipelineConfigurationResponse#media_insights_pipeline_configuration #media_insights_pipeline_configuration} => Types::MediaInsightsPipelineConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_insights_pipeline_configuration({
    #     media_insights_pipeline_configuration_name: "MediaInsightsPipelineConfigurationNameString", # required
    #     resource_access_role_arn: "Arn", # required
    #     real_time_alert_configuration: {
    #       disabled: false,
    #       rules: [
    #         {
    #           type: "KeywordMatch", # required, accepts KeywordMatch, Sentiment, IssueDetection
    #           keyword_match_configuration: {
    #             rule_name: "RuleName", # required
    #             keywords: ["Keyword"], # required
    #             negate: false,
    #           },
    #           sentiment_configuration: {
    #             rule_name: "RuleName", # required
    #             sentiment_type: "NEGATIVE", # required, accepts NEGATIVE
    #             time_period: 1, # required
    #           },
    #           issue_detection_configuration: {
    #             rule_name: "RuleName", # required
    #           },
    #         },
    #       ],
    #     },
    #     elements: [ # required
    #       {
    #         type: "AmazonTranscribeCallAnalyticsProcessor", # required, accepts AmazonTranscribeCallAnalyticsProcessor, VoiceAnalyticsProcessor, AmazonTranscribeProcessor, KinesisDataStreamSink, LambdaFunctionSink, SqsQueueSink, SnsTopicSink, S3RecordingSink, VoiceEnhancementSink
    #         amazon_transcribe_call_analytics_processor_configuration: {
    #           language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #           language_model_name: "ModelName",
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "high", # accepts high, medium, low
    #           content_identification_type: "PII", # accepts PII
    #           content_redaction_type: "PII", # accepts PII
    #           pii_entity_types: "PiiEntityTypes",
    #           filter_partial_results: false,
    #           post_call_analytics_settings: {
    #             output_location: "String", # required
    #             data_access_role_arn: "String", # required
    #             content_redaction_output: "redacted", # accepts redacted, redacted_and_unredacted
    #             output_encryption_kms_key_id: "String",
    #           },
    #           call_analytics_stream_categories: ["CategoryName"],
    #         },
    #         amazon_transcribe_processor_configuration: {
    #           language_code: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #           show_speaker_label: false,
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "high", # accepts high, medium, low
    #           content_identification_type: "PII", # accepts PII
    #           content_redaction_type: "PII", # accepts PII
    #           pii_entity_types: "PiiEntityTypes",
    #           language_model_name: "ModelName",
    #           filter_partial_results: false,
    #           identify_language: false,
    #           identify_multiple_languages: false,
    #           language_options: "LanguageOptions",
    #           preferred_language: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
    #           vocabulary_names: "VocabularyNames",
    #           vocabulary_filter_names: "VocabularyFilterNames",
    #         },
    #         kinesis_data_stream_sink_configuration: {
    #           insights_target: "Arn",
    #         },
    #         s3_recording_sink_configuration: {
    #           destination: "Arn",
    #           recording_file_format: "Wav", # accepts Wav, Opus
    #         },
    #         voice_analytics_processor_configuration: {
    #           speaker_search_status: "Enabled", # accepts Enabled, Disabled
    #           voice_tone_analysis_status: "Enabled", # accepts Enabled, Disabled
    #         },
    #         lambda_function_sink_configuration: {
    #           insights_target: "Arn",
    #         },
    #         sqs_queue_sink_configuration: {
    #           insights_target: "Arn",
    #         },
    #         sns_topic_sink_configuration: {
    #           insights_target: "Arn",
    #         },
    #         voice_enhancement_sink_configuration: {
    #           disabled: false,
    #         },
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_name #=> String
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_arn #=> String
    #   resp.media_insights_pipeline_configuration.resource_access_role_arn #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.disabled #=> Boolean
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules #=> Array
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].type #=> String, one of "KeywordMatch", "Sentiment", "IssueDetection"
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.keywords #=> Array
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.keywords[0] #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.negate #=> Boolean
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.sentiment_type #=> String, one of "NEGATIVE"
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.time_period #=> Integer
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].issue_detection_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.elements #=> Array
    #   resp.media_insights_pipeline_configuration.elements[0].type #=> String, one of "AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_filter_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.language_model_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.enable_partial_results_stabilization #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.partial_results_stability #=> String, one of "high", "medium", "low"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.content_identification_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.content_redaction_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.pii_entity_types #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.filter_partial_results #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.output_location #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.data_access_role_arn #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.content_redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.output_encryption_kms_key_id #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.call_analytics_stream_categories #=> Array
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.call_analytics_stream_categories[0] #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.show_speaker_label #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.enable_partial_results_stabilization #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.partial_results_stability #=> String, one of "high", "medium", "low"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.content_identification_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.content_redaction_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.pii_entity_types #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_model_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.filter_partial_results #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.identify_language #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.identify_multiple_languages #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_options #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.preferred_language #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_names #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_names #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].kinesis_data_stream_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].s3_recording_sink_configuration.destination #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].s3_recording_sink_configuration.recording_file_format #=> String, one of "Wav", "Opus"
    #   resp.media_insights_pipeline_configuration.elements[0].voice_analytics_processor_configuration.speaker_search_status #=> String, one of "Enabled", "Disabled"
    #   resp.media_insights_pipeline_configuration.elements[0].voice_analytics_processor_configuration.voice_tone_analysis_status #=> String, one of "Enabled", "Disabled"
    #   resp.media_insights_pipeline_configuration.elements[0].lambda_function_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].sqs_queue_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].sns_topic_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].voice_enhancement_sink_configuration.disabled #=> Boolean
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_id #=> String
    #   resp.media_insights_pipeline_configuration.created_timestamp #=> Time
    #   resp.media_insights_pipeline_configuration.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaInsightsPipelineConfiguration AWS API Documentation
    #
    # @overload create_media_insights_pipeline_configuration(params = {})
    # @param [Hash] params ({})
    def create_media_insights_pipeline_configuration(params = {}, options = {})
      req = build_request(:create_media_insights_pipeline_configuration, params)
      req.send_request(options)
    end

    # Creates a media live connector pipeline in an Amazon Chime SDK
    # meeting.
    #
    # @option params [required, Array<Types::LiveConnectorSourceConfiguration>] :sources
    #   The media live connector pipeline's data sources.
    #
    # @option params [required, Array<Types::LiveConnectorSinkConfiguration>] :sinks
    #   The media live connector pipeline's data sinks.
    #
    # @option params [String] :client_request_token
    #   The token assigned to the client making the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the media live connector pipeline.
    #
    # @return [Types::CreateMediaLiveConnectorPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMediaLiveConnectorPipelineResponse#media_live_connector_pipeline #media_live_connector_pipeline} => Types::MediaLiveConnectorPipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_live_connector_pipeline({
    #     sources: [ # required
    #       {
    #         source_type: "ChimeSdkMeeting", # required, accepts ChimeSdkMeeting
    #         chime_sdk_meeting_live_connector_configuration: { # required
    #           arn: "Arn", # required
    #           mux_type: "AudioWithCompositedVideo", # required, accepts AudioWithCompositedVideo, AudioWithActiveSpeakerVideo
    #           composited_video: {
    #             layout: "GridView", # accepts GridView
    #             resolution: "HD", # accepts HD, FHD
    #             grid_view_configuration: { # required
    #               content_share_layout: "PresenterOnly", # required, accepts PresenterOnly, Horizontal, Vertical, ActiveSpeakerOnly
    #               presenter_only_configuration: {
    #                 presenter_position: "TopLeft", # accepts TopLeft, TopRight, BottomLeft, BottomRight
    #               },
    #               active_speaker_only_configuration: {
    #                 active_speaker_position: "TopLeft", # accepts TopLeft, TopRight, BottomLeft, BottomRight
    #               },
    #               horizontal_layout_configuration: {
    #                 tile_order: "JoinSequence", # accepts JoinSequence, SpeakerSequence
    #                 tile_position: "Top", # accepts Top, Bottom
    #                 tile_count: 1,
    #                 tile_aspect_ratio: "TileAspectRatio",
    #               },
    #               vertical_layout_configuration: {
    #                 tile_order: "JoinSequence", # accepts JoinSequence, SpeakerSequence
    #                 tile_position: "Left", # accepts Left, Right
    #                 tile_count: 1,
    #                 tile_aspect_ratio: "TileAspectRatio",
    #               },
    #               video_attribute: {
    #                 corner_radius: 1,
    #                 border_color: "Black", # accepts Black, Blue, Red, Green, White, Yellow
    #                 highlight_color: "Black", # accepts Black, Blue, Red, Green, White, Yellow
    #                 border_thickness: 1,
    #               },
    #               canvas_orientation: "Landscape", # accepts Landscape, Portrait
    #             },
    #           },
    #           source_configuration: {
    #             selected_video_streams: {
    #               attendee_ids: ["GuidString"],
    #               external_user_ids: ["ExternalUserIdType"],
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     sinks: [ # required
    #       {
    #         sink_type: "RTMP", # required, accepts RTMP
    #         rtmp_configuration: { # required
    #           url: "SensitiveString", # required
    #           audio_channels: "Stereo", # accepts Stereo, Mono
    #           audio_sample_rate: "AudioSampleRateOption",
    #         },
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.media_live_connector_pipeline.sources #=> Array
    #   resp.media_live_connector_pipeline.sources[0].source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.arn #=> String
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.mux_type #=> String, one of "AudioWithCompositedVideo", "AudioWithActiveSpeakerVideo"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.layout #=> String, one of "GridView"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.resolution #=> String, one of "HD", "FHD"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.active_speaker_only_configuration.active_speaker_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_position #=> String, one of "Top", "Bottom"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_count #=> Integer
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_position #=> String, one of "Left", "Right"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_count #=> Integer
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.video_attribute.corner_radius #=> Integer
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.video_attribute.border_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.video_attribute.highlight_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.video_attribute.border_thickness #=> Integer
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.canvas_orientation #=> String, one of "Landscape", "Portrait"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.media_live_connector_pipeline.sinks #=> Array
    #   resp.media_live_connector_pipeline.sinks[0].sink_type #=> String, one of "RTMP"
    #   resp.media_live_connector_pipeline.sinks[0].rtmp_configuration.url #=> String
    #   resp.media_live_connector_pipeline.sinks[0].rtmp_configuration.audio_channels #=> String, one of "Stereo", "Mono"
    #   resp.media_live_connector_pipeline.sinks[0].rtmp_configuration.audio_sample_rate #=> String
    #   resp.media_live_connector_pipeline.media_pipeline_id #=> String
    #   resp.media_live_connector_pipeline.media_pipeline_arn #=> String
    #   resp.media_live_connector_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_live_connector_pipeline.created_timestamp #=> Time
    #   resp.media_live_connector_pipeline.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaLiveConnectorPipeline AWS API Documentation
    #
    # @overload create_media_live_connector_pipeline(params = {})
    # @param [Hash] params ({})
    def create_media_live_connector_pipeline(params = {}, options = {})
      req = build_request(:create_media_live_connector_pipeline, params)
      req.send_request(options)
    end

    # Creates an Amazon Kinesis Video Stream pool for use with media stream
    # pipelines.
    #
    # <note markdown="1"> If a meeting uses an opt-in Region as its [MediaRegion][1], the KVS
    # stream must be in that same Region. For example, if a meeting uses the
    # `af-south-1` Region, the KVS stream must also be in `af-south-1`.
    # However, if the meeting uses a Region that AWS turns on by default,
    # the KVS stream can be in any available Region, including an opt-in
    # Region. For example, if the meeting uses `ca-central-1`, the KVS
    # stream can be in `eu-west-2`, `us-east-1`, `af-south-1`, or any other
    # Region that the Amazon Chime SDK supports.
    #
    #  To learn which AWS Region a meeting uses, call the [GetMeeting][2] API
    # and use the [MediaRegion][1] parameter from the response.
    #
    #  For more information about opt-in Regions, refer to [Available
    # Regions][3] in the *Amazon Chime SDK Developer Guide*, and [Specify
    # which AWS Regions your account can use][4], in the *AWS Account
    # Management Reference Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetMeeting.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions.html
    # [4]: https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html#rande-manage-enable.html
    #
    # @option params [required, Types::KinesisVideoStreamConfiguration] :stream_configuration
    #   The configuration settings for the stream.
    #
    # @option params [required, String] :pool_name
    #   The name of the pool.
    #
    # @option params [String] :client_request_token
    #   The token assigned to the client making the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags assigned to the stream pool.
    #
    # @return [Types::CreateMediaPipelineKinesisVideoStreamPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMediaPipelineKinesisVideoStreamPoolResponse#kinesis_video_stream_pool_configuration #kinesis_video_stream_pool_configuration} => Types::KinesisVideoStreamPoolConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_pipeline_kinesis_video_stream_pool({
    #     stream_configuration: { # required
    #       region: "AwsRegion", # required
    #       data_retention_in_hours: 1,
    #     },
    #     pool_name: "KinesisVideoStreamPoolName", # required
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.kinesis_video_stream_pool_configuration.pool_arn #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_name #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_id #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.kinesis_video_stream_pool_configuration.pool_size #=> Integer
    #   resp.kinesis_video_stream_pool_configuration.stream_configuration.region #=> String
    #   resp.kinesis_video_stream_pool_configuration.stream_configuration.data_retention_in_hours #=> Integer
    #   resp.kinesis_video_stream_pool_configuration.created_timestamp #=> Time
    #   resp.kinesis_video_stream_pool_configuration.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaPipelineKinesisVideoStreamPool AWS API Documentation
    #
    # @overload create_media_pipeline_kinesis_video_stream_pool(params = {})
    # @param [Hash] params ({})
    def create_media_pipeline_kinesis_video_stream_pool(params = {}, options = {})
      req = build_request(:create_media_pipeline_kinesis_video_stream_pool, params)
      req.send_request(options)
    end

    # Creates a streaming media pipeline.
    #
    # @option params [required, Array<Types::MediaStreamSource>] :sources
    #   The data sources for the media pipeline.
    #
    # @option params [required, Array<Types::MediaStreamSink>] :sinks
    #   The data sink for the media pipeline.
    #
    # @option params [String] :client_request_token
    #   The token assigned to the client making the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags assigned to the media pipeline.
    #
    # @return [Types::CreateMediaStreamPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMediaStreamPipelineResponse#media_stream_pipeline #media_stream_pipeline} => Types::MediaStreamPipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_stream_pipeline({
    #     sources: [ # required
    #       {
    #         source_type: "ChimeSdkMeeting", # required, accepts ChimeSdkMeeting
    #         source_arn: "Arn", # required
    #       },
    #     ],
    #     sinks: [ # required
    #       {
    #         sink_arn: "Arn", # required
    #         sink_type: "KinesisVideoStreamPool", # required, accepts KinesisVideoStreamPool
    #         reserved_stream_capacity: 1, # required
    #         media_stream_type: "MixedAudio", # required, accepts MixedAudio, IndividualAudio
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.media_stream_pipeline.media_pipeline_id #=> String
    #   resp.media_stream_pipeline.media_pipeline_arn #=> String
    #   resp.media_stream_pipeline.created_timestamp #=> Time
    #   resp.media_stream_pipeline.updated_timestamp #=> Time
    #   resp.media_stream_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_stream_pipeline.sources #=> Array
    #   resp.media_stream_pipeline.sources[0].source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_stream_pipeline.sources[0].source_arn #=> String
    #   resp.media_stream_pipeline.sinks #=> Array
    #   resp.media_stream_pipeline.sinks[0].sink_arn #=> String
    #   resp.media_stream_pipeline.sinks[0].sink_type #=> String, one of "KinesisVideoStreamPool"
    #   resp.media_stream_pipeline.sinks[0].reserved_stream_capacity #=> Integer
    #   resp.media_stream_pipeline.sinks[0].media_stream_type #=> String, one of "MixedAudio", "IndividualAudio"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/CreateMediaStreamPipeline AWS API Documentation
    #
    # @overload create_media_stream_pipeline(params = {})
    # @param [Hash] params ({})
    def create_media_stream_pipeline(params = {}, options = {})
      req = build_request(:create_media_stream_pipeline, params)
      req.send_request(options)
    end

    # Deletes the media pipeline.
    #
    # @option params [required, String] :media_pipeline_id
    #   The ID of the media pipeline being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_media_capture_pipeline({
    #     media_pipeline_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaCapturePipeline AWS API Documentation
    #
    # @overload delete_media_capture_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_media_capture_pipeline(params = {}, options = {})
      req = build_request(:delete_media_capture_pipeline, params)
      req.send_request(options)
    end

    # Deletes the specified configuration settings.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the resource to be deleted. Valid values
    #   include the name and ARN of the media insights pipeline configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_media_insights_pipeline_configuration({
    #     identifier: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaInsightsPipelineConfiguration AWS API Documentation
    #
    # @overload delete_media_insights_pipeline_configuration(params = {})
    # @param [Hash] params ({})
    def delete_media_insights_pipeline_configuration(params = {}, options = {})
      req = build_request(:delete_media_insights_pipeline_configuration, params)
      req.send_request(options)
    end

    # Deletes the media pipeline.
    #
    # @option params [required, String] :media_pipeline_id
    #   The ID of the media pipeline to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_media_pipeline({
    #     media_pipeline_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaPipeline AWS API Documentation
    #
    # @overload delete_media_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_media_pipeline(params = {}, options = {})
      req = build_request(:delete_media_pipeline, params)
      req.send_request(options)
    end

    # Deletes an Amazon Kinesis Video Stream pool.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the requested resource. Valid values include
    #   the name and ARN of the media pipeline Kinesis Video Stream pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_media_pipeline_kinesis_video_stream_pool({
    #     identifier: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/DeleteMediaPipelineKinesisVideoStreamPool AWS API Documentation
    #
    # @overload delete_media_pipeline_kinesis_video_stream_pool(params = {})
    # @param [Hash] params ({})
    def delete_media_pipeline_kinesis_video_stream_pool(params = {}, options = {})
      req = build_request(:delete_media_pipeline_kinesis_video_stream_pool, params)
      req.send_request(options)
    end

    # Gets an existing media pipeline.
    #
    # @option params [required, String] :media_pipeline_id
    #   The ID of the pipeline that you want to get.
    #
    # @return [Types::GetMediaCapturePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMediaCapturePipelineResponse#media_capture_pipeline #media_capture_pipeline} => Types::MediaCapturePipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_capture_pipeline({
    #     media_pipeline_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.media_capture_pipeline.media_pipeline_arn #=> String
    #   resp.media_capture_pipeline.source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_capture_pipeline.source_arn #=> String
    #   resp.media_capture_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_capture_pipeline.sink_type #=> String, one of "S3Bucket"
    #   resp.media_capture_pipeline.sink_arn #=> String
    #   resp.media_capture_pipeline.created_timestamp #=> Time
    #   resp.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of "AudioOnly", "AudioWithActiveSpeakerVideo", "AudioWithCompositedVideo"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of "VideoOnly"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of "ContentOnly"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.layout #=> String, one of "GridView"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.resolution #=> String, one of "HD", "FHD"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.active_speaker_only_configuration.active_speaker_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_position #=> String, one of "Top", "Bottom"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_count #=> Integer
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_position #=> String, one of "Left", "Right"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_count #=> Integer
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.corner_radius #=> Integer
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.border_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.highlight_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.border_thickness #=> Integer
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.canvas_orientation #=> String, one of "Landscape", "Portrait"
    #   resp.media_capture_pipeline.sse_aws_key_management_params.aws_kms_key_id #=> String
    #   resp.media_capture_pipeline.sse_aws_key_management_params.aws_kms_encryption_context #=> String
    #   resp.media_capture_pipeline.sink_iam_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaCapturePipeline AWS API Documentation
    #
    # @overload get_media_capture_pipeline(params = {})
    # @param [Hash] params ({})
    def get_media_capture_pipeline(params = {}, options = {})
      req = build_request(:get_media_capture_pipeline, params)
      req.send_request(options)
    end

    # Gets the configuration settings for a media insights pipeline.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the requested resource. Valid values include
    #   the name and ARN of the media insights pipeline configuration.
    #
    # @return [Types::GetMediaInsightsPipelineConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMediaInsightsPipelineConfigurationResponse#media_insights_pipeline_configuration #media_insights_pipeline_configuration} => Types::MediaInsightsPipelineConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_insights_pipeline_configuration({
    #     identifier: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_name #=> String
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_arn #=> String
    #   resp.media_insights_pipeline_configuration.resource_access_role_arn #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.disabled #=> Boolean
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules #=> Array
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].type #=> String, one of "KeywordMatch", "Sentiment", "IssueDetection"
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.keywords #=> Array
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.keywords[0] #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.negate #=> Boolean
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.sentiment_type #=> String, one of "NEGATIVE"
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.time_period #=> Integer
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].issue_detection_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.elements #=> Array
    #   resp.media_insights_pipeline_configuration.elements[0].type #=> String, one of "AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_filter_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.language_model_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.enable_partial_results_stabilization #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.partial_results_stability #=> String, one of "high", "medium", "low"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.content_identification_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.content_redaction_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.pii_entity_types #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.filter_partial_results #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.output_location #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.data_access_role_arn #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.content_redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.output_encryption_kms_key_id #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.call_analytics_stream_categories #=> Array
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.call_analytics_stream_categories[0] #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.show_speaker_label #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.enable_partial_results_stabilization #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.partial_results_stability #=> String, one of "high", "medium", "low"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.content_identification_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.content_redaction_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.pii_entity_types #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_model_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.filter_partial_results #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.identify_language #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.identify_multiple_languages #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_options #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.preferred_language #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_names #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_names #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].kinesis_data_stream_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].s3_recording_sink_configuration.destination #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].s3_recording_sink_configuration.recording_file_format #=> String, one of "Wav", "Opus"
    #   resp.media_insights_pipeline_configuration.elements[0].voice_analytics_processor_configuration.speaker_search_status #=> String, one of "Enabled", "Disabled"
    #   resp.media_insights_pipeline_configuration.elements[0].voice_analytics_processor_configuration.voice_tone_analysis_status #=> String, one of "Enabled", "Disabled"
    #   resp.media_insights_pipeline_configuration.elements[0].lambda_function_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].sqs_queue_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].sns_topic_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].voice_enhancement_sink_configuration.disabled #=> Boolean
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_id #=> String
    #   resp.media_insights_pipeline_configuration.created_timestamp #=> Time
    #   resp.media_insights_pipeline_configuration.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaInsightsPipelineConfiguration AWS API Documentation
    #
    # @overload get_media_insights_pipeline_configuration(params = {})
    # @param [Hash] params ({})
    def get_media_insights_pipeline_configuration(params = {}, options = {})
      req = build_request(:get_media_insights_pipeline_configuration, params)
      req.send_request(options)
    end

    # Gets an existing media pipeline.
    #
    # @option params [required, String] :media_pipeline_id
    #   The ID of the pipeline that you want to get.
    #
    # @return [Types::GetMediaPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMediaPipelineResponse#media_pipeline #media_pipeline} => Types::MediaPipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_pipeline({
    #     media_pipeline_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.media_pipeline.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.media_pipeline.media_capture_pipeline.media_pipeline_arn #=> String
    #   resp.media_pipeline.media_capture_pipeline.source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_pipeline.media_capture_pipeline.source_arn #=> String
    #   resp.media_pipeline.media_capture_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_pipeline.media_capture_pipeline.sink_type #=> String, one of "S3Bucket"
    #   resp.media_pipeline.media_capture_pipeline.sink_arn #=> String
    #   resp.media_pipeline.media_capture_pipeline.created_timestamp #=> Time
    #   resp.media_pipeline.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of "AudioOnly", "AudioWithActiveSpeakerVideo", "AudioWithCompositedVideo"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of "VideoOnly"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of "ContentOnly"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.layout #=> String, one of "GridView"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.resolution #=> String, one of "HD", "FHD"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.active_speaker_only_configuration.active_speaker_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_position #=> String, one of "Top", "Bottom"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_count #=> Integer
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_position #=> String, one of "Left", "Right"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_count #=> Integer
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.corner_radius #=> Integer
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.border_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.highlight_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.video_attribute.border_thickness #=> Integer
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.canvas_orientation #=> String, one of "Landscape", "Portrait"
    #   resp.media_pipeline.media_capture_pipeline.sse_aws_key_management_params.aws_kms_key_id #=> String
    #   resp.media_pipeline.media_capture_pipeline.sse_aws_key_management_params.aws_kms_encryption_context #=> String
    #   resp.media_pipeline.media_capture_pipeline.sink_iam_role_arn #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.sources #=> Array
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.arn #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.mux_type #=> String, one of "AudioWithCompositedVideo", "AudioWithActiveSpeakerVideo"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.layout #=> String, one of "GridView"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.resolution #=> String, one of "HD", "FHD"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.active_speaker_only_configuration.active_speaker_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_position #=> String, one of "Top", "Bottom"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_count #=> Integer
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.horizontal_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_order #=> String, one of "JoinSequence", "SpeakerSequence"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_position #=> String, one of "Left", "Right"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_count #=> Integer
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.vertical_layout_configuration.tile_aspect_ratio #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.video_attribute.corner_radius #=> Integer
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.video_attribute.border_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.video_attribute.highlight_color #=> String, one of "Black", "Blue", "Red", "Green", "White", "Yellow"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.video_attribute.border_thickness #=> Integer
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.canvas_orientation #=> String, one of "Landscape", "Portrait"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.sinks #=> Array
    #   resp.media_pipeline.media_live_connector_pipeline.sinks[0].sink_type #=> String, one of "RTMP"
    #   resp.media_pipeline.media_live_connector_pipeline.sinks[0].rtmp_configuration.url #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.sinks[0].rtmp_configuration.audio_channels #=> String, one of "Stereo", "Mono"
    #   resp.media_pipeline.media_live_connector_pipeline.sinks[0].rtmp_configuration.audio_sample_rate #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.media_pipeline_id #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.media_pipeline_arn #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_pipeline.media_live_connector_pipeline.created_timestamp #=> Time
    #   resp.media_pipeline.media_live_connector_pipeline.updated_timestamp #=> Time
    #   resp.media_pipeline.media_concatenation_pipeline.media_pipeline_id #=> String
    #   resp.media_pipeline.media_concatenation_pipeline.media_pipeline_arn #=> String
    #   resp.media_pipeline.media_concatenation_pipeline.sources #=> Array
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].type #=> String, one of "MediaCapturePipeline"
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.media_pipeline_arn #=> String
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.audio.state #=> String, one of "Enabled"
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.data_channel.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.transcription_messages.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.meeting_events.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_pipeline.media_concatenation_pipeline.sources[0].media_capture_pipeline_source_configuration.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_pipeline.media_concatenation_pipeline.sinks #=> Array
    #   resp.media_pipeline.media_concatenation_pipeline.sinks[0].type #=> String, one of "S3Bucket"
    #   resp.media_pipeline.media_concatenation_pipeline.sinks[0].s3_bucket_sink_configuration.destination #=> String
    #   resp.media_pipeline.media_concatenation_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_pipeline.media_concatenation_pipeline.created_timestamp #=> Time
    #   resp.media_pipeline.media_concatenation_pipeline.updated_timestamp #=> Time
    #   resp.media_pipeline.media_insights_pipeline.media_pipeline_id #=> String
    #   resp.media_pipeline.media_insights_pipeline.media_pipeline_arn #=> String
    #   resp.media_pipeline.media_insights_pipeline.media_insights_pipeline_configuration_arn #=> String
    #   resp.media_pipeline.media_insights_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams #=> Array
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_arn #=> String
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].fragment_number #=> String
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_channel_definition.number_of_channels #=> Integer
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_channel_definition.channel_definitions #=> Array
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_channel_definition.channel_definitions[0].channel_id #=> Integer
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.streams[0].stream_channel_definition.channel_definitions[0].participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.media_encoding #=> String, one of "pcm"
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_source_runtime_configuration.media_sample_rate #=> Integer
    #   resp.media_pipeline.media_insights_pipeline.media_insights_runtime_metadata #=> Hash
    #   resp.media_pipeline.media_insights_pipeline.media_insights_runtime_metadata["NonEmptyString"] #=> String
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.streams #=> Array
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.streams[0].stream_arn #=> String
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.fragment_selector.fragment_selector_type #=> String, one of "ProducerTimestamp", "ServerTimestamp"
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.fragment_selector.timestamp_range.start_timestamp #=> Time
    #   resp.media_pipeline.media_insights_pipeline.kinesis_video_stream_recording_source_runtime_configuration.fragment_selector.timestamp_range.end_timestamp #=> Time
    #   resp.media_pipeline.media_insights_pipeline.s3_recording_sink_runtime_configuration.destination #=> String
    #   resp.media_pipeline.media_insights_pipeline.s3_recording_sink_runtime_configuration.recording_file_format #=> String, one of "Wav", "Opus"
    #   resp.media_pipeline.media_insights_pipeline.created_timestamp #=> Time
    #   resp.media_pipeline.media_insights_pipeline.element_statuses #=> Array
    #   resp.media_pipeline.media_insights_pipeline.element_statuses[0].type #=> String, one of "AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"
    #   resp.media_pipeline.media_insights_pipeline.element_statuses[0].status #=> String, one of "NotStarted", "NotSupported", "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused"
    #   resp.media_pipeline.media_stream_pipeline.media_pipeline_id #=> String
    #   resp.media_pipeline.media_stream_pipeline.media_pipeline_arn #=> String
    #   resp.media_pipeline.media_stream_pipeline.created_timestamp #=> Time
    #   resp.media_pipeline.media_stream_pipeline.updated_timestamp #=> Time
    #   resp.media_pipeline.media_stream_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"
    #   resp.media_pipeline.media_stream_pipeline.sources #=> Array
    #   resp.media_pipeline.media_stream_pipeline.sources[0].source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_pipeline.media_stream_pipeline.sources[0].source_arn #=> String
    #   resp.media_pipeline.media_stream_pipeline.sinks #=> Array
    #   resp.media_pipeline.media_stream_pipeline.sinks[0].sink_arn #=> String
    #   resp.media_pipeline.media_stream_pipeline.sinks[0].sink_type #=> String, one of "KinesisVideoStreamPool"
    #   resp.media_pipeline.media_stream_pipeline.sinks[0].reserved_stream_capacity #=> Integer
    #   resp.media_pipeline.media_stream_pipeline.sinks[0].media_stream_type #=> String, one of "MixedAudio", "IndividualAudio"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaPipeline AWS API Documentation
    #
    # @overload get_media_pipeline(params = {})
    # @param [Hash] params ({})
    def get_media_pipeline(params = {}, options = {})
      req = build_request(:get_media_pipeline, params)
      req.send_request(options)
    end

    # Gets an Kinesis video stream pool.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the requested resource. Valid values include
    #   the name and ARN of the media pipeline Kinesis Video Stream pool.
    #
    # @return [Types::GetMediaPipelineKinesisVideoStreamPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMediaPipelineKinesisVideoStreamPoolResponse#kinesis_video_stream_pool_configuration #kinesis_video_stream_pool_configuration} => Types::KinesisVideoStreamPoolConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_pipeline_kinesis_video_stream_pool({
    #     identifier: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.kinesis_video_stream_pool_configuration.pool_arn #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_name #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_id #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.kinesis_video_stream_pool_configuration.pool_size #=> Integer
    #   resp.kinesis_video_stream_pool_configuration.stream_configuration.region #=> String
    #   resp.kinesis_video_stream_pool_configuration.stream_configuration.data_retention_in_hours #=> Integer
    #   resp.kinesis_video_stream_pool_configuration.created_timestamp #=> Time
    #   resp.kinesis_video_stream_pool_configuration.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaPipelineKinesisVideoStreamPool AWS API Documentation
    #
    # @overload get_media_pipeline_kinesis_video_stream_pool(params = {})
    # @param [Hash] params ({})
    def get_media_pipeline_kinesis_video_stream_pool(params = {}, options = {})
      req = build_request(:get_media_pipeline_kinesis_video_stream_pool, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified speaker search task.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the resource to be updated. Valid values
    #   include the ID and ARN of the media insights pipeline.
    #
    # @option params [required, String] :speaker_search_task_id
    #   The ID of the speaker search task.
    #
    # @return [Types::GetSpeakerSearchTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpeakerSearchTaskResponse#speaker_search_task #speaker_search_task} => Types::SpeakerSearchTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_speaker_search_task({
    #     identifier: "NonEmptyString", # required
    #     speaker_search_task_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.speaker_search_task.speaker_search_task_id #=> String
    #   resp.speaker_search_task.speaker_search_task_status #=> String, one of "NotStarted", "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
    #   resp.speaker_search_task.created_timestamp #=> Time
    #   resp.speaker_search_task.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetSpeakerSearchTask AWS API Documentation
    #
    # @overload get_speaker_search_task(params = {})
    # @param [Hash] params ({})
    def get_speaker_search_task(params = {}, options = {})
      req = build_request(:get_speaker_search_task, params)
      req.send_request(options)
    end

    # Retrieves the details of a voice tone analysis task.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the resource to be updated. Valid values
    #   include the ID and ARN of the media insights pipeline.
    #
    # @option params [required, String] :voice_tone_analysis_task_id
    #   The ID of the voice tone analysis task.
    #
    # @return [Types::GetVoiceToneAnalysisTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceToneAnalysisTaskResponse#voice_tone_analysis_task #voice_tone_analysis_task} => Types::VoiceToneAnalysisTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_tone_analysis_task({
    #     identifier: "NonEmptyString", # required
    #     voice_tone_analysis_task_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_tone_analysis_task.voice_tone_analysis_task_id #=> String
    #   resp.voice_tone_analysis_task.voice_tone_analysis_task_status #=> String, one of "NotStarted", "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
    #   resp.voice_tone_analysis_task.created_timestamp #=> Time
    #   resp.voice_tone_analysis_task.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetVoiceToneAnalysisTask AWS API Documentation
    #
    # @overload get_voice_tone_analysis_task(params = {})
    # @param [Hash] params ({})
    def get_voice_tone_analysis_task(params = {}, options = {})
      req = build_request(:get_voice_tone_analysis_task, params)
      req.send_request(options)
    end

    # Returns a list of media pipelines.
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid Range:
    #   1 - 99.
    #
    # @return [Types::ListMediaCapturePipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMediaCapturePipelinesResponse#media_capture_pipelines #media_capture_pipelines} => Array&lt;Types::MediaCapturePipelineSummary&gt;
    #   * {Types::ListMediaCapturePipelinesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_media_capture_pipelines({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.media_capture_pipelines #=> Array
    #   resp.media_capture_pipelines[0].media_pipeline_id #=> String
    #   resp.media_capture_pipelines[0].media_pipeline_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaCapturePipelines AWS API Documentation
    #
    # @overload list_media_capture_pipelines(params = {})
    # @param [Hash] params ({})
    def list_media_capture_pipelines(params = {}, options = {})
      req = build_request(:list_media_capture_pipelines, params)
      req.send_request(options)
    end

    # Lists the available media insights pipeline configurations.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListMediaInsightsPipelineConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMediaInsightsPipelineConfigurationsResponse#media_insights_pipeline_configurations #media_insights_pipeline_configurations} => Array&lt;Types::MediaInsightsPipelineConfigurationSummary&gt;
    #   * {Types::ListMediaInsightsPipelineConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_media_insights_pipeline_configurations({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.media_insights_pipeline_configurations #=> Array
    #   resp.media_insights_pipeline_configurations[0].media_insights_pipeline_configuration_name #=> String
    #   resp.media_insights_pipeline_configurations[0].media_insights_pipeline_configuration_id #=> String
    #   resp.media_insights_pipeline_configurations[0].media_insights_pipeline_configuration_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaInsightsPipelineConfigurations AWS API Documentation
    #
    # @overload list_media_insights_pipeline_configurations(params = {})
    # @param [Hash] params ({})
    def list_media_insights_pipeline_configurations(params = {}, options = {})
      req = build_request(:list_media_insights_pipeline_configurations, params)
      req.send_request(options)
    end

    # Lists the video stream pools in the media pipeline.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListMediaPipelineKinesisVideoStreamPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMediaPipelineKinesisVideoStreamPoolsResponse#kinesis_video_stream_pools #kinesis_video_stream_pools} => Array&lt;Types::KinesisVideoStreamPoolSummary&gt;
    #   * {Types::ListMediaPipelineKinesisVideoStreamPoolsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_media_pipeline_kinesis_video_stream_pools({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.kinesis_video_stream_pools #=> Array
    #   resp.kinesis_video_stream_pools[0].pool_name #=> String
    #   resp.kinesis_video_stream_pools[0].pool_id #=> String
    #   resp.kinesis_video_stream_pools[0].pool_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaPipelineKinesisVideoStreamPools AWS API Documentation
    #
    # @overload list_media_pipeline_kinesis_video_stream_pools(params = {})
    # @param [Hash] params ({})
    def list_media_pipeline_kinesis_video_stream_pools(params = {}, options = {})
      req = build_request(:list_media_pipeline_kinesis_video_stream_pools, params)
      req.send_request(options)
    end

    # Returns a list of media pipelines.
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid Range:
    #   1 - 99.
    #
    # @return [Types::ListMediaPipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMediaPipelinesResponse#media_pipelines #media_pipelines} => Array&lt;Types::MediaPipelineSummary&gt;
    #   * {Types::ListMediaPipelinesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_media_pipelines({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.media_pipelines #=> Array
    #   resp.media_pipelines[0].media_pipeline_id #=> String
    #   resp.media_pipelines[0].media_pipeline_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListMediaPipelines AWS API Documentation
    #
    # @overload list_media_pipelines(params = {})
    # @param [Hash] params ({})
    def list_media_pipelines(params = {}, options = {})
      req = build_request(:list_media_pipelines, params)
      req.send_request(options)
    end

    # Lists the tags available for a media pipeline.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the media pipeline associated with any tags. The ARN
    #   consists of the pipeline's region, resource ID, and pipeline ID.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts a speaker search task.
    #
    # Before starting any speaker search tasks, you must provide all notices
    # and obtain all consents from the speaker as required under applicable
    # privacy and biometrics laws, and as required under the [AWS service
    # terms][1] for the Amazon Chime SDK.
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the resource to be updated. Valid values
    #   include the ID and ARN of the media insights pipeline.
    #
    # @option params [required, String] :voice_profile_domain_arn
    #   The ARN of the voice profile domain that will store the voice profile.
    #
    # @option params [Types::KinesisVideoStreamSourceTaskConfiguration] :kinesis_video_stream_source_task_configuration
    #   The task configuration for the Kinesis video stream source of the
    #   media insights pipeline.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different speaker search tasks.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartSpeakerSearchTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSpeakerSearchTaskResponse#speaker_search_task #speaker_search_task} => Types::SpeakerSearchTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_speaker_search_task({
    #     identifier: "NonEmptyString", # required
    #     voice_profile_domain_arn: "Arn", # required
    #     kinesis_video_stream_source_task_configuration: {
    #       stream_arn: "KinesisVideoStreamArn", # required
    #       channel_id: 1, # required
    #       fragment_number: "FragmentNumberString",
    #     },
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.speaker_search_task.speaker_search_task_id #=> String
    #   resp.speaker_search_task.speaker_search_task_status #=> String, one of "NotStarted", "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
    #   resp.speaker_search_task.created_timestamp #=> Time
    #   resp.speaker_search_task.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/StartSpeakerSearchTask AWS API Documentation
    #
    # @overload start_speaker_search_task(params = {})
    # @param [Hash] params ({})
    def start_speaker_search_task(params = {}, options = {})
      req = build_request(:start_speaker_search_task, params)
      req.send_request(options)
    end

    # Starts a voice tone analysis task. For more information about voice
    # tone analysis, see [Using Amazon Chime SDK voice analytics][1] in the
    # *Amazon Chime SDK Developer Guide*.
    #
    # Before starting any voice tone analysis tasks, you must provide all
    # notices and obtain all consents from the speaker as required under
    # applicable privacy and biometrics laws, and as required under the [AWS
    # service terms][2] for the Amazon Chime SDK.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/voice-analytics.html
    # [2]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the resource to be updated. Valid values
    #   include the ID and ARN of the media insights pipeline.
    #
    # @option params [required, String] :language_code
    #   The language code.
    #
    # @option params [Types::KinesisVideoStreamSourceTaskConfiguration] :kinesis_video_stream_source_task_configuration
    #   The task configuration for the Kinesis video stream source of the
    #   media insights pipeline.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different voice tone analysis tasks.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartVoiceToneAnalysisTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartVoiceToneAnalysisTaskResponse#voice_tone_analysis_task #voice_tone_analysis_task} => Types::VoiceToneAnalysisTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_voice_tone_analysis_task({
    #     identifier: "NonEmptyString", # required
    #     language_code: "en-US", # required, accepts en-US
    #     kinesis_video_stream_source_task_configuration: {
    #       stream_arn: "KinesisVideoStreamArn", # required
    #       channel_id: 1, # required
    #       fragment_number: "FragmentNumberString",
    #     },
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_tone_analysis_task.voice_tone_analysis_task_id #=> String
    #   resp.voice_tone_analysis_task.voice_tone_analysis_task_status #=> String, one of "NotStarted", "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
    #   resp.voice_tone_analysis_task.created_timestamp #=> Time
    #   resp.voice_tone_analysis_task.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/StartVoiceToneAnalysisTask AWS API Documentation
    #
    # @overload start_voice_tone_analysis_task(params = {})
    # @param [Hash] params ({})
    def start_voice_tone_analysis_task(params = {}, options = {})
      req = build_request(:start_voice_tone_analysis_task, params)
      req.send_request(options)
    end

    # Stops a speaker search task.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the resource to be updated. Valid values
    #   include the ID and ARN of the media insights pipeline.
    #
    # @option params [required, String] :speaker_search_task_id
    #   The speaker search task ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_speaker_search_task({
    #     identifier: "NonEmptyString", # required
    #     speaker_search_task_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/StopSpeakerSearchTask AWS API Documentation
    #
    # @overload stop_speaker_search_task(params = {})
    # @param [Hash] params ({})
    def stop_speaker_search_task(params = {}, options = {})
      req = build_request(:stop_speaker_search_task, params)
      req.send_request(options)
    end

    # Stops a voice tone analysis task.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the resource to be updated. Valid values
    #   include the ID and ARN of the media insights pipeline.
    #
    # @option params [required, String] :voice_tone_analysis_task_id
    #   The ID of the voice tone analysis task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_voice_tone_analysis_task({
    #     identifier: "NonEmptyString", # required
    #     voice_tone_analysis_task_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/StopVoiceToneAnalysisTask AWS API Documentation
    #
    # @overload stop_voice_tone_analysis_task(params = {})
    # @param [Hash] params ({})
    def stop_voice_tone_analysis_task(params = {}, options = {})
      req = build_request(:stop_voice_tone_analysis_task, params)
      req.send_request(options)
    end

    # The ARN of the media pipeline that you want to tag. Consists of the
    # pipeline's endpoint region, resource ID, and pipeline ID.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the media pipeline associated with any tags. The ARN
    #   consists of the pipeline's endpoint region, resource ID, and pipeline
    #   ID.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags associated with the specified media pipeline.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes any tags from a media pipeline.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the pipeline that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key/value pairs in the tag that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the media insights pipeline's configuration settings.
    #
    # @option params [required, String] :identifier
    #   The unique identifier for the resource to be updated. Valid values
    #   include the name and ARN of the media insights pipeline configuration.
    #
    # @option params [required, String] :resource_access_role_arn
    #   The ARN of the role used by the service to access Amazon Web Services
    #   resources.
    #
    # @option params [Types::RealTimeAlertConfiguration] :real_time_alert_configuration
    #   The configuration settings for real-time alerts for the media insights
    #   pipeline.
    #
    # @option params [required, Array<Types::MediaInsightsPipelineConfigurationElement>] :elements
    #   The elements in the request, such as a processor for Amazon Transcribe
    #   or a sink for a Kinesis Data Stream..
    #
    # @return [Types::UpdateMediaInsightsPipelineConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMediaInsightsPipelineConfigurationResponse#media_insights_pipeline_configuration #media_insights_pipeline_configuration} => Types::MediaInsightsPipelineConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_media_insights_pipeline_configuration({
    #     identifier: "NonEmptyString", # required
    #     resource_access_role_arn: "Arn", # required
    #     real_time_alert_configuration: {
    #       disabled: false,
    #       rules: [
    #         {
    #           type: "KeywordMatch", # required, accepts KeywordMatch, Sentiment, IssueDetection
    #           keyword_match_configuration: {
    #             rule_name: "RuleName", # required
    #             keywords: ["Keyword"], # required
    #             negate: false,
    #           },
    #           sentiment_configuration: {
    #             rule_name: "RuleName", # required
    #             sentiment_type: "NEGATIVE", # required, accepts NEGATIVE
    #             time_period: 1, # required
    #           },
    #           issue_detection_configuration: {
    #             rule_name: "RuleName", # required
    #           },
    #         },
    #       ],
    #     },
    #     elements: [ # required
    #       {
    #         type: "AmazonTranscribeCallAnalyticsProcessor", # required, accepts AmazonTranscribeCallAnalyticsProcessor, VoiceAnalyticsProcessor, AmazonTranscribeProcessor, KinesisDataStreamSink, LambdaFunctionSink, SqsQueueSink, SnsTopicSink, S3RecordingSink, VoiceEnhancementSink
    #         amazon_transcribe_call_analytics_processor_configuration: {
    #           language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #           language_model_name: "ModelName",
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "high", # accepts high, medium, low
    #           content_identification_type: "PII", # accepts PII
    #           content_redaction_type: "PII", # accepts PII
    #           pii_entity_types: "PiiEntityTypes",
    #           filter_partial_results: false,
    #           post_call_analytics_settings: {
    #             output_location: "String", # required
    #             data_access_role_arn: "String", # required
    #             content_redaction_output: "redacted", # accepts redacted, redacted_and_unredacted
    #             output_encryption_kms_key_id: "String",
    #           },
    #           call_analytics_stream_categories: ["CategoryName"],
    #         },
    #         amazon_transcribe_processor_configuration: {
    #           language_code: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #           show_speaker_label: false,
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "high", # accepts high, medium, low
    #           content_identification_type: "PII", # accepts PII
    #           content_redaction_type: "PII", # accepts PII
    #           pii_entity_types: "PiiEntityTypes",
    #           language_model_name: "ModelName",
    #           filter_partial_results: false,
    #           identify_language: false,
    #           identify_multiple_languages: false,
    #           language_options: "LanguageOptions",
    #           preferred_language: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
    #           vocabulary_names: "VocabularyNames",
    #           vocabulary_filter_names: "VocabularyFilterNames",
    #         },
    #         kinesis_data_stream_sink_configuration: {
    #           insights_target: "Arn",
    #         },
    #         s3_recording_sink_configuration: {
    #           destination: "Arn",
    #           recording_file_format: "Wav", # accepts Wav, Opus
    #         },
    #         voice_analytics_processor_configuration: {
    #           speaker_search_status: "Enabled", # accepts Enabled, Disabled
    #           voice_tone_analysis_status: "Enabled", # accepts Enabled, Disabled
    #         },
    #         lambda_function_sink_configuration: {
    #           insights_target: "Arn",
    #         },
    #         sqs_queue_sink_configuration: {
    #           insights_target: "Arn",
    #         },
    #         sns_topic_sink_configuration: {
    #           insights_target: "Arn",
    #         },
    #         voice_enhancement_sink_configuration: {
    #           disabled: false,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_name #=> String
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_arn #=> String
    #   resp.media_insights_pipeline_configuration.resource_access_role_arn #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.disabled #=> Boolean
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules #=> Array
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].type #=> String, one of "KeywordMatch", "Sentiment", "IssueDetection"
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.keywords #=> Array
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.keywords[0] #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].keyword_match_configuration.negate #=> Boolean
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.sentiment_type #=> String, one of "NEGATIVE"
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].sentiment_configuration.time_period #=> Integer
    #   resp.media_insights_pipeline_configuration.real_time_alert_configuration.rules[0].issue_detection_configuration.rule_name #=> String
    #   resp.media_insights_pipeline_configuration.elements #=> Array
    #   resp.media_insights_pipeline_configuration.elements[0].type #=> String, one of "AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_filter_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.language_model_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.enable_partial_results_stabilization #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.partial_results_stability #=> String, one of "high", "medium", "low"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.content_identification_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.content_redaction_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.pii_entity_types #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.filter_partial_results #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.output_location #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.data_access_role_arn #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.content_redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.post_call_analytics_settings.output_encryption_kms_key_id #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.call_analytics_stream_categories #=> Array
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_call_analytics_processor_configuration.call_analytics_stream_categories[0] #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.show_speaker_label #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.enable_partial_results_stabilization #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.partial_results_stability #=> String, one of "high", "medium", "low"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.content_identification_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.content_redaction_type #=> String, one of "PII"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.pii_entity_types #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_model_name #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.filter_partial_results #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.identify_language #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.identify_multiple_languages #=> Boolean
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.language_options #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.preferred_language #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_names #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].amazon_transcribe_processor_configuration.vocabulary_filter_names #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].kinesis_data_stream_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].s3_recording_sink_configuration.destination #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].s3_recording_sink_configuration.recording_file_format #=> String, one of "Wav", "Opus"
    #   resp.media_insights_pipeline_configuration.elements[0].voice_analytics_processor_configuration.speaker_search_status #=> String, one of "Enabled", "Disabled"
    #   resp.media_insights_pipeline_configuration.elements[0].voice_analytics_processor_configuration.voice_tone_analysis_status #=> String, one of "Enabled", "Disabled"
    #   resp.media_insights_pipeline_configuration.elements[0].lambda_function_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].sqs_queue_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].sns_topic_sink_configuration.insights_target #=> String
    #   resp.media_insights_pipeline_configuration.elements[0].voice_enhancement_sink_configuration.disabled #=> Boolean
    #   resp.media_insights_pipeline_configuration.media_insights_pipeline_configuration_id #=> String
    #   resp.media_insights_pipeline_configuration.created_timestamp #=> Time
    #   resp.media_insights_pipeline_configuration.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UpdateMediaInsightsPipelineConfiguration AWS API Documentation
    #
    # @overload update_media_insights_pipeline_configuration(params = {})
    # @param [Hash] params ({})
    def update_media_insights_pipeline_configuration(params = {}, options = {})
      req = build_request(:update_media_insights_pipeline_configuration, params)
      req.send_request(options)
    end

    # Updates the status of a media insights pipeline.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the resource to be updated. Valid values
    #   include the ID and ARN of the media insights pipeline.
    #
    # @option params [required, String] :update_status
    #   The requested status of the media insights pipeline.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_media_insights_pipeline_status({
    #     identifier: "NonEmptyString", # required
    #     update_status: "Pause", # required, accepts Pause, Resume
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UpdateMediaInsightsPipelineStatus AWS API Documentation
    #
    # @overload update_media_insights_pipeline_status(params = {})
    # @param [Hash] params ({})
    def update_media_insights_pipeline_status(params = {}, options = {})
      req = build_request(:update_media_insights_pipeline_status, params)
      req.send_request(options)
    end

    # Updates an Amazon Kinesis Video Stream pool in a media pipeline.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the requested resource. Valid values include
    #   the name and ARN of the media pipeline Kinesis Video Stream pool.
    #
    # @option params [Types::KinesisVideoStreamConfigurationUpdate] :stream_configuration
    #   The configuration settings for the video stream.
    #
    # @return [Types::UpdateMediaPipelineKinesisVideoStreamPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMediaPipelineKinesisVideoStreamPoolResponse#kinesis_video_stream_pool_configuration #kinesis_video_stream_pool_configuration} => Types::KinesisVideoStreamPoolConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_media_pipeline_kinesis_video_stream_pool({
    #     identifier: "NonEmptyString", # required
    #     stream_configuration: {
    #       data_retention_in_hours: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.kinesis_video_stream_pool_configuration.pool_arn #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_name #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_id #=> String
    #   resp.kinesis_video_stream_pool_configuration.pool_status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.kinesis_video_stream_pool_configuration.pool_size #=> Integer
    #   resp.kinesis_video_stream_pool_configuration.stream_configuration.region #=> String
    #   resp.kinesis_video_stream_pool_configuration.stream_configuration.data_retention_in_hours #=> Integer
    #   resp.kinesis_video_stream_pool_configuration.created_timestamp #=> Time
    #   resp.kinesis_video_stream_pool_configuration.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/UpdateMediaPipelineKinesisVideoStreamPool AWS API Documentation
    #
    # @overload update_media_pipeline_kinesis_video_stream_pool(params = {})
    # @param [Hash] params ({})
    def update_media_pipeline_kinesis_video_stream_pool(params = {}, options = {})
      req = build_request(:update_media_pipeline_kinesis_video_stream_pool, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ChimeSDKMediaPipelines')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-chimesdkmediapipelines'
      context[:gem_version] = '1.44.0'
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
