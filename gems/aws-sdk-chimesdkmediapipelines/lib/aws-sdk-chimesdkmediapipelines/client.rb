# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:chimesdkmediapipelines)

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
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
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
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
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
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
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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
    #             content_share_layout: "PresenterOnly", # required, accepts PresenterOnly, Horizontal, Vertical
    #             presenter_only_configuration: {
    #               presenter_position: "TopLeft", # accepts TopLeft, TopRight, BottomLeft, BottomRight
    #             },
    #           },
    #         },
    #       },
    #     },
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
    #   resp.media_capture_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
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
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
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
    #   resp.media_concatenation_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
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

    # Creates a streaming media pipeline in an Amazon Chime SDK meeting.
    #
    # @option params [required, Array<Types::LiveConnectorSourceConfiguration>] :sources
    #   The media pipeline's data sources.
    #
    # @option params [required, Array<Types::LiveConnectorSinkConfiguration>] :sinks
    #   The media pipeline's data sinks.
    #
    # @option params [String] :client_request_token
    #   The token assigned to the client making the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the media pipeline.
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
    #               content_share_layout: "PresenterOnly", # required, accepts PresenterOnly, Horizontal, Vertical
    #               presenter_only_configuration: {
    #                 presenter_position: "TopLeft", # accepts TopLeft, TopRight, BottomLeft, BottomRight
    #               },
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
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical"
    #   resp.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
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
    #   resp.media_live_connector_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
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
    #   resp.media_capture_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
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
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaCapturePipeline AWS API Documentation
    #
    # @overload get_media_capture_pipeline(params = {})
    # @param [Hash] params ({})
    def get_media_capture_pipeline(params = {}, options = {})
      req = build_request(:get_media_capture_pipeline, params)
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
    #   resp.media_pipeline.media_capture_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
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
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical"
    #   resp.media_pipeline.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
    #   resp.media_pipeline.media_live_connector_pipeline.sources #=> Array
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.arn #=> String
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.mux_type #=> String, one of "AudioWithCompositedVideo", "AudioWithActiveSpeakerVideo"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.layout #=> String, one of "GridView"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.resolution #=> String, one of "HD", "FHD"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.content_share_layout #=> String, one of "PresenterOnly", "Horizontal", "Vertical"
    #   resp.media_pipeline.media_live_connector_pipeline.sources[0].chime_sdk_meeting_live_connector_configuration.composited_video.grid_view_configuration.presenter_only_configuration.presenter_position #=> String, one of "TopLeft", "TopRight", "BottomLeft", "BottomRight"
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
    #   resp.media_pipeline.media_live_connector_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
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
    #   resp.media_pipeline.media_concatenation_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
    #   resp.media_pipeline.media_concatenation_pipeline.created_timestamp #=> Time
    #   resp.media_pipeline.media_concatenation_pipeline.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-media-pipelines-2021-07-15/GetMediaPipeline AWS API Documentation
    #
    # @overload get_media_pipeline(params = {})
    # @param [Hash] params ({})
    def get_media_pipeline(params = {}, options = {})
      req = build_request(:get_media_pipeline, params)
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

    # The ARN of the media pipeline that you want to tag. Consists of he
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
      context[:gem_name] = 'aws-sdk-chimesdkmediapipelines'
      context[:gem_version] = '1.1.0'
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
