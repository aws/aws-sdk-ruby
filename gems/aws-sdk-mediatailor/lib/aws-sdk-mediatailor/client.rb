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

    # Deletes the playback configuration for the specified name.
    #
    # @option params [required, String] :name
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

    # Returns the playback configuration for the specified name.
    #
    # @option params [required, String] :name
    #
    # @return [Types::GetPlaybackConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlaybackConfigurationResponse#ad_decision_server_url #ad_decision_server_url} => String
    #   * {Types::GetPlaybackConfigurationResponse#avail_suppression #avail_suppression} => Types::AvailSuppression
    #   * {Types::GetPlaybackConfigurationResponse#bumper #bumper} => Types::Bumper
    #   * {Types::GetPlaybackConfigurationResponse#cdn_configuration #cdn_configuration} => Types::CdnConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#personalization_threshold_seconds #personalization_threshold_seconds} => Integer
    #   * {Types::GetPlaybackConfigurationResponse#dash_configuration #dash_configuration} => Types::DashConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#hls_configuration #hls_configuration} => Types::HlsConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#live_pre_roll_configuration #live_pre_roll_configuration} => Types::LivePreRollConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#name #name} => String
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
    #   resp.avail_suppression.mode #=> String, one of "OFF", "BEHIND_LIVE_EDGE"
    #   resp.avail_suppression.value #=> String
    #   resp.bumper.end_url #=> String
    #   resp.bumper.start_url #=> String
    #   resp.cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.cdn_configuration.content_segment_url_prefix #=> String
    #   resp.personalization_threshold_seconds #=> Integer
    #   resp.dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.dash_configuration.mpd_location #=> String
    #   resp.dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.live_pre_roll_configuration.ad_decision_server_url #=> String
    #   resp.live_pre_roll_configuration.max_duration_seconds #=> Integer
    #   resp.name #=> String
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

    # Returns a list of the playback configurations defined in AWS Elemental
    # MediaTailor. You can specify a maximum number of configurations to
    # return at a time. The default maximum is 50. Results are returned in
    # pagefuls. If MediaTailor has more configurations than the specified
    # maximum, it provides parameters in the response that you can use to
    # retrieve the next pageful.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListPlaybackConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlaybackConfigurationsResponse#items #items} => Array&lt;Types::PlaybackConfiguration&gt;
    #   * {Types::ListPlaybackConfigurationsResponse#next_token #next_token} => String
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
    #   resp.items[0].cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.items[0].cdn_configuration.content_segment_url_prefix #=> String
    #   resp.items[0].personalization_threshold_seconds #=> Integer
    #   resp.items[0].dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.items[0].dash_configuration.mpd_location #=> String
    #   resp.items[0].dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.items[0].hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.items[0].name #=> String
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

    # Returns a list of the tags assigned to the specified playback
    # configuration resource.
    #
    # @option params [required, String] :resource_arn
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

    # Adds a new playback configuration to AWS Elemental MediaTailor.
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
    #   The configuration for Avail Suppression.
    #
    # @option params [Types::Bumper] :bumper
    #   The configuration for bumpers. Bumpers are short audio or video clips
    #   that play at the start or before the end of an ad break.
    #
    # @option params [Types::CdnConfiguration] :cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #
    # @option params [Integer] :personalization_threshold_seconds
    #   The maximum duration of underfilled ad time (in seconds) allowed in an
    #   ad break.
    #
    # @option params [Types::DashConfigurationForPut] :dash_configuration
    #   The configuration for DASH content.
    #
    # @option params [Types::LivePreRollConfiguration] :live_pre_roll_configuration
    #   The configuration for pre-roll ad insertion.
    #
    # @option params [String] :name
    #   The identifier for the playback configuration.
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
    #   The tags to assign to the playback configuration.
    #
    # @option params [String] :transcode_profile_name
    #   The name that is used to associate this playback configuration with a
    #   custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #
    # @option params [String] :video_content_source_url
    #   The URL prefix for the master playlist for the stream, minus the asset
    #   ID. The maximum length is 512 characters.
    #
    # @return [Types::PutPlaybackConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPlaybackConfigurationResponse#ad_decision_server_url #ad_decision_server_url} => String
    #   * {Types::PutPlaybackConfigurationResponse#avail_suppression #avail_suppression} => Types::AvailSuppression
    #   * {Types::PutPlaybackConfigurationResponse#bumper #bumper} => Types::Bumper
    #   * {Types::PutPlaybackConfigurationResponse#cdn_configuration #cdn_configuration} => Types::CdnConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#dash_configuration #dash_configuration} => Types::DashConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#hls_configuration #hls_configuration} => Types::HlsConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#live_pre_roll_configuration #live_pre_roll_configuration} => Types::LivePreRollConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#name #name} => String
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
    #       mode: "OFF", # accepts OFF, BEHIND_LIVE_EDGE
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
    #     personalization_threshold_seconds: 1,
    #     dash_configuration: {
    #       mpd_location: "__string",
    #       origin_manifest_type: "SINGLE_PERIOD", # accepts SINGLE_PERIOD, MULTI_PERIOD
    #     },
    #     live_pre_roll_configuration: {
    #       ad_decision_server_url: "__string",
    #       max_duration_seconds: 1,
    #     },
    #     name: "__string",
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
    #   resp.avail_suppression.mode #=> String, one of "OFF", "BEHIND_LIVE_EDGE"
    #   resp.avail_suppression.value #=> String
    #   resp.bumper.end_url #=> String
    #   resp.bumper.start_url #=> String
    #   resp.cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.cdn_configuration.content_segment_url_prefix #=> String
    #   resp.dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.dash_configuration.mpd_location #=> String
    #   resp.dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.live_pre_roll_configuration.ad_decision_server_url #=> String
    #   resp.live_pre_roll_configuration.max_duration_seconds #=> Integer
    #   resp.name #=> String
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

    # Adds tags to the specified playback configuration resource. You can
    # specify one or more tags to add.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
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

    # Removes tags from the specified playback configuration resource. You
    # can specify one or more tags to remove.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
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
      context[:gem_version] = '1.32.0'
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
