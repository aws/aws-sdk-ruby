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

Aws::Plugins::GlobalConfiguration.add_identifier(:gamesparks)

module Aws::GameSparks
  # An API client for GameSparks.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GameSparks::Client.new(
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

    @identifier = :gamesparks

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
    add_plugin(Aws::GameSparks::Plugins::Endpoints)

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
    #   @option options [Aws::GameSparks::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::GameSparks::EndpointParameters`
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

    # Creates a new game with an empty configuration. After creating your
    # game, you can update the configuration using `UpdateGameConfiguration`
    # or `ImportGameConfiguration`.
    #
    # @option params [String] :client_token
    #   A client-defined token. With an active client token in the request,
    #   this action is idempotent.
    #
    # @option params [String] :description
    #   The description of the game.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of tags to apply to the game.
    #
    # @return [Types::CreateGameResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGameResult#game #game} => Types::GameDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game({
    #     client_token: "ClientToken",
    #     description: "GameDescription",
    #     game_name: "GameName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.game.arn #=> String
    #   resp.game.created #=> Time
    #   resp.game.description #=> String
    #   resp.game.enable_termination_protection #=> Boolean
    #   resp.game.last_updated #=> Time
    #   resp.game.name #=> String
    #   resp.game.state #=> String, one of "ACTIVE", "DELETING"
    #   resp.game.tags #=> Hash
    #   resp.game.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateGame AWS API Documentation
    #
    # @overload create_game(params = {})
    # @param [Hash] params ({})
    def create_game(params = {}, options = {})
      req = build_request(:create_game, params)
      req.send_request(options)
    end

    # Creates a snapshot of the game configuration.
    #
    # @option params [String] :description
    #   The description of the snapshot.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @return [Types::CreateSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotResult#snapshot #snapshot} => Types::SnapshotDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     description: "SnapshotDescription",
    #     game_name: "GameName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.created #=> Time
    #   resp.snapshot.description #=> String
    #   resp.snapshot.id #=> String
    #   resp.snapshot.last_updated #=> Time
    #   resp.snapshot.sections #=> Hash
    #   resp.snapshot.sections["SectionName"].name #=> String
    #   resp.snapshot.sections["SectionName"].size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Creates a new stage for stage-by-stage game development and
    # deployment.
    #
    # @option params [String] :client_token
    #   A client-defined token. With an active client token in the request,
    #   this action is idempotent.
    #
    # @option params [String] :description
    #   The description of the stage.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :role
    #   The Amazon Resource Name (ARN) of the role to run the game with. This
    #   role can be a game-defined role or the default role that GameSparks
    #   created.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of tags to apply to the stage.
    #
    # @return [Types::CreateStageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStageResult#stage #stage} => Types::StageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage({
    #     client_token: "ClientToken",
    #     description: "StageDescription",
    #     game_name: "GameName", # required
    #     role: "RoleARN", # required
    #     stage_name: "StageName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stage.arn #=> String
    #   resp.stage.created #=> Time
    #   resp.stage.description #=> String
    #   resp.stage.game_key #=> String
    #   resp.stage.last_updated #=> Time
    #   resp.stage.log_group #=> String
    #   resp.stage.name #=> String
    #   resp.stage.role #=> String
    #   resp.stage.state #=> String, one of "ACTIVE", "DELETING"
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/CreateStage AWS API Documentation
    #
    # @overload create_stage(params = {})
    # @param [Hash] params ({})
    def create_stage(params = {}, options = {})
      req = build_request(:create_stage, params)
      req.send_request(options)
    end

    # Deletes a game.
    #
    # @option params [required, String] :game_name
    #   The name of the game to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_game({
    #     game_name: "GameName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DeleteGame AWS API Documentation
    #
    # @overload delete_game(params = {})
    # @param [Hash] params ({})
    def delete_game(params = {}, options = {})
      req = build_request(:delete_game, params)
      req.send_request(options)
    end

    # Deletes a stage from a game, along with the associated game runtime.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stage({
    #     game_name: "GameName", # required
    #     stage_name: "StageName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DeleteStage AWS API Documentation
    #
    # @overload delete_stage(params = {})
    # @param [Hash] params ({})
    def delete_stage(params = {}, options = {})
      req = build_request(:delete_stage, params)
      req.send_request(options)
    end

    # Disconnects a player from the game runtime.
    #
    # If a player has multiple connections, this operation attempts to close
    # all of them.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :player_id
    #   The unique identifier representing a player.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage.
    #
    # @return [Types::DisconnectPlayerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisconnectPlayerResult#disconnect_failures #disconnect_failures} => Array&lt;String&gt;
    #   * {Types::DisconnectPlayerResult#disconnect_successes #disconnect_successes} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_player({
    #     game_name: "GameName", # required
    #     player_id: "PlayerId", # required
    #     stage_name: "StageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.disconnect_failures #=> Array
    #   resp.disconnect_failures[0] #=> String
    #   resp.disconnect_successes #=> Array
    #   resp.disconnect_successes[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/DisconnectPlayer AWS API Documentation
    #
    # @overload disconnect_player(params = {})
    # @param [Hash] params ({})
    def disconnect_player(params = {}, options = {})
      req = build_request(:disconnect_player, params)
      req.send_request(options)
    end

    # Exports a game configuration snapshot.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the snapshot to export.
    #
    # @return [Types::ExportSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportSnapshotResult#s3_url #s3_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_snapshot({
    #     game_name: "GameName", # required
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.s3_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ExportSnapshot AWS API Documentation
    #
    # @overload export_snapshot(params = {})
    # @param [Hash] params ({})
    def export_snapshot(params = {}, options = {})
      req = build_request(:export_snapshot, params)
      req.send_request(options)
    end

    # Gets details about a specified extension.
    #
    # @option params [required, String] :name
    #   The name of the extension.
    #
    # @option params [required, String] :namespace
    #   The namespace (qualifier) of the extension.
    #
    # @return [Types::GetExtensionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExtensionResult#extension #extension} => Types::ExtensionDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_extension({
    #     name: "ExtensionName", # required
    #     namespace: "ExtensionNamespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.extension.description #=> String
    #   resp.extension.name #=> String
    #   resp.extension.namespace #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetExtension AWS API Documentation
    #
    # @overload get_extension(params = {})
    # @param [Hash] params ({})
    def get_extension(params = {}, options = {})
      req = build_request(:get_extension, params)
      req.send_request(options)
    end

    # Gets details about a specified extension version.
    #
    # @option params [required, String] :extension_version
    #   The version of the extension.
    #
    # @option params [required, String] :name
    #   The name of the extension.
    #
    # @option params [required, String] :namespace
    #   The namespace (qualifier) of the extension.
    #
    # @return [Types::GetExtensionVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExtensionVersionResult#extension_version #extension_version} => Types::ExtensionVersionDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_extension_version({
    #     extension_version: "ExtensionVersion", # required
    #     name: "ExtensionName", # required
    #     namespace: "ExtensionNamespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.extension_version.name #=> String
    #   resp.extension_version.namespace #=> String
    #   resp.extension_version.schema #=> String
    #   resp.extension_version.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetExtensionVersion AWS API Documentation
    #
    # @overload get_extension_version(params = {})
    # @param [Hash] params ({})
    def get_extension_version(params = {}, options = {})
      req = build_request(:get_extension_version, params)
      req.send_request(options)
    end

    # Gets details about a game.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @return [Types::GetGameResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGameResult#game #game} => Types::GameDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_game({
    #     game_name: "GameName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game.arn #=> String
    #   resp.game.created #=> Time
    #   resp.game.description #=> String
    #   resp.game.enable_termination_protection #=> Boolean
    #   resp.game.last_updated #=> Time
    #   resp.game.name #=> String
    #   resp.game.state #=> String, one of "ACTIVE", "DELETING"
    #   resp.game.tags #=> Hash
    #   resp.game.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGame AWS API Documentation
    #
    # @overload get_game(params = {})
    # @param [Hash] params ({})
    def get_game(params = {}, options = {})
      req = build_request(:get_game, params)
      req.send_request(options)
    end

    # Gets the configuration of the game.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [Array<String>] :sections
    #   The list of sections to return.
    #
    # @return [Types::GetGameConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGameConfigurationResult#game_configuration #game_configuration} => Types::GameConfigurationDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_game_configuration({
    #     game_name: "GameName", # required
    #     sections: ["SectionName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.game_configuration.created #=> Time
    #   resp.game_configuration.last_updated #=> Time
    #   resp.game_configuration.sections #=> Hash
    #   resp.game_configuration.sections["SectionName"].name #=> String
    #   resp.game_configuration.sections["SectionName"].size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGameConfiguration AWS API Documentation
    #
    # @overload get_game_configuration(params = {})
    # @param [Hash] params ({})
    def get_game_configuration(params = {}, options = {})
      req = build_request(:get_game_configuration, params)
      req.send_request(options)
    end

    # Gets details about a job that is generating code for a snapshot.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :job_id
    #   The identifier of the code generation job.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the snapshot for the code generation job.
    #
    # @return [Types::GetGeneratedCodeJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGeneratedCodeJobResult#generated_code_job #generated_code_job} => Types::GeneratedCodeJobDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_generated_code_job({
    #     game_name: "GameName", # required
    #     job_id: "GeneratedCodeJobId", # required
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.generated_code_job.description #=> String
    #   resp.generated_code_job.expiration_time #=> Time
    #   resp.generated_code_job.generated_code_job_id #=> String
    #   resp.generated_code_job.s3_url #=> String
    #   resp.generated_code_job.status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED", "PENDING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetGeneratedCodeJob AWS API Documentation
    #
    # @overload get_generated_code_job(params = {})
    # @param [Hash] params ({})
    def get_generated_code_job(params = {}, options = {})
      req = build_request(:get_generated_code_job, params)
      req.send_request(options)
    end

    # Gets the status of a player's connection to the game runtime.
    #
    # It's possible for a single player to have multiple connections to the
    # game runtime. If a player is not connected, this operation returns an
    # empty list.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :player_id
    #   The unique identifier representing a player.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage.
    #
    # @return [Types::GetPlayerConnectionStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlayerConnectionStatusResult#connections #connections} => Array&lt;Types::Connection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_player_connection_status({
    #     game_name: "GameName", # required
    #     player_id: "PlayerId", # required
    #     stage_name: "StageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connections #=> Array
    #   resp.connections[0].created #=> Time
    #   resp.connections[0].id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetPlayerConnectionStatus AWS API Documentation
    #
    # @overload get_player_connection_status(params = {})
    # @param [Hash] params ({})
    def get_player_connection_status(params = {}, options = {})
      req = build_request(:get_player_connection_status, params)
      req.send_request(options)
    end

    # Gets a copy of the game configuration in a snapshot.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [Array<String>] :sections
    #   The list of game configuration sections to be described.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the snapshot.
    #
    # @return [Types::GetSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSnapshotResult#snapshot #snapshot} => Types::SnapshotDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshot({
    #     game_name: "GameName", # required
    #     sections: ["SectionName"],
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.created #=> Time
    #   resp.snapshot.description #=> String
    #   resp.snapshot.id #=> String
    #   resp.snapshot.last_updated #=> Time
    #   resp.snapshot.sections #=> Hash
    #   resp.snapshot.sections["SectionName"].name #=> String
    #   resp.snapshot.sections["SectionName"].size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetSnapshot AWS API Documentation
    #
    # @overload get_snapshot(params = {})
    # @param [Hash] params ({})
    def get_snapshot(params = {}, options = {})
      req = build_request(:get_snapshot, params)
      req.send_request(options)
    end

    # Gets information about a stage.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage.
    #
    # @return [Types::GetStageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStageResult#stage #stage} => Types::StageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage({
    #     game_name: "GameName", # required
    #     stage_name: "StageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stage.arn #=> String
    #   resp.stage.created #=> Time
    #   resp.stage.description #=> String
    #   resp.stage.game_key #=> String
    #   resp.stage.last_updated #=> Time
    #   resp.stage.log_group #=> String
    #   resp.stage.name #=> String
    #   resp.stage.role #=> String
    #   resp.stage.state #=> String, one of "ACTIVE", "DELETING"
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetStage AWS API Documentation
    #
    # @overload get_stage(params = {})
    # @param [Hash] params ({})
    def get_stage(params = {}, options = {})
      req = build_request(:get_stage, params)
      req.send_request(options)
    end

    # Gets information about a stage deployment.
    #
    # @option params [String] :deployment_id
    #   The identifier of the stage deployment. `StartStageDeployment` returns
    #   the identifier that you use here.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage.
    #
    # @return [Types::GetStageDeploymentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStageDeploymentResult#stage_deployment #stage_deployment} => Types::StageDeploymentDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage_deployment({
    #     deployment_id: "DeploymentId",
    #     game_name: "GameName", # required
    #     stage_name: "StageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stage_deployment.created #=> Time
    #   resp.stage_deployment.deployment_action #=> String, one of "DEPLOY", "UNDEPLOY"
    #   resp.stage_deployment.deployment_id #=> String
    #   resp.stage_deployment.deployment_result.message #=> String
    #   resp.stage_deployment.deployment_result.result_code #=> String, one of "SUCCESS", "INVALID_ROLE_FAILURE", "UNSPECIFIED_FAILURE"
    #   resp.stage_deployment.deployment_state #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.stage_deployment.last_updated #=> Time
    #   resp.stage_deployment.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/GetStageDeployment AWS API Documentation
    #
    # @overload get_stage_deployment(params = {})
    # @param [Hash] params ({})
    def get_stage_deployment(params = {}, options = {})
      req = build_request(:get_stage_deployment, params)
      req.send_request(options)
    end

    # Imports a game configuration.
    #
    # This operation replaces the current configuration of the game with the
    # provided input. This is not a reversible operation. If you want to
    # preserve the previous configuration, use `CreateSnapshot` to make a
    # new snapshot before importing.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, Types::ImportGameConfigurationSource] :import_source
    #   The source used to import configuration sections.
    #
    # @return [Types::ImportGameConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportGameConfigurationResult#game_configuration #game_configuration} => Types::GameConfigurationDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_game_configuration({
    #     game_name: "GameName", # required
    #     import_source: { # required
    #       file: "data", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.game_configuration.created #=> Time
    #   resp.game_configuration.last_updated #=> Time
    #   resp.game_configuration.sections #=> Hash
    #   resp.game_configuration.sections["SectionName"].name #=> String
    #   resp.game_configuration.sections["SectionName"].size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ImportGameConfiguration AWS API Documentation
    #
    # @overload import_game_configuration(params = {})
    # @param [Hash] params ({})
    def import_game_configuration(params = {}, options = {})
      req = build_request(:import_game_configuration, params)
      req.send_request(options)
    end

    # Gets a paginated list of available versions for the extension.
    #
    # Each time an API change is made to an extension, the version is
    # incremented. The list retrieved by this operation shows the versions
    # that are currently available.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #
    # @option params [required, String] :name
    #   The name of the extension.
    #
    # @option params [required, String] :namespace
    #   The namespace (qualifier) of the extension.
    #
    # @option params [String] :next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this operation.
    #   To start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::ListExtensionVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExtensionVersionsResult#extension_versions #extension_versions} => Array&lt;Types::ExtensionVersionDetails&gt;
    #   * {Types::ListExtensionVersionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_extension_versions({
    #     max_results: 1,
    #     name: "ExtensionName", # required
    #     namespace: "ExtensionNamespace", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.extension_versions #=> Array
    #   resp.extension_versions[0].name #=> String
    #   resp.extension_versions[0].namespace #=> String
    #   resp.extension_versions[0].schema #=> String
    #   resp.extension_versions[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListExtensionVersions AWS API Documentation
    #
    # @overload list_extension_versions(params = {})
    # @param [Hash] params ({})
    def list_extension_versions(params = {}, options = {})
      req = build_request(:list_extension_versions, params)
      req.send_request(options)
    end

    # Gets a paginated list of available extensions.
    #
    # Extensions provide features that games can use from scripts.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #
    # @option params [String] :next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this operation.
    #   To start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::ListExtensionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExtensionsResult#extensions #extensions} => Array&lt;Types::ExtensionDetails&gt;
    #   * {Types::ListExtensionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_extensions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.extensions #=> Array
    #   resp.extensions[0].description #=> String
    #   resp.extensions[0].name #=> String
    #   resp.extensions[0].namespace #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListExtensions AWS API Documentation
    #
    # @overload list_extensions(params = {})
    # @param [Hash] params ({})
    def list_extensions(params = {}, options = {})
      req = build_request(:list_extensions, params)
      req.send_request(options)
    end

    # Gets a paginated list of games.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #
    # @option params [String] :next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this operation.
    #   To start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::ListGamesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGamesResult#games #games} => Array&lt;Types::GameSummary&gt;
    #   * {Types::ListGamesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_games({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.games #=> Array
    #   resp.games[0].description #=> String
    #   resp.games[0].name #=> String
    #   resp.games[0].state #=> String, one of "ACTIVE", "DELETING"
    #   resp.games[0].tags #=> Hash
    #   resp.games[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListGames AWS API Documentation
    #
    # @overload list_games(params = {})
    # @param [Hash] params ({})
    def list_games(params = {}, options = {})
      req = build_request(:list_games, params)
      req.send_request(options)
    end

    # Gets a paginated list of code generation jobs for a snapshot.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #
    # @option params [String] :next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this operation.
    #   To start at the beginning of the result set, do not specify a value.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the snapshot.
    #
    # @return [Types::ListGeneratedCodeJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGeneratedCodeJobsResult#generated_code_jobs #generated_code_jobs} => Array&lt;Types::GeneratedCodeJobDetails&gt;
    #   * {Types::ListGeneratedCodeJobsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_generated_code_jobs({
    #     game_name: "GameName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.generated_code_jobs #=> Array
    #   resp.generated_code_jobs[0].description #=> String
    #   resp.generated_code_jobs[0].expiration_time #=> Time
    #   resp.generated_code_jobs[0].generated_code_job_id #=> String
    #   resp.generated_code_jobs[0].s3_url #=> String
    #   resp.generated_code_jobs[0].status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED", "PENDING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListGeneratedCodeJobs AWS API Documentation
    #
    # @overload list_generated_code_jobs(params = {})
    # @param [Hash] params ({})
    def list_generated_code_jobs(params = {}, options = {})
      req = build_request(:list_generated_code_jobs, params)
      req.send_request(options)
    end

    # Gets a paginated list of snapshot summaries from the game.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #
    # @option params [String] :next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this operation.
    #   To start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::ListSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSnapshotsResult#next_token #next_token} => String
    #   * {Types::ListSnapshotsResult#snapshots #snapshots} => Array&lt;Types::SnapshotSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_snapshots({
    #     game_name: "GameName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].created #=> Time
    #   resp.snapshots[0].description #=> String
    #   resp.snapshots[0].id #=> String
    #   resp.snapshots[0].last_updated #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListSnapshots AWS API Documentation
    #
    # @overload list_snapshots(params = {})
    # @param [Hash] params ({})
    def list_snapshots(params = {}, options = {})
      req = build_request(:list_snapshots, params)
      req.send_request(options)
    end

    # Gets a paginated list of stage deployment summaries from the game.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #
    # @option params [String] :next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this operation.
    #   To start at the beginning of the result set, do not specify a value.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage.
    #
    # @return [Types::ListStageDeploymentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStageDeploymentsResult#next_token #next_token} => String
    #   * {Types::ListStageDeploymentsResult#stage_deployments #stage_deployments} => Array&lt;Types::StageDeploymentSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stage_deployments({
    #     game_name: "GameName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     stage_name: "StageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.stage_deployments #=> Array
    #   resp.stage_deployments[0].deployment_action #=> String, one of "DEPLOY", "UNDEPLOY"
    #   resp.stage_deployments[0].deployment_id #=> String
    #   resp.stage_deployments[0].deployment_result.message #=> String
    #   resp.stage_deployments[0].deployment_result.result_code #=> String, one of "SUCCESS", "INVALID_ROLE_FAILURE", "UNSPECIFIED_FAILURE"
    #   resp.stage_deployments[0].deployment_state #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.stage_deployments[0].last_updated #=> Time
    #   resp.stage_deployments[0].snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListStageDeployments AWS API Documentation
    #
    # @overload list_stage_deployments(params = {})
    # @param [Hash] params ({})
    def list_stage_deployments(params = {}, options = {})
      req = build_request(:list_stage_deployments, params)
      req.send_request(options)
    end

    # Gets a paginated list of stage summaries from the game.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    #   Use this parameter with NextToken to get results as a set of
    #   sequential pages.
    #
    # @option params [String] :next_token
    #   The token that indicates the start of the next sequential page of
    #   results.
    #
    #   Use the token that is returned with a previous call to this operation.
    #   To start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::ListStagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStagesResult#next_token #next_token} => String
    #   * {Types::ListStagesResult#stages #stages} => Array&lt;Types::StageSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stages({
    #     game_name: "GameName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.stages #=> Array
    #   resp.stages[0].description #=> String
    #   resp.stages[0].game_key #=> String
    #   resp.stages[0].name #=> String
    #   resp.stages[0].state #=> String, one of "ACTIVE", "DELETING"
    #   resp.stages[0].tags #=> Hash
    #   resp.stages[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListStages AWS API Documentation
    #
    # @overload list_stages(params = {})
    # @param [Hash] params ({})
    def list_stages(params = {}, options = {})
      req = build_request(:list_stages, params)
      req.send_request(options)
    end

    # Lists the tags associated with a GameSparks resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the GameSparks resource.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts an asynchronous process that generates client code for
    # system-defined and custom messages. The resulting code is collected as
    # a .zip file and uploaded to a pre-signed Amazon S3 URL.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, Types::Generator] :generator
    #   Properties of the generator to use for the job.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the snapshot for which to generate code.
    #
    # @return [Types::StartGeneratedCodeJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartGeneratedCodeJobResult#generated_code_job_id #generated_code_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_generated_code_job({
    #     game_name: "GameName", # required
    #     generator: { # required
    #       game_sdk_version: "GameSdkVersion",
    #       language: "Language",
    #       target_platform: "TargetPlatform",
    #     },
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.generated_code_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StartGeneratedCodeJob AWS API Documentation
    #
    # @overload start_generated_code_job(params = {})
    # @param [Hash] params ({})
    def start_generated_code_job(params = {}, options = {})
      req = build_request(:start_generated_code_job, params)
      req.send_request(options)
    end

    # Deploys a snapshot to the stage and creates a new game runtime.
    #
    # After you call this operation, you can check the deployment status by
    # using `GetStageDeployment`.
    #
    # If there are any players connected to the previous game runtime, then
    # both runtimes persist. Existing connections to the previous runtime
    # are maintained. When players disconnect and reconnect, they connect to
    # the new runtime. After there are no connections to the previous game
    # runtime, it is deleted.
    #
    # @option params [String] :client_token
    #   A client-defined token. With an active client token in the request,
    #   this action is idempotent.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the snapshot to deploy.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage to deploy the snapshot onto.
    #
    # @return [Types::StartStageDeploymentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartStageDeploymentResult#stage_deployment #stage_deployment} => Types::StageDeploymentDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_stage_deployment({
    #     client_token: "ClientToken",
    #     game_name: "GameName", # required
    #     snapshot_id: "SnapshotId", # required
    #     stage_name: "StageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stage_deployment.created #=> Time
    #   resp.stage_deployment.deployment_action #=> String, one of "DEPLOY", "UNDEPLOY"
    #   resp.stage_deployment.deployment_id #=> String
    #   resp.stage_deployment.deployment_result.message #=> String
    #   resp.stage_deployment.deployment_result.result_code #=> String, one of "SUCCESS", "INVALID_ROLE_FAILURE", "UNSPECIFIED_FAILURE"
    #   resp.stage_deployment.deployment_state #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.stage_deployment.last_updated #=> Time
    #   resp.stage_deployment.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/StartStageDeployment AWS API Documentation
    #
    # @overload start_stage_deployment(params = {})
    # @param [Hash] params ({})
    def start_stage_deployment(params = {}, options = {})
      req = build_request(:start_stage_deployment, params)
      req.send_request(options)
    end

    # Adds tags to a GameSparks resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add the tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a GameSparks resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove the tags
    #   from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates details of the game.
    #
    # @option params [String] :description
    #   The description of the game.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @return [Types::UpdateGameResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameResult#game #game} => Types::GameDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game({
    #     description: "GameDescription",
    #     game_name: "GameName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game.arn #=> String
    #   resp.game.created #=> Time
    #   resp.game.description #=> String
    #   resp.game.enable_termination_protection #=> Boolean
    #   resp.game.last_updated #=> Time
    #   resp.game.name #=> String
    #   resp.game.state #=> String, one of "ACTIVE", "DELETING"
    #   resp.game.tags #=> Hash
    #   resp.game.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateGame AWS API Documentation
    #
    # @overload update_game(params = {})
    # @param [Hash] params ({})
    def update_game(params = {}, options = {})
      req = build_request(:update_game, params)
      req.send_request(options)
    end

    # Updates one or more sections of the game configuration.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, Array<Types::SectionModification>] :modifications
    #   The list of modifications to make.
    #
    # @return [Types::UpdateGameConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameConfigurationResult#game_configuration #game_configuration} => Types::GameConfigurationDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_configuration({
    #     game_name: "GameName", # required
    #     modifications: [ # required
    #       {
    #         operation: "ADD", # required, accepts ADD, REMOVE, REPLACE
    #         path: "Path", # required
    #         section: "SectionName", # required
    #         value: {
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.game_configuration.created #=> Time
    #   resp.game_configuration.last_updated #=> Time
    #   resp.game_configuration.sections #=> Hash
    #   resp.game_configuration.sections["SectionName"].name #=> String
    #   resp.game_configuration.sections["SectionName"].size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateGameConfiguration AWS API Documentation
    #
    # @overload update_game_configuration(params = {})
    # @param [Hash] params ({})
    def update_game_configuration(params = {}, options = {})
      req = build_request(:update_game_configuration, params)
      req.send_request(options)
    end

    # Updates the metadata of a GameSparks snapshot.
    #
    # @option params [String] :description
    #   The description of the snapshot.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [required, String] :snapshot_id
    #   The identifier of the snapshot.
    #
    # @return [Types::UpdateSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSnapshotResult#snapshot #snapshot} => Types::SnapshotDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot({
    #     description: "SnapshotDescription",
    #     game_name: "GameName", # required
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.created #=> Time
    #   resp.snapshot.description #=> String
    #   resp.snapshot.id #=> String
    #   resp.snapshot.last_updated #=> Time
    #   resp.snapshot.sections #=> Hash
    #   resp.snapshot.sections["SectionName"].name #=> String
    #   resp.snapshot.sections["SectionName"].size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateSnapshot AWS API Documentation
    #
    # @overload update_snapshot(params = {})
    # @param [Hash] params ({})
    def update_snapshot(params = {}, options = {})
      req = build_request(:update_snapshot, params)
      req.send_request(options)
    end

    # Updates the metadata of a stage.
    #
    # @option params [String] :description
    #   The description of the stage.
    #
    # @option params [required, String] :game_name
    #   The name of the game.
    #
    # @option params [String] :role
    #   The Amazon Resource Name (ARN) of the role to use for the game
    #   snapshots deployed to this stage.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage.
    #
    # @return [Types::UpdateStageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStageResult#stage #stage} => Types::StageDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage({
    #     description: "StageDescription",
    #     game_name: "GameName", # required
    #     role: "RoleARN",
    #     stage_name: "StageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stage.arn #=> String
    #   resp.stage.created #=> Time
    #   resp.stage.description #=> String
    #   resp.stage.game_key #=> String
    #   resp.stage.last_updated #=> Time
    #   resp.stage.log_group #=> String
    #   resp.stage.name #=> String
    #   resp.stage.role #=> String
    #   resp.stage.state #=> String, one of "ACTIVE", "DELETING"
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamesparks-2021-08-17/UpdateStage AWS API Documentation
    #
    # @overload update_stage(params = {})
    # @param [Hash] params ({})
    def update_stage(params = {}, options = {})
      req = build_request(:update_stage, params)
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
      context[:gem_name] = 'aws-sdk-gamesparks'
      context[:gem_version] = '1.9.0'
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
