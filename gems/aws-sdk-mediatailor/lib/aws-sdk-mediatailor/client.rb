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

Aws::Plugins::GlobalConfiguration.add_identifier(:mediatailor)

module Aws::MediaTailor
  # An API client for MediaTailor.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaTailor::Client.new(
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

    @identifier = :mediatailor

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
    add_plugin(Aws::MediaTailor::Plugins::Endpoints)

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
    #   @option options [Aws::MediaTailor::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::MediaTailor::EndpointParameters`
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

    # Configures Amazon CloudWatch log settings for a channel.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @option params [required, Array<String>] :log_types
    #   The types of logs to collect.
    #
    # @return [Types::ConfigureLogsForChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigureLogsForChannelResponse#channel_name #channel_name} => String
    #   * {Types::ConfigureLogsForChannelResponse#log_types #log_types} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_logs_for_channel({
    #     channel_name: "__string", # required
    #     log_types: ["AS_RUN"], # required, accepts AS_RUN
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_name #=> String
    #   resp.log_types #=> Array
    #   resp.log_types[0] #=> String, one of "AS_RUN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ConfigureLogsForChannel AWS API Documentation
    #
    # @overload configure_logs_for_channel(params = {})
    # @param [Hash] params ({})
    def configure_logs_for_channel(params = {}, options = {})
      req = build_request(:configure_logs_for_channel, params)
      req.send_request(options)
    end

    # Amazon CloudWatch log settings for a playback configuration.
    #
    # @option params [required, Integer] :percent_enabled
    #   The percentage of session logs that MediaTailor sends to your
    #   Cloudwatch Logs account. For example, if your playback configuration
    #   has 1000 sessions and percentEnabled is set to `60`, MediaTailor sends
    #   logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides
    #   at random which of the playback configuration sessions to send logs
    #   for. If you want to view logs for a specific session, you can use the
    #   [debug log mode][1].
    #
    #   Valid values: `0` - `100`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html
    #
    # @option params [required, String] :playback_configuration_name
    #   The name of the playback configuration.
    #
    # @return [Types::ConfigureLogsForPlaybackConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigureLogsForPlaybackConfigurationResponse#percent_enabled #percent_enabled} => Integer
    #   * {Types::ConfigureLogsForPlaybackConfigurationResponse#playback_configuration_name #playback_configuration_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_logs_for_playback_configuration({
    #     percent_enabled: 1, # required
    #     playback_configuration_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.percent_enabled #=> Integer
    #   resp.playback_configuration_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ConfigureLogsForPlaybackConfiguration AWS API Documentation
    #
    # @overload configure_logs_for_playback_configuration(params = {})
    # @param [Hash] params ({})
    def configure_logs_for_playback_configuration(params = {}, options = {})
      req = build_request(:configure_logs_for_playback_configuration, params)
      req.send_request(options)
    end

    # Creates a channel. For information about MediaTailor channels, see
    # [Working with channels][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @option params [Types::SlateSource] :filler_slate
    #   The slate used to fill gaps between programs in the schedule. You must
    #   configure filler slate if your channel uses the `LINEAR`
    #   `PlaybackMode`. MediaTailor doesn't support filler slate for channels
    #   using the `LOOP` `PlaybackMode`.
    #
    # @option params [required, Array<Types::RequestOutputItem>] :outputs
    #   The channel's output properties.
    #
    # @option params [required, String] :playback_mode
    #   The type of playback mode to use for this channel.
    #
    #   `LINEAR` - The programs in the schedule play once back-to-back in the
    #   schedule.
    #
    #   `LOOP` - The programs in the schedule play back-to-back in an endless
    #   loop. When the last program in the schedule stops playing, playback
    #   loops back to the first program in the schedule.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the channel. Tags are key-value pairs that you
    #   can associate with Amazon resources to help with organization, access
    #   control, and cost tracking. For more information, see [Tagging AWS
    #   Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #
    # @option params [String] :tier
    #   The tier of the channel.
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#arn #arn} => String
    #   * {Types::CreateChannelResponse#channel_name #channel_name} => String
    #   * {Types::CreateChannelResponse#channel_state #channel_state} => String
    #   * {Types::CreateChannelResponse#creation_time #creation_time} => Time
    #   * {Types::CreateChannelResponse#filler_slate #filler_slate} => Types::SlateSource
    #   * {Types::CreateChannelResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::CreateChannelResponse#outputs #outputs} => Array&lt;Types::ResponseOutputItem&gt;
    #   * {Types::CreateChannelResponse#playback_mode #playback_mode} => String
    #   * {Types::CreateChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateChannelResponse#tier #tier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     channel_name: "__string", # required
    #     filler_slate: {
    #       source_location_name: "__string",
    #       vod_source_name: "__string",
    #     },
    #     outputs: [ # required
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1,
    #         },
    #         hls_playlist_settings: {
    #           ad_markup_type: ["DATERANGE"], # accepts DATERANGE, SCTE35_ENHANCED
    #           manifest_window_seconds: 1,
    #         },
    #         manifest_name: "__string", # required
    #         source_group: "__string", # required
    #       },
    #     ],
    #     playback_mode: "LOOP", # required, accepts LOOP, LINEAR
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     tier: "BASIC", # accepts BASIC, STANDARD
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_state #=> String, one of "RUNNING", "STOPPED"
    #   resp.creation_time #=> Time
    #   resp.filler_slate.source_location_name #=> String
    #   resp.filler_slate.vod_source_name #=> String
    #   resp.last_modified_time #=> Time
    #   resp.outputs #=> Array
    #   resp.outputs[0].dash_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.min_buffer_time_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.min_update_period_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.suggested_presentation_delay_seconds #=> Integer
    #   resp.outputs[0].hls_playlist_settings.ad_markup_type #=> Array
    #   resp.outputs[0].hls_playlist_settings.ad_markup_type[0] #=> String, one of "DATERANGE", "SCTE35_ENHANCED"
    #   resp.outputs[0].hls_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.outputs[0].manifest_name #=> String
    #   resp.outputs[0].playback_url #=> String
    #   resp.outputs[0].source_group #=> String
    #   resp.playback_mode #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.tier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # The live source configuration.
    #
    # @option params [required, Array<Types::HttpPackageConfiguration>] :http_package_configurations
    #   A list of HTTP package configuration parameters for this live source.
    #
    # @option params [required, String] :live_source_name
    #   The name of the live source.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the live source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see [Tagging
    #   AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #
    # @return [Types::CreateLiveSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLiveSourceResponse#arn #arn} => String
    #   * {Types::CreateLiveSourceResponse#creation_time #creation_time} => Time
    #   * {Types::CreateLiveSourceResponse#http_package_configurations #http_package_configurations} => Array&lt;Types::HttpPackageConfiguration&gt;
    #   * {Types::CreateLiveSourceResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::CreateLiveSourceResponse#live_source_name #live_source_name} => String
    #   * {Types::CreateLiveSourceResponse#source_location_name #source_location_name} => String
    #   * {Types::CreateLiveSourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_live_source({
    #     http_package_configurations: [ # required
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH", # required, accepts DASH, HLS
    #       },
    #     ],
    #     live_source_name: "__string", # required
    #     source_location_name: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.http_package_configurations #=> Array
    #   resp.http_package_configurations[0].path #=> String
    #   resp.http_package_configurations[0].source_group #=> String
    #   resp.http_package_configurations[0].type #=> String, one of "DASH", "HLS"
    #   resp.last_modified_time #=> Time
    #   resp.live_source_name #=> String
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateLiveSource AWS API Documentation
    #
    # @overload create_live_source(params = {})
    # @param [Hash] params ({})
    def create_live_source(params = {}, options = {})
      req = build_request(:create_live_source, params)
      req.send_request(options)
    end

    # Creates a prefetch schedule for a playback configuration. A prefetch
    # schedule allows you to tell MediaTailor to fetch and prepare certain
    # ads before an ad break happens. For more information about ad
    # prefetching, see [Using ad prefetching][1] in the *MediaTailor User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html
    #
    # @option params [required, Types::PrefetchConsumption] :consumption
    #   The configuration settings for MediaTailor's *consumption* of the
    #   prefetched ads from the ad decision server. Each consumption
    #   configuration contains an end time and an optional start time that
    #   define the *consumption window*. Prefetch schedules automatically
    #   expire no earlier than seven days after the end time.
    #
    # @option params [required, String] :name
    #   The name to assign to the schedule request.
    #
    # @option params [required, String] :playback_configuration_name
    #   The name to assign to the playback configuration.
    #
    # @option params [required, Types::PrefetchRetrieval] :retrieval
    #   The configuration settings for retrieval of prefetched ads from the ad
    #   decision server. Only one set of prefetched ads will be retrieved and
    #   subsequently consumed for each ad break.
    #
    # @option params [String] :stream_id
    #   An optional stream identifier that MediaTailor uses to prefetch ads
    #   for multiple streams that use the same playback configuration. If
    #   `StreamId` is specified, MediaTailor returns all of the prefetch
    #   schedules with an exact match on `StreamId`. If not specified,
    #   MediaTailor returns all of the prefetch schedules for the playback
    #   configuration, regardless of `StreamId`.
    #
    # @return [Types::CreatePrefetchScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePrefetchScheduleResponse#arn #arn} => String
    #   * {Types::CreatePrefetchScheduleResponse#consumption #consumption} => Types::PrefetchConsumption
    #   * {Types::CreatePrefetchScheduleResponse#name #name} => String
    #   * {Types::CreatePrefetchScheduleResponse#playback_configuration_name #playback_configuration_name} => String
    #   * {Types::CreatePrefetchScheduleResponse#retrieval #retrieval} => Types::PrefetchRetrieval
    #   * {Types::CreatePrefetchScheduleResponse#stream_id #stream_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_prefetch_schedule({
    #     consumption: { # required
    #       avail_matching_criteria: [
    #         {
    #           dynamic_variable: "__string", # required
    #           operator: "EQUALS", # required, accepts EQUALS
    #         },
    #       ],
    #       end_time: Time.now, # required
    #       start_time: Time.now,
    #     },
    #     name: "__string", # required
    #     playback_configuration_name: "__string", # required
    #     retrieval: { # required
    #       dynamic_variables: {
    #         "__string" => "__string",
    #       },
    #       end_time: Time.now, # required
    #       start_time: Time.now,
    #     },
    #     stream_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.consumption.avail_matching_criteria #=> Array
    #   resp.consumption.avail_matching_criteria[0].dynamic_variable #=> String
    #   resp.consumption.avail_matching_criteria[0].operator #=> String, one of "EQUALS"
    #   resp.consumption.end_time #=> Time
    #   resp.consumption.start_time #=> Time
    #   resp.name #=> String
    #   resp.playback_configuration_name #=> String
    #   resp.retrieval.dynamic_variables #=> Hash
    #   resp.retrieval.dynamic_variables["__string"] #=> String
    #   resp.retrieval.end_time #=> Time
    #   resp.retrieval.start_time #=> Time
    #   resp.stream_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreatePrefetchSchedule AWS API Documentation
    #
    # @overload create_prefetch_schedule(params = {})
    # @param [Hash] params ({})
    def create_prefetch_schedule(params = {}, options = {})
      req = build_request(:create_prefetch_schedule, params)
      req.send_request(options)
    end

    # Creates a program within a channel. For information about programs,
    # see [Working with programs][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html
    #
    # @option params [Array<Types::AdBreak>] :ad_breaks
    #   The ad break configuration settings.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel for this Program.
    #
    # @option params [String] :live_source_name
    #   The name of the LiveSource for this Program.
    #
    # @option params [required, String] :program_name
    #   The name of the Program.
    #
    # @option params [required, Types::ScheduleConfiguration] :schedule_configuration
    #   The schedule configuration settings.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location.
    #
    # @option params [String] :vod_source_name
    #   The name that's used to refer to a VOD source.
    #
    # @return [Types::CreateProgramResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProgramResponse#ad_breaks #ad_breaks} => Array&lt;Types::AdBreak&gt;
    #   * {Types::CreateProgramResponse#arn #arn} => String
    #   * {Types::CreateProgramResponse#channel_name #channel_name} => String
    #   * {Types::CreateProgramResponse#clip_range #clip_range} => Types::ClipRange
    #   * {Types::CreateProgramResponse#creation_time #creation_time} => Time
    #   * {Types::CreateProgramResponse#duration_millis #duration_millis} => Integer
    #   * {Types::CreateProgramResponse#live_source_name #live_source_name} => String
    #   * {Types::CreateProgramResponse#program_name #program_name} => String
    #   * {Types::CreateProgramResponse#scheduled_start_time #scheduled_start_time} => Time
    #   * {Types::CreateProgramResponse#source_location_name #source_location_name} => String
    #   * {Types::CreateProgramResponse#vod_source_name #vod_source_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_program({
    #     ad_breaks: [
    #       {
    #         ad_break_metadata: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         message_type: "SPLICE_INSERT", # accepts SPLICE_INSERT, TIME_SIGNAL
    #         offset_millis: 1,
    #         slate: {
    #           source_location_name: "__string",
    #           vod_source_name: "__string",
    #         },
    #         splice_insert_message: {
    #           avail_num: 1,
    #           avails_expected: 1,
    #           splice_event_id: 1,
    #           unique_program_id: 1,
    #         },
    #         time_signal_message: {
    #           segmentation_descriptors: [
    #             {
    #               segment_num: 1,
    #               segmentation_event_id: 1,
    #               segmentation_type_id: 1,
    #               segmentation_upid: "String",
    #               segmentation_upid_type: 1,
    #               segments_expected: 1,
    #               sub_segment_num: 1,
    #               sub_segments_expected: 1,
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     channel_name: "__string", # required
    #     live_source_name: "__string",
    #     program_name: "__string", # required
    #     schedule_configuration: { # required
    #       clip_range: {
    #         end_offset_millis: 1, # required
    #       },
    #       transition: { # required
    #         duration_millis: 1,
    #         relative_position: "BEFORE_PROGRAM", # required, accepts BEFORE_PROGRAM, AFTER_PROGRAM
    #         relative_program: "__string",
    #         scheduled_start_time_millis: 1,
    #         type: "__string", # required
    #       },
    #     },
    #     source_location_name: "__string", # required
    #     vod_source_name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.ad_breaks #=> Array
    #   resp.ad_breaks[0].ad_break_metadata #=> Array
    #   resp.ad_breaks[0].ad_break_metadata[0].key #=> String
    #   resp.ad_breaks[0].ad_break_metadata[0].value #=> String
    #   resp.ad_breaks[0].message_type #=> String, one of "SPLICE_INSERT", "TIME_SIGNAL"
    #   resp.ad_breaks[0].offset_millis #=> Integer
    #   resp.ad_breaks[0].slate.source_location_name #=> String
    #   resp.ad_breaks[0].slate.vod_source_name #=> String
    #   resp.ad_breaks[0].splice_insert_message.avail_num #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.avails_expected #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.splice_event_id #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.unique_program_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors #=> Array
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segment_num #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_event_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_type_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_upid #=> String
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_upid_type #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segments_expected #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].sub_segment_num #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].sub_segments_expected #=> Integer
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.clip_range.end_offset_millis #=> Integer
    #   resp.creation_time #=> Time
    #   resp.duration_millis #=> Integer
    #   resp.live_source_name #=> String
    #   resp.program_name #=> String
    #   resp.scheduled_start_time #=> Time
    #   resp.source_location_name #=> String
    #   resp.vod_source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateProgram AWS API Documentation
    #
    # @overload create_program(params = {})
    # @param [Hash] params ({})
    def create_program(params = {}, options = {})
      req = build_request(:create_program, params)
      req.send_request(options)
    end

    # Creates a source location. A source location is a container for
    # sources. For more information about source locations, see [Working
    # with source locations][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
    #
    # @option params [Types::AccessConfiguration] :access_configuration
    #   Access configuration parameters. Configures the type of authentication
    #   used to access content from your source location.
    #
    # @option params [Types::DefaultSegmentDeliveryConfiguration] :default_segment_delivery_configuration
    #   The optional configuration for the server that serves segments.
    #
    # @option params [required, Types::HttpConfiguration] :http_configuration
    #   The source's HTTP package configurations.
    #
    # @option params [Array<Types::SegmentDeliveryConfiguration>] :segment_delivery_configurations
    #   A list of the segment delivery configurations associated with this
    #   resource.
    #
    # @option params [required, String] :source_location_name
    #   The name associated with the source location.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the source location. Tags are key-value pairs
    #   that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more information,
    #   see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #
    # @return [Types::CreateSourceLocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSourceLocationResponse#access_configuration #access_configuration} => Types::AccessConfiguration
    #   * {Types::CreateSourceLocationResponse#arn #arn} => String
    #   * {Types::CreateSourceLocationResponse#creation_time #creation_time} => Time
    #   * {Types::CreateSourceLocationResponse#default_segment_delivery_configuration #default_segment_delivery_configuration} => Types::DefaultSegmentDeliveryConfiguration
    #   * {Types::CreateSourceLocationResponse#http_configuration #http_configuration} => Types::HttpConfiguration
    #   * {Types::CreateSourceLocationResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::CreateSourceLocationResponse#segment_delivery_configurations #segment_delivery_configurations} => Array&lt;Types::SegmentDeliveryConfiguration&gt;
    #   * {Types::CreateSourceLocationResponse#source_location_name #source_location_name} => String
    #   * {Types::CreateSourceLocationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_source_location({
    #     access_configuration: {
    #       access_type: "S3_SIGV4", # accepts S3_SIGV4, SECRETS_MANAGER_ACCESS_TOKEN
    #       secrets_manager_access_token_configuration: {
    #         header_name: "__string",
    #         secret_arn: "__string",
    #         secret_string_key: "__string",
    #       },
    #     },
    #     default_segment_delivery_configuration: {
    #       base_url: "__string",
    #     },
    #     http_configuration: { # required
    #       base_url: "__string", # required
    #     },
    #     segment_delivery_configurations: [
    #       {
    #         base_url: "__string",
    #         name: "__string",
    #       },
    #     ],
    #     source_location_name: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_configuration.access_type #=> String, one of "S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"
    #   resp.access_configuration.secrets_manager_access_token_configuration.header_name #=> String
    #   resp.access_configuration.secrets_manager_access_token_configuration.secret_arn #=> String
    #   resp.access_configuration.secrets_manager_access_token_configuration.secret_string_key #=> String
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.default_segment_delivery_configuration.base_url #=> String
    #   resp.http_configuration.base_url #=> String
    #   resp.last_modified_time #=> Time
    #   resp.segment_delivery_configurations #=> Array
    #   resp.segment_delivery_configurations[0].base_url #=> String
    #   resp.segment_delivery_configurations[0].name #=> String
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateSourceLocation AWS API Documentation
    #
    # @overload create_source_location(params = {})
    # @param [Hash] params ({})
    def create_source_location(params = {}, options = {})
      req = build_request(:create_source_location, params)
      req.send_request(options)
    end

    # The VOD source configuration parameters.
    #
    # @option params [required, Array<Types::HttpPackageConfiguration>] :http_package_configurations
    #   A list of HTTP package configuration parameters for this VOD source.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location for this VOD source.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the VOD source. Tags are key-value pairs that
    #   you can associate with Amazon resources to help with organization,
    #   access control, and cost tracking. For more information, see [Tagging
    #   AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #
    # @option params [required, String] :vod_source_name
    #   The name associated with the VOD source.&gt;
    #
    # @return [Types::CreateVodSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVodSourceResponse#arn #arn} => String
    #   * {Types::CreateVodSourceResponse#creation_time #creation_time} => Time
    #   * {Types::CreateVodSourceResponse#http_package_configurations #http_package_configurations} => Array&lt;Types::HttpPackageConfiguration&gt;
    #   * {Types::CreateVodSourceResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::CreateVodSourceResponse#source_location_name #source_location_name} => String
    #   * {Types::CreateVodSourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateVodSourceResponse#vod_source_name #vod_source_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vod_source({
    #     http_package_configurations: [ # required
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH", # required, accepts DASH, HLS
    #       },
    #     ],
    #     source_location_name: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     vod_source_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.http_package_configurations #=> Array
    #   resp.http_package_configurations[0].path #=> String
    #   resp.http_package_configurations[0].source_group #=> String
    #   resp.http_package_configurations[0].type #=> String, one of "DASH", "HLS"
    #   resp.last_modified_time #=> Time
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.vod_source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/CreateVodSource AWS API Documentation
    #
    # @overload create_vod_source(params = {})
    # @param [Hash] params ({})
    def create_vod_source(params = {}, options = {})
      req = build_request(:create_vod_source, params)
      req.send_request(options)
    end

    # Deletes a channel. For information about MediaTailor channels, see
    # [Working with channels][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # The channel policy to delete.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel associated with this channel policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_policy({
    #     channel_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteChannelPolicy AWS API Documentation
    #
    # @overload delete_channel_policy(params = {})
    # @param [Hash] params ({})
    def delete_channel_policy(params = {}, options = {})
      req = build_request(:delete_channel_policy, params)
      req.send_request(options)
    end

    # The live source to delete.
    #
    # @option params [required, String] :live_source_name
    #   The name of the live source.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location associated with this Live Source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_live_source({
    #     live_source_name: "__string", # required
    #     source_location_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteLiveSource AWS API Documentation
    #
    # @overload delete_live_source(params = {})
    # @param [Hash] params ({})
    def delete_live_source(params = {}, options = {})
      req = build_request(:delete_live_source, params)
      req.send_request(options)
    end

    # Deletes a playback configuration. For information about MediaTailor
    # configurations, see [Working with configurations in AWS Elemental
    # MediaTailor][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html
    #
    # @option params [required, String] :name
    #   The name of the playback configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_playback_configuration({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePlaybackConfiguration AWS API Documentation
    #
    # @overload delete_playback_configuration(params = {})
    # @param [Hash] params ({})
    def delete_playback_configuration(params = {}, options = {})
      req = build_request(:delete_playback_configuration, params)
      req.send_request(options)
    end

    # Deletes a prefetch schedule for a specific playback configuration. If
    # you call `DeletePrefetchSchedule` on an expired prefetch schedule,
    # MediaTailor returns an HTTP 404 status code. For more information
    # about ad prefetching, see [Using ad prefetching][1] in the
    # *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html
    #
    # @option params [required, String] :name
    #   The name of the prefetch schedule. If the action is successful, the
    #   service sends back an HTTP 204 response with an empty HTTP body.
    #
    # @option params [required, String] :playback_configuration_name
    #   The name of the playback configuration for this prefetch schedule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_prefetch_schedule({
    #     name: "__string", # required
    #     playback_configuration_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePrefetchSchedule AWS API Documentation
    #
    # @overload delete_prefetch_schedule(params = {})
    # @param [Hash] params ({})
    def delete_prefetch_schedule(params = {}, options = {})
      req = build_request(:delete_prefetch_schedule, params)
      req.send_request(options)
    end

    # Deletes a program within a channel. For information about programs,
    # see [Working with programs][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @option params [required, String] :program_name
    #   The name of the program.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_program({
    #     channel_name: "__string", # required
    #     program_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteProgram AWS API Documentation
    #
    # @overload delete_program(params = {})
    # @param [Hash] params ({})
    def delete_program(params = {}, options = {})
      req = build_request(:delete_program, params)
      req.send_request(options)
    end

    # Deletes a source location. A source location is a container for
    # sources. For more information about source locations, see [Working
    # with source locations][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_location({
    #     source_location_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteSourceLocation AWS API Documentation
    #
    # @overload delete_source_location(params = {})
    # @param [Hash] params ({})
    def delete_source_location(params = {}, options = {})
      req = build_request(:delete_source_location, params)
      req.send_request(options)
    end

    # The video on demand (VOD) source to delete.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location associated with this VOD Source.
    #
    # @option params [required, String] :vod_source_name
    #   The name of the VOD source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vod_source({
    #     source_location_name: "__string", # required
    #     vod_source_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeleteVodSource AWS API Documentation
    #
    # @overload delete_vod_source(params = {})
    # @param [Hash] params ({})
    def delete_vod_source(params = {}, options = {})
      req = build_request(:delete_vod_source, params)
      req.send_request(options)
    end

    # Describes a channel. For information about MediaTailor channels, see
    # [Working with channels][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @return [Types::DescribeChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelResponse#arn #arn} => String
    #   * {Types::DescribeChannelResponse#channel_name #channel_name} => String
    #   * {Types::DescribeChannelResponse#channel_state #channel_state} => String
    #   * {Types::DescribeChannelResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeChannelResponse#filler_slate #filler_slate} => Types::SlateSource
    #   * {Types::DescribeChannelResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeChannelResponse#log_configuration #log_configuration} => Types::LogConfigurationForChannel
    #   * {Types::DescribeChannelResponse#outputs #outputs} => Array&lt;Types::ResponseOutputItem&gt;
    #   * {Types::DescribeChannelResponse#playback_mode #playback_mode} => String
    #   * {Types::DescribeChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeChannelResponse#tier #tier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel({
    #     channel_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_state #=> String, one of "RUNNING", "STOPPED"
    #   resp.creation_time #=> Time
    #   resp.filler_slate.source_location_name #=> String
    #   resp.filler_slate.vod_source_name #=> String
    #   resp.last_modified_time #=> Time
    #   resp.log_configuration.log_types #=> Array
    #   resp.log_configuration.log_types[0] #=> String, one of "AS_RUN"
    #   resp.outputs #=> Array
    #   resp.outputs[0].dash_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.min_buffer_time_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.min_update_period_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.suggested_presentation_delay_seconds #=> Integer
    #   resp.outputs[0].hls_playlist_settings.ad_markup_type #=> Array
    #   resp.outputs[0].hls_playlist_settings.ad_markup_type[0] #=> String, one of "DATERANGE", "SCTE35_ENHANCED"
    #   resp.outputs[0].hls_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.outputs[0].manifest_name #=> String
    #   resp.outputs[0].playback_url #=> String
    #   resp.outputs[0].source_group #=> String
    #   resp.playback_mode #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.tier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeChannel AWS API Documentation
    #
    # @overload describe_channel(params = {})
    # @param [Hash] params ({})
    def describe_channel(params = {}, options = {})
      req = build_request(:describe_channel, params)
      req.send_request(options)
    end

    # The live source to describe.
    #
    # @option params [required, String] :live_source_name
    #   The name of the live source.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location associated with this Live Source.
    #
    # @return [Types::DescribeLiveSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLiveSourceResponse#arn #arn} => String
    #   * {Types::DescribeLiveSourceResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeLiveSourceResponse#http_package_configurations #http_package_configurations} => Array&lt;Types::HttpPackageConfiguration&gt;
    #   * {Types::DescribeLiveSourceResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeLiveSourceResponse#live_source_name #live_source_name} => String
    #   * {Types::DescribeLiveSourceResponse#source_location_name #source_location_name} => String
    #   * {Types::DescribeLiveSourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_live_source({
    #     live_source_name: "__string", # required
    #     source_location_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.http_package_configurations #=> Array
    #   resp.http_package_configurations[0].path #=> String
    #   resp.http_package_configurations[0].source_group #=> String
    #   resp.http_package_configurations[0].type #=> String, one of "DASH", "HLS"
    #   resp.last_modified_time #=> Time
    #   resp.live_source_name #=> String
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeLiveSource AWS API Documentation
    #
    # @overload describe_live_source(params = {})
    # @param [Hash] params ({})
    def describe_live_source(params = {}, options = {})
      req = build_request(:describe_live_source, params)
      req.send_request(options)
    end

    # Describes a program within a channel. For information about programs,
    # see [Working with programs][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-programs.html
    #
    # @option params [required, String] :channel_name
    #   The name of the channel associated with this Program.
    #
    # @option params [required, String] :program_name
    #   The name of the program.
    #
    # @return [Types::DescribeProgramResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProgramResponse#ad_breaks #ad_breaks} => Array&lt;Types::AdBreak&gt;
    #   * {Types::DescribeProgramResponse#arn #arn} => String
    #   * {Types::DescribeProgramResponse#channel_name #channel_name} => String
    #   * {Types::DescribeProgramResponse#clip_range #clip_range} => Types::ClipRange
    #   * {Types::DescribeProgramResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeProgramResponse#duration_millis #duration_millis} => Integer
    #   * {Types::DescribeProgramResponse#live_source_name #live_source_name} => String
    #   * {Types::DescribeProgramResponse#program_name #program_name} => String
    #   * {Types::DescribeProgramResponse#scheduled_start_time #scheduled_start_time} => Time
    #   * {Types::DescribeProgramResponse#source_location_name #source_location_name} => String
    #   * {Types::DescribeProgramResponse#vod_source_name #vod_source_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_program({
    #     channel_name: "__string", # required
    #     program_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ad_breaks #=> Array
    #   resp.ad_breaks[0].ad_break_metadata #=> Array
    #   resp.ad_breaks[0].ad_break_metadata[0].key #=> String
    #   resp.ad_breaks[0].ad_break_metadata[0].value #=> String
    #   resp.ad_breaks[0].message_type #=> String, one of "SPLICE_INSERT", "TIME_SIGNAL"
    #   resp.ad_breaks[0].offset_millis #=> Integer
    #   resp.ad_breaks[0].slate.source_location_name #=> String
    #   resp.ad_breaks[0].slate.vod_source_name #=> String
    #   resp.ad_breaks[0].splice_insert_message.avail_num #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.avails_expected #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.splice_event_id #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.unique_program_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors #=> Array
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segment_num #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_event_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_type_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_upid #=> String
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_upid_type #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segments_expected #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].sub_segment_num #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].sub_segments_expected #=> Integer
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.clip_range.end_offset_millis #=> Integer
    #   resp.creation_time #=> Time
    #   resp.duration_millis #=> Integer
    #   resp.live_source_name #=> String
    #   resp.program_name #=> String
    #   resp.scheduled_start_time #=> Time
    #   resp.source_location_name #=> String
    #   resp.vod_source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeProgram AWS API Documentation
    #
    # @overload describe_program(params = {})
    # @param [Hash] params ({})
    def describe_program(params = {}, options = {})
      req = build_request(:describe_program, params)
      req.send_request(options)
    end

    # Describes a source location. A source location is a container for
    # sources. For more information about source locations, see [Working
    # with source locations][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location.
    #
    # @return [Types::DescribeSourceLocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSourceLocationResponse#access_configuration #access_configuration} => Types::AccessConfiguration
    #   * {Types::DescribeSourceLocationResponse#arn #arn} => String
    #   * {Types::DescribeSourceLocationResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeSourceLocationResponse#default_segment_delivery_configuration #default_segment_delivery_configuration} => Types::DefaultSegmentDeliveryConfiguration
    #   * {Types::DescribeSourceLocationResponse#http_configuration #http_configuration} => Types::HttpConfiguration
    #   * {Types::DescribeSourceLocationResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeSourceLocationResponse#segment_delivery_configurations #segment_delivery_configurations} => Array&lt;Types::SegmentDeliveryConfiguration&gt;
    #   * {Types::DescribeSourceLocationResponse#source_location_name #source_location_name} => String
    #   * {Types::DescribeSourceLocationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_source_location({
    #     source_location_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_configuration.access_type #=> String, one of "S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"
    #   resp.access_configuration.secrets_manager_access_token_configuration.header_name #=> String
    #   resp.access_configuration.secrets_manager_access_token_configuration.secret_arn #=> String
    #   resp.access_configuration.secrets_manager_access_token_configuration.secret_string_key #=> String
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.default_segment_delivery_configuration.base_url #=> String
    #   resp.http_configuration.base_url #=> String
    #   resp.last_modified_time #=> Time
    #   resp.segment_delivery_configurations #=> Array
    #   resp.segment_delivery_configurations[0].base_url #=> String
    #   resp.segment_delivery_configurations[0].name #=> String
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeSourceLocation AWS API Documentation
    #
    # @overload describe_source_location(params = {})
    # @param [Hash] params ({})
    def describe_source_location(params = {}, options = {})
      req = build_request(:describe_source_location, params)
      req.send_request(options)
    end

    # Provides details about a specific video on demand (VOD) source in a
    # specific source location.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location associated with this VOD Source.
    #
    # @option params [required, String] :vod_source_name
    #   The name of the VOD Source.
    #
    # @return [Types::DescribeVodSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVodSourceResponse#arn #arn} => String
    #   * {Types::DescribeVodSourceResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeVodSourceResponse#http_package_configurations #http_package_configurations} => Array&lt;Types::HttpPackageConfiguration&gt;
    #   * {Types::DescribeVodSourceResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeVodSourceResponse#source_location_name #source_location_name} => String
    #   * {Types::DescribeVodSourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeVodSourceResponse#vod_source_name #vod_source_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vod_source({
    #     source_location_name: "__string", # required
    #     vod_source_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.http_package_configurations #=> Array
    #   resp.http_package_configurations[0].path #=> String
    #   resp.http_package_configurations[0].source_group #=> String
    #   resp.http_package_configurations[0].type #=> String, one of "DASH", "HLS"
    #   resp.last_modified_time #=> Time
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.vod_source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DescribeVodSource AWS API Documentation
    #
    # @overload describe_vod_source(params = {})
    # @param [Hash] params ({})
    def describe_vod_source(params = {}, options = {})
      req = build_request(:describe_vod_source, params)
      req.send_request(options)
    end

    # Returns the channel's IAM policy. IAM policies are used to control
    # access to your channel.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel associated with this Channel Policy.
    #
    # @return [Types::GetChannelPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_policy({
    #     channel_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetChannelPolicy AWS API Documentation
    #
    # @overload get_channel_policy(params = {})
    # @param [Hash] params ({})
    def get_channel_policy(params = {}, options = {})
      req = build_request(:get_channel_policy, params)
      req.send_request(options)
    end

    # Retrieves information about your channel's schedule.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel associated with this Channel Schedule.
    #
    # @option params [String] :duration_minutes
    #   The duration in minutes of the channel schedule.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channel schedules that you want MediaTailor to
    #   return in response to the current request. If there are more than
    #   `MaxResults` channel schedules, use the value of `NextToken` in the
    #   response to get the next page of results.
    #
    # @option params [String] :next_token
    #   (Optional) If the playback configuration has more than `MaxResults`
    #   channel schedules, use `NextToken` to get the second and subsequent
    #   pages of results.
    #
    #   For the first `GetChannelScheduleRequest` request, omit this value.
    #
    #   For the second and subsequent requests, get the value of `NextToken`
    #   from the previous response and specify that value for `NextToken` in
    #   the request.
    #
    #   If the previous response didn't include a `NextToken` element, there
    #   are no more channel schedules to get.
    #
    # @return [Types::GetChannelScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelScheduleResponse#items #items} => Array&lt;Types::ScheduleEntry&gt;
    #   * {Types::GetChannelScheduleResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_schedule({
    #     channel_name: "__string", # required
    #     duration_minutes: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].approximate_duration_seconds #=> Integer
    #   resp.items[0].approximate_start_time #=> Time
    #   resp.items[0].arn #=> String
    #   resp.items[0].channel_name #=> String
    #   resp.items[0].live_source_name #=> String
    #   resp.items[0].program_name #=> String
    #   resp.items[0].schedule_ad_breaks #=> Array
    #   resp.items[0].schedule_ad_breaks[0].approximate_duration_seconds #=> Integer
    #   resp.items[0].schedule_ad_breaks[0].approximate_start_time #=> Time
    #   resp.items[0].schedule_ad_breaks[0].source_location_name #=> String
    #   resp.items[0].schedule_ad_breaks[0].vod_source_name #=> String
    #   resp.items[0].schedule_entry_type #=> String, one of "PROGRAM", "FILLER_SLATE"
    #   resp.items[0].source_location_name #=> String
    #   resp.items[0].vod_source_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetChannelSchedule AWS API Documentation
    #
    # @overload get_channel_schedule(params = {})
    # @param [Hash] params ({})
    def get_channel_schedule(params = {}, options = {})
      req = build_request(:get_channel_schedule, params)
      req.send_request(options)
    end

    # Retrieves a playback configuration. For information about MediaTailor
    # configurations, see [Working with configurations in AWS Elemental
    # MediaTailor][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html
    #
    # @option params [required, String] :name
    #   The identifier for the playback configuration.
    #
    # @return [Types::GetPlaybackConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlaybackConfigurationResponse#ad_decision_server_url #ad_decision_server_url} => String
    #   * {Types::GetPlaybackConfigurationResponse#avail_suppression #avail_suppression} => Types::AvailSuppression
    #   * {Types::GetPlaybackConfigurationResponse#bumper #bumper} => Types::Bumper
    #   * {Types::GetPlaybackConfigurationResponse#cdn_configuration #cdn_configuration} => Types::CdnConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#configuration_aliases #configuration_aliases} => Hash&lt;String,Hash&lt;String,String&gt;&gt;
    #   * {Types::GetPlaybackConfigurationResponse#dash_configuration #dash_configuration} => Types::DashConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#hls_configuration #hls_configuration} => Types::HlsConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#live_pre_roll_configuration #live_pre_roll_configuration} => Types::LivePreRollConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#log_configuration #log_configuration} => Types::LogConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#manifest_processing_rules #manifest_processing_rules} => Types::ManifestProcessingRules
    #   * {Types::GetPlaybackConfigurationResponse#name #name} => String
    #   * {Types::GetPlaybackConfigurationResponse#personalization_threshold_seconds #personalization_threshold_seconds} => Integer
    #   * {Types::GetPlaybackConfigurationResponse#playback_configuration_arn #playback_configuration_arn} => String
    #   * {Types::GetPlaybackConfigurationResponse#playback_endpoint_prefix #playback_endpoint_prefix} => String
    #   * {Types::GetPlaybackConfigurationResponse#session_initialization_endpoint_prefix #session_initialization_endpoint_prefix} => String
    #   * {Types::GetPlaybackConfigurationResponse#slate_ad_url #slate_ad_url} => String
    #   * {Types::GetPlaybackConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetPlaybackConfigurationResponse#transcode_profile_name #transcode_profile_name} => String
    #   * {Types::GetPlaybackConfigurationResponse#video_content_source_url #video_content_source_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_playback_configuration({
    #     name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ad_decision_server_url #=> String
    #   resp.avail_suppression.fill_policy #=> String, one of "FULL_AVAIL_ONLY", "PARTIAL_AVAIL"
    #   resp.avail_suppression.mode #=> String, one of "OFF", "BEHIND_LIVE_EDGE", "AFTER_LIVE_EDGE"
    #   resp.avail_suppression.value #=> String
    #   resp.bumper.end_url #=> String
    #   resp.bumper.start_url #=> String
    #   resp.cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.cdn_configuration.content_segment_url_prefix #=> String
    #   resp.configuration_aliases #=> Hash
    #   resp.configuration_aliases["__string"] #=> Hash
    #   resp.configuration_aliases["__string"]["__string"] #=> String
    #   resp.dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.dash_configuration.mpd_location #=> String
    #   resp.dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.live_pre_roll_configuration.ad_decision_server_url #=> String
    #   resp.live_pre_roll_configuration.max_duration_seconds #=> Integer
    #   resp.log_configuration.percent_enabled #=> Integer
    #   resp.manifest_processing_rules.ad_marker_passthrough.enabled #=> Boolean
    #   resp.name #=> String
    #   resp.personalization_threshold_seconds #=> Integer
    #   resp.playback_configuration_arn #=> String
    #   resp.playback_endpoint_prefix #=> String
    #   resp.session_initialization_endpoint_prefix #=> String
    #   resp.slate_ad_url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.transcode_profile_name #=> String
    #   resp.video_content_source_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfiguration AWS API Documentation
    #
    # @overload get_playback_configuration(params = {})
    # @param [Hash] params ({})
    def get_playback_configuration(params = {}, options = {})
      req = build_request(:get_playback_configuration, params)
      req.send_request(options)
    end

    # Retrieves a prefetch schedule for a playback configuration. A prefetch
    # schedule allows you to tell MediaTailor to fetch and prepare certain
    # ads before an ad break happens. For more information about ad
    # prefetching, see [Using ad prefetching][1] in the *MediaTailor User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html
    #
    # @option params [required, String] :name
    #   The name of the prefetch schedule. The name must be unique among all
    #   prefetch schedules that are associated with the specified playback
    #   configuration.
    #
    # @option params [required, String] :playback_configuration_name
    #   Returns information about the prefetch schedule for a specific
    #   playback configuration. If you call `GetPrefetchSchedule` on an
    #   expired prefetch schedule, MediaTailor returns an HTTP 404 status
    #   code.
    #
    # @return [Types::GetPrefetchScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPrefetchScheduleResponse#arn #arn} => String
    #   * {Types::GetPrefetchScheduleResponse#consumption #consumption} => Types::PrefetchConsumption
    #   * {Types::GetPrefetchScheduleResponse#name #name} => String
    #   * {Types::GetPrefetchScheduleResponse#playback_configuration_name #playback_configuration_name} => String
    #   * {Types::GetPrefetchScheduleResponse#retrieval #retrieval} => Types::PrefetchRetrieval
    #   * {Types::GetPrefetchScheduleResponse#stream_id #stream_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_prefetch_schedule({
    #     name: "__string", # required
    #     playback_configuration_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.consumption.avail_matching_criteria #=> Array
    #   resp.consumption.avail_matching_criteria[0].dynamic_variable #=> String
    #   resp.consumption.avail_matching_criteria[0].operator #=> String, one of "EQUALS"
    #   resp.consumption.end_time #=> Time
    #   resp.consumption.start_time #=> Time
    #   resp.name #=> String
    #   resp.playback_configuration_name #=> String
    #   resp.retrieval.dynamic_variables #=> Hash
    #   resp.retrieval.dynamic_variables["__string"] #=> String
    #   resp.retrieval.end_time #=> Time
    #   resp.retrieval.start_time #=> Time
    #   resp.stream_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPrefetchSchedule AWS API Documentation
    #
    # @overload get_prefetch_schedule(params = {})
    # @param [Hash] params ({})
    def get_prefetch_schedule(params = {}, options = {})
      req = build_request(:get_prefetch_schedule, params)
      req.send_request(options)
    end

    # Lists the alerts that are associated with a MediaTailor channel
    # assembly resource.
    #
    # @option params [Integer] :max_results
    #   The maximum number of alerts that you want MediaTailor to return in
    #   response to the current request. If there are more than `MaxResults`
    #   alerts, use the value of `NextToken` in the response to get the next
    #   page of results.
    #
    # @option params [String] :next_token
    #   Pagination token returned by the list request when results exceed the
    #   maximum allowed. Use the token to fetch the next page of results.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListAlertsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAlertsResponse#items #items} => Array&lt;Types::Alert&gt;
    #   * {Types::ListAlertsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alerts({
    #     max_results: 1,
    #     next_token: "__string",
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].alert_code #=> String
    #   resp.items[0].alert_message #=> String
    #   resp.items[0].category #=> String, one of "SCHEDULING_ERROR", "PLAYBACK_WARNING", "INFO"
    #   resp.items[0].last_modified_time #=> Time
    #   resp.items[0].related_resource_arns #=> Array
    #   resp.items[0].related_resource_arns[0] #=> String
    #   resp.items[0].resource_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListAlerts AWS API Documentation
    #
    # @overload list_alerts(params = {})
    # @param [Hash] params ({})
    def list_alerts(params = {}, options = {})
      req = build_request(:list_alerts, params)
      req.send_request(options)
    end

    # Retrieves information about the channels that are associated with the
    # current AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels that you want MediaTailor to return in
    #   response to the current request. If there are more than `MaxResults`
    #   channels, use the value of `NextToken` in the response to get the next
    #   page of results.
    #
    # @option params [String] :next_token
    #   Pagination token returned by the list request when results exceed the
    #   maximum allowed. Use the token to fetch the next page of results.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#items #items} => Array&lt;Types::Channel&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].channel_name #=> String
    #   resp.items[0].channel_state #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].filler_slate.source_location_name #=> String
    #   resp.items[0].filler_slate.vod_source_name #=> String
    #   resp.items[0].last_modified_time #=> Time
    #   resp.items[0].log_configuration.log_types #=> Array
    #   resp.items[0].log_configuration.log_types[0] #=> String, one of "AS_RUN"
    #   resp.items[0].outputs #=> Array
    #   resp.items[0].outputs[0].dash_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.items[0].outputs[0].dash_playlist_settings.min_buffer_time_seconds #=> Integer
    #   resp.items[0].outputs[0].dash_playlist_settings.min_update_period_seconds #=> Integer
    #   resp.items[0].outputs[0].dash_playlist_settings.suggested_presentation_delay_seconds #=> Integer
    #   resp.items[0].outputs[0].hls_playlist_settings.ad_markup_type #=> Array
    #   resp.items[0].outputs[0].hls_playlist_settings.ad_markup_type[0] #=> String, one of "DATERANGE", "SCTE35_ENHANCED"
    #   resp.items[0].outputs[0].hls_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.items[0].outputs[0].manifest_name #=> String
    #   resp.items[0].outputs[0].playback_url #=> String
    #   resp.items[0].outputs[0].source_group #=> String
    #   resp.items[0].playback_mode #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.items[0].tier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Lists the live sources contained in a source location. A source
    # represents a piece of content.
    #
    # @option params [Integer] :max_results
    #   The maximum number of live sources that you want MediaTailor to return
    #   in response to the current request. If there are more than
    #   `MaxResults` live sources, use the value of `NextToken` in the
    #   response to get the next page of results.
    #
    # @option params [String] :next_token
    #   Pagination token returned by the list request when results exceed the
    #   maximum allowed. Use the token to fetch the next page of results.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location associated with this Live Sources
    #   list.
    #
    # @return [Types::ListLiveSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLiveSourcesResponse#items #items} => Array&lt;Types::LiveSource&gt;
    #   * {Types::ListLiveSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_live_sources({
    #     max_results: 1,
    #     next_token: "__string",
    #     source_location_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].http_package_configurations #=> Array
    #   resp.items[0].http_package_configurations[0].path #=> String
    #   resp.items[0].http_package_configurations[0].source_group #=> String
    #   resp.items[0].http_package_configurations[0].type #=> String, one of "DASH", "HLS"
    #   resp.items[0].last_modified_time #=> Time
    #   resp.items[0].live_source_name #=> String
    #   resp.items[0].source_location_name #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListLiveSources AWS API Documentation
    #
    # @overload list_live_sources(params = {})
    # @param [Hash] params ({})
    def list_live_sources(params = {}, options = {})
      req = build_request(:list_live_sources, params)
      req.send_request(options)
    end

    # Retrieves existing playback configurations. For information about
    # MediaTailor configurations, see [Working with Configurations in AWS
    # Elemental MediaTailor][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of playback configurations that you want
    #   MediaTailor to return in response to the current request. If there are
    #   more than `MaxResults` playback configurations, use the value of
    #   `NextToken` in the response to get the next page of results.
    #
    # @option params [String] :next_token
    #   Pagination token returned by the list request when results exceed the
    #   maximum allowed. Use the token to fetch the next page of results.
    #
    # @return [Types::ListPlaybackConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlaybackConfigurationsResponse#items #items} => Array&lt;Types::PlaybackConfiguration&gt;
    #   * {Types::ListPlaybackConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_playback_configurations({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].ad_decision_server_url #=> String
    #   resp.items[0].avail_suppression.fill_policy #=> String, one of "FULL_AVAIL_ONLY", "PARTIAL_AVAIL"
    #   resp.items[0].avail_suppression.mode #=> String, one of "OFF", "BEHIND_LIVE_EDGE", "AFTER_LIVE_EDGE"
    #   resp.items[0].avail_suppression.value #=> String
    #   resp.items[0].bumper.end_url #=> String
    #   resp.items[0].bumper.start_url #=> String
    #   resp.items[0].cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.items[0].cdn_configuration.content_segment_url_prefix #=> String
    #   resp.items[0].configuration_aliases #=> Hash
    #   resp.items[0].configuration_aliases["__string"] #=> Hash
    #   resp.items[0].configuration_aliases["__string"]["__string"] #=> String
    #   resp.items[0].dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.items[0].dash_configuration.mpd_location #=> String
    #   resp.items[0].dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.items[0].hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.items[0].live_pre_roll_configuration.ad_decision_server_url #=> String
    #   resp.items[0].live_pre_roll_configuration.max_duration_seconds #=> Integer
    #   resp.items[0].log_configuration.percent_enabled #=> Integer
    #   resp.items[0].manifest_processing_rules.ad_marker_passthrough.enabled #=> Boolean
    #   resp.items[0].name #=> String
    #   resp.items[0].personalization_threshold_seconds #=> Integer
    #   resp.items[0].playback_configuration_arn #=> String
    #   resp.items[0].playback_endpoint_prefix #=> String
    #   resp.items[0].session_initialization_endpoint_prefix #=> String
    #   resp.items[0].slate_ad_url #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.items[0].transcode_profile_name #=> String
    #   resp.items[0].video_content_source_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurations AWS API Documentation
    #
    # @overload list_playback_configurations(params = {})
    # @param [Hash] params ({})
    def list_playback_configurations(params = {}, options = {})
      req = build_request(:list_playback_configurations, params)
      req.send_request(options)
    end

    # Lists the prefetch schedules for a playback configuration.
    #
    # @option params [Integer] :max_results
    #   The maximum number of prefetch schedules that you want MediaTailor to
    #   return in response to the current request. If there are more than
    #   `MaxResults` prefetch schedules, use the value of `NextToken` in the
    #   response to get the next page of results.
    #
    # @option params [String] :next_token
    #   (Optional) If the playback configuration has more than `MaxResults`
    #   prefetch schedules, use `NextToken` to get the second and subsequent
    #   pages of results.
    #
    #   For the first `ListPrefetchSchedulesRequest` request, omit this value.
    #
    #   For the second and subsequent requests, get the value of `NextToken`
    #   from the previous response and specify that value for `NextToken` in
    #   the request.
    #
    #   If the previous response didn't include a `NextToken` element, there
    #   are no more prefetch schedules to get.
    #
    # @option params [required, String] :playback_configuration_name
    #   Retrieves the prefetch schedule(s) for a specific playback
    #   configuration.
    #
    # @option params [String] :stream_id
    #   An optional filtering parameter whereby MediaTailor filters the
    #   prefetch schedules to include only specific streams.
    #
    # @return [Types::ListPrefetchSchedulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrefetchSchedulesResponse#items #items} => Array&lt;Types::PrefetchSchedule&gt;
    #   * {Types::ListPrefetchSchedulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prefetch_schedules({
    #     max_results: 1,
    #     next_token: "__string",
    #     playback_configuration_name: "__string", # required
    #     stream_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].consumption.avail_matching_criteria #=> Array
    #   resp.items[0].consumption.avail_matching_criteria[0].dynamic_variable #=> String
    #   resp.items[0].consumption.avail_matching_criteria[0].operator #=> String, one of "EQUALS"
    #   resp.items[0].consumption.end_time #=> Time
    #   resp.items[0].consumption.start_time #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].playback_configuration_name #=> String
    #   resp.items[0].retrieval.dynamic_variables #=> Hash
    #   resp.items[0].retrieval.dynamic_variables["__string"] #=> String
    #   resp.items[0].retrieval.end_time #=> Time
    #   resp.items[0].retrieval.start_time #=> Time
    #   resp.items[0].stream_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPrefetchSchedules AWS API Documentation
    #
    # @overload list_prefetch_schedules(params = {})
    # @param [Hash] params ({})
    def list_prefetch_schedules(params = {}, options = {})
      req = build_request(:list_prefetch_schedules, params)
      req.send_request(options)
    end

    # Lists the source locations for a channel. A source location defines
    # the host server URL, and contains a list of sources.
    #
    # @option params [Integer] :max_results
    #   The maximum number of source locations that you want MediaTailor to
    #   return in response to the current request. If there are more than
    #   `MaxResults` source locations, use the value of `NextToken` in the
    #   response to get the next page of results.
    #
    # @option params [String] :next_token
    #   Pagination token returned by the list request when results exceed the
    #   maximum allowed. Use the token to fetch the next page of results.
    #
    # @return [Types::ListSourceLocationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSourceLocationsResponse#items #items} => Array&lt;Types::SourceLocation&gt;
    #   * {Types::ListSourceLocationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_source_locations({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].access_configuration.access_type #=> String, one of "S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"
    #   resp.items[0].access_configuration.secrets_manager_access_token_configuration.header_name #=> String
    #   resp.items[0].access_configuration.secrets_manager_access_token_configuration.secret_arn #=> String
    #   resp.items[0].access_configuration.secrets_manager_access_token_configuration.secret_string_key #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].default_segment_delivery_configuration.base_url #=> String
    #   resp.items[0].http_configuration.base_url #=> String
    #   resp.items[0].last_modified_time #=> Time
    #   resp.items[0].segment_delivery_configurations #=> Array
    #   resp.items[0].segment_delivery_configurations[0].base_url #=> String
    #   resp.items[0].segment_delivery_configurations[0].name #=> String
    #   resp.items[0].source_location_name #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListSourceLocations AWS API Documentation
    #
    # @overload list_source_locations(params = {})
    # @param [Hash] params ({})
    def list_source_locations(params = {}, options = {})
      req = build_request(:list_source_locations, params)
      req.send_request(options)
    end

    # A list of tags that are associated with this resource. Tags are
    # key-value pairs that you can associate with Amazon resources to help
    # with organization, access control, and cost tracking. For more
    # information, see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) associated with this resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the VOD sources contained in a source location. A source
    # represents a piece of content.
    #
    # @option params [Integer] :max_results
    #   The maximum number of VOD sources that you want MediaTailor to return
    #   in response to the current request. If there are more than
    #   `MaxResults` VOD sources, use the value of `NextToken` in the response
    #   to get the next page of results.
    #
    # @option params [String] :next_token
    #   Pagination token returned by the list request when results exceed the
    #   maximum allowed. Use the token to fetch the next page of results.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location associated with this VOD Source list.
    #
    # @return [Types::ListVodSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVodSourcesResponse#items #items} => Array&lt;Types::VodSource&gt;
    #   * {Types::ListVodSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vod_sources({
    #     max_results: 1,
    #     next_token: "__string",
    #     source_location_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].http_package_configurations #=> Array
    #   resp.items[0].http_package_configurations[0].path #=> String
    #   resp.items[0].http_package_configurations[0].source_group #=> String
    #   resp.items[0].http_package_configurations[0].type #=> String, one of "DASH", "HLS"
    #   resp.items[0].last_modified_time #=> Time
    #   resp.items[0].source_location_name #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.items[0].vod_source_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListVodSources AWS API Documentation
    #
    # @overload list_vod_sources(params = {})
    # @param [Hash] params ({})
    def list_vod_sources(params = {}, options = {})
      req = build_request(:list_vod_sources, params)
      req.send_request(options)
    end

    # Creates an IAM policy for the channel. IAM policies are used to
    # control access to your channel.
    #
    # @option params [required, String] :channel_name
    #   The channel name associated with this Channel Policy.
    #
    # @option params [required, String] :policy
    #   Adds an IAM role that determines the permissions of your channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_channel_policy({
    #     channel_name: "__string", # required
    #     policy: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutChannelPolicy AWS API Documentation
    #
    # @overload put_channel_policy(params = {})
    # @param [Hash] params ({})
    def put_channel_policy(params = {}, options = {})
      req = build_request(:put_channel_policy, params)
      req.send_request(options)
    end

    # Creates a playback configuration. For information about MediaTailor
    # configurations, see [Working with configurations in AWS Elemental
    # MediaTailor][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html
    #
    # @option params [String] :ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific and
    #   session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing you can provide a static VAST URL. The
    #   maximum length is 25,000 characters.
    #
    # @option params [Types::AvailSuppression] :avail_suppression
    #   The configuration for avail suppression, also known as ad suppression.
    #   For more information about ad suppression, see [Ad Suppression][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #
    # @option params [Types::Bumper] :bumper
    #   The configuration for bumpers. Bumpers are short audio or video clips
    #   that play at the start or before the end of an ad break. To learn more
    #   about bumpers, see [Bumpers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html
    #
    # @option params [Types::CdnConfiguration] :cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #
    # @option params [Hash<String,Hash>] :configuration_aliases
    #   The player parameters and aliases used as dynamic variables during
    #   session initialization. For more information, see [Domain
    #   Variables][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html
    #
    # @option params [Types::DashConfigurationForPut] :dash_configuration
    #   The configuration for DASH content.
    #
    # @option params [Types::LivePreRollConfiguration] :live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #
    # @option params [Types::ManifestProcessingRules] :manifest_processing_rules
    #   The configuration for manifest processing rules. Manifest processing
    #   rules enable customization of the personalized manifests created by
    #   MediaTailor.
    #
    # @option params [required, String] :name
    #   The identifier for the playback configuration.
    #
    # @option params [Integer] :personalization_threshold_seconds
    #   Defines the maximum duration of underfilled ad time (in seconds)
    #   allowed in an ad break. If the duration of underfilled ad time exceeds
    #   the personalization threshold, then the personalization of the ad
    #   break is abandoned and the underlying content is shown. This feature
    #   applies to *ad replacement* in live and VOD streams, rather than ad
    #   insertion, because it relies on an underlying content stream. For more
    #   information about ad break behavior, including ad replacement and
    #   insertion, see [Ad Behavior in AWS Elemental MediaTailor][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html
    #
    # @option params [String] :slate_ad_url
    #   The URL for a high-quality video asset to transcode and use to fill in
    #   time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID configurations. For VPAID, the slate is
    #   required because MediaTailor provides it in the slots that are
    #   designated for dynamic ad content. The slate must be a high-quality
    #   asset that contains both audio and video.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the playback configuration. Tags are key-value
    #   pairs that you can associate with Amazon resources to help with
    #   organization, access control, and cost tracking. For more information,
    #   see [Tagging AWS Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #
    # @option params [String] :transcode_profile_name
    #   The name that is used to associate this playback configuration with a
    #   custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #
    # @option params [String] :video_content_source_url
    #   The URL prefix for the parent manifest for the stream, minus the asset
    #   ID. The maximum length is 512 characters.
    #
    # @return [Types::PutPlaybackConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPlaybackConfigurationResponse#ad_decision_server_url #ad_decision_server_url} => String
    #   * {Types::PutPlaybackConfigurationResponse#avail_suppression #avail_suppression} => Types::AvailSuppression
    #   * {Types::PutPlaybackConfigurationResponse#bumper #bumper} => Types::Bumper
    #   * {Types::PutPlaybackConfigurationResponse#cdn_configuration #cdn_configuration} => Types::CdnConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#configuration_aliases #configuration_aliases} => Hash&lt;String,Hash&lt;String,String&gt;&gt;
    #   * {Types::PutPlaybackConfigurationResponse#dash_configuration #dash_configuration} => Types::DashConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#hls_configuration #hls_configuration} => Types::HlsConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#live_pre_roll_configuration #live_pre_roll_configuration} => Types::LivePreRollConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#log_configuration #log_configuration} => Types::LogConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#manifest_processing_rules #manifest_processing_rules} => Types::ManifestProcessingRules
    #   * {Types::PutPlaybackConfigurationResponse#name #name} => String
    #   * {Types::PutPlaybackConfigurationResponse#personalization_threshold_seconds #personalization_threshold_seconds} => Integer
    #   * {Types::PutPlaybackConfigurationResponse#playback_configuration_arn #playback_configuration_arn} => String
    #   * {Types::PutPlaybackConfigurationResponse#playback_endpoint_prefix #playback_endpoint_prefix} => String
    #   * {Types::PutPlaybackConfigurationResponse#session_initialization_endpoint_prefix #session_initialization_endpoint_prefix} => String
    #   * {Types::PutPlaybackConfigurationResponse#slate_ad_url #slate_ad_url} => String
    #   * {Types::PutPlaybackConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::PutPlaybackConfigurationResponse#transcode_profile_name #transcode_profile_name} => String
    #   * {Types::PutPlaybackConfigurationResponse#video_content_source_url #video_content_source_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_playback_configuration({
    #     ad_decision_server_url: "__string",
    #     avail_suppression: {
    #       fill_policy: "FULL_AVAIL_ONLY", # accepts FULL_AVAIL_ONLY, PARTIAL_AVAIL
    #       mode: "OFF", # accepts OFF, BEHIND_LIVE_EDGE, AFTER_LIVE_EDGE
    #       value: "__string",
    #     },
    #     bumper: {
    #       end_url: "__string",
    #       start_url: "__string",
    #     },
    #     cdn_configuration: {
    #       ad_segment_url_prefix: "__string",
    #       content_segment_url_prefix: "__string",
    #     },
    #     configuration_aliases: {
    #       "__string" => {
    #         "__string" => "__string",
    #       },
    #     },
    #     dash_configuration: {
    #       mpd_location: "__string",
    #       origin_manifest_type: "SINGLE_PERIOD", # accepts SINGLE_PERIOD, MULTI_PERIOD
    #     },
    #     live_pre_roll_configuration: {
    #       ad_decision_server_url: "__string",
    #       max_duration_seconds: 1,
    #     },
    #     manifest_processing_rules: {
    #       ad_marker_passthrough: {
    #         enabled: false,
    #       },
    #     },
    #     name: "__string", # required
    #     personalization_threshold_seconds: 1,
    #     slate_ad_url: "__string",
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     transcode_profile_name: "__string",
    #     video_content_source_url: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.ad_decision_server_url #=> String
    #   resp.avail_suppression.fill_policy #=> String, one of "FULL_AVAIL_ONLY", "PARTIAL_AVAIL"
    #   resp.avail_suppression.mode #=> String, one of "OFF", "BEHIND_LIVE_EDGE", "AFTER_LIVE_EDGE"
    #   resp.avail_suppression.value #=> String
    #   resp.bumper.end_url #=> String
    #   resp.bumper.start_url #=> String
    #   resp.cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.cdn_configuration.content_segment_url_prefix #=> String
    #   resp.configuration_aliases #=> Hash
    #   resp.configuration_aliases["__string"] #=> Hash
    #   resp.configuration_aliases["__string"]["__string"] #=> String
    #   resp.dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.dash_configuration.mpd_location #=> String
    #   resp.dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.live_pre_roll_configuration.ad_decision_server_url #=> String
    #   resp.live_pre_roll_configuration.max_duration_seconds #=> Integer
    #   resp.log_configuration.percent_enabled #=> Integer
    #   resp.manifest_processing_rules.ad_marker_passthrough.enabled #=> Boolean
    #   resp.name #=> String
    #   resp.personalization_threshold_seconds #=> Integer
    #   resp.playback_configuration_arn #=> String
    #   resp.playback_endpoint_prefix #=> String
    #   resp.session_initialization_endpoint_prefix #=> String
    #   resp.slate_ad_url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.transcode_profile_name #=> String
    #   resp.video_content_source_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfiguration AWS API Documentation
    #
    # @overload put_playback_configuration(params = {})
    # @param [Hash] params ({})
    def put_playback_configuration(params = {}, options = {})
      req = build_request(:put_playback_configuration, params)
      req.send_request(options)
    end

    # Starts a channel. For information about MediaTailor channels, see
    # [Working with channels][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_channel({
    #     channel_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/StartChannel AWS API Documentation
    #
    # @overload start_channel(params = {})
    # @param [Hash] params ({})
    def start_channel(params = {}, options = {})
      req = build_request(:start_channel, params)
      req.send_request(options)
    end

    # Stops a channel. For information about MediaTailor channels, see
    # [Working with channels][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_channel({
    #     channel_name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/StopChannel AWS API Documentation
    #
    # @overload stop_channel(params = {})
    # @param [Hash] params ({})
    def stop_channel(params = {}, options = {})
      req = build_request(:stop_channel, params)
      req.send_request(options)
    end

    # The resource to tag. Tags are key-value pairs that you can associate
    # with Amazon resources to help with organization, access control, and
    # cost tracking. For more information, see [Tagging AWS Elemental
    # MediaTailor Resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to assign to the resource. Tags are key-value pairs that you
    #   can associate with Amazon resources to help with organization, access
    #   control, and cost tracking. For more information, see [Tagging AWS
    #   Elemental MediaTailor Resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # The resource to untag.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a channel. For information about MediaTailor channels, see
    # [Working with channels][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-channels.html
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @option params [Types::SlateSource] :filler_slate
    #   The slate used to fill gaps between programs in the schedule. You must
    #   configure filler slate if your channel uses the `LINEAR`
    #   `PlaybackMode`. MediaTailor doesn't support filler slate for channels
    #   using the `LOOP` `PlaybackMode`.
    #
    # @option params [required, Array<Types::RequestOutputItem>] :outputs
    #   The channel's output properties.
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#arn #arn} => String
    #   * {Types::UpdateChannelResponse#channel_name #channel_name} => String
    #   * {Types::UpdateChannelResponse#channel_state #channel_state} => String
    #   * {Types::UpdateChannelResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateChannelResponse#filler_slate #filler_slate} => Types::SlateSource
    #   * {Types::UpdateChannelResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateChannelResponse#outputs #outputs} => Array&lt;Types::ResponseOutputItem&gt;
    #   * {Types::UpdateChannelResponse#playback_mode #playback_mode} => String
    #   * {Types::UpdateChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateChannelResponse#tier #tier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     channel_name: "__string", # required
    #     filler_slate: {
    #       source_location_name: "__string",
    #       vod_source_name: "__string",
    #     },
    #     outputs: [ # required
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1,
    #         },
    #         hls_playlist_settings: {
    #           ad_markup_type: ["DATERANGE"], # accepts DATERANGE, SCTE35_ENHANCED
    #           manifest_window_seconds: 1,
    #         },
    #         manifest_name: "__string", # required
    #         source_group: "__string", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_state #=> String, one of "RUNNING", "STOPPED"
    #   resp.creation_time #=> Time
    #   resp.filler_slate.source_location_name #=> String
    #   resp.filler_slate.vod_source_name #=> String
    #   resp.last_modified_time #=> Time
    #   resp.outputs #=> Array
    #   resp.outputs[0].dash_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.min_buffer_time_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.min_update_period_seconds #=> Integer
    #   resp.outputs[0].dash_playlist_settings.suggested_presentation_delay_seconds #=> Integer
    #   resp.outputs[0].hls_playlist_settings.ad_markup_type #=> Array
    #   resp.outputs[0].hls_playlist_settings.ad_markup_type[0] #=> String, one of "DATERANGE", "SCTE35_ENHANCED"
    #   resp.outputs[0].hls_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.outputs[0].manifest_name #=> String
    #   resp.outputs[0].playback_url #=> String
    #   resp.outputs[0].source_group #=> String
    #   resp.playback_mode #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.tier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Updates a live source's configuration.
    #
    # @option params [required, Array<Types::HttpPackageConfiguration>] :http_package_configurations
    #   A list of HTTP package configurations for the live source on this
    #   account.
    #
    # @option params [required, String] :live_source_name
    #   The name of the live source.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location associated with this Live Source.
    #
    # @return [Types::UpdateLiveSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLiveSourceResponse#arn #arn} => String
    #   * {Types::UpdateLiveSourceResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateLiveSourceResponse#http_package_configurations #http_package_configurations} => Array&lt;Types::HttpPackageConfiguration&gt;
    #   * {Types::UpdateLiveSourceResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateLiveSourceResponse#live_source_name #live_source_name} => String
    #   * {Types::UpdateLiveSourceResponse#source_location_name #source_location_name} => String
    #   * {Types::UpdateLiveSourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_live_source({
    #     http_package_configurations: [ # required
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH", # required, accepts DASH, HLS
    #       },
    #     ],
    #     live_source_name: "__string", # required
    #     source_location_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.http_package_configurations #=> Array
    #   resp.http_package_configurations[0].path #=> String
    #   resp.http_package_configurations[0].source_group #=> String
    #   resp.http_package_configurations[0].type #=> String, one of "DASH", "HLS"
    #   resp.last_modified_time #=> Time
    #   resp.live_source_name #=> String
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateLiveSource AWS API Documentation
    #
    # @overload update_live_source(params = {})
    # @param [Hash] params ({})
    def update_live_source(params = {}, options = {})
      req = build_request(:update_live_source, params)
      req.send_request(options)
    end

    # Updates a program within a channel.
    #
    # @option params [Array<Types::AdBreak>] :ad_breaks
    #   The ad break configuration settings.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel for this Program.
    #
    # @option params [required, String] :program_name
    #   The name of the Program.
    #
    # @option params [required, Types::UpdateProgramScheduleConfiguration] :schedule_configuration
    #   The schedule configuration settings.
    #
    # @return [Types::UpdateProgramResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProgramResponse#ad_breaks #ad_breaks} => Array&lt;Types::AdBreak&gt;
    #   * {Types::UpdateProgramResponse#arn #arn} => String
    #   * {Types::UpdateProgramResponse#channel_name #channel_name} => String
    #   * {Types::UpdateProgramResponse#clip_range #clip_range} => Types::ClipRange
    #   * {Types::UpdateProgramResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateProgramResponse#duration_millis #duration_millis} => Integer
    #   * {Types::UpdateProgramResponse#live_source_name #live_source_name} => String
    #   * {Types::UpdateProgramResponse#program_name #program_name} => String
    #   * {Types::UpdateProgramResponse#scheduled_start_time #scheduled_start_time} => Time
    #   * {Types::UpdateProgramResponse#source_location_name #source_location_name} => String
    #   * {Types::UpdateProgramResponse#vod_source_name #vod_source_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_program({
    #     ad_breaks: [
    #       {
    #         ad_break_metadata: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         message_type: "SPLICE_INSERT", # accepts SPLICE_INSERT, TIME_SIGNAL
    #         offset_millis: 1,
    #         slate: {
    #           source_location_name: "__string",
    #           vod_source_name: "__string",
    #         },
    #         splice_insert_message: {
    #           avail_num: 1,
    #           avails_expected: 1,
    #           splice_event_id: 1,
    #           unique_program_id: 1,
    #         },
    #         time_signal_message: {
    #           segmentation_descriptors: [
    #             {
    #               segment_num: 1,
    #               segmentation_event_id: 1,
    #               segmentation_type_id: 1,
    #               segmentation_upid: "String",
    #               segmentation_upid_type: 1,
    #               segments_expected: 1,
    #               sub_segment_num: 1,
    #               sub_segments_expected: 1,
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     channel_name: "__string", # required
    #     program_name: "__string", # required
    #     schedule_configuration: { # required
    #       clip_range: {
    #         end_offset_millis: 1, # required
    #       },
    #       transition: {
    #         duration_millis: 1,
    #         scheduled_start_time_millis: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ad_breaks #=> Array
    #   resp.ad_breaks[0].ad_break_metadata #=> Array
    #   resp.ad_breaks[0].ad_break_metadata[0].key #=> String
    #   resp.ad_breaks[0].ad_break_metadata[0].value #=> String
    #   resp.ad_breaks[0].message_type #=> String, one of "SPLICE_INSERT", "TIME_SIGNAL"
    #   resp.ad_breaks[0].offset_millis #=> Integer
    #   resp.ad_breaks[0].slate.source_location_name #=> String
    #   resp.ad_breaks[0].slate.vod_source_name #=> String
    #   resp.ad_breaks[0].splice_insert_message.avail_num #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.avails_expected #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.splice_event_id #=> Integer
    #   resp.ad_breaks[0].splice_insert_message.unique_program_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors #=> Array
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segment_num #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_event_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_type_id #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_upid #=> String
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segmentation_upid_type #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].segments_expected #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].sub_segment_num #=> Integer
    #   resp.ad_breaks[0].time_signal_message.segmentation_descriptors[0].sub_segments_expected #=> Integer
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.clip_range.end_offset_millis #=> Integer
    #   resp.creation_time #=> Time
    #   resp.duration_millis #=> Integer
    #   resp.live_source_name #=> String
    #   resp.program_name #=> String
    #   resp.scheduled_start_time #=> Time
    #   resp.source_location_name #=> String
    #   resp.vod_source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateProgram AWS API Documentation
    #
    # @overload update_program(params = {})
    # @param [Hash] params ({})
    def update_program(params = {}, options = {})
      req = build_request(:update_program, params)
      req.send_request(options)
    end

    # Updates a source location. A source location is a container for
    # sources. For more information about source locations, see [Working
    # with source locations][1] in the *MediaTailor User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-source-locations.html
    #
    # @option params [Types::AccessConfiguration] :access_configuration
    #   Access configuration parameters. Configures the type of authentication
    #   used to access content from your source location.
    #
    # @option params [Types::DefaultSegmentDeliveryConfiguration] :default_segment_delivery_configuration
    #   The optional configuration for the host server that serves segments.
    #
    # @option params [required, Types::HttpConfiguration] :http_configuration
    #   The HTTP configuration for the source location.
    #
    # @option params [Array<Types::SegmentDeliveryConfiguration>] :segment_delivery_configurations
    #   A list of the segment delivery configurations associated with this
    #   resource.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location.
    #
    # @return [Types::UpdateSourceLocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSourceLocationResponse#access_configuration #access_configuration} => Types::AccessConfiguration
    #   * {Types::UpdateSourceLocationResponse#arn #arn} => String
    #   * {Types::UpdateSourceLocationResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateSourceLocationResponse#default_segment_delivery_configuration #default_segment_delivery_configuration} => Types::DefaultSegmentDeliveryConfiguration
    #   * {Types::UpdateSourceLocationResponse#http_configuration #http_configuration} => Types::HttpConfiguration
    #   * {Types::UpdateSourceLocationResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateSourceLocationResponse#segment_delivery_configurations #segment_delivery_configurations} => Array&lt;Types::SegmentDeliveryConfiguration&gt;
    #   * {Types::UpdateSourceLocationResponse#source_location_name #source_location_name} => String
    #   * {Types::UpdateSourceLocationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_source_location({
    #     access_configuration: {
    #       access_type: "S3_SIGV4", # accepts S3_SIGV4, SECRETS_MANAGER_ACCESS_TOKEN
    #       secrets_manager_access_token_configuration: {
    #         header_name: "__string",
    #         secret_arn: "__string",
    #         secret_string_key: "__string",
    #       },
    #     },
    #     default_segment_delivery_configuration: {
    #       base_url: "__string",
    #     },
    #     http_configuration: { # required
    #       base_url: "__string", # required
    #     },
    #     segment_delivery_configurations: [
    #       {
    #         base_url: "__string",
    #         name: "__string",
    #       },
    #     ],
    #     source_location_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_configuration.access_type #=> String, one of "S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"
    #   resp.access_configuration.secrets_manager_access_token_configuration.header_name #=> String
    #   resp.access_configuration.secrets_manager_access_token_configuration.secret_arn #=> String
    #   resp.access_configuration.secrets_manager_access_token_configuration.secret_string_key #=> String
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.default_segment_delivery_configuration.base_url #=> String
    #   resp.http_configuration.base_url #=> String
    #   resp.last_modified_time #=> Time
    #   resp.segment_delivery_configurations #=> Array
    #   resp.segment_delivery_configurations[0].base_url #=> String
    #   resp.segment_delivery_configurations[0].name #=> String
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateSourceLocation AWS API Documentation
    #
    # @overload update_source_location(params = {})
    # @param [Hash] params ({})
    def update_source_location(params = {}, options = {})
      req = build_request(:update_source_location, params)
      req.send_request(options)
    end

    # Updates a VOD source's configuration.
    #
    # @option params [required, Array<Types::HttpPackageConfiguration>] :http_package_configurations
    #   A list of HTTP package configurations for the VOD source on this
    #   account.
    #
    # @option params [required, String] :source_location_name
    #   The name of the source location associated with this VOD Source.
    #
    # @option params [required, String] :vod_source_name
    #   The name of the VOD source.
    #
    # @return [Types::UpdateVodSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVodSourceResponse#arn #arn} => String
    #   * {Types::UpdateVodSourceResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateVodSourceResponse#http_package_configurations #http_package_configurations} => Array&lt;Types::HttpPackageConfiguration&gt;
    #   * {Types::UpdateVodSourceResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateVodSourceResponse#source_location_name #source_location_name} => String
    #   * {Types::UpdateVodSourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateVodSourceResponse#vod_source_name #vod_source_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vod_source({
    #     http_package_configurations: [ # required
    #       {
    #         path: "__string", # required
    #         source_group: "__string", # required
    #         type: "DASH", # required, accepts DASH, HLS
    #       },
    #     ],
    #     source_location_name: "__string", # required
    #     vod_source_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.http_package_configurations #=> Array
    #   resp.http_package_configurations[0].path #=> String
    #   resp.http_package_configurations[0].source_group #=> String
    #   resp.http_package_configurations[0].type #=> String, one of "DASH", "HLS"
    #   resp.last_modified_time #=> Time
    #   resp.source_location_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.vod_source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UpdateVodSource AWS API Documentation
    #
    # @overload update_vod_source(params = {})
    # @param [Hash] params ({})
    def update_vod_source(params = {}, options = {})
      req = build_request(:update_vod_source, params)
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
      context[:gem_name] = 'aws-sdk-mediatailor'
      context[:gem_version] = '1.68.0'
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
