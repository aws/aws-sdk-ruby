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
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediapackagev2)

module Aws::MediaPackageV2
  # An API client for MediaPackageV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaPackageV2::Client.new(
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

    @identifier = :mediapackagev2

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
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::MediaPackageV2::Plugins::Endpoints)

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
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
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
    #   @option options [Aws::MediaPackageV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::MediaPackageV2::EndpointParameters`
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

    # Create a channel to start receiving content streams. The channel
    # represents the input to MediaPackage for incoming live content from an
    # encoder such as AWS Elemental MediaLive. The channel receives content,
    # and after packaging it, outputs it through an origin endpoint to
    # downstream devices (such as video players or CDNs) that request the
    # content. You can create only one channel with each request. We
    # recommend that you spread out channels between channel groups, such as
    # putting redundant channels in the same AWS Region in different channel
    # groups.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group. You can't change the name after you
    #   create the channel.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   Enter any descriptive text that helps you to identify the channel.
    #
    # @option params [Hash<String,String>] :tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#arn #arn} => String
    #   * {Types::CreateChannelResponse#channel_name #channel_name} => String
    #   * {Types::CreateChannelResponse#channel_group_name #channel_group_name} => String
    #   * {Types::CreateChannelResponse#created_at #created_at} => Time
    #   * {Types::CreateChannelResponse#modified_at #modified_at} => Time
    #   * {Types::CreateChannelResponse#description #description} => String
    #   * {Types::CreateChannelResponse#ingest_endpoints #ingest_endpoints} => Array&lt;Types::IngestEndpoint&gt;
    #   * {Types::CreateChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     client_token: "IdempotencyToken",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_group_name #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.ingest_endpoints #=> Array
    #   resp.ingest_endpoints[0].id #=> String
    #   resp.ingest_endpoints[0].url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Create a channel group to group your channels and origin endpoints. A
    # channel group is the top-level resource that consists of channels and
    # origin endpoints that are associated with it and that provides
    # predictable URLs for stream delivery. All channels and origin
    # endpoints within the channel group are guaranteed to share the DNS.
    # You can create only one channel group with each request.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region. You can't use spaces in the name. You can't
    #   change the name after you create the channel group.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   Enter any descriptive text that helps you to identify the channel
    #   group.
    #
    # @option params [Hash<String,String>] :tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #
    # @return [Types::CreateChannelGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelGroupResponse#channel_group_name #channel_group_name} => String
    #   * {Types::CreateChannelGroupResponse#arn #arn} => String
    #   * {Types::CreateChannelGroupResponse#egress_domain #egress_domain} => String
    #   * {Types::CreateChannelGroupResponse#created_at #created_at} => Time
    #   * {Types::CreateChannelGroupResponse#modified_at #modified_at} => Time
    #   * {Types::CreateChannelGroupResponse#description #description} => String
    #   * {Types::CreateChannelGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_group({
    #     channel_group_name: "ResourceName", # required
    #     client_token: "IdempotencyToken",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.arn #=> String
    #   resp.egress_domain #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelGroup AWS API Documentation
    #
    # @overload create_channel_group(params = {})
    # @param [Hash] params ({})
    def create_channel_group(params = {}, options = {})
      req = build_request(:create_channel_group, params)
      req.send_request(options)
    end

    # The endpoint is attached to a channel, and represents the output of
    # the live content. You can associate multiple endpoints to a single
    # channel. Each endpoint gives players and downstream CDNs (such as
    # Amazon CloudFront) access to the content for playback. Content can't
    # be served from a channel until it has an endpoint. You can create only
    # one endpoint with each request.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and must be unique for your
    #   account in the AWS Region and channel. You can't use spaces in the
    #   name. You can't change the name after you create the endpoint.
    #
    # @option params [required, String] :container_type
    #   The type of container to attach to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file. You can't change the
    #   container type after you create the endpoint.
    #
    # @option params [Types::Segment] :segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   Enter any descriptive text that helps you to identify the origin
    #   endpoint.
    #
    # @option params [Integer] :startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can start-over
    #   or catch-up on content that falls within the window. The maximum
    #   startover window is 1,209,600 seconds (14 days).
    #
    # @option params [Array<Types::CreateHlsManifestConfiguration>] :hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #
    # @option params [Array<Types::CreateLowLatencyHlsManifestConfiguration>] :low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #
    # @return [Types::CreateOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOriginEndpointResponse#arn #arn} => String
    #   * {Types::CreateOriginEndpointResponse#channel_group_name #channel_group_name} => String
    #   * {Types::CreateOriginEndpointResponse#channel_name #channel_name} => String
    #   * {Types::CreateOriginEndpointResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::CreateOriginEndpointResponse#container_type #container_type} => String
    #   * {Types::CreateOriginEndpointResponse#segment #segment} => Types::Segment
    #   * {Types::CreateOriginEndpointResponse#created_at #created_at} => Time
    #   * {Types::CreateOriginEndpointResponse#modified_at #modified_at} => Time
    #   * {Types::CreateOriginEndpointResponse#description #description} => String
    #   * {Types::CreateOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::CreateOriginEndpointResponse#hls_manifests #hls_manifests} => Array&lt;Types::GetHlsManifestConfiguration&gt;
    #   * {Types::CreateOriginEndpointResponse#low_latency_hls_manifests #low_latency_hls_manifests} => Array&lt;Types::GetLowLatencyHlsManifestConfiguration&gt;
    #   * {Types::CreateOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_origin_endpoint({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS", # required, accepts TS, CMAF
    #     segment: {
    #       segment_duration_seconds: 1,
    #       segment_name: "SegmentSegmentNameString",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY, PROGRAM
    #       },
    #       encryption: {
    #         constant_initialization_vector: "EncryptionConstantInitializationVectorString",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #           cmaf_encryption_method: "CENC", # accepts CENC, CBCS
    #         },
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke_20_audio: "PRESET_AUDIO_1", # required, accepts PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED
    #             preset_speke_20_video: "PRESET_VIDEO_1", # required, accepts PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED
    #           },
    #           resource_id: "SpekeKeyProviderResourceIdString", # required
    #           drm_systems: ["CLEAR_KEY_AES_128"], # required, accepts CLEAR_KEY_AES_128, FAIRPLAY, PLAYREADY, WIDEVINE
    #           role_arn: "SpekeKeyProviderRoleArnString", # required
    #           url: "SpekeKeyProviderUrlString", # required
    #         },
    #       },
    #     },
    #     client_token: "IdempotencyToken",
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", # accepts DATERANGE
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #       },
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", # accepts DATERANGE
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.container_type #=> String, one of "TS", "CMAF"
    #   resp.segment.segment_duration_seconds #=> Integer
    #   resp.segment.segment_name #=> String
    #   resp.segment.ts_use_audio_rendition_group #=> Boolean
    #   resp.segment.include_iframe_only_streams #=> Boolean
    #   resp.segment.ts_include_dvb_subtitles #=> Boolean
    #   resp.segment.scte.scte_filter #=> Array
    #   resp.segment.scte.scte_filter[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM"
    #   resp.segment.encryption.constant_initialization_vector #=> String
    #   resp.segment.encryption.encryption_method.ts_encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.segment.encryption.encryption_method.cmaf_encryption_method #=> String, one of "CENC", "CBCS"
    #   resp.segment.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.resource_id #=> String
    #   resp.segment.encryption.speke_key_provider.drm_systems #=> Array
    #   resp.segment.encryption.speke_key_provider.drm_systems[0] #=> String, one of "CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE"
    #   resp.segment.encryption.speke_key_provider.role_arn #=> String
    #   resp.segment.encryption.speke_key_provider.url #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.startover_window_seconds #=> Integer
    #   resp.hls_manifests #=> Array
    #   resp.hls_manifests[0].manifest_name #=> String
    #   resp.hls_manifests[0].url #=> String
    #   resp.hls_manifests[0].child_manifest_name #=> String
    #   resp.hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.low_latency_hls_manifests #=> Array
    #   resp.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].url #=> String
    #   resp.low_latency_hls_manifests[0].child_manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateOriginEndpoint AWS API Documentation
    #
    # @overload create_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def create_origin_endpoint(params = {}, options = {})
      req = build_request(:create_origin_endpoint, params)
      req.send_request(options)
    end

    # Delete a channel to stop AWS Elemental MediaPackage from receiving
    # further content. You must delete the channel's origin endpoints
    # before you can delete the channel.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Delete a channel group. You must delete the channel group's channels
    # and origin endpoints before you can delete the channel group. If you
    # delete a channel group, you'll lose access to the egress domain and
    # will have to create a new channel group to replace it.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_group({
    #     channel_group_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelGroup AWS API Documentation
    #
    # @overload delete_channel_group(params = {})
    # @param [Hash] params ({})
    def delete_channel_group(params = {}, options = {})
      req = build_request(:delete_channel_group, params)
      req.send_request(options)
    end

    # Delete a channel policy.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelPolicy AWS API Documentation
    #
    # @overload delete_channel_policy(params = {})
    # @param [Hash] params ({})
    def delete_channel_policy(params = {}, options = {})
      req = build_request(:delete_channel_policy, params)
      req.send_request(options)
    end

    # Origin endpoints can serve content until they're deleted. Delete the
    # endpoint if it should no longer respond to playback requests. You must
    # delete all endpoints from a channel before you can delete the channel.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_endpoint({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpoint AWS API Documentation
    #
    # @overload delete_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_origin_endpoint(params = {}, options = {})
      req = build_request(:delete_origin_endpoint, params)
      req.send_request(options)
    end

    # Delete an origin endpoint policy.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_endpoint_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointPolicy AWS API Documentation
    #
    # @overload delete_origin_endpoint_policy(params = {})
    # @param [Hash] params ({})
    def delete_origin_endpoint_policy(params = {}, options = {})
      req = build_request(:delete_origin_endpoint_policy, params)
      req.send_request(options)
    end

    # Retrieves the specified channel that's configured in AWS Elemental
    # MediaPackage, including the origin endpoints that are associated with
    # it.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @return [Types::GetChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelResponse#arn #arn} => String
    #   * {Types::GetChannelResponse#channel_name #channel_name} => String
    #   * {Types::GetChannelResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetChannelResponse#created_at #created_at} => Time
    #   * {Types::GetChannelResponse#modified_at #modified_at} => Time
    #   * {Types::GetChannelResponse#description #description} => String
    #   * {Types::GetChannelResponse#ingest_endpoints #ingest_endpoints} => Array&lt;Types::IngestEndpoint&gt;
    #   * {Types::GetChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_group_name #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.ingest_endpoints #=> Array
    #   resp.ingest_endpoints[0].id #=> String
    #   resp.ingest_endpoints[0].url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannel AWS API Documentation
    #
    # @overload get_channel(params = {})
    # @param [Hash] params ({})
    def get_channel(params = {}, options = {})
      req = build_request(:get_channel, params)
      req.send_request(options)
    end

    # Retrieves the specified channel group that's configured in AWS
    # Elemental MediaPackage, including the channels and origin endpoints
    # that are associated with it.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @return [Types::GetChannelGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelGroupResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetChannelGroupResponse#arn #arn} => String
    #   * {Types::GetChannelGroupResponse#egress_domain #egress_domain} => String
    #   * {Types::GetChannelGroupResponse#created_at #created_at} => Time
    #   * {Types::GetChannelGroupResponse#modified_at #modified_at} => Time
    #   * {Types::GetChannelGroupResponse#description #description} => String
    #   * {Types::GetChannelGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_group({
    #     channel_group_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.arn #=> String
    #   resp.egress_domain #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelGroup AWS API Documentation
    #
    # @overload get_channel_group(params = {})
    # @param [Hash] params ({})
    def get_channel_group(params = {}, options = {})
      req = build_request(:get_channel_group, params)
      req.send_request(options)
    end

    # Retrieves the specified channel policy that's configured in AWS
    # Elemental MediaPackage. With policies, you can specify who has access
    # to AWS resources and what actions they can perform on those resources.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @return [Types::GetChannelPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelPolicyResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetChannelPolicyResponse#channel_name #channel_name} => String
    #   * {Types::GetChannelPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelPolicy AWS API Documentation
    #
    # @overload get_channel_policy(params = {})
    # @param [Hash] params ({})
    def get_channel_policy(params = {}, options = {})
      req = build_request(:get_channel_policy, params)
      req.send_request(options)
    end

    # Retrieves the specified origin endpoint that's configured in AWS
    # Elemental MediaPackage to obtain its playback URL and to view the
    # packaging settings that it's currently using.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @return [Types::GetOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOriginEndpointResponse#arn #arn} => String
    #   * {Types::GetOriginEndpointResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetOriginEndpointResponse#channel_name #channel_name} => String
    #   * {Types::GetOriginEndpointResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::GetOriginEndpointResponse#container_type #container_type} => String
    #   * {Types::GetOriginEndpointResponse#segment #segment} => Types::Segment
    #   * {Types::GetOriginEndpointResponse#created_at #created_at} => Time
    #   * {Types::GetOriginEndpointResponse#modified_at #modified_at} => Time
    #   * {Types::GetOriginEndpointResponse#description #description} => String
    #   * {Types::GetOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::GetOriginEndpointResponse#hls_manifests #hls_manifests} => Array&lt;Types::GetHlsManifestConfiguration&gt;
    #   * {Types::GetOriginEndpointResponse#low_latency_hls_manifests #low_latency_hls_manifests} => Array&lt;Types::GetLowLatencyHlsManifestConfiguration&gt;
    #   * {Types::GetOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_endpoint({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.container_type #=> String, one of "TS", "CMAF"
    #   resp.segment.segment_duration_seconds #=> Integer
    #   resp.segment.segment_name #=> String
    #   resp.segment.ts_use_audio_rendition_group #=> Boolean
    #   resp.segment.include_iframe_only_streams #=> Boolean
    #   resp.segment.ts_include_dvb_subtitles #=> Boolean
    #   resp.segment.scte.scte_filter #=> Array
    #   resp.segment.scte.scte_filter[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM"
    #   resp.segment.encryption.constant_initialization_vector #=> String
    #   resp.segment.encryption.encryption_method.ts_encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.segment.encryption.encryption_method.cmaf_encryption_method #=> String, one of "CENC", "CBCS"
    #   resp.segment.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.resource_id #=> String
    #   resp.segment.encryption.speke_key_provider.drm_systems #=> Array
    #   resp.segment.encryption.speke_key_provider.drm_systems[0] #=> String, one of "CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE"
    #   resp.segment.encryption.speke_key_provider.role_arn #=> String
    #   resp.segment.encryption.speke_key_provider.url #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.startover_window_seconds #=> Integer
    #   resp.hls_manifests #=> Array
    #   resp.hls_manifests[0].manifest_name #=> String
    #   resp.hls_manifests[0].url #=> String
    #   resp.hls_manifests[0].child_manifest_name #=> String
    #   resp.hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.low_latency_hls_manifests #=> Array
    #   resp.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].url #=> String
    #   resp.low_latency_hls_manifests[0].child_manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpoint AWS API Documentation
    #
    # @overload get_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def get_origin_endpoint(params = {}, options = {})
      req = build_request(:get_origin_endpoint, params)
      req.send_request(options)
    end

    # Retrieves the specified origin endpoint policy that's configured in
    # AWS Elemental MediaPackage.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @return [Types::GetOriginEndpointPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOriginEndpointPolicyResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetOriginEndpointPolicyResponse#channel_name #channel_name} => String
    #   * {Types::GetOriginEndpointPolicyResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::GetOriginEndpointPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_endpoint_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointPolicy AWS API Documentation
    #
    # @overload get_origin_endpoint_policy(params = {})
    # @param [Hash] params ({})
    def get_origin_endpoint_policy(params = {}, options = {})
      req = build_request(:get_origin_endpoint_policy, params)
      req.send_request(options)
    end

    # Retrieves all channel groups that are configured in AWS Elemental
    # MediaPackage, including the channels and origin endpoints that are
    # associated with it.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The pagination token from the GET list request. Use the token to fetch
    #   the next page of results.
    #
    # @return [Types::ListChannelGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelGroupsResponse#items #items} => Array&lt;Types::ChannelGroupListConfiguration&gt;
    #   * {Types::ListChannelGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_groups({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].channel_group_name #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].modified_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelGroups AWS API Documentation
    #
    # @overload list_channel_groups(params = {})
    # @param [Hash] params ({})
    def list_channel_groups(params = {}, options = {})
      req = build_request(:list_channel_groups, params)
      req.send_request(options)
    end

    # Retrieves all channels in a specific channel group that are configured
    # in AWS Elemental MediaPackage, including the origin endpoints that are
    # associated with it.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The pagination token from the GET list request. Use the token to fetch
    #   the next page of results.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#items #items} => Array&lt;Types::ChannelListConfiguration&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     channel_group_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].channel_name #=> String
    #   resp.items[0].channel_group_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].modified_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Retrieves all origin endpoints in a specific channel that are
    # configured in AWS Elemental MediaPackage.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The pagination token from the GET list request. Use the token to fetch
    #   the next page of results.
    #
    # @return [Types::ListOriginEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOriginEndpointsResponse#items #items} => Array&lt;Types::OriginEndpointListConfiguration&gt;
    #   * {Types::ListOriginEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origin_endpoints({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].channel_group_name #=> String
    #   resp.items[0].channel_name #=> String
    #   resp.items[0].origin_endpoint_name #=> String
    #   resp.items[0].container_type #=> String, one of "TS", "CMAF"
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].modified_at #=> Time
    #   resp.items[0].hls_manifests #=> Array
    #   resp.items[0].hls_manifests[0].manifest_name #=> String
    #   resp.items[0].hls_manifests[0].child_manifest_name #=> String
    #   resp.items[0].hls_manifests[0].url #=> String
    #   resp.items[0].low_latency_hls_manifests #=> Array
    #   resp.items[0].low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.items[0].low_latency_hls_manifests[0].child_manifest_name #=> String
    #   resp.items[0].low_latency_hls_manifests[0].url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListOriginEndpoints AWS API Documentation
    #
    # @overload list_origin_endpoints(params = {})
    # @param [Hash] params ({})
    def list_origin_endpoints(params = {}, options = {})
      req = build_request(:list_origin_endpoints, params)
      req.send_request(options)
    end

    # Lists the tags assigned to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch resource that you want to view tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Attaches an IAM policy to the specified channel. With policies, you
    # can specify who has access to AWS resources and what actions they can
    # perform on those resources. You can attach only one policy with each
    # request.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :policy
    #   The policy to attach to the specified channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_channel_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     policy: "PolicyText", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutChannelPolicy AWS API Documentation
    #
    # @overload put_channel_policy(params = {})
    # @param [Hash] params ({})
    def put_channel_policy(params = {}, options = {})
      req = build_request(:put_channel_policy, params)
      req.send_request(options)
    end

    # Attaches an IAM policy to the specified origin endpoint. You can
    # attach only one policy with each request.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @option params [required, String] :policy
    #   The policy to attach to the specified origin endpoint.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_origin_endpoint_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     policy: "PolicyText", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutOriginEndpointPolicy AWS API Documentation
    #
    # @overload put_origin_endpoint_policy(params = {})
    # @param [Hash] params ({})
    def put_origin_endpoint_policy(params = {}, options = {})
      req = build_request(:put_origin_endpoint_policy, params)
      req.send_request(options)
    end

    # Assigns one of more tags (key-value pairs) to the specified
    # MediaPackage resource.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions, by granting a user permission to
    # access or change only resources with certain tag values. You can use
    # the TagResource operation with a resource that already has tags. If
    # you specify a new tag key for the resource, this tag is appended to
    # the list of tags associated with the resource. If you specify a tag
    # key that is already associated with the resource, the new tag value
    # that you specify replaces the previous value for that tag.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the MediaPackage resource that you're adding tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the MediaPackage resource that you're removing tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update the specified channel. You can edit if MediaPackage sends
    # ingest or egress access logs to the CloudWatch log group, if content
    # will be encrypted, the description on a channel, and your channel's
    # policy settings. You can't edit the name of the channel or CloudFront
    # distribution details.
    #
    # Any edits you make that impact the video output may not be reflected
    # for a few minutes.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [String] :description
    #   Any descriptive information that you want to add to the channel for
    #   future identification purposes.
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#arn #arn} => String
    #   * {Types::UpdateChannelResponse#channel_name #channel_name} => String
    #   * {Types::UpdateChannelResponse#channel_group_name #channel_group_name} => String
    #   * {Types::UpdateChannelResponse#created_at #created_at} => Time
    #   * {Types::UpdateChannelResponse#modified_at #modified_at} => Time
    #   * {Types::UpdateChannelResponse#description #description} => String
    #   * {Types::UpdateChannelResponse#ingest_endpoints #ingest_endpoints} => Array&lt;Types::IngestEndpoint&gt;
    #   * {Types::UpdateChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_group_name #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.ingest_endpoints #=> Array
    #   resp.ingest_endpoints[0].id #=> String
    #   resp.ingest_endpoints[0].url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Update the specified channel group. You can edit the description on a
    # channel group for easier identification later from the AWS Elemental
    # MediaPackage console. You can't edit the name of the channel group.
    #
    # Any edits you make that impact the video output may not be reflected
    # for a few minutes.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [String] :description
    #   Any descriptive information that you want to add to the channel group
    #   for future identification purposes.
    #
    # @return [Types::UpdateChannelGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelGroupResponse#channel_group_name #channel_group_name} => String
    #   * {Types::UpdateChannelGroupResponse#arn #arn} => String
    #   * {Types::UpdateChannelGroupResponse#egress_domain #egress_domain} => String
    #   * {Types::UpdateChannelGroupResponse#created_at #created_at} => Time
    #   * {Types::UpdateChannelGroupResponse#modified_at #modified_at} => Time
    #   * {Types::UpdateChannelGroupResponse#description #description} => String
    #   * {Types::UpdateChannelGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_group({
    #     channel_group_name: "ResourceName", # required
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.arn #=> String
    #   resp.egress_domain #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelGroup AWS API Documentation
    #
    # @overload update_channel_group(params = {})
    # @param [Hash] params ({})
    def update_channel_group(params = {}, options = {})
      req = build_request(:update_channel_group, params)
      req.send_request(options)
    end

    # Update the specified origin endpoint. Edit the packaging preferences
    # on an endpoint to optimize the viewing experience. You can't edit the
    # name of the endpoint.
    #
    # Any edits you make that impact the video output may not be reflected
    # for a few minutes.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @option params [required, String] :container_type
    #   The type of container attached to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file.
    #
    # @option params [Types::Segment] :segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #
    # @option params [String] :description
    #   Any descriptive information that you want to add to the origin
    #   endpoint for future identification purposes.
    #
    # @option params [Integer] :startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can start-over
    #   or catch-up on content that falls within the window. The maximum
    #   startover window is 1,209,600 seconds (14 days).
    #
    # @option params [Array<Types::CreateHlsManifestConfiguration>] :hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #
    # @option params [Array<Types::CreateLowLatencyHlsManifestConfiguration>] :low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #
    # @return [Types::UpdateOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOriginEndpointResponse#arn #arn} => String
    #   * {Types::UpdateOriginEndpointResponse#channel_group_name #channel_group_name} => String
    #   * {Types::UpdateOriginEndpointResponse#channel_name #channel_name} => String
    #   * {Types::UpdateOriginEndpointResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::UpdateOriginEndpointResponse#container_type #container_type} => String
    #   * {Types::UpdateOriginEndpointResponse#segment #segment} => Types::Segment
    #   * {Types::UpdateOriginEndpointResponse#created_at #created_at} => Time
    #   * {Types::UpdateOriginEndpointResponse#modified_at #modified_at} => Time
    #   * {Types::UpdateOriginEndpointResponse#description #description} => String
    #   * {Types::UpdateOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::UpdateOriginEndpointResponse#hls_manifests #hls_manifests} => Array&lt;Types::GetHlsManifestConfiguration&gt;
    #   * {Types::UpdateOriginEndpointResponse#low_latency_hls_manifests #low_latency_hls_manifests} => Array&lt;Types::GetLowLatencyHlsManifestConfiguration&gt;
    #   * {Types::UpdateOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_origin_endpoint({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS", # required, accepts TS, CMAF
    #     segment: {
    #       segment_duration_seconds: 1,
    #       segment_name: "SegmentSegmentNameString",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY, PROGRAM
    #       },
    #       encryption: {
    #         constant_initialization_vector: "EncryptionConstantInitializationVectorString",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #           cmaf_encryption_method: "CENC", # accepts CENC, CBCS
    #         },
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke_20_audio: "PRESET_AUDIO_1", # required, accepts PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED
    #             preset_speke_20_video: "PRESET_VIDEO_1", # required, accepts PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED
    #           },
    #           resource_id: "SpekeKeyProviderResourceIdString", # required
    #           drm_systems: ["CLEAR_KEY_AES_128"], # required, accepts CLEAR_KEY_AES_128, FAIRPLAY, PLAYREADY, WIDEVINE
    #           role_arn: "SpekeKeyProviderRoleArnString", # required
    #           url: "SpekeKeyProviderUrlString", # required
    #         },
    #       },
    #     },
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", # accepts DATERANGE
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #       },
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", # accepts DATERANGE
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.container_type #=> String, one of "TS", "CMAF"
    #   resp.segment.segment_duration_seconds #=> Integer
    #   resp.segment.segment_name #=> String
    #   resp.segment.ts_use_audio_rendition_group #=> Boolean
    #   resp.segment.include_iframe_only_streams #=> Boolean
    #   resp.segment.ts_include_dvb_subtitles #=> Boolean
    #   resp.segment.scte.scte_filter #=> Array
    #   resp.segment.scte.scte_filter[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM"
    #   resp.segment.encryption.constant_initialization_vector #=> String
    #   resp.segment.encryption.encryption_method.ts_encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.segment.encryption.encryption_method.cmaf_encryption_method #=> String, one of "CENC", "CBCS"
    #   resp.segment.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.resource_id #=> String
    #   resp.segment.encryption.speke_key_provider.drm_systems #=> Array
    #   resp.segment.encryption.speke_key_provider.drm_systems[0] #=> String, one of "CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE"
    #   resp.segment.encryption.speke_key_provider.role_arn #=> String
    #   resp.segment.encryption.speke_key_provider.url #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.startover_window_seconds #=> Integer
    #   resp.hls_manifests #=> Array
    #   resp.hls_manifests[0].manifest_name #=> String
    #   resp.hls_manifests[0].url #=> String
    #   resp.hls_manifests[0].child_manifest_name #=> String
    #   resp.hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.low_latency_hls_manifests #=> Array
    #   resp.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].url #=> String
    #   resp.low_latency_hls_manifests[0].child_manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateOriginEndpoint AWS API Documentation
    #
    # @overload update_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def update_origin_endpoint(params = {}, options = {})
      req = build_request(:update_origin_endpoint, params)
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
      context[:gem_name] = 'aws-sdk-mediapackagev2'
      context[:gem_version] = '1.5.0'
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
