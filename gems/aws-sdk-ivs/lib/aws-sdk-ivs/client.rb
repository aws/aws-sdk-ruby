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

Aws::Plugins::GlobalConfiguration.add_identifier(:ivs)

module Aws::IVS
  # An API client for IVS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IVS::Client.new(
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

    @identifier = :ivs

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

    # Performs GetChannel on multiple ARNs simultaneously.
    #
    # @option params [required, Array<String>] :arns
    #   Array of ARNs, one per channel.
    #
    # @return [Types::BatchGetChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetChannelResponse#channels #channels} => Array&lt;Types::Channel&gt;
    #   * {Types::BatchGetChannelResponse#errors #errors} => Array&lt;Types::BatchError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_channel({
    #     arns: ["ChannelArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].arn #=> String
    #   resp.channels[0].name #=> String
    #   resp.channels[0].latency_mode #=> String, one of "NORMAL", "LOW"
    #   resp.channels[0].type #=> String, one of "BASIC", "STANDARD"
    #   resp.channels[0].ingest_endpoint #=> String
    #   resp.channels[0].playback_url #=> String
    #   resp.channels[0].authorized #=> Boolean
    #   resp.channels[0].tags #=> Hash
    #   resp.channels[0].tags["TagKey"] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].arn #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchGetChannel AWS API Documentation
    #
    # @overload batch_get_channel(params = {})
    # @param [Hash] params ({})
    def batch_get_channel(params = {}, options = {})
      req = build_request(:batch_get_channel, params)
      req.send_request(options)
    end

    # Performs GetStreamKey on multiple ARNs simultaneously.
    #
    # @option params [required, Array<String>] :arns
    #   Array of ARNs, one per channel.
    #
    # @return [Types::BatchGetStreamKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetStreamKeyResponse#stream_keys #stream_keys} => Array&lt;Types::StreamKey&gt;
    #   * {Types::BatchGetStreamKeyResponse#errors #errors} => Array&lt;Types::BatchError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_stream_key({
    #     arns: ["StreamKeyArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_keys #=> Array
    #   resp.stream_keys[0].arn #=> String
    #   resp.stream_keys[0].value #=> String
    #   resp.stream_keys[0].channel_arn #=> String
    #   resp.stream_keys[0].tags #=> Hash
    #   resp.stream_keys[0].tags["TagKey"] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].arn #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/BatchGetStreamKey AWS API Documentation
    #
    # @overload batch_get_stream_key(params = {})
    # @param [Hash] params ({})
    def batch_get_stream_key(params = {}, options = {})
      req = build_request(:batch_get_stream_key, params)
      req.send_request(options)
    end

    # Creates a new channel and an associated stream key to start streaming.
    #
    # @option params [String] :name
    #   Channel name.
    #
    # @option params [String] :latency_mode
    #   Channel latency mode. Default: `LOW`.
    #
    # @option params [String] :type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable resolution or bitrate, the stream
    #   probably will disconnect immediately.* Valid values:
    #
    #   * `STANDARD`\: Multiple qualities are generated from the original
    #     input, to automatically give viewers the best experience for their
    #     devices and network conditions. Vertical resolution can be up to
    #     1080 and bitrate can be up to 8.5 Mbps.
    #
    #   * `BASIC`\: Amazon IVS delivers the original input to viewers. The
    #     viewer’s video-quality choice is limited to the original input.
    #     Vertical resolution can be up to 480 and bitrate can be up to 1.5
    #     Mbps.
    #
    #   Default: `STANDARD`.
    #
    # @option params [Boolean] :authorized
    #   Whether the channel is authorized. Default: `false`.
    #
    # @option params [Hash<String,String>] :tags
    #   See Channel$tags.
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#channel #channel} => Types::Channel
    #   * {Types::CreateChannelResponse#stream_key #stream_key} => Types::StreamKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     name: "ChannelName",
    #     latency_mode: "NORMAL", # accepts NORMAL, LOW
    #     type: "BASIC", # accepts BASIC, STANDARD
    #     authorized: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.arn #=> String
    #   resp.channel.name #=> String
    #   resp.channel.latency_mode #=> String, one of "NORMAL", "LOW"
    #   resp.channel.type #=> String, one of "BASIC", "STANDARD"
    #   resp.channel.ingest_endpoint #=> String
    #   resp.channel.playback_url #=> String
    #   resp.channel.authorized #=> Boolean
    #   resp.channel.tags #=> Hash
    #   resp.channel.tags["TagKey"] #=> String
    #   resp.stream_key.arn #=> String
    #   resp.stream_key.value #=> String
    #   resp.stream_key.channel_arn #=> String
    #   resp.stream_key.tags #=> Hash
    #   resp.stream_key.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Creates a stream key, used to initiate a stream, for the specified
    # channel ARN.
    #
    # Note that CreateChannel creates a stream key. If you subsequently use
    # CreateStreamKey on the same channel, it will fail because a stream key
    # already exists and there is a limit of 1 stream key per channel. To
    # reset the stream key on a channel, use DeleteStreamKey and then
    # CreateStreamKey.
    #
    # @option params [required, String] :channel_arn
    #   ARN of the channel for which to create the stream key.
    #
    # @option params [Hash<String,String>] :tags
    #   See Channel$tags.
    #
    # @return [Types::CreateStreamKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamKeyResponse#stream_key #stream_key} => Types::StreamKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream_key({
    #     channel_arn: "ChannelArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_key.arn #=> String
    #   resp.stream_key.value #=> String
    #   resp.stream_key.channel_arn #=> String
    #   resp.stream_key.tags #=> Hash
    #   resp.stream_key.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/CreateStreamKey AWS API Documentation
    #
    # @overload create_stream_key(params = {})
    # @param [Hash] params ({})
    def create_stream_key(params = {}, options = {})
      req = build_request(:create_stream_key, params)
      req.send_request(options)
    end

    # Deletes the specified channel and its associated stream keys.
    #
    # @option params [required, String] :arn
    #   ARN of the channel to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     arn: "ChannelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Deletes a specified authorization key pair. This invalidates future
    # viewer tokens generated using the key pair’s `privateKey`.
    #
    # @option params [required, String] :arn
    #   ARN of the key pair to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_playback_key_pair({
    #     arn: "PlaybackKeyPairArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DeletePlaybackKeyPair AWS API Documentation
    #
    # @overload delete_playback_key_pair(params = {})
    # @param [Hash] params ({})
    def delete_playback_key_pair(params = {}, options = {})
      req = build_request(:delete_playback_key_pair, params)
      req.send_request(options)
    end

    # Deletes the stream key for the specified ARN, so it can no longer be
    # used to stream.
    #
    # @option params [required, String] :arn
    #   ARN of the stream key to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream_key({
    #     arn: "StreamKeyArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/DeleteStreamKey AWS API Documentation
    #
    # @overload delete_stream_key(params = {})
    # @param [Hash] params ({})
    def delete_stream_key(params = {}, options = {})
      req = build_request(:delete_stream_key, params)
      req.send_request(options)
    end

    # Gets the channel configuration for the specified channel ARN. See also
    # BatchGetChannel.
    #
    # @option params [required, String] :arn
    #   ARN of the channel for which the configuration is to be retrieved.
    #
    # @return [Types::GetChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel({
    #     arn: "ChannelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.arn #=> String
    #   resp.channel.name #=> String
    #   resp.channel.latency_mode #=> String, one of "NORMAL", "LOW"
    #   resp.channel.type #=> String, one of "BASIC", "STANDARD"
    #   resp.channel.ingest_endpoint #=> String
    #   resp.channel.playback_url #=> String
    #   resp.channel.authorized #=> Boolean
    #   resp.channel.tags #=> Hash
    #   resp.channel.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetChannel AWS API Documentation
    #
    # @overload get_channel(params = {})
    # @param [Hash] params ({})
    def get_channel(params = {}, options = {})
      req = build_request(:get_channel, params)
      req.send_request(options)
    end

    # Gets a specified playback authorization key pair and returns the `arn`
    # and `fingerprint`. The `privateKey` held by the caller can be used to
    # generate viewer authorization tokens, to grant viewers access to
    # authorized channels.
    #
    # @option params [required, String] :arn
    #   ARN of the key pair to be returned.
    #
    # @return [Types::GetPlaybackKeyPairResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlaybackKeyPairResponse#key_pair #key_pair} => Types::PlaybackKeyPair
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_playback_key_pair({
    #     arn: "PlaybackKeyPairArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pair.arn #=> String
    #   resp.key_pair.name #=> String
    #   resp.key_pair.fingerprint #=> String
    #   resp.key_pair.tags #=> Hash
    #   resp.key_pair.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetPlaybackKeyPair AWS API Documentation
    #
    # @overload get_playback_key_pair(params = {})
    # @param [Hash] params ({})
    def get_playback_key_pair(params = {}, options = {})
      req = build_request(:get_playback_key_pair, params)
      req.send_request(options)
    end

    # Gets information about the active (live) stream on a specified
    # channel.
    #
    # @option params [required, String] :channel_arn
    #   Channel ARN for stream to be accessed.
    #
    # @return [Types::GetStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamResponse#stream #stream} => Types::Stream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stream({
    #     channel_arn: "ChannelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream.channel_arn #=> String
    #   resp.stream.playback_url #=> String
    #   resp.stream.start_time #=> Time
    #   resp.stream.state #=> String, one of "LIVE", "OFFLINE"
    #   resp.stream.health #=> String, one of "HEALTHY", "STARVING", "UNKNOWN"
    #   resp.stream.viewer_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStream AWS API Documentation
    #
    # @overload get_stream(params = {})
    # @param [Hash] params ({})
    def get_stream(params = {}, options = {})
      req = build_request(:get_stream, params)
      req.send_request(options)
    end

    # Gets stream-key information for a specified ARN.
    #
    # @option params [required, String] :arn
    #   ARN for the stream key to be retrieved.
    #
    # @return [Types::GetStreamKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamKeyResponse#stream_key #stream_key} => Types::StreamKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stream_key({
    #     arn: "StreamKeyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_key.arn #=> String
    #   resp.stream_key.value #=> String
    #   resp.stream_key.channel_arn #=> String
    #   resp.stream_key.tags #=> Hash
    #   resp.stream_key.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/GetStreamKey AWS API Documentation
    #
    # @overload get_stream_key(params = {})
    # @param [Hash] params ({})
    def get_stream_key(params = {}, options = {})
      req = build_request(:get_stream_key, params)
      req.send_request(options)
    end

    # Imports the public portion of a new key pair and returns its `arn` and
    # `fingerprint`. The `privateKey` can then be used to generate viewer
    # authorization tokens, to grant viewers access to authorized channels.
    #
    # @option params [required, String] :public_key_material
    #   The public portion of a customer-generated key pair.
    #
    # @option params [String] :name
    #   An arbitrary string (a nickname) assigned to a playback key pair that
    #   helps the customer identify that resource. The value does not need to
    #   be unique.
    #
    # @option params [Hash<String,String>] :tags
    #   Any tags provided with the request are added to the playback key pair
    #   tags.
    #
    # @return [Types::ImportPlaybackKeyPairResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportPlaybackKeyPairResponse#key_pair #key_pair} => Types::PlaybackKeyPair
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_playback_key_pair({
    #     public_key_material: "PlaybackPublicKeyMaterial", # required
    #     name: "PlaybackKeyPairName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pair.arn #=> String
    #   resp.key_pair.name #=> String
    #   resp.key_pair.fingerprint #=> String
    #   resp.key_pair.tags #=> Hash
    #   resp.key_pair.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ImportPlaybackKeyPair AWS API Documentation
    #
    # @overload import_playback_key_pair(params = {})
    # @param [Hash] params ({})
    def import_playback_key_pair(params = {}, options = {})
      req = build_request(:import_playback_key_pair, params)
      req.send_request(options)
    end

    # Gets summary information about all channels in your account, in the
    # AWS region where the API request is processed. This list can be
    # filtered to match a specified string.
    #
    # @option params [String] :filter_by_name
    #   Filters the channel list to match the specified name.
    #
    # @option params [String] :next_token
    #   The first channel to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of channels to return.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;Types::ChannelSummary&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     filter_by_name: "ChannelName",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].arn #=> String
    #   resp.channels[0].name #=> String
    #   resp.channels[0].latency_mode #=> String, one of "NORMAL", "LOW"
    #   resp.channels[0].authorized #=> Boolean
    #   resp.channels[0].tags #=> Hash
    #   resp.channels[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Gets summary information about playback key pairs.
    #
    # @option params [String] :next_token
    #   Maximum number of key pairs to return.
    #
    # @option params [Integer] :max_results
    #   The first key pair to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @return [Types::ListPlaybackKeyPairsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlaybackKeyPairsResponse#key_pairs #key_pairs} => Array&lt;Types::PlaybackKeyPairSummary&gt;
    #   * {Types::ListPlaybackKeyPairsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_playback_key_pairs({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pairs #=> Array
    #   resp.key_pairs[0].arn #=> String
    #   resp.key_pairs[0].name #=> String
    #   resp.key_pairs[0].tags #=> Hash
    #   resp.key_pairs[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListPlaybackKeyPairs AWS API Documentation
    #
    # @overload list_playback_key_pairs(params = {})
    # @param [Hash] params ({})
    def list_playback_key_pairs(params = {}, options = {})
      req = build_request(:list_playback_key_pairs, params)
      req.send_request(options)
    end

    # Gets summary information about stream keys for the specified channel.
    #
    # @option params [required, String] :channel_arn
    #   Channel ARN used to filter the list.
    #
    # @option params [String] :next_token
    #   The first stream key to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of streamKeys to return.
    #
    # @return [Types::ListStreamKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamKeysResponse#stream_keys #stream_keys} => Array&lt;Types::StreamKeySummary&gt;
    #   * {Types::ListStreamKeysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_keys({
    #     channel_arn: "ChannelArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_keys #=> Array
    #   resp.stream_keys[0].arn #=> String
    #   resp.stream_keys[0].channel_arn #=> String
    #   resp.stream_keys[0].tags #=> Hash
    #   resp.stream_keys[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreamKeys AWS API Documentation
    #
    # @overload list_stream_keys(params = {})
    # @param [Hash] params ({})
    def list_stream_keys(params = {}, options = {})
      req = build_request(:list_stream_keys, params)
      req.send_request(options)
    end

    # Gets summary information about live streams in your account, in the
    # AWS region where the API request is processed.
    #
    # @option params [String] :next_token
    #   The first stream to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of streams to return.
    #
    # @return [Types::ListStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamsResponse#streams #streams} => Array&lt;Types::StreamSummary&gt;
    #   * {Types::ListStreamsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.streams #=> Array
    #   resp.streams[0].channel_arn #=> String
    #   resp.streams[0].state #=> String, one of "LIVE", "OFFLINE"
    #   resp.streams[0].health #=> String, one of "HEALTHY", "STARVING", "UNKNOWN"
    #   resp.streams[0].viewer_count #=> Integer
    #   resp.streams[0].start_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListStreams AWS API Documentation
    #
    # @overload list_streams(params = {})
    # @param [Hash] params ({})
    def list_streams(params = {}, options = {})
      req = build_request(:list_streams, params)
      req.send_request(options)
    end

    # Gets information about AWS tags for the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be retrieved.
    #
    # @option params [String] :next_token
    #   The first tag to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @option params [Integer] :max_results
    #   Maximum number of tags to return.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Inserts metadata into an RTMPS stream for the specified channel. A
    # maximum of 5 requests per second per channel is allowed, each with a
    # maximum 1KB payload.
    #
    # @option params [required, String] :channel_arn
    #   ARN of the channel into which metadata is inserted. This channel must
    #   have an active stream.
    #
    # @option params [required, String] :metadata
    #   Metadata to insert into the stream. Maximum: 1 KB per request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metadata({
    #     channel_arn: "ChannelArn", # required
    #     metadata: "StreamMetadata", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/PutMetadata AWS API Documentation
    #
    # @overload put_metadata(params = {})
    # @param [Hash] params ({})
    def put_metadata(params = {}, options = {})
      req = build_request(:put_metadata, params)
      req.send_request(options)
    end

    # Disconnects the incoming RTMPS stream for the specified channel. Can
    # be used in conjunction with DeleteStreamKey to prevent further
    # streaming to a channel.
    #
    # <note markdown="1"> Many streaming client-software libraries automatically reconnect a
    # dropped RTMPS session, so to stop the stream permanently, you may want
    # to first revoke the `streamKey` attached to the channel.
    #
    #  </note>
    #
    # @option params [required, String] :channel_arn
    #   ARN of the channel for which the stream is to be stopped.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stream({
    #     channel_arn: "ChannelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/StopStream AWS API Documentation
    #
    # @overload stop_stream(params = {})
    # @param [Hash] params ({})
    def stop_stream(params = {}, options = {})
      req = build_request(:stop_stream, params)
      req.send_request(options)
    end

    # Adds or updates tags for the AWS resource with the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource for which tags are to be added or updated.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Array of tags to be added or updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the resource with the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource for which tags are to be removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Array of tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a channel's configuration. This does not affect an ongoing
    # stream of this channel. You must stop and restart the stream for the
    # changes to take effect.
    #
    # @option params [required, String] :arn
    #   ARN of the channel to be updated.
    #
    # @option params [String] :name
    #   Channel name.
    #
    # @option params [String] :latency_mode
    #   Channel latency mode. Default: `LOW`.
    #
    # @option params [String] :type
    #   Channel type, which determines the allowable resolution and bitrate.
    #   *If you exceed the allowable resolution or bitrate, the stream
    #   probably will disconnect immediately.* Valid values:
    #
    #   * `STANDARD`\: Multiple qualities are generated from the original
    #     input, to automatically give viewers the best experience for their
    #     devices and network conditions. Vertical resolution can be up to
    #     1080 and bitrate can be up to 8.5 Mbps.
    #
    #   * `BASIC`\: Amazon IVS delivers the original input to viewers. The
    #     viewer’s video-quality choice is limited to the original input.
    #     Vertical resolution can be up to 480 and bitrate can be up to 1.5
    #     Mbps.
    #
    #   Default: `STANDARD`.
    #
    # @option params [Boolean] :authorized
    #   Whether the channel is authorized. Default: `false`.
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     arn: "ChannelArn", # required
    #     name: "ChannelName",
    #     latency_mode: "NORMAL", # accepts NORMAL, LOW
    #     type: "BASIC", # accepts BASIC, STANDARD
    #     authorized: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.arn #=> String
    #   resp.channel.name #=> String
    #   resp.channel.latency_mode #=> String, one of "NORMAL", "LOW"
    #   resp.channel.type #=> String, one of "BASIC", "STANDARD"
    #   resp.channel.ingest_endpoint #=> String
    #   resp.channel.playback_url #=> String
    #   resp.channel.authorized #=> Boolean
    #   resp.channel.tags #=> Hash
    #   resp.channel.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-2020-07-14/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
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
      context[:gem_name] = 'aws-sdk-ivs'
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
