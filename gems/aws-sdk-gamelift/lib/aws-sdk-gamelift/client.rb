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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:gamelift)

module Aws::GameLift
  # An API client for GameLift.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GameLift::Client.new(
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

    @identifier = :gamelift

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
    add_plugin(Aws::Plugins::DefaultsMode)
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

    # Registers a player's acceptance or rejection of a proposed FlexMatch
    # match. A matchmaking configuration may require player acceptance; if
    # so, then matches built with that configuration cannot be completed
    # unless all players accept the proposed match within a specified time
    # limit.
    #
    # When FlexMatch builds a match, all the matchmaking tickets involved in
    # the proposed match are placed into status `REQUIRES_ACCEPTANCE`. This
    # is a trigger for your game to get acceptance from all players in the
    # ticket. Acceptances are only valid for tickets when they are in this
    # status; all other acceptances result in an error.
    #
    # To register acceptance, specify the ticket ID, a response, and one or
    # more players. Once all players have registered acceptance, the
    # matchmaking tickets advance to status `PLACING`, where a new game
    # session is created for the match.
    #
    # If any player rejects the match, or if acceptances are not received
    # before a specified timeout, the proposed match is dropped. The
    # matchmaking tickets are then handled in one of two ways: For tickets
    # where one or more players rejected the match, the ticket status is
    # returned to `SEARCHING` to find a new match. For tickets where one or
    # more players failed to respond, the ticket status is set to
    # `CANCELLED`, and processing is terminated. A new matchmaking request
    # for these players can be submitted as needed.
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a game client][1]
    #
    # [ FlexMatch events][2] (reference)
    #
    # **Related actions**
    #
    # StartMatchmaking \| DescribeMatchmaking \| StopMatchmaking \|
    # AcceptMatch \| StartMatchBackfill \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :ticket_id
    #   A unique identifier for a matchmaking ticket. The ticket must be in
    #   status `REQUIRES_ACCEPTANCE`; otherwise this request will fail.
    #
    # @option params [required, Array<String>] :player_ids
    #   A unique identifier for a player delivering the response. This
    #   parameter can include one or multiple player IDs.
    #
    # @option params [required, String] :acceptance_type
    #   Player response to the proposed match.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_match({
    #     ticket_id: "MatchmakingIdStringModel", # required
    #     player_ids: ["NonZeroAndMaxString"], # required
    #     acceptance_type: "ACCEPT", # required, accepts ACCEPT, REJECT
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AcceptMatch AWS API Documentation
    #
    # @overload accept_match(params = {})
    # @param [Hash] params ({})
    def accept_match(params = {}, options = {})
      req = build_request(:accept_match, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Locates an available game server and temporarily reserves it to host
    # gameplay and players. This operation is called from a game client or
    # client service (such as a matchmaker) to request hosting resources for
    # a new game session. In response, GameLift FleetIQ locates an available
    # game server, places it in `CLAIMED` status for 60 seconds, and returns
    # connection information that players can use to connect to the game
    # server.
    #
    # To claim a game server, identify a game server group. You can also
    # specify a game server ID, although this approach bypasses GameLift
    # FleetIQ placement optimization. Optionally, include game data to pass
    # to the game server at the start of a game session, such as a game map
    # or player information.
    #
    # When a game server is successfully claimed, connection information is
    # returned. A claimed game server's utilization status remains
    # `AVAILABLE` while the claim status is set to `CLAIMED` for up to 60
    # seconds. This time period gives the game server time to update its
    # status to `UTILIZED` (using UpdateGameServer) once players join. If
    # the game server's status is not updated within 60 seconds, the game
    # server reverts to unclaimed status and is available to be claimed by
    # another request. The claim time period is a fixed value and is not
    # configurable.
    #
    # If you try to claim a specific game server, this request will fail in
    # the following cases:
    #
    # * If the game server utilization status is `UTILIZED`.
    #
    # * If the game server claim status is `CLAIMED`.
    #
    # <note markdown="1"> When claiming a specific game server, this request will succeed even
    # if the game server is running on an instance in `DRAINING` status. To
    # avoid this, first check the instance status by calling
    # DescribeGameServerInstances.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # RegisterGameServer \| ListGameServers \| ClaimGameServer \|
    # DescribeGameServer \| UpdateGameServer \| DeregisterGameServer \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running. Use either the GameServerGroup name or ARN value. If you are
    #   not specifying a game server to claim, this value identifies where you
    #   want GameLift FleetIQ to look for an available game server to claim.
    #
    # @option params [String] :game_server_id
    #   A custom string that uniquely identifies the game server to claim. If
    #   this parameter is left empty, GameLift FleetIQ searches for an
    #   available game server in the specified game server group.
    #
    # @option params [String] :game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers using ListGameServers or
    #   ClaimGameServer.
    #
    # @return [Types::ClaimGameServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClaimGameServerOutput#game_server #game_server} => Types::GameServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.claim_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId",
    #     game_server_data: "GameServerData",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server.game_server_group_name #=> String
    #   resp.game_server.game_server_group_arn #=> String
    #   resp.game_server.game_server_id #=> String
    #   resp.game_server.instance_id #=> String
    #   resp.game_server.connection_info #=> String
    #   resp.game_server.game_server_data #=> String
    #   resp.game_server.claim_status #=> String, one of "CLAIMED"
    #   resp.game_server.utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_server.registration_time #=> Time
    #   resp.game_server.last_claim_time #=> Time
    #   resp.game_server.last_health_check_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ClaimGameServer AWS API Documentation
    #
    # @overload claim_game_server(params = {})
    # @param [Hash] params ({})
    def claim_game_server(params = {}, options = {})
      req = build_request(:claim_game_server, params)
      req.send_request(options)
    end

    # Creates an alias for a fleet. In most situations, you can use an alias
    # ID in place of a fleet ID. An alias provides a level of abstraction
    # for a fleet that is useful when redirecting player traffic from one
    # fleet to another, such as when updating your game build.
    #
    # Amazon GameLift supports two types of routing strategies for aliases:
    # simple and terminal. A simple alias points to an active fleet. A
    # terminal alias is used to display messaging or link to a URL instead
    # of routing players to an active fleet. For example, you might use a
    # terminal alias when a game version is no longer supported and you want
    # to direct players to an upgrade site.
    #
    # To create a fleet alias, specify an alias name, routing strategy, and
    # optional description. Each simple alias can point to only one fleet,
    # but a fleet can have multiple aliases. If successful, a new alias
    # record is returned, including an alias ID and an ARN. You can reassign
    # an alias to another fleet by calling `UpdateAlias`.
    #
    # **Related actions**
    #
    # CreateAlias \| ListAliases \| DescribeAlias \| UpdateAlias \|
    # DeleteAlias \| ResolveAlias \| [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A human-readable description of the alias.
    #
    # @option params [required, Types::RoutingStrategy] :routing_strategy
    #   The routing configuration, including routing type and fleet target,
    #   for the alias.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new alias resource. Tags are
    #   developer-defined key-value pairs. Tagging AWS resources are useful
    #   for resource management, access management and cost allocation. For
    #   more information, see [ Tagging AWS Resources][1] in the *AWS General
    #   Reference*. Once the resource is created, you can use TagResource,
    #   UntagResource, and ListTagsForResource to add, remove, and view tags.
    #   The maximum tag limit may be lower than stated. See the AWS General
    #   Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     name: "NonBlankAndLengthConstraintString", # required
    #     description: "NonZeroAndMaxString",
    #     routing_strategy: { # required
    #       type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #       fleet_id: "FleetId",
    #       message: "FreeText",
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
    #   resp.alias.alias_id #=> String
    #   resp.alias.name #=> String
    #   resp.alias.alias_arn #=> String
    #   resp.alias.description #=> String
    #   resp.alias.routing_strategy.type #=> String, one of "SIMPLE", "TERMINAL"
    #   resp.alias.routing_strategy.fleet_id #=> String
    #   resp.alias.routing_strategy.message #=> String
    #   resp.alias.creation_time #=> Time
    #   resp.alias.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates a new Amazon GameLift build resource for your game server
    # binary files. Game server binaries must be combined into a zip file
    # for use with Amazon GameLift.
    #
    # When setting up a new game build for GameLift, we recommend using the
    # AWS CLI command <b> <a
    # href="https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html">upload-build</a>
    # </b>. This helper command combines two tasks: (1) it uploads your
    # build files from a file directory to a GameLift Amazon S3 location,
    # and (2) it creates a new build resource.
    #
    # The `CreateBuild` operation can used in the following scenarios:
    #
    # * To create a new game build with build files that are in an Amazon S3
    #   location under an AWS account that you control. To use this option,
    #   you must first give Amazon GameLift access to the Amazon S3 bucket.
    #   With permissions in place, call `CreateBuild` and specify a build
    #   name, operating system, and the Amazon S3 storage location of your
    #   game build.
    #
    # * To directly upload your build files to a GameLift Amazon S3
    #   location. To use this option, first call `CreateBuild` and specify a
    #   build name and operating system. This operation creates a new build
    #   resource and also returns an Amazon S3 location with temporary
    #   access credentials. Use the credentials to manually upload your
    #   build files to the specified Amazon S3 location. For more
    #   information, see [Uploading Objects][1] in the *Amazon S3 Developer
    #   Guide*. Build files can be uploaded to the GameLift Amazon S3
    #   location once only; that can't be updated.
    #
    # If successful, this operation creates a new build resource with a
    # unique build ID and places it in `INITIALIZED` status. A build must be
    # in `READY` status before you can create fleets with it.
    #
    # **Learn more**
    #
    # [Uploading Your Game][2]
    #
    # [ Create a Build with Files in Amazon S3][3]
    #
    # **Related actions**
    #
    # CreateBuild \| ListBuilds \| DescribeBuild \| UpdateBuild \|
    # DeleteBuild \| [All APIs by task][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a build. Build names do
    #   not need to be unique. You can use UpdateBuild to change this value
    #   later.
    #
    # @option params [String] :version
    #   Version information that is associated with a build or script. Version
    #   strings do not need to be unique. You can use UpdateBuild to change
    #   this value later.
    #
    # @option params [Types::S3Location] :storage_location
    #   Information indicating where your game build files are stored. Use
    #   this parameter only when creating a build with files stored in an
    #   Amazon S3 bucket that you own. The storage location must specify an
    #   Amazon S3 bucket name and key. The location must also specify a role
    #   ARN that you set up to allow Amazon GameLift to access your Amazon S3
    #   bucket. The S3 bucket and your new build must be in the same Region.
    #
    # @option params [String] :operating_system
    #   The operating system that the game server binaries are built to run
    #   on. This value determines the type of fleet resources that you can use
    #   for this build. If your game build contains multiple executables, they
    #   all must run on the same operating system. If an operating system is
    #   not specified when creating a build, Amazon GameLift uses the default
    #   value (WINDOWS\_2012). This value cannot be changed later.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new build resource. Tags are
    #   developer-defined key-value pairs. Tagging AWS resources are useful
    #   for resource management, access management and cost allocation. For
    #   more information, see [ Tagging AWS Resources][1] in the *AWS General
    #   Reference*. Once the resource is created, you can use TagResource,
    #   UntagResource, and ListTagsForResource to add, remove, and view tags.
    #   The maximum tag limit may be lower than stated. See the AWS General
    #   Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBuildOutput#build #build} => Types::Build
    #   * {Types::CreateBuildOutput#upload_credentials #upload_credentials} => Types::AwsCredentials
    #   * {Types::CreateBuildOutput#storage_location #storage_location} => Types::S3Location
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_build({
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString",
    #     },
    #     operating_system: "WINDOWS_2012", # accepts WINDOWS_2012, AMAZON_LINUX, AMAZON_LINUX_2
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
    #   resp.build.build_id #=> String
    #   resp.build.build_arn #=> String
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.build.creation_time #=> Time
    #   resp.upload_credentials.access_key_id #=> String
    #   resp.upload_credentials.secret_access_key #=> String
    #   resp.upload_credentials.session_token #=> String
    #   resp.storage_location.bucket #=> String
    #   resp.storage_location.key #=> String
    #   resp.storage_location.role_arn #=> String
    #   resp.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateBuild AWS API Documentation
    #
    # @overload create_build(params = {})
    # @param [Hash] params ({})
    def create_build(params = {}, options = {})
      req = build_request(:create_build, params)
      req.send_request(options)
    end

    # Creates a fleet of Amazon Elastic Compute Cloud (Amazon EC2) instances
    # to host your custom game server or Realtime Servers. Use this
    # operation to configure the computing resources for your fleet and
    # provide instructions for running game servers on each instance.
    #
    # Most GameLift fleets can deploy instances to multiple locations,
    # including the home Region (where the fleet is created) and an optional
    # set of remote locations. Fleets that are created in the following AWS
    # Regions support multiple locations: us-east-1 (N. Virginia), us-west-2
    # (Oregon), eu-central-1 (Frankfurt), eu-west-1 (Ireland),
    # ap-southeast-2 (Sydney), ap-northeast-1 (Tokyo), and ap-northeast-2
    # (Seoul). Fleets that are created in other GameLift Regions can deploy
    # instances in the fleet's home Region only. All fleet instances use
    # the same configuration regardless of location; however, you can adjust
    # capacity settings and turn auto-scaling on/off for each location.
    #
    # To create a fleet, choose the hardware for your instances, specify a
    # game server build or Realtime script to deploy, and provide a runtime
    # configuration to direct GameLift how to start and run game servers on
    # each instance in the fleet. Set permissions for inbound traffic to
    # your game servers, and enable optional features as needed. When
    # creating a multi-location fleet, provide a list of additional remote
    # locations.
    #
    # If successful, this operation creates a new Fleet resource and places
    # it in `NEW` status, which prompts GameLift to initiate the [fleet
    # creation workflow][1]. You can track fleet creation by checking fleet
    # status using DescribeFleetAttributes and
    # DescribeFleetLocationAttributes/, or by monitoring fleet creation
    # events using DescribeFleetEvents. As soon as the fleet status changes
    # to `ACTIVE`, you can enable automatic scaling for the fleet with
    # PutScalingPolicy and set capacity for the home Region with
    # UpdateFleetCapacity. When the status of each remote location reaches
    # `ACTIVE`, you can set capacity by location using UpdateFleetCapacity.
    #
    # **Learn more**
    #
    # [Setting up fleets][2]
    #
    # [Debug fleet creation issues][3]
    #
    # [Multi-location fleets][2]
    #
    # **Related actions**
    #
    # CreateFleet \| UpdateFleetCapacity \| PutScalingPolicy \|
    # DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetLocationAttributes \| UpdateFleetAttributes \|
    # StopFleetActions \| DeleteFleet \| [All APIs by task][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creation-workflow.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A human-readable description of the fleet.
    #
    # @option params [String] :build_id
    #   The unique identifier for a custom game server build to be deployed on
    #   fleet instances. You can use either the build ID or ARN. The build
    #   must be uploaded to GameLift and in `READY` status. This fleet
    #   property cannot be changed later.
    #
    # @option params [String] :script_id
    #   The unique identifier for a Realtime configuration script to be
    #   deployed on fleet instances. You can use either the script ID or ARN.
    #   Scripts must be uploaded to GameLift prior to creating the fleet. This
    #   fleet property cannot be changed later.
    #
    # @option params [String] :server_launch_path
    #   **This parameter is no longer used.** Specify a server launch path
    #   using the `RuntimeConfiguration` parameter. Requests that use this
    #   parameter instead continue to be valid.
    #
    # @option params [String] :server_launch_parameters
    #   **This parameter is no longer used.** Specify server launch parameters
    #   using the `RuntimeConfiguration` parameter. Requests that use this
    #   parameter instead continue to be valid.
    #
    # @option params [Array<String>] :log_paths
    #   **This parameter is no longer used.** To specify where GameLift should
    #   store log files once a server process shuts down, use the GameLift
    #   server API `ProcessReady()` and specify one or more directory paths in
    #   `logParameters`. See more information in the [Server API
    #   Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process
    #
    # @option params [required, String] :ec2_instance_type
    #   The GameLift-supported EC2 instance type to use for all fleet
    #   instances. Instance type determines the computing resources that will
    #   be used to host your game servers, including CPU, memory, storage, and
    #   networking capacity. See [Amazon EC2 Instance Types][1] for detailed
    #   descriptions of EC2 instance types.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #
    # @option params [Array<Types::IpPermission>] :ec2_inbound_permissions
    #   The allowed IP address ranges and port settings that allow inbound
    #   traffic to access game sessions on this fleet. If the fleet is hosting
    #   a custom game build, this property must be set before players can
    #   connect to game sessions. For Realtime Servers fleets, GameLift
    #   automatically sets TCP and UDP ranges.
    #
    # @option params [String] :new_game_session_protection_policy
    #   The status of termination protection for active game sessions on the
    #   fleet. By default, this property is set to `NoProtection`. You can
    #   also set game session protection for an individual game session by
    #   calling UpdateGameSession.
    #
    #   * **NoProtection** - Game sessions can be terminated during active
    #     gameplay as a result of a scale-down event.
    #
    #   * **FullProtection** - Game sessions in `ACTIVE` status cannot be
    #     terminated during a scale-down event.
    #
    # @option params [Types::RuntimeConfiguration] :runtime_configuration
    #   Instructions for how to launch and maintain server processes on
    #   instances in the fleet. The runtime configuration defines one or more
    #   server process configurations, each identifying a build executable or
    #   Realtime script file and the number of processes of that type to run
    #   concurrently.
    #
    #   <note markdown="1"> The `RuntimeConfiguration` parameter is required unless the fleet is
    #   being configured using the older parameters `ServerLaunchPath` and
    #   `ServerLaunchParameters`, which are still supported for backward
    #   compatibility.
    #
    #    </note>
    #
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   A policy that limits the number of game sessions that an individual
    #   player can create on instances in this fleet within a specified span
    #   of time.
    #
    # @option params [Array<String>] :metric_groups
    #   The name of an AWS CloudWatch metric group to add this fleet to. A
    #   metric group is used to aggregate the metrics for multiple fleets. You
    #   can specify an existing metric group name or set a new name to create
    #   a new metric group. A fleet can be included in only one metric group
    #   at a time.
    #
    # @option params [String] :peer_vpc_aws_account_id
    #   Used when peering your GameLift fleet with a VPC, the unique
    #   identifier for the AWS account that owns the VPC. You can find your
    #   account ID in the AWS Management Console under account settings.
    #
    # @option params [String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   GameLift fleet. The VPC must be in the same Region as your fleet. To
    #   look up a VPC ID, use the [VPC Dashboard][1] in the AWS Management
    #   Console. Learn more about VPC peering in [VPC Peering with GameLift
    #   Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @option params [String] :fleet_type
    #   Indicates whether to use On-Demand or Spot instances for this fleet.
    #   By default, this property is set to `ON_DEMAND`. Learn more about when
    #   to use [ On-Demand versus Spot Instances][1]. This property cannot be
    #   changed after the fleet is created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot
    #
    # @option params [String] :instance_role_arn
    #   A unique identifier for an AWS IAM role that manages access to your
    #   AWS services. With an instance role ARN set, any application that runs
    #   on an instance in this fleet can assume the role, including install
    #   scripts, server processes, and daemons (background processes). Create
    #   a role or look up a role's ARN by using the [IAM dashboard][1] in the
    #   AWS Management Console. Learn more about using on-box credentials for
    #   your game servers at [ Access external resources from a game
    #   server][2]. This property cannot be changed after the fleet is
    #   created.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html
    #
    # @option params [Types::CertificateConfiguration] :certificate_configuration
    #   Prompts GameLift to generate a TLS/SSL certificate for the fleet. TLS
    #   certificates are used for encrypting traffic between game clients and
    #   the game servers that are running on GameLift. By default, the
    #   `CertificateConfiguration` is set to `DISABLED`. Learn more at
    #   [Securing Client/Server Communication][1]. This property cannot be
    #   changed after the fleet is created.
    #
    #   Note: This feature requires the AWS Certificate Manager (ACM) service,
    #   which is not available in all AWS regions. When working in a region
    #   that does not support this feature, a fleet creation request with
    #   certificate generation fails with a 4xx error.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-howitworks.html#gamelift-howitworks-security
    #
    # @option params [Array<Types::LocationConfiguration>] :locations
    #   A set of remote locations to deploy additional instances to and manage
    #   as part of the fleet. This parameter can only be used when creating
    #   fleets in AWS Regions that support multiple locations. You can add any
    #   GameLift-supported AWS Region as a remote location, in the form of an
    #   AWS Region code such as `us-west-2`. To create a fleet with instances
    #   in the home Region only, omit this parameter.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new fleet resource. Tags are
    #   developer-defined key-value pairs. Tagging AWS resources are useful
    #   for resource management, access management and cost allocation. For
    #   more information, see [ Tagging AWS Resources][1] in the *AWS General
    #   Reference*. Once the fleet is created, you can use TagResource,
    #   UntagResource, and ListTagsForResource to add, remove, and view tags.
    #   The maximum tag limit may be lower than stated. See the *AWS General
    #   Reference* for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetOutput#fleet_attributes #fleet_attributes} => Types::FleetAttributes
    #   * {Types::CreateFleetOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     name: "NonZeroAndMaxString", # required
    #     description: "NonZeroAndMaxString",
    #     build_id: "BuildIdOrArn",
    #     script_id: "ScriptIdOrArn",
    #     server_launch_path: "LaunchPathStringModel",
    #     server_launch_parameters: "LaunchParametersStringModel",
    #     log_paths: ["NonZeroAndMaxString"],
    #     ec2_instance_type: "t2.micro", # required, accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge
    #     ec2_inbound_permissions: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "NonBlankString", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #     new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #     runtime_configuration: {
    #       server_processes: [
    #         {
    #           launch_path: "LaunchPathStringModel", # required
    #           parameters: "LaunchParametersStringModel",
    #           concurrent_executions: 1, # required
    #         },
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1,
    #     },
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1,
    #     },
    #     metric_groups: ["MetricGroup"],
    #     peer_vpc_aws_account_id: "NonZeroAndMaxString",
    #     peer_vpc_id: "NonZeroAndMaxString",
    #     fleet_type: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #     instance_role_arn: "NonEmptyString",
    #     certificate_configuration: {
    #       certificate_type: "DISABLED", # required, accepts DISABLED, GENERATED
    #     },
    #     locations: [
    #       {
    #         location: "LocationStringModel",
    #       },
    #     ],
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
    #   resp.fleet_attributes.fleet_id #=> String
    #   resp.fleet_attributes.fleet_arn #=> String
    #   resp.fleet_attributes.fleet_type #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.fleet_attributes.instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"
    #   resp.fleet_attributes.description #=> String
    #   resp.fleet_attributes.name #=> String
    #   resp.fleet_attributes.creation_time #=> Time
    #   resp.fleet_attributes.termination_time #=> Time
    #   resp.fleet_attributes.status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"
    #   resp.fleet_attributes.build_id #=> String
    #   resp.fleet_attributes.build_arn #=> String
    #   resp.fleet_attributes.script_id #=> String
    #   resp.fleet_attributes.script_arn #=> String
    #   resp.fleet_attributes.server_launch_path #=> String
    #   resp.fleet_attributes.server_launch_parameters #=> String
    #   resp.fleet_attributes.log_paths #=> Array
    #   resp.fleet_attributes.log_paths[0] #=> String
    #   resp.fleet_attributes.new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.fleet_attributes.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.fleet_attributes.resource_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.fleet_attributes.resource_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.fleet_attributes.metric_groups #=> Array
    #   resp.fleet_attributes.metric_groups[0] #=> String
    #   resp.fleet_attributes.stopped_actions #=> Array
    #   resp.fleet_attributes.stopped_actions[0] #=> String, one of "AUTO_SCALING"
    #   resp.fleet_attributes.instance_role_arn #=> String
    #   resp.fleet_attributes.certificate_configuration.certificate_type #=> String, one of "DISABLED", "GENERATED"
    #   resp.location_states #=> Array
    #   resp.location_states[0].location #=> String
    #   resp.location_states[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Adds remote locations to a fleet and begins populating the new
    # locations with EC2 instances. The new instances conform to the
    # fleet's instance type, auto-scaling, and other configuration
    # settings.
    #
    # <note markdown="1"> This operation cannot be used with fleets that don't support remote
    # locations. Fleets can have multiple locations only if they reside in
    # AWS Regions that support this feature (see CreateFleet for the
    # complete list) and were created after the feature was released in
    # March 2021.
    #
    #  </note>
    #
    # To add fleet locations, specify the fleet to be updated and provide a
    # list of one or more locations.
    #
    # If successful, this operation returns the list of added locations with
    # their status set to `NEW`. GameLift initiates the process of starting
    # an instance in each added location. You can track the status of each
    # new location by monitoring location creation events using
    # DescribeFleetEvents. Alternatively, you can poll location status by
    # calling DescribeFleetLocationAttributes. After a location status
    # becomes `ACTIVE`, you can adjust the location's capacity as needed
    # with UpdateFleetCapacity.
    #
    # **Learn more**
    #
    # [Setting up fleets][1]
    #
    # [Multi-location fleets][1]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| DescribeFleetLocationAttributes \|
    # DescribeFleetLocationCapacity \| DescribeFleetLocationUtilization \|
    # DescribeFleetAttributes \| DescribeFleetCapacity \|
    # DescribeFleetUtilization \| UpdateFleetCapacity \| StopFleetActions \|
    # DeleteFleetLocations \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to add locations to. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<Types::LocationConfiguration>] :locations
    #   A list of locations to deploy additional instances to and manage as
    #   part of the fleet. You can add any GameLift-supported AWS Region as a
    #   remote location, in the form of an AWS Region code such as
    #   `us-west-2`.
    #
    # @return [Types::CreateFleetLocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetLocationsOutput#fleet_id #fleet_id} => String
    #   * {Types::CreateFleetLocationsOutput#fleet_arn #fleet_arn} => String
    #   * {Types::CreateFleetLocationsOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet_locations({
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: [ # required
    #       {
    #         location: "LocationStringModel",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.location_states #=> Array
    #   resp.location_states[0].location #=> String
    #   resp.location_states[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleetLocations AWS API Documentation
    #
    # @overload create_fleet_locations(params = {})
    # @param [Hash] params ({})
    def create_fleet_locations(params = {}, options = {})
      req = build_request(:create_fleet_locations, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Creates a GameLift FleetIQ game server group for managing game hosting
    # on a collection of Amazon EC2 instances for game hosting. This
    # operation creates the game server group, creates an Auto Scaling group
    # in your AWS account, and establishes a link between the two groups.
    # You can view the status of your game server groups in the GameLift
    # console. Game server group metrics and events are emitted to Amazon
    # CloudWatch.
    #
    # Before creating a new game server group, you must have the following:
    #
    # * An Amazon EC2 launch template that specifies how to launch Amazon
    #   EC2 instances with your game server build. For more information, see
    #   [ Launching an Instance from a Launch Template][1] in the *Amazon
    #   EC2 User Guide*.
    #
    # * An IAM role that extends limited access to your AWS account to allow
    #   GameLift FleetIQ to create and interact with the Auto Scaling group.
    #   For more information, see [Create IAM roles for cross-service
    #   interaction][2] in the *GameLift FleetIQ Developer Guide*.
    #
    # To create a new game server group, specify a unique group name, IAM
    # role and Amazon EC2 launch template, and provide a list of instance
    # types that can be used in the group. You must also set initial maximum
    # and minimum limits on the group's instance count. You can optionally
    # set an Auto Scaling policy with target tracking based on a GameLift
    # FleetIQ metric.
    #
    # Once the game server group and corresponding Auto Scaling group are
    # created, you have full access to change the Auto Scaling group's
    # configuration as needed. Several properties that are set when creating
    # a game server group, including maximum/minimum size and auto-scaling
    # policy settings, must be updated directly in the Auto Scaling group.
    # Keep in mind that some Auto Scaling group properties are periodically
    # updated by GameLift FleetIQ as part of its balancing activities to
    # optimize for availability and cost.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][3]
    #
    # **Related actions**
    #
    # CreateGameServerGroup \| ListGameServerGroups \|
    # DescribeGameServerGroup \| UpdateGameServerGroup \|
    # DeleteGameServerGroup \| ResumeGameServerGroup \|
    # SuspendGameServerGroup \| DescribeGameServerInstances \| [All APIs by
    # task][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-iam-permissions-roles.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   An identifier for the new game server group. This value is used to
    #   generate unique ARN identifiers for the EC2 Auto Scaling group and the
    #   GameLift FleetIQ game server group. The name must be unique per Region
    #   per AWS account.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name ([ARN][1]) for an IAM role that allows Amazon
    #   GameLift to access your EC2 Auto Scaling groups.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Integer] :min_size
    #   The minimum number of instances allowed in the EC2 Auto Scaling group.
    #   During automatic scaling events, GameLift FleetIQ and EC2 do not scale
    #   down the group below this minimum. In production, this value should be
    #   set to at least 1. After the Auto Scaling group is created, update
    #   this value directly in the Auto Scaling group using the AWS console or
    #   APIs.
    #
    # @option params [required, Integer] :max_size
    #   The maximum number of instances allowed in the EC2 Auto Scaling group.
    #   During automatic scaling events, GameLift FleetIQ and EC2 do not scale
    #   up the group above this maximum. After the Auto Scaling group is
    #   created, update this value directly in the Auto Scaling group using
    #   the AWS console or APIs.
    #
    # @option params [required, Types::LaunchTemplateSpecification] :launch_template
    #   The EC2 launch template that contains configuration settings and game
    #   server code to be deployed to all instances in the game server group.
    #   You can specify the template using either the template name or ID. For
    #   help with creating a launch template, see [Creating a Launch Template
    #   for an Auto Scaling Group][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*. After the Auto Scaling group is created, update this value
    #   directly in the Auto Scaling group using the AWS console or APIs.
    #
    #   <note markdown="1"> If you specify network interfaces in your launch template, you must
    #   explicitly set the property `AssociatePublicIpAddress` to "true". If
    #   no network interface is specified in the launch template, GameLift
    #   FleetIQ uses your account's default VPC.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html
    #
    # @option params [required, Array<Types::InstanceDefinition>] :instance_definitions
    #   The EC2 instance types and sizes to use in the Auto Scaling group. The
    #   instance definitions must specify at least two different instance
    #   types that are supported by GameLift FleetIQ. For more information on
    #   instance types, see [EC2 Instance Types][1] in the *Amazon EC2 User
    #   Guide*. You can optionally specify capacity weighting for each
    #   instance type. If no weight value is specified for an instance type,
    #   it is set to the default value "1". For more information about
    #   capacity weighting, see [ Instance Weighting for Amazon EC2 Auto
    #   Scaling][2] in the Amazon EC2 Auto Scaling User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html
    #
    # @option params [Types::GameServerGroupAutoScalingPolicy] :auto_scaling_policy
    #   Configuration settings to define a scaling policy for the Auto Scaling
    #   group that is optimized for game hosting. The scaling policy uses the
    #   metric `"PercentUtilizedGameServers"` to maintain a buffer of idle
    #   game servers that can immediately accommodate new games and players.
    #   After the Auto Scaling group is created, update this value directly in
    #   the Auto Scaling group using the AWS console or APIs.
    #
    # @option params [String] :balancing_strategy
    #   Indicates how GameLift FleetIQ balances the use of Spot Instances and
    #   On-Demand Instances in the game server group. Method options include
    #   the following:
    #
    #   * `SPOT_ONLY` - Only Spot Instances are used in the game server group.
    #     If Spot Instances are unavailable or not viable for game hosting,
    #     the game server group provides no hosting capacity until Spot
    #     Instances can again be used. Until then, no new instances are
    #     started, and the existing nonviable Spot Instances are terminated
    #     (after current gameplay ends) and are not replaced.
    #
    #   * `SPOT_PREFERRED` - (default value) Spot Instances are used whenever
    #     available in the game server group. If Spot Instances are
    #     unavailable, the game server group continues to provide hosting
    #     capacity by falling back to On-Demand Instances. Existing nonviable
    #     Spot Instances are terminated (after current gameplay ends) and are
    #     replaced with new On-Demand Instances.
    #
    #   * `ON_DEMAND_ONLY` - Only On-Demand Instances are used in the game
    #     server group. No Spot Instances are used, even when available, while
    #     this balancing strategy is in force.
    #
    # @option params [String] :game_server_protection_policy
    #   A flag that indicates whether instances in the game server group are
    #   protected from early termination. Unprotected instances that have
    #   active game servers running might be terminated during a scale-down
    #   event, causing players to be dropped from the game. Protected
    #   instances cannot be terminated while there are active game servers
    #   running except in the event of a forced game server group deletion
    #   (see ). An exception to this is with Spot Instances, which can be
    #   terminated by AWS regardless of protection status. This property is
    #   set to `NO_PROTECTION` by default.
    #
    # @option params [Array<String>] :vpc_subnets
    #   A list of virtual private cloud (VPC) subnets to use with instances in
    #   the game server group. By default, all GameLift FleetIQ-supported
    #   Availability Zones are used. You can use this parameter to specify
    #   VPCs that you've set up. This property cannot be updated after the
    #   game server group is created, and the corresponding Auto Scaling group
    #   will always use the property value that is set with this request, even
    #   if the Auto Scaling group is updated directly.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new game server group resource. Tags
    #   are developer-defined key-value pairs. Tagging AWS resources is useful
    #   for resource management, access management, and cost allocation. For
    #   more information, see [ Tagging AWS Resources][1] in the *AWS General
    #   Reference*. Once the resource is created, you can use TagResource,
    #   UntagResource, and ListTagsForResource to add, remove, and view tags,
    #   respectively. The maximum tag limit may be lower than stated. See the
    #   AWS General Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_server_group({
    #     game_server_group_name: "GameServerGroupName", # required
    #     role_arn: "IamRoleArn", # required
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     launch_template: { # required
    #       launch_template_id: "LaunchTemplateId",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "LaunchTemplateVersion",
    #     },
    #     instance_definitions: [ # required
    #       {
    #         instance_type: "c4.large", # required, accepts c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge
    #         weighted_capacity: "WeightedCapacity",
    #       },
    #     ],
    #     auto_scaling_policy: {
    #       estimated_instance_warmup: 1,
    #       target_tracking_configuration: { # required
    #         target_value: 1.0, # required
    #       },
    #     },
    #     balancing_strategy: "SPOT_ONLY", # accepts SPOT_ONLY, SPOT_PREFERRED, ON_DEMAND_ONLY
    #     game_server_protection_policy: "NO_PROTECTION", # accepts NO_PROTECTION, FULL_PROTECTION
    #     vpc_subnets: ["VpcSubnet"],
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
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameServerGroup AWS API Documentation
    #
    # @overload create_game_server_group(params = {})
    # @param [Hash] params ({})
    def create_game_server_group(params = {}, options = {})
      req = build_request(:create_game_server_group, params)
      req.send_request(options)
    end

    # Creates a multiplayer game session for players in a specific fleet
    # location. This operation prompts an available server process to start
    # a game session and retrieves connection information for the new game
    # session. As an alternative, consider using the GameLift game session
    # placement feature with
    #
    # with StartGameSessionPlacement, which uses FleetIQ algorithms and
    # queues to optimize the placement process.
    #
    # When creating a game session, you specify exactly where you want to
    # place it and provide a set of game session configuration settings. The
    # fleet must be in `ACTIVE` status before a game session can be created
    # in it.
    #
    # This operation can be used in the following ways:
    #
    # * To create a game session on an instance in a fleet's home Region,
    #   provide a fleet or alias ID along with your game session
    #   configuration.
    #
    # * To create a game session on an instance in a fleet's remote
    #   location, provide a fleet or alias ID and a location name, along
    #   with your game session configuration.
    #
    # If successful, a workflow is initiated to start a new game session. A
    # `GameSession` object is returned containing the game session
    # configuration and status. When the status is `ACTIVE`, game session
    # connection information is provided and player sessions can be created
    # for the game session. By default, newly created game sessions are open
    # to new players. You can restrict new player access by using
    # UpdateGameSession to change the game session's player session
    # creation policy.
    #
    # Game session logs are retained for all active game sessions for 14
    # days. To access the logs, call GetGameSessionLogUrl to download the
    # log files.
    #
    # *Available in GameLift Local.*
    #
    # **Learn more**
    #
    # [Start a game session][1]
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet to create a game session in. You can
    #   use either the fleet ID or ARN value. Each request must reference
    #   either a fleet ID or alias ID, but not both.
    #
    # @option params [String] :alias_id
    #   A unique identifier for the alias associated with the fleet to create
    #   a game session in. You can use either the alias ID or ARN value. Each
    #   request must reference either a fleet ID or alias ID, but not both.
    #
    # @option params [required, Integer] :maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously to
    #   the game session.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session.
    #
    # @option params [String] :creator_id
    #   A unique identifier for a player or entity creating the game session.
    #   This parameter is required when requesting a new game session on a
    #   fleet with a resource creation limit policy. This type of policy
    #   limits the number of concurrent active game sessions that one player
    #   can create within a certain time span. GameLift uses the CreatorId to
    #   evaluate the new request against the policy.
    #
    # @option params [String] :game_session_id
    #   *This parameter is no longer preferred. Please use `IdempotencyToken`
    #   instead.* Custom string that uniquely identifies a request for a new
    #   game session. Maximum token length is 48 characters. If provided, this
    #   string is included in the new game session's ID.
    #
    # @option params [String] :idempotency_token
    #   Custom string that uniquely identifies the new game session request.
    #   This is useful for ensuring that game session requests with the same
    #   idempotency token are processed only once. Subsequent requests with
    #   the same string return the original `GameSession` object, with an
    #   updated status. Maximum token length is 48 characters. If provided,
    #   this string is included in the new game session's ID. A game session
    #   ARN has the following format:
    #   `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`. Idempotency tokens remain in use for 30 days
    #   after a game session has ended; game session objects are retained for
    #   this time period and then deleted.
    #
    # @option params [String] :game_session_data
    #   A set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the GameSession
    #   object with a request to start a new game session.
    #
    # @option params [String] :location
    #   A fleet's remote location to place the new game session in. If this
    #   parameter is not set, the new game session is placed in the fleet's
    #   home Region. Specify a remote location with an AWS Region code such as
    #   `us-west-2`.
    #
    # @return [Types::CreateGameSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGameSessionOutput#game_session #game_session} => Types::GameSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_session({
    #     fleet_id: "FleetIdOrArn",
    #     alias_id: "AliasIdOrArn",
    #     maximum_player_session_count: 1, # required
    #     name: "NonZeroAndMaxString",
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #     creator_id: "NonZeroAndMaxString",
    #     game_session_id: "IdStringModel",
    #     idempotency_token: "IdStringModel",
    #     game_session_data: "LargeGameSessionData",
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session.game_session_id #=> String
    #   resp.game_session.name #=> String
    #   resp.game_session.fleet_id #=> String
    #   resp.game_session.fleet_arn #=> String
    #   resp.game_session.creation_time #=> Time
    #   resp.game_session.termination_time #=> Time
    #   resp.game_session.current_player_session_count #=> Integer
    #   resp.game_session.maximum_player_session_count #=> Integer
    #   resp.game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session.status_reason #=> String, one of "INTERRUPTED"
    #   resp.game_session.game_properties #=> Array
    #   resp.game_session.game_properties[0].key #=> String
    #   resp.game_session.game_properties[0].value #=> String
    #   resp.game_session.ip_address #=> String
    #   resp.game_session.dns_name #=> String
    #   resp.game_session.port #=> Integer
    #   resp.game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session.creator_id #=> String
    #   resp.game_session.game_session_data #=> String
    #   resp.game_session.matchmaker_data #=> String
    #   resp.game_session.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSession AWS API Documentation
    #
    # @overload create_game_session(params = {})
    # @param [Hash] params ({})
    def create_game_session(params = {}, options = {})
      req = build_request(:create_game_session, params)
      req.send_request(options)
    end

    # Creates a placement queue that processes requests for new game
    # sessions. A queue uses FleetIQ algorithms to determine the best
    # placement locations and find an available game server there, then
    # prompts the game server process to start a new game session.
    #
    # A game session queue is configured with a set of destinations
    # (GameLift fleets or aliases), which determine the locations where the
    # queue can place new game sessions. These destinations can span
    # multiple fleet types (Spot and On-Demand), instance types, and AWS
    # Regions. If the queue includes multi-location fleets, the queue is
    # able to place game sessions in all of a fleet's remote locations. You
    # can opt to filter out individual locations if needed.
    #
    # The queue configuration also determines how FleetIQ selects the best
    # available placement for a new game session. Before searching for an
    # available game server, FleetIQ first prioritizes the queue's
    # destinations and locations, with the best placement locations on top.
    # You can set up the queue to use the FleetIQ default prioritization or
    # provide an alternate set of priorities.
    #
    # To create a new queue, provide a name, timeout value, and a list of
    # destinations. Optionally, specify a sort configuration and/or a
    # filter, and define a set of latency cap policies. You can also include
    # the ARN for an Amazon Simple Notification Service (SNS) topic to
    # receive notifications of game session placement activity.
    # Notifications using SNS or CloudWatch events is the preferred way to
    # track placement activity.
    #
    # If successful, a new `GameSessionQueue` object is returned with an
    # assigned queue ARN. New game session requests, which are submitted to
    # the queue with StartGameSessionPlacement or StartMatchmaking,
    # reference a queue's name or ARN.
    #
    # **Learn more**
    #
    # [ Design a game session queue][1]
    #
    # [ Create a game session queue][2]
    #
    # **Related actions**
    #
    # CreateGameSessionQueue \| DescribeGameSessionQueues \|
    # UpdateGameSessionQueue \| DeleteGameSessionQueue \| [All APIs by
    # task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with game session queue. Queue
    #   names must be unique within each Region.
    #
    # @option params [Integer] :timeout_in_seconds
    #   The maximum time, in seconds, that a new game session placement
    #   request remains in the queue. When a request exceeds this time, the
    #   game session placement changes to a `TIMED_OUT` status.
    #
    # @option params [Array<Types::PlayerLatencyPolicy>] :player_latency_policies
    #   A set of policies that act as a sliding cap on player latency. FleetIQ
    #   works to deliver low latency for most players in a game session. These
    #   policies ensure that no individual player can be placed into a game
    #   with unreasonably high latency. Use multiple policies to gradually
    #   relax latency requirements a step at a time. Multiple policies are
    #   applied based on their maximum allowed latency, starting with the
    #   lowest value.
    #
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   A list of fleets and/or fleet aliases that can be used to fulfill game
    #   session placement requests in the queue. Destinations are identified
    #   by either a fleet ARN or a fleet alias ARN, and are listed in order of
    #   placement preference.
    #
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   A list of locations where a queue is allowed to place new game
    #   sessions. Locations are specified in the form of AWS Region codes,
    #   such as `us-west-2`. If this parameter is not set, game sessions can
    #   be placed in any queue location.
    #
    # @option params [Types::PriorityConfiguration] :priority_configuration
    #   Custom settings to use when prioritizing destinations and locations
    #   for game session placements. This configuration replaces the FleetIQ
    #   default prioritization process. Priority types that are not explicitly
    #   named will be automatically applied at the end of the prioritization
    #   process.
    #
    # @option params [String] :custom_event_data
    #   Information to be added to all events that are related to this game
    #   session queue.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive game session placement
    #   notifications. See [ Setting up notifications for game session
    #   placement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new game session queue resource.
    #   Tags are developer-defined key-value pairs. Tagging AWS resources are
    #   useful for resource management, access management and cost allocation.
    #   For more information, see [ Tagging AWS Resources][1] in the *AWS
    #   General Reference*. Once the resource is created, you can use
    #   TagResource, UntagResource, and ListTagsForResource to add, remove,
    #   and view tags. The maximum tag limit may be lower than stated. See the
    #   AWS General Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateGameSessionQueueOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGameSessionQueueOutput#game_session_queue #game_session_queue} => Types::GameSessionQueue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_session_queue({
    #     name: "GameSessionQueueName", # required
    #     timeout_in_seconds: 1,
    #     player_latency_policies: [
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1,
    #       },
    #     ],
    #     destinations: [
    #       {
    #         destination_arn: "ArnStringModel",
    #       },
    #     ],
    #     filter_configuration: {
    #       allowed_locations: ["LocationStringModel"],
    #     },
    #     priority_configuration: {
    #       priority_order: ["LATENCY"], # accepts LATENCY, COST, DESTINATION, LOCATION
    #       location_order: ["LocationStringModel"],
    #     },
    #     custom_event_data: "QueueCustomEventData",
    #     notification_target: "QueueSnsArnStringModel",
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
    #   resp.game_session_queue.name #=> String
    #   resp.game_session_queue.game_session_queue_arn #=> String
    #   resp.game_session_queue.timeout_in_seconds #=> Integer
    #   resp.game_session_queue.player_latency_policies #=> Array
    #   resp.game_session_queue.player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.game_session_queue.player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.game_session_queue.destinations #=> Array
    #   resp.game_session_queue.destinations[0].destination_arn #=> String
    #   resp.game_session_queue.filter_configuration.allowed_locations #=> Array
    #   resp.game_session_queue.filter_configuration.allowed_locations[0] #=> String
    #   resp.game_session_queue.priority_configuration.priority_order #=> Array
    #   resp.game_session_queue.priority_configuration.priority_order[0] #=> String, one of "LATENCY", "COST", "DESTINATION", "LOCATION"
    #   resp.game_session_queue.priority_configuration.location_order #=> Array
    #   resp.game_session_queue.priority_configuration.location_order[0] #=> String
    #   resp.game_session_queue.custom_event_data #=> String
    #   resp.game_session_queue.notification_target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionQueue AWS API Documentation
    #
    # @overload create_game_session_queue(params = {})
    # @param [Hash] params ({})
    def create_game_session_queue(params = {}, options = {})
      req = build_request(:create_game_session_queue, params)
      req.send_request(options)
    end

    # Defines a new matchmaking configuration for use with FlexMatch.
    # Whether your are using FlexMatch with GameLift hosting or as a
    # standalone matchmaking service, the matchmaking configuration sets out
    # rules for matching players and forming teams. If you're also using
    # GameLift hosting, it defines how to start game sessions for each
    # match. Your matchmaking system can use multiple configurations to
    # handle different game scenarios. All matchmaking requests
    # (StartMatchmaking or StartMatchBackfill) identify the matchmaking
    # configuration to use and provide player attributes consistent with
    # that configuration.
    #
    # To create a matchmaking configuration, you must provide the following:
    # configuration name and FlexMatch mode (with or without GameLift
    # hosting); a rule set that specifies how to evaluate players and find
    # acceptable matches; whether player acceptance is required; and the
    # maximum time allowed for a matchmaking attempt. When using FlexMatch
    # with GameLift hosting, you also need to identify the game session
    # queue to use when starting a game session for the match.
    #
    # In addition, you must set up an Amazon Simple Notification Service
    # (SNS) topic to receive matchmaking notifications. Provide the topic
    # ARN in the matchmaking configuration. An alternative method,
    # continuously polling ticket status with DescribeMatchmaking, is only
    # suitable for games in development with low matchmaking usage.
    #
    # **Learn more**
    #
    # [ Design a FlexMatch matchmaker][1]
    #
    # [ Set up FlexMatch event notification][2]
    #
    # **Related actions**
    #
    # CreateMatchmakingConfiguration \| DescribeMatchmakingConfigurations \|
    # UpdateMatchmakingConfiguration \| DeleteMatchmakingConfiguration \|
    # CreateMatchmakingRuleSet \| DescribeMatchmakingRuleSets \|
    # ValidateMatchmakingRuleSet \| DeleteMatchmakingRuleSet \| [All APIs by
    # task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking configuration. This name is
    #   used to identify the configuration associated with a matchmaking
    #   request or ticket.
    #
    # @option params [String] :description
    #   A human-readable description of the matchmaking configuration.
    #
    # @option params [Array<String>] :game_session_queue_arns
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a GameLift
    #   game session queue resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::gamesessionqueue/<queue name>`. Queues can
    #   be located in any Region. Queues are used to start new GameLift-hosted
    #   game sessions for matches that are created with this matchmaking
    #   configuration. If `FlexMatchMode` is set to `STANDALONE`, do not set
    #   this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Integer] :request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that fail due to timing out can
    #   be resubmitted as needed.
    #
    # @option params [Integer] :acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match, if acceptance is required.
    #
    # @option params [required, Boolean] :acceptance_required
    #   A flag that determines whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to `TRUE`. With this option enabled, matchmaking
    #   tickets use the status `REQUIRES_ACCEPTANCE` to indicate when a
    #   completed potential match is waiting for player acceptance.
    #
    # @option params [required, String] :rule_set_name
    #   A unique identifier for the matchmaking rule set to use with this
    #   configuration. You can use either the rule set name or ARN value. A
    #   matchmaking configuration can only use rule sets that are defined in
    #   the same Region.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive matchmaking notifications.
    #   See [ Setting up notifications for matchmaking][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    #
    # @option params [Integer] :additional_player_count
    #   The number of player slots in a match to keep open for future players.
    #   For example, if the configuration's rule set specifies a match for a
    #   single 12-person team, and the additional player count is set to 2,
    #   only 10 players are selected for the match. This parameter is not used
    #   if `FlexMatchMode` is set to `STANDALONE`.
    #
    # @option params [String] :custom_event_data
    #   Information to be added to all events related to this matchmaking
    #   configuration.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match. This
    #   parameter is not used if `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [String] :game_session_data
    #   A set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the GameSession
    #   object with a request to start a new game session (see [Start a Game
    #   Session][1]). This information is added to the new GameSession object
    #   that is created for a successful match. This parameter is not used if
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [String] :backfill_mode
    #   The method used to backfill game sessions that are created with this
    #   matchmaking configuration. Specify `MANUAL` when your game manages
    #   backfill requests manually or does not use the match backfill feature.
    #   Specify `AUTOMATIC` to have GameLift create a StartMatchBackfill
    #   request whenever a game session has one or more open slots. Learn more
    #   about manual and automatic backfill in [ Backfill Existing Games with
    #   FlexMatch][1]. Automatic backfill is not available when
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    #
    # @option params [String] :flex_match_mode
    #   Indicates whether this matchmaking configuration is being used with
    #   GameLift hosting or as a standalone matchmaking solution.
    #
    #   * **STANDALONE** - FlexMatch forms matches and returns match
    #     information, including players and team assignments, in a [
    #     MatchmakingSucceeded][1] event.
    #
    #   * **WITH\_QUEUE** - FlexMatch forms matches and uses the specified
    #     GameLift queue to start a game session for the match.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new matchmaking configuration
    #   resource. Tags are developer-defined key-value pairs. Tagging AWS
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging AWS Resources][1]
    #   in the *AWS General Reference*. Once the resource is created, you can
    #   use TagResource, UntagResource, and ListTagsForResource to add,
    #   remove, and view tags. The maximum tag limit may be lower than stated.
    #   See the AWS General Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateMatchmakingConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMatchmakingConfigurationOutput#configuration #configuration} => Types::MatchmakingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_matchmaking_configuration({
    #     name: "MatchmakingIdStringModel", # required
    #     description: "NonZeroAndMaxString",
    #     game_session_queue_arns: ["ArnStringModel"],
    #     request_timeout_seconds: 1, # required
    #     acceptance_timeout_seconds: 1,
    #     acceptance_required: false, # required
    #     rule_set_name: "MatchmakingRuleSetName", # required
    #     notification_target: "SnsArnStringModel",
    #     additional_player_count: 1,
    #     custom_event_data: "CustomEventData",
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #     game_session_data: "GameSessionData",
    #     backfill_mode: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #     flex_match_mode: "STANDALONE", # accepts STANDALONE, WITH_QUEUE
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
    #   resp.configuration.name #=> String
    #   resp.configuration.configuration_arn #=> String
    #   resp.configuration.description #=> String
    #   resp.configuration.game_session_queue_arns #=> Array
    #   resp.configuration.game_session_queue_arns[0] #=> String
    #   resp.configuration.request_timeout_seconds #=> Integer
    #   resp.configuration.acceptance_timeout_seconds #=> Integer
    #   resp.configuration.acceptance_required #=> Boolean
    #   resp.configuration.rule_set_name #=> String
    #   resp.configuration.rule_set_arn #=> String
    #   resp.configuration.notification_target #=> String
    #   resp.configuration.additional_player_count #=> Integer
    #   resp.configuration.custom_event_data #=> String
    #   resp.configuration.creation_time #=> Time
    #   resp.configuration.game_properties #=> Array
    #   resp.configuration.game_properties[0].key #=> String
    #   resp.configuration.game_properties[0].value #=> String
    #   resp.configuration.game_session_data #=> String
    #   resp.configuration.backfill_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.configuration.flex_match_mode #=> String, one of "STANDALONE", "WITH_QUEUE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingConfiguration AWS API Documentation
    #
    # @overload create_matchmaking_configuration(params = {})
    # @param [Hash] params ({})
    def create_matchmaking_configuration(params = {}, options = {})
      req = build_request(:create_matchmaking_configuration, params)
      req.send_request(options)
    end

    # Creates a new rule set for FlexMatch matchmaking. A rule set describes
    # the type of match to create, such as the number and size of teams. It
    # also sets the parameters for acceptable player matches, such as
    # minimum skill level or character type. A rule set is used by a
    # MatchmakingConfiguration.
    #
    # To create a matchmaking rule set, provide unique rule set name and the
    # rule set body in JSON format. Rule sets must be defined in the same
    # Region as the matchmaking configuration they are used with.
    #
    # Since matchmaking rule sets cannot be edited, it is a good idea to
    # check the rule set syntax using ValidateMatchmakingRuleSet before
    # creating a new rule set.
    #
    # **Learn more**
    #
    # * [Build a rule set][1]
    #
    # * [Design a matchmaker][2]
    #
    # * [Matchmaking with FlexMatch][3]
    #
    # **Related actions**
    #
    # CreateMatchmakingConfiguration \| DescribeMatchmakingConfigurations \|
    # UpdateMatchmakingConfiguration \| DeleteMatchmakingConfiguration \|
    # CreateMatchmakingRuleSet \| DescribeMatchmakingRuleSets \|
    # ValidateMatchmakingRuleSet \| DeleteMatchmakingRuleSet \| [All APIs by
    # task][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-intro.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking rule set. A matchmaking
    #   configuration identifies the rule set it uses by this name value. Note
    #   that the rule set name is different from the optional `name` field in
    #   the rule set body.
    #
    # @option params [required, String] :rule_set_body
    #   A collection of matchmaking rules, formatted as a JSON string.
    #   Comments are not allowed in JSON, but most elements support a
    #   description field.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new matchmaking rule set resource.
    #   Tags are developer-defined key-value pairs. Tagging AWS resources are
    #   useful for resource management, access management and cost allocation.
    #   For more information, see [ Tagging AWS Resources][1] in the *AWS
    #   General Reference*. Once the resource is created, you can use
    #   TagResource, UntagResource, and ListTagsForResource to add, remove,
    #   and view tags. The maximum tag limit may be lower than stated. See the
    #   AWS General Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateMatchmakingRuleSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMatchmakingRuleSetOutput#rule_set #rule_set} => Types::MatchmakingRuleSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_matchmaking_rule_set({
    #     name: "MatchmakingIdStringModel", # required
    #     rule_set_body: "RuleSetBody", # required
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
    #   resp.rule_set.rule_set_name #=> String
    #   resp.rule_set.rule_set_arn #=> String
    #   resp.rule_set.rule_set_body #=> String
    #   resp.rule_set.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingRuleSet AWS API Documentation
    #
    # @overload create_matchmaking_rule_set(params = {})
    # @param [Hash] params ({})
    def create_matchmaking_rule_set(params = {}, options = {})
      req = build_request(:create_matchmaking_rule_set, params)
      req.send_request(options)
    end

    # Reserves an open player slot in a game session for a player. New
    # player sessions can be created in any game session with an open slot
    # that is in `ACTIVE` status and has a player creation policy of
    # `ACCEPT_ALL`. You can add a group of players to a game session with
    # CreatePlayerSessions.
    #
    # To create a player session, specify a game session ID, player ID, and
    # optionally a set of player data.
    #
    # If successful, a slot is reserved in the game session for the player
    # and a new PlayerSession object is returned with a player session ID.
    # The player references the player session ID when sending a connection
    # request to the game session, and the game server can use it to
    # validate the player reservation with the GameLift service. Player
    # sessions cannot be updated.
    #
    # *Available in Amazon GameLift Local.*
    #
    # **Related actions**
    #
    # CreatePlayerSession \| CreatePlayerSessions \| DescribePlayerSessions
    # \| StartGameSessionPlacement \| DescribeGameSessionPlacement \| [All
    # APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to add a player to.
    #
    # @option params [required, String] :player_id
    #   A unique identifier for a player. Player IDs are developer-defined.
    #
    # @option params [String] :player_data
    #   Developer-defined information related to a player. GameLift does not
    #   use this data, so it can be formatted as needed for use in the game.
    #
    # @return [Types::CreatePlayerSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePlayerSessionOutput#player_session #player_session} => Types::PlayerSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_player_session({
    #     game_session_id: "ArnStringModel", # required
    #     player_id: "NonZeroAndMaxString", # required
    #     player_data: "PlayerData",
    #   })
    #
    # @example Response structure
    #
    #   resp.player_session.player_session_id #=> String
    #   resp.player_session.player_id #=> String
    #   resp.player_session.game_session_id #=> String
    #   resp.player_session.fleet_id #=> String
    #   resp.player_session.fleet_arn #=> String
    #   resp.player_session.creation_time #=> Time
    #   resp.player_session.termination_time #=> Time
    #   resp.player_session.status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_session.ip_address #=> String
    #   resp.player_session.dns_name #=> String
    #   resp.player_session.port #=> Integer
    #   resp.player_session.player_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSession AWS API Documentation
    #
    # @overload create_player_session(params = {})
    # @param [Hash] params ({})
    def create_player_session(params = {}, options = {})
      req = build_request(:create_player_session, params)
      req.send_request(options)
    end

    # Reserves open slots in a game session for a group of players. New
    # player sessions can be created in any game session with an open slot
    # that is in `ACTIVE` status and has a player creation policy of
    # `ACCEPT_ALL`. To add a single player to a game session, use
    # CreatePlayerSession.
    #
    # To create player sessions, specify a game session ID and a list of
    # player IDs. Optionally, provide a set of player data for each player
    # ID.
    #
    # If successful, a slot is reserved in the game session for each player,
    # and new PlayerSession objects are returned with player session IDs.
    # Each player references their player session ID when sending a
    # connection request to the game session, and the game server can use it
    # to validate the player reservation with the GameLift service. Player
    # sessions cannot be updated.
    #
    # *Available in Amazon GameLift Local.*
    #
    # **Related actions**
    #
    # CreatePlayerSession \| CreatePlayerSessions \| DescribePlayerSessions
    # \| StartGameSessionPlacement \| DescribeGameSessionPlacement \| [All
    # APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to add players to.
    #
    # @option params [required, Array<String>] :player_ids
    #   List of unique identifiers for the players to be added.
    #
    # @option params [Hash<String,String>] :player_data_map
    #   Map of string pairs, each specifying a player ID and a set of
    #   developer-defined information related to the player. Amazon GameLift
    #   does not use this data, so it can be formatted as needed for use in
    #   the game. Any player data strings for player IDs that are not included
    #   in the `PlayerIds` parameter are ignored.
    #
    # @return [Types::CreatePlayerSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePlayerSessionsOutput#player_sessions #player_sessions} => Array&lt;Types::PlayerSession&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_player_sessions({
    #     game_session_id: "ArnStringModel", # required
    #     player_ids: ["NonZeroAndMaxString"], # required
    #     player_data_map: {
    #       "NonZeroAndMaxString" => "PlayerData",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.player_sessions #=> Array
    #   resp.player_sessions[0].player_session_id #=> String
    #   resp.player_sessions[0].player_id #=> String
    #   resp.player_sessions[0].game_session_id #=> String
    #   resp.player_sessions[0].fleet_id #=> String
    #   resp.player_sessions[0].fleet_arn #=> String
    #   resp.player_sessions[0].creation_time #=> Time
    #   resp.player_sessions[0].termination_time #=> Time
    #   resp.player_sessions[0].status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_sessions[0].ip_address #=> String
    #   resp.player_sessions[0].dns_name #=> String
    #   resp.player_sessions[0].port #=> Integer
    #   resp.player_sessions[0].player_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessions AWS API Documentation
    #
    # @overload create_player_sessions(params = {})
    # @param [Hash] params ({})
    def create_player_sessions(params = {}, options = {})
      req = build_request(:create_player_sessions, params)
      req.send_request(options)
    end

    # Creates a new script record for your Realtime Servers script. Realtime
    # scripts are JavaScript that provide configuration settings and
    # optional custom game logic for your game. The script is deployed when
    # you create a Realtime Servers fleet to host your game sessions. Script
    # logic is executed during an active game session.
    #
    # To create a new script record, specify a script name and provide the
    # script file(s). The script files and all dependencies must be zipped
    # into a single file. You can pull the zip file from either of these
    # locations:
    #
    # * A locally available directory. Use the *ZipFile* parameter for this
    #   option.
    #
    # * An Amazon Simple Storage Service (Amazon S3) bucket under your AWS
    #   account. Use the *StorageLocation* parameter for this option.
    #   You'll need to have an Identity Access Management (IAM) role that
    #   allows the Amazon GameLift service to access your S3 bucket.
    #
    # If the call is successful, a new script record is created with a
    # unique script ID. If the script file is provided as a local file, the
    # file is uploaded to an Amazon GameLift-owned S3 bucket and the script
    # record's storage location reflects this location. If the script file
    # is provided as an S3 bucket, Amazon GameLift accesses the file at this
    # storage location as needed for deployment.
    #
    # **Learn more**
    #
    # [Amazon GameLift Realtime Servers][1]
    #
    # [Set Up a Role for Amazon GameLift Access][2]
    #
    # **Related actions**
    #
    # CreateScript \| ListScripts \| DescribeScript \| UpdateScript \|
    # DeleteScript \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a script. Script names do
    #   not need to be unique. You can use UpdateScript to change this value
    #   later.
    #
    # @option params [String] :version
    #   Version information that is associated with a build or script. Version
    #   strings do not need to be unique. You can use UpdateScript to change
    #   this value later.
    #
    # @option params [Types::S3Location] :storage_location
    #   The location of the Amazon S3 bucket where a zipped file containing
    #   your Realtime scripts is stored. The storage location must specify the
    #   Amazon S3 bucket name, the zip file name (the "key"), and a role ARN
    #   that allows Amazon GameLift to access the Amazon S3 storage location.
    #   The S3 bucket must be in the same Region where you want to create a
    #   new script. By default, Amazon GameLift uploads the latest version of
    #   the zip file; if you have S3 object versioning turned on, you can use
    #   the `ObjectVersion` parameter to specify an earlier version.
    #
    # @option params [String, StringIO, File] :zip_file
    #   A data object containing your Realtime scripts and dependencies as a
    #   zip file. The zip file can have one or multiple files. Maximum size of
    #   a zip file is 5 MB.
    #
    #   When using the AWS CLI tool to create a script, this parameter is set
    #   to the zip file name. It must be prepended with the string
    #   "fileb://" to indicate that the file data is a binary object. For
    #   example: `--zip-file fileb://myRealtimeScript.zip`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new script resource. Tags are
    #   developer-defined key-value pairs. Tagging AWS resources are useful
    #   for resource management, access management and cost allocation. For
    #   more information, see [ Tagging AWS Resources][1] in the *AWS General
    #   Reference*. Once the resource is created, you can use TagResource,
    #   UntagResource, and ListTagsForResource to add, remove, and view tags.
    #   The maximum tag limit may be lower than stated. See the AWS General
    #   Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateScriptOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScriptOutput#script #script} => Types::Script
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_script({
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString",
    #     },
    #     zip_file: "data",
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
    #   resp.script.script_id #=> String
    #   resp.script.script_arn #=> String
    #   resp.script.name #=> String
    #   resp.script.version #=> String
    #   resp.script.size_on_disk #=> Integer
    #   resp.script.creation_time #=> Time
    #   resp.script.storage_location.bucket #=> String
    #   resp.script.storage_location.key #=> String
    #   resp.script.storage_location.role_arn #=> String
    #   resp.script.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateScript AWS API Documentation
    #
    # @overload create_script(params = {})
    # @param [Hash] params ({})
    def create_script(params = {}, options = {})
      req = build_request(:create_script, params)
      req.send_request(options)
    end

    # Requests authorization to create or delete a peer connection between
    # the VPC for your Amazon GameLift fleet and a virtual private cloud
    # (VPC) in your AWS account. VPC peering enables the game servers on
    # your fleet to communicate directly with other AWS resources. Once
    # you've received authorization, call CreateVpcPeeringConnection to
    # establish the peering connection. For more information, see [VPC
    # Peering with Amazon GameLift Fleets][1].
    #
    # You can peer with VPCs that are owned by any AWS account you have
    # access to, including the account that you use to manage your Amazon
    # GameLift fleets. You cannot peer with VPCs that are in different
    # Regions.
    #
    # To request authorization to create a connection, call this operation
    # from the AWS account with the VPC that you want to peer to your Amazon
    # GameLift fleet. For example, to enable your game servers to retrieve
    # data from a DynamoDB table, use the account that manages that DynamoDB
    # resource. Identify the following values: (1) The ID of the VPC that
    # you want to peer with, and (2) the ID of the AWS account that you use
    # to manage Amazon GameLift. If successful, VPC peering is authorized
    # for the specified VPC.
    #
    # To request authorization to delete a connection, call this operation
    # from the AWS account with the VPC that is peered with your Amazon
    # GameLift fleet. Identify the following values: (1) VPC ID that you
    # want to delete the peering connection for, and (2) ID of the AWS
    # account that you use to manage Amazon GameLift.
    #
    # The authorization remains valid for 24 hours unless it is canceled by
    # a call to DeleteVpcPeeringAuthorization. You must create or delete the
    # peering connection while the authorization is valid.
    #
    # **Related actions**
    #
    # CreateVpcPeeringAuthorization \| DescribeVpcPeeringAuthorizations \|
    # DeleteVpcPeeringAuthorization \| CreateVpcPeeringConnection \|
    # DescribeVpcPeeringConnections \| DeleteVpcPeeringConnection \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_lift_aws_account_id
    #   A unique identifier for the AWS account that you use to manage your
    #   GameLift fleet. You can find your Account ID in the AWS Management
    #   Console under account settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   GameLift fleet. The VPC must be in the same Region as your fleet. To
    #   look up a VPC ID, use the [VPC Dashboard][1] in the AWS Management
    #   Console. Learn more about VPC peering in [VPC Peering with GameLift
    #   Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @return [Types::CreateVpcPeeringAuthorizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcPeeringAuthorizationOutput#vpc_peering_authorization #vpc_peering_authorization} => Types::VpcPeeringAuthorization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_peering_authorization({
    #     game_lift_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_peering_authorization.game_lift_aws_account_id #=> String
    #   resp.vpc_peering_authorization.peer_vpc_aws_account_id #=> String
    #   resp.vpc_peering_authorization.peer_vpc_id #=> String
    #   resp.vpc_peering_authorization.creation_time #=> Time
    #   resp.vpc_peering_authorization.expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringAuthorization AWS API Documentation
    #
    # @overload create_vpc_peering_authorization(params = {})
    # @param [Hash] params ({})
    def create_vpc_peering_authorization(params = {}, options = {})
      req = build_request(:create_vpc_peering_authorization, params)
      req.send_request(options)
    end

    # Establishes a VPC peering connection between a virtual private cloud
    # (VPC) in an AWS account with the VPC for your Amazon GameLift fleet.
    # VPC peering enables the game servers on your fleet to communicate
    # directly with other AWS resources. You can peer with VPCs in any AWS
    # account that you have access to, including the account that you use to
    # manage your Amazon GameLift fleets. You cannot peer with VPCs that are
    # in different Regions. For more information, see [VPC Peering with
    # Amazon GameLift Fleets][1].
    #
    # Before calling this operation to establish the peering connection, you
    # first need to call CreateVpcPeeringAuthorization and identify the VPC
    # you want to peer with. Once the authorization for the specified VPC is
    # issued, you have 24 hours to establish the connection. These two
    # operations handle all tasks necessary to peer the two VPCs, including
    # acceptance, updating routing tables, etc.
    #
    # To establish the connection, call this operation from the AWS account
    # that is used to manage the Amazon GameLift fleets. Identify the
    # following values: (1) The ID of the fleet you want to be enable a VPC
    # peering connection for; (2) The AWS account with the VPC that you want
    # to peer with; and (3) The ID of the VPC you want to peer with. This
    # operation is asynchronous. If successful, a VpcPeeringConnection
    # request is created. You can use continuous polling to track the
    # request's status using DescribeVpcPeeringConnections, or by
    # monitoring fleet events for success or failure using
    # DescribeFleetEvents.
    #
    # **Related actions**
    #
    # CreateVpcPeeringAuthorization \| DescribeVpcPeeringAuthorizations \|
    # DeleteVpcPeeringAuthorization \| CreateVpcPeeringConnection \|
    # DescribeVpcPeeringConnections \| DeleteVpcPeeringConnection \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet. You can use either the fleet ID or
    #   ARN value. This tells Amazon GameLift which GameLift VPC to peer with.
    #
    # @option params [required, String] :peer_vpc_aws_account_id
    #   A unique identifier for the AWS account with the VPC that you want to
    #   peer your Amazon GameLift fleet with. You can find your Account ID in
    #   the AWS Management Console under account settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   GameLift fleet. The VPC must be in the same Region as your fleet. To
    #   look up a VPC ID, use the [VPC Dashboard][1] in the AWS Management
    #   Console. Learn more about VPC peering in [VPC Peering with GameLift
    #   Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_peering_connection({
    #     fleet_id: "FleetId", # required
    #     peer_vpc_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringConnection AWS API Documentation
    #
    # @overload create_vpc_peering_connection(params = {})
    # @param [Hash] params ({})
    def create_vpc_peering_connection(params = {}, options = {})
      req = build_request(:create_vpc_peering_connection, params)
      req.send_request(options)
    end

    # Deletes an alias. This operation removes all record of the alias. Game
    # clients attempting to access a server process using the deleted alias
    # receive an error. To delete an alias, specify the alias ID to be
    # deleted.
    #
    # **Related actions**
    #
    # CreateAlias \| ListAliases \| DescribeAlias \| UpdateAlias \|
    # DeleteAlias \| ResolveAlias \| [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :alias_id
    #   A unique identifier of the alias that you want to delete. You can use
    #   either the alias ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     alias_id: "AliasIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes a build. This operation permanently deletes the build resource
    # and any uploaded build files. Deleting a build does not affect the
    # status of any active fleets using the build, but you can no longer
    # create new fleets with the deleted build.
    #
    # To delete a build, specify the build ID.
    #
    # **Learn more**
    #
    # [ Upload a Custom Server Build][1]
    #
    # **Related actions**
    #
    # CreateBuild \| ListBuilds \| DescribeBuild \| UpdateBuild \|
    # DeleteBuild \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :build_id
    #   A unique identifier for the build to delete. You can use either the
    #   build ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_build({
    #     build_id: "BuildIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteBuild AWS API Documentation
    #
    # @overload delete_build(params = {})
    # @param [Hash] params ({})
    def delete_build(params = {}, options = {})
      req = build_request(:delete_build, params)
      req.send_request(options)
    end

    # Deletes all resources and information related a fleet. Any current
    # fleet instances, including those in remote locations, are shut down.
    # You don't need to call `DeleteFleetLocations` separately.
    #
    # <note markdown="1"> If the fleet being deleted has a VPC peering connection, you first
    # need to get a valid authorization (good for 24 hours) by calling
    # CreateVpcPeeringAuthorization. You do not need to explicitly delete
    # the VPC peering connection--this is done as part of the delete fleet
    # process.
    #
    #  </note>
    #
    # To delete a fleet, specify the fleet ID to be terminated. During the
    # deletion process the fleet status is changed to `DELETING`. When
    # completed, the status switches to `TERMINATED` and the fleet event
    # `FLEET_DELETED` is sent.
    #
    # **Learn more**
    #
    # [Setting up GameLift Fleets][1]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| UpdateFleetAttributes \| UpdateFleetCapacity
    # \| UpdateFleetPortSettings \| UpdateRuntimeConfiguration \|
    # StopFleetActions \| StartFleetActions \| PutScalingPolicy \|
    # DeleteFleet \| DeleteFleetLocations \| DeleteScalingPolicy \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to be deleted. You can use either
    #   the fleet ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     fleet_id: "FleetIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleet AWS API Documentation
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Removes locations from a multi-location fleet. When deleting a
    # location, all game server process and all instances that are still
    # active in the location are shut down.
    #
    # To delete fleet locations, identify the fleet ID and provide a list of
    # the locations to be deleted.
    #
    # If successful, GameLift sets the location status to `DELETING`, and
    # begins to shut down existing server processes and terminate instances
    # in each location being deleted. When completed, the location status
    # changes to `TERMINATED`.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| DescribeFleetLocationAttributes \|
    # DescribeFleetLocationCapacity \| DescribeFleetLocationUtilization \|
    # DescribeFleetAttributes \| DescribeFleetCapacity \|
    # DescribeFleetUtilization \| UpdateFleetCapacity \| StopFleetActions \|
    # DeleteFleetLocations \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to delete locations for. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<String>] :locations
    #   The list of fleet locations to delete. Specify locations in the form
    #   of an AWS Region code, such as `us-west-2`.
    #
    # @return [Types::DeleteFleetLocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFleetLocationsOutput#fleet_id #fleet_id} => String
    #   * {Types::DeleteFleetLocationsOutput#fleet_arn #fleet_arn} => String
    #   * {Types::DeleteFleetLocationsOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet_locations({
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: ["LocationStringModel"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.location_states #=> Array
    #   resp.location_states[0].location #=> String
    #   resp.location_states[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleetLocations AWS API Documentation
    #
    # @overload delete_fleet_locations(params = {})
    # @param [Hash] params ({})
    def delete_fleet_locations(params = {}, options = {})
      req = build_request(:delete_fleet_locations, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Terminates a game server group and permanently deletes the game server
    # group record. You have several options for how these resources are
    # impacted when deleting the game server group. Depending on the type of
    # delete operation selected, this operation might affect these
    # resources:
    #
    # * The game server group
    #
    # * The corresponding Auto Scaling group
    #
    # * All game servers that are currently running in the group
    #
    # To delete a game server group, identify the game server group to
    # delete and specify the type of delete operation to initiate. Game
    # server groups can only be deleted if they are in `ACTIVE` or `ERROR`
    # status.
    #
    # If the delete request is successful, a series of operations are kicked
    # off. The game server group status is changed to `DELETE_SCHEDULED`,
    # which prevents new game servers from being registered and stops
    # automatic scaling activity. Once all game servers in the game server
    # group are deregistered, GameLift FleetIQ can begin deleting resources.
    # If any of the delete operations fail, the game server group is placed
    # in `ERROR` status.
    #
    # GameLift FleetIQ emits delete events to Amazon CloudWatch.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # CreateGameServerGroup \| ListGameServerGroups \|
    # DescribeGameServerGroup \| UpdateGameServerGroup \|
    # DeleteGameServerGroup \| ResumeGameServerGroup \|
    # SuspendGameServerGroup \| DescribeGameServerInstances \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the
    #   GameServerGroup name or ARN value.
    #
    # @option params [String] :delete_option
    #   The type of delete to perform. Options include the following:
    #
    #   * `SAFE_DELETE` – (default) Terminates the game server group and EC2
    #     Auto Scaling group only when it has no game servers that are in
    #     `UTILIZED` status.
    #
    #   * `FORCE_DELETE` – Terminates the game server group, including all
    #     active game servers regardless of their utilization status, and the
    #     EC2 Auto Scaling group.
    #
    #   * `RETAIN` – Does a safe delete of the game server group but retains
    #     the EC2 Auto Scaling group as is.
    #
    # @return [Types::DeleteGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     delete_option: "SAFE_DELETE", # accepts SAFE_DELETE, FORCE_DELETE, RETAIN
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameServerGroup AWS API Documentation
    #
    # @overload delete_game_server_group(params = {})
    # @param [Hash] params ({})
    def delete_game_server_group(params = {}, options = {})
      req = build_request(:delete_game_server_group, params)
      req.send_request(options)
    end

    # Deletes a game session queue. Once a queue is successfully deleted,
    # unfulfilled StartGameSessionPlacement requests that reference the
    # queue will fail. To delete a queue, specify the queue name.
    #
    # **Learn more**
    #
    # [ Using Multi-Region Queues][1]
    #
    # **Related actions**
    #
    # CreateGameSessionQueue \| DescribeGameSessionQueues \|
    # UpdateGameSessionQueue \| DeleteGameSessionQueue \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with game session queue. Queue
    #   names must be unique within each Region. You can use either the queue
    #   ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_game_session_queue({
    #     name: "GameSessionQueueNameOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameSessionQueue AWS API Documentation
    #
    # @overload delete_game_session_queue(params = {})
    # @param [Hash] params ({})
    def delete_game_session_queue(params = {}, options = {})
      req = build_request(:delete_game_session_queue, params)
      req.send_request(options)
    end

    # Permanently removes a FlexMatch matchmaking configuration. To delete,
    # specify the configuration name. A matchmaking configuration cannot be
    # deleted if it is being used in any active matchmaking tickets.
    #
    # **Related actions**
    #
    # CreateMatchmakingConfiguration \| DescribeMatchmakingConfigurations \|
    # UpdateMatchmakingConfiguration \| DeleteMatchmakingConfiguration \|
    # CreateMatchmakingRuleSet \| DescribeMatchmakingRuleSets \|
    # ValidateMatchmakingRuleSet \| DeleteMatchmakingRuleSet \| [All APIs by
    # task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking configuration. You can use
    #   either the configuration name or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_matchmaking_configuration({
    #     name: "MatchmakingConfigurationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingConfiguration AWS API Documentation
    #
    # @overload delete_matchmaking_configuration(params = {})
    # @param [Hash] params ({})
    def delete_matchmaking_configuration(params = {}, options = {})
      req = build_request(:delete_matchmaking_configuration, params)
      req.send_request(options)
    end

    # Deletes an existing matchmaking rule set. To delete the rule set,
    # provide the rule set name. Rule sets cannot be deleted if they are
    # currently being used by a matchmaking configuration.
    #
    # **Learn more**
    #
    # * [Build a rule set][1]
    #
    # ^
    #
    # **Related actions**
    #
    # CreateMatchmakingConfiguration \| DescribeMatchmakingConfigurations \|
    # UpdateMatchmakingConfiguration \| DeleteMatchmakingConfiguration \|
    # CreateMatchmakingRuleSet \| DescribeMatchmakingRuleSets \|
    # ValidateMatchmakingRuleSet \| DeleteMatchmakingRuleSet \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking rule set to be deleted. (Note:
    #   The rule set name is different from the optional "name" field in the
    #   rule set body.) You can use either the rule set name or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_matchmaking_rule_set({
    #     name: "MatchmakingRuleSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingRuleSet AWS API Documentation
    #
    # @overload delete_matchmaking_rule_set(params = {})
    # @param [Hash] params ({})
    def delete_matchmaking_rule_set(params = {}, options = {})
      req = build_request(:delete_matchmaking_rule_set, params)
      req.send_request(options)
    end

    # Deletes a fleet scaling policy. Once deleted, the policy is no longer
    # in force and GameLift removes all record of it. To delete a scaling
    # policy, specify both the scaling policy name and the fleet ID it is
    # associated with.
    #
    # To temporarily suspend scaling policies, call StopFleetActions. This
    # operation suspends all policies for the fleet.
    #
    # **Related actions**
    #
    # DescribeFleetCapacity \| UpdateFleetCapacity \|
    # DescribeEC2InstanceLimits \| PutScalingPolicy \|
    # DescribeScalingPolicies \| DeleteScalingPolicy \| StopFleetActions \|
    # StartFleetActions \| [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a fleet's scaling policy.
    #   Policy names do not need to be unique.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to be deleted. You can use either
    #   the fleet ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_policy({
    #     name: "NonZeroAndMaxString", # required
    #     fleet_id: "FleetIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteScalingPolicy AWS API Documentation
    #
    # @overload delete_scaling_policy(params = {})
    # @param [Hash] params ({})
    def delete_scaling_policy(params = {}, options = {})
      req = build_request(:delete_scaling_policy, params)
      req.send_request(options)
    end

    # Deletes a Realtime script. This operation permanently deletes the
    # script record. If script files were uploaded, they are also deleted
    # (files stored in an S3 bucket are not deleted).
    #
    # To delete a script, specify the script ID. Before deleting a script,
    # be sure to terminate all fleets that are deployed with the script
    # being deleted. Fleet instances periodically check for script updates,
    # and if the script record no longer exists, the instance will go into
    # an error state and be unable to host game sessions.
    #
    # **Learn more**
    #
    # [Amazon GameLift Realtime Servers][1]
    #
    # **Related actions**
    #
    # CreateScript \| ListScripts \| DescribeScript \| UpdateScript \|
    # DeleteScript \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :script_id
    #   A unique identifier for the Realtime script to delete. You can use
    #   either the script ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_script({
    #     script_id: "ScriptIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteScript AWS API Documentation
    #
    # @overload delete_script(params = {})
    # @param [Hash] params ({})
    def delete_script(params = {}, options = {})
      req = build_request(:delete_script, params)
      req.send_request(options)
    end

    # Cancels a pending VPC peering authorization for the specified VPC. If
    # you need to delete an existing VPC peering connection, call
    # DeleteVpcPeeringConnection.
    #
    # **Related actions**
    #
    # CreateVpcPeeringAuthorization \| DescribeVpcPeeringAuthorizations \|
    # DeleteVpcPeeringAuthorization \| CreateVpcPeeringConnection \|
    # DescribeVpcPeeringConnections \| DeleteVpcPeeringConnection \| [All
    # APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_lift_aws_account_id
    #   A unique identifier for the AWS account that you use to manage your
    #   GameLift fleet. You can find your Account ID in the AWS Management
    #   Console under account settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   GameLift fleet. The VPC must be in the same Region as your fleet. To
    #   look up a VPC ID, use the [VPC Dashboard][1] in the AWS Management
    #   Console. Learn more about VPC peering in [VPC Peering with GameLift
    #   Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_peering_authorization({
    #     game_lift_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringAuthorization AWS API Documentation
    #
    # @overload delete_vpc_peering_authorization(params = {})
    # @param [Hash] params ({})
    def delete_vpc_peering_authorization(params = {}, options = {})
      req = build_request(:delete_vpc_peering_authorization, params)
      req.send_request(options)
    end

    # Removes a VPC peering connection. To delete the connection, you must
    # have a valid authorization for the VPC peering connection that you
    # want to delete. You can check for an authorization by calling
    # DescribeVpcPeeringAuthorizations or request a new one using
    # CreateVpcPeeringAuthorization.
    #
    # Once a valid authorization exists, call this operation from the AWS
    # account that is used to manage the Amazon GameLift fleets. Identify
    # the connection to delete by the connection ID and fleet ID. If
    # successful, the connection is removed.
    #
    # **Related actions**
    #
    # CreateVpcPeeringAuthorization \| DescribeVpcPeeringAuthorizations \|
    # DeleteVpcPeeringAuthorization \| CreateVpcPeeringConnection \|
    # DescribeVpcPeeringConnections \| DeleteVpcPeeringConnection \| [All
    # APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet. This fleet specified must match the
    #   fleet referenced in the VPC peering connection record. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, String] :vpc_peering_connection_id
    #   A unique identifier for a VPC peering connection. This value is
    #   included in the VpcPeeringConnection object, which can be retrieved by
    #   calling DescribeVpcPeeringConnections.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_peering_connection({
    #     fleet_id: "FleetId", # required
    #     vpc_peering_connection_id: "NonZeroAndMaxString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringConnection AWS API Documentation
    #
    # @overload delete_vpc_peering_connection(params = {})
    # @param [Hash] params ({})
    def delete_vpc_peering_connection(params = {}, options = {})
      req = build_request(:delete_vpc_peering_connection, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Removes the game server from a game server group. As a result of this
    # operation, the deregistered game server can no longer be claimed and
    # will not be returned in a list of active game servers.
    #
    # To deregister a game server, specify the game server group and game
    # server ID. If successful, this operation emits a CloudWatch event with
    # termination timestamp and reason.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # RegisterGameServer \| ListGameServers \| ClaimGameServer \|
    # DescribeGameServer \| UpdateGameServer \| DeregisterGameServer \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running. Use either the GameServerGroup name or ARN value.
    #
    # @option params [required, String] :game_server_id
    #   A custom string that uniquely identifies the game server to
    #   deregister.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeregisterGameServer AWS API Documentation
    #
    # @overload deregister_game_server(params = {})
    # @param [Hash] params ({})
    def deregister_game_server(params = {}, options = {})
      req = build_request(:deregister_game_server, params)
      req.send_request(options)
    end

    # Retrieves properties for an alias. This operation returns all alias
    # metadata and settings. To get an alias's target fleet ID only, use
    # `ResolveAlias`.
    #
    # To get alias properties, specify the alias ID. If successful, the
    # requested alias record is returned.
    #
    # **Related actions**
    #
    # CreateAlias \| ListAliases \| DescribeAlias \| UpdateAlias \|
    # DeleteAlias \| ResolveAlias \| [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :alias_id
    #   The unique identifier for the fleet alias that you want to retrieve.
    #   You can use either the alias ID or ARN value.
    #
    # @return [Types::DescribeAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alias({
    #     alias_id: "AliasIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_id #=> String
    #   resp.alias.name #=> String
    #   resp.alias.alias_arn #=> String
    #   resp.alias.description #=> String
    #   resp.alias.routing_strategy.type #=> String, one of "SIMPLE", "TERMINAL"
    #   resp.alias.routing_strategy.fleet_id #=> String
    #   resp.alias.routing_strategy.message #=> String
    #   resp.alias.creation_time #=> Time
    #   resp.alias.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeAlias AWS API Documentation
    #
    # @overload describe_alias(params = {})
    # @param [Hash] params ({})
    def describe_alias(params = {}, options = {})
      req = build_request(:describe_alias, params)
      req.send_request(options)
    end

    # Retrieves properties for a custom game build. To request a build
    # resource, specify a build ID. If successful, an object containing the
    # build properties is returned.
    #
    # **Learn more**
    #
    # [ Upload a Custom Server Build][1]
    #
    # **Related actions**
    #
    # CreateBuild \| ListBuilds \| DescribeBuild \| UpdateBuild \|
    # DeleteBuild \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :build_id
    #   A unique identifier for the build to retrieve properties for. You can
    #   use either the build ID or ARN value.
    #
    # @return [Types::DescribeBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_build({
    #     build_id: "BuildIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build.build_id #=> String
    #   resp.build.build_arn #=> String
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.build.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeBuild AWS API Documentation
    #
    # @overload describe_build(params = {})
    # @param [Hash] params ({})
    def describe_build(params = {}, options = {})
      req = build_request(:describe_build, params)
      req.send_request(options)
    end

    # The GameLift service limits and current utilization for an AWS Region
    # or location. Instance limits control the number of instances, per
    # instance type, per location, that your AWS account can use. Learn more
    # at [Amazon EC2 Instance Types][1]. The information returned includes
    # the maximum number of instances allowed and your account's current
    # usage across all fleets. This information can affect your ability to
    # scale your GameLift fleets. You can request a limit increase for your
    # account by using the **Service limits** page in the GameLift console.
    #
    # Instance limits differ based on whether the instances are deployed in
    # a fleet's home Region or in a remote location. For remote locations,
    # limits also differ based on the combination of home Region and remote
    # location. All requests must specify an AWS Region (either explicitly
    # or as your default settings). To get the limit for a remote location,
    # you must also specify the location. For example, the following
    # requests all return different results:
    #
    # * Request specifies the Region `ap-northeast-1` with no location. The
    #   result is limits and usage data on all instance types that are
    #   deployed in `us-east-2`, by all of the fleets that reside in
    #   `ap-northeast-1`.
    #
    # * Request specifies the Region `us-east-1` with location
    #   `ca-central-1`. The result is limits and usage data on all instance
    #   types that are deployed in `ca-central-1`, by all of the fleets that
    #   reside in `us-east-2`. These limits do not affect fleets in any
    #   other Regions that deploy instances to `ca-central-1`.
    #
    # * Request specifies the Region `eu-west-1` with location
    #   `ca-central-1`. The result is limits and usage data on all instance
    #   types that are deployed in `ca-central-1`, by all of the fleets that
    #   reside in `eu-west-1`.
    #
    # This operation can be used in the following ways:
    #
    # * To get limit and usage data for all instance types that are deployed
    #   in an AWS Region by fleets that reside in the same Region: Specify
    #   the Region only. Optionally, specify a single instance type to
    #   retrieve information for.
    #
    # * To get limit and usage data for all instance types that are deployed
    #   to a remote location by fleets that reside in different AWS Region:
    #   Provide both the AWS Region and the remote location. Optionally,
    #   specify a single instance type to retrieve information for.
    #
    # If successful, an `EC2InstanceLimits` object is returned with limits
    # and usage data for each requested instance type.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][2]
    #
    # **Related actions**
    #
    # CreateFleet \| UpdateFleetCapacity \| PutScalingPolicy \|
    # DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetLocationAttributes \| UpdateFleetAttributes \|
    # StopFleetActions \| DeleteFleet \| [All APIs by task][3]
    #
    #
    #
    # [1]: http://aws.amazon.com/ec2/instance-types/
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :ec2_instance_type
    #   Name of an EC2 instance type that is supported in GameLift. A fleet
    #   instance type determines the computing resources of each instance in
    #   the fleet, including CPU, memory, storage, and networking capacity. Do
    #   not specify a value for this parameter to retrieve limits for all
    #   instance types.
    #
    # @option params [String] :location
    #   The name of a remote location to request instance limits for, in the
    #   form of an AWS Region code such as `us-west-2`.
    #
    # @return [Types::DescribeEC2InstanceLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEC2InstanceLimitsOutput#ec2_instance_limits #ec2_instance_limits} => Array&lt;Types::EC2InstanceLimit&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ec2_instance_limits({
    #     ec2_instance_type: "t2.micro", # accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.ec2_instance_limits #=> Array
    #   resp.ec2_instance_limits[0].ec2_instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"
    #   resp.ec2_instance_limits[0].current_instances #=> Integer
    #   resp.ec2_instance_limits[0].instance_limit #=> Integer
    #   resp.ec2_instance_limits[0].location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeEC2InstanceLimits AWS API Documentation
    #
    # @overload describe_ec2_instance_limits(params = {})
    # @param [Hash] params ({})
    def describe_ec2_instance_limits(params = {}, options = {})
      req = build_request(:describe_ec2_instance_limits, params)
      req.send_request(options)
    end

    # Retrieves core fleet-wide properties, including the computing hardware
    # and deployment configuration for all instances in the fleet.
    #
    # This operation can be used in the following ways:
    #
    # * To get attributes for one or more specific fleets, provide a list of
    #   fleet IDs or fleet ARNs.
    #
    # * To get attributes for all fleets, do not provide a fleet identifier.
    #
    # When requesting attributes for multiple fleets, use the pagination
    # parameters to retrieve results as a set of sequential pages.
    #
    # If successful, a `FleetAttributes` object is returned for each fleet
    # requested, unless the fleet identifier is not found.
    #
    # <note markdown="1"> Some API operations limit the number of fleet IDs that allowed in one
    # request. If a request exceeds this limit, the request fails and the
    # error message contains the maximum allowed number.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # ListFleets \| DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetCapacity \| DescribeFleetEvents \|
    # DescribeFleetLocationAttributes \| DescribeFleetPortSettings \|
    # DescribeFleetUtilization \| DescribeRuntimeConfiguration \|
    # DescribeScalingPolicies \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [Array<String>] :fleet_ids
    #   A list of unique fleet identifiers to retrieve attributes for. You can
    #   use either the fleet ID or ARN value. To retrieve attributes for all
    #   current fleets, do not include this parameter.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
    #
    # @return [Types::DescribeFleetAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetAttributesOutput#fleet_attributes #fleet_attributes} => Array&lt;Types::FleetAttributes&gt;
    #   * {Types::DescribeFleetAttributesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_attributes({
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_attributes #=> Array
    #   resp.fleet_attributes[0].fleet_id #=> String
    #   resp.fleet_attributes[0].fleet_arn #=> String
    #   resp.fleet_attributes[0].fleet_type #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.fleet_attributes[0].instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"
    #   resp.fleet_attributes[0].description #=> String
    #   resp.fleet_attributes[0].name #=> String
    #   resp.fleet_attributes[0].creation_time #=> Time
    #   resp.fleet_attributes[0].termination_time #=> Time
    #   resp.fleet_attributes[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"
    #   resp.fleet_attributes[0].build_id #=> String
    #   resp.fleet_attributes[0].build_arn #=> String
    #   resp.fleet_attributes[0].script_id #=> String
    #   resp.fleet_attributes[0].script_arn #=> String
    #   resp.fleet_attributes[0].server_launch_path #=> String
    #   resp.fleet_attributes[0].server_launch_parameters #=> String
    #   resp.fleet_attributes[0].log_paths #=> Array
    #   resp.fleet_attributes[0].log_paths[0] #=> String
    #   resp.fleet_attributes[0].new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.fleet_attributes[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.fleet_attributes[0].resource_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.fleet_attributes[0].resource_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.fleet_attributes[0].metric_groups #=> Array
    #   resp.fleet_attributes[0].metric_groups[0] #=> String
    #   resp.fleet_attributes[0].stopped_actions #=> Array
    #   resp.fleet_attributes[0].stopped_actions[0] #=> String, one of "AUTO_SCALING"
    #   resp.fleet_attributes[0].instance_role_arn #=> String
    #   resp.fleet_attributes[0].certificate_configuration.certificate_type #=> String, one of "DISABLED", "GENERATED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetAttributes AWS API Documentation
    #
    # @overload describe_fleet_attributes(params = {})
    # @param [Hash] params ({})
    def describe_fleet_attributes(params = {}, options = {})
      req = build_request(:describe_fleet_attributes, params)
      req.send_request(options)
    end

    # Retrieves the resource capacity settings for one or more fleets. The
    # data returned includes the current fleet capacity (number of EC2
    # instances), and settings that can control how capacity scaling. For
    # fleets with remote locations, this operation retrieves data for the
    # fleet's home Region only. See DescribeFleetLocationCapacity to get
    # capacity settings for a fleet's remote locations.
    #
    # This operation can be used in the following ways:
    #
    # * To get capacity data for one or more specific fleets, provide a list
    #   of fleet IDs or fleet ARNs.
    #
    # * To get capacity data for all fleets, do not provide a fleet
    #   identifier.
    #
    # When requesting multiple fleets, use the pagination parameters to
    # retrieve results as a set of sequential pages.
    #
    # If successful, a FleetCapacity object is returned for each requested
    # fleet ID. Each FleetCapacity object includes a `Location` property,
    # which is set to the fleet's home Region. When a list of fleet IDs is
    # provided, attribute objects are returned only for fleets that
    # currently exist.
    #
    # <note markdown="1"> Some API operations may limit the number of fleet IDs that are allowed
    # in one request. If a request exceeds this limit, the request fails and
    # the error message includes the maximum allowed.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # [GameLift metrics for fleets][2]
    #
    # **Related actions**
    #
    # ListFleets \| DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetCapacity \| DescribeFleetEvents \|
    # DescribeFleetLocationAttributes \| DescribeFleetPortSettings \|
    # DescribeFleetUtilization \| DescribeRuntimeConfiguration \|
    # DescribeScalingPolicies \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [Array<String>] :fleet_ids
    #   A unique identifier for the fleet(s) to retrieve capacity information
    #   for. You can use either the fleet ID or ARN value. Leave this
    #   parameter empty to retrieve capacity information for all fleets.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
    #
    # @return [Types::DescribeFleetCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetCapacityOutput#fleet_capacity #fleet_capacity} => Array&lt;Types::FleetCapacity&gt;
    #   * {Types::DescribeFleetCapacityOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_capacity({
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_capacity #=> Array
    #   resp.fleet_capacity[0].fleet_id #=> String
    #   resp.fleet_capacity[0].fleet_arn #=> String
    #   resp.fleet_capacity[0].instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"
    #   resp.fleet_capacity[0].instance_counts.desired #=> Integer
    #   resp.fleet_capacity[0].instance_counts.minimum #=> Integer
    #   resp.fleet_capacity[0].instance_counts.maximum #=> Integer
    #   resp.fleet_capacity[0].instance_counts.pending #=> Integer
    #   resp.fleet_capacity[0].instance_counts.active #=> Integer
    #   resp.fleet_capacity[0].instance_counts.idle #=> Integer
    #   resp.fleet_capacity[0].instance_counts.terminating #=> Integer
    #   resp.fleet_capacity[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetCapacity AWS API Documentation
    #
    # @overload describe_fleet_capacity(params = {})
    # @param [Hash] params ({})
    def describe_fleet_capacity(params = {}, options = {})
      req = build_request(:describe_fleet_capacity, params)
      req.send_request(options)
    end

    # Retrieves entries from a fleet's event log. Fleet events are
    # initiated by changes in status, such as during fleet creation and
    # termination, changes in capacity, etc. If a fleet has multiple
    # locations, events are also initiated by changes to status and capacity
    # in remote locations.
    #
    # You can specify a time range to limit the result set. Use the
    # pagination parameters to retrieve results as a set of sequential
    # pages.
    #
    # If successful, a collection of event log entries matching the request
    # are returned.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # ListFleets \| DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetCapacity \| DescribeFleetEvents \|
    # DescribeFleetLocationAttributes \| DescribeFleetPortSettings \|
    # DescribeFleetUtilization \| DescribeRuntimeConfiguration \|
    # DescribeScalingPolicies \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to get event logs for. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest date to retrieve event logs for. If no start time is
    #   specified, this call returns entries starting from when the fleet was
    #   created to the specified end time. Format is a number expressed in
    #   Unix time as milliseconds (ex: "1469498468.057").
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The most recent date to retrieve event logs for. If no end time is
    #   specified, this call returns entries from the specified start time up
    #   to the present. Format is a number expressed in Unix time as
    #   milliseconds (ex: "1469498468.057").
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeFleetEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetEventsOutput#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::DescribeFleetEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_events({
    #     fleet_id: "FleetIdOrArn", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].resource_id #=> String
    #   resp.events[0].event_code #=> String, one of "GENERIC_EVENT", "FLEET_CREATED", "FLEET_DELETED", "FLEET_SCALING_EVENT", "FLEET_STATE_DOWNLOADING", "FLEET_STATE_VALIDATING", "FLEET_STATE_BUILDING", "FLEET_STATE_ACTIVATING", "FLEET_STATE_ACTIVE", "FLEET_STATE_ERROR", "FLEET_INITIALIZATION_FAILED", "FLEET_BINARY_DOWNLOAD_FAILED", "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND", "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE", "FLEET_VALIDATION_TIMED_OUT", "FLEET_ACTIVATION_FAILED", "FLEET_ACTIVATION_FAILED_NO_INSTANCES", "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED", "SERVER_PROCESS_INVALID_PATH", "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT", "SERVER_PROCESS_PROCESS_READY_TIMEOUT", "SERVER_PROCESS_CRASHED", "SERVER_PROCESS_TERMINATED_UNHEALTHY", "SERVER_PROCESS_FORCE_TERMINATED", "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT", "GAME_SESSION_ACTIVATION_TIMEOUT", "FLEET_CREATION_EXTRACTING_BUILD", "FLEET_CREATION_RUNNING_INSTALLER", "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG", "FLEET_VPC_PEERING_SUCCEEDED", "FLEET_VPC_PEERING_FAILED", "FLEET_VPC_PEERING_DELETED", "INSTANCE_INTERRUPTED"
    #   resp.events[0].message #=> String
    #   resp.events[0].event_time #=> Time
    #   resp.events[0].pre_signed_log_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetEvents AWS API Documentation
    #
    # @overload describe_fleet_events(params = {})
    # @param [Hash] params ({})
    def describe_fleet_events(params = {}, options = {})
      req = build_request(:describe_fleet_events, params)
      req.send_request(options)
    end

    # Retrieves information on a fleet's remote locations, including
    # life-cycle status and any suspended fleet activity.
    #
    # This operation can be used in the following ways:
    #
    # * To get data for specific locations, provide a fleet identifier and a
    #   list of locations. Location data is returned in the order that it is
    #   requested.
    #
    # * To get data for all locations, provide a fleet identifier only.
    #   Location data is returned in no particular order.
    #
    # When requesting attributes for multiple locations, use the pagination
    # parameters to retrieve results as a set of sequential pages.
    #
    # If successful, a `LocationAttributes` object is returned for each
    # requested location. If the fleet does not have a requested location,
    # no information is returned. This operation does not return the home
    # Region. To get information on a fleet's home Region, call
    # `DescribeFleetAttributes`.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| DescribeFleetLocationAttributes \|
    # DescribeFleetLocationCapacity \| DescribeFleetLocationUtilization \|
    # DescribeFleetAttributes \| DescribeFleetCapacity \|
    # DescribeFleetUtilization \| UpdateFleetCapacity \| StopFleetActions \|
    # DeleteFleetLocations \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to retrieve remote locations for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [Array<String>] :locations
    #   A list of fleet locations to retrieve information for. Specify
    #   locations in the form of an AWS Region code, such as `us-west-2`.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This limit is
    #   not currently enforced.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeFleetLocationAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetLocationAttributesOutput#fleet_id #fleet_id} => String
    #   * {Types::DescribeFleetLocationAttributesOutput#fleet_arn #fleet_arn} => String
    #   * {Types::DescribeFleetLocationAttributesOutput#location_attributes #location_attributes} => Array&lt;Types::LocationAttributes&gt;
    #   * {Types::DescribeFleetLocationAttributesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_attributes({
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: ["LocationStringModel"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.location_attributes #=> Array
    #   resp.location_attributes[0].location_state.location #=> String
    #   resp.location_attributes[0].location_state.status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"
    #   resp.location_attributes[0].stopped_actions #=> Array
    #   resp.location_attributes[0].stopped_actions[0] #=> String, one of "AUTO_SCALING"
    #   resp.location_attributes[0].update_status #=> String, one of "PENDING_UPDATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationAttributes AWS API Documentation
    #
    # @overload describe_fleet_location_attributes(params = {})
    # @param [Hash] params ({})
    def describe_fleet_location_attributes(params = {}, options = {})
      req = build_request(:describe_fleet_location_attributes, params)
      req.send_request(options)
    end

    # Retrieves the resource capacity settings for a fleet location. The
    # data returned includes the current capacity (number of EC2 instances)
    # and some scaling settings for the requested fleet location. Use this
    # operation to retrieve capacity information for a fleet's remote
    # location or home Region (you can also retrieve home Region capacity by
    # calling `DescribeFleetCapacity`).
    #
    # To retrieve capacity data, identify a fleet and location.
    #
    # If successful, a `FleetCapacity` object is returned for the requested
    # fleet location.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # [GameLift metrics for fleets][2]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| DescribeFleetLocationAttributes \|
    # DescribeFleetLocationCapacity \| DescribeFleetLocationUtilization \|
    # DescribeFleetAttributes \| DescribeFleetCapacity \|
    # DescribeFleetUtilization \| UpdateFleetCapacity \| StopFleetActions \|
    # DeleteFleetLocations \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to request location capacity for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [required, String] :location
    #   The fleet location to retrieve capacity information for. Specify a
    #   location in the form of an AWS Region code, such as `us-west-2`.
    #
    # @return [Types::DescribeFleetLocationCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetLocationCapacityOutput#fleet_capacity #fleet_capacity} => Types::FleetCapacity
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_capacity({
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_capacity.fleet_id #=> String
    #   resp.fleet_capacity.fleet_arn #=> String
    #   resp.fleet_capacity.instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"
    #   resp.fleet_capacity.instance_counts.desired #=> Integer
    #   resp.fleet_capacity.instance_counts.minimum #=> Integer
    #   resp.fleet_capacity.instance_counts.maximum #=> Integer
    #   resp.fleet_capacity.instance_counts.pending #=> Integer
    #   resp.fleet_capacity.instance_counts.active #=> Integer
    #   resp.fleet_capacity.instance_counts.idle #=> Integer
    #   resp.fleet_capacity.instance_counts.terminating #=> Integer
    #   resp.fleet_capacity.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationCapacity AWS API Documentation
    #
    # @overload describe_fleet_location_capacity(params = {})
    # @param [Hash] params ({})
    def describe_fleet_location_capacity(params = {}, options = {})
      req = build_request(:describe_fleet_location_capacity, params)
      req.send_request(options)
    end

    # Retrieves current usage data for a fleet location. Utilization data
    # provides a snapshot of current game hosting activity at the requested
    # location. Use this operation to retrieve utilization information for a
    # fleet's remote location or home Region (you can also retrieve home
    # Region utilization by calling `DescribeFleetUtilization`).
    #
    # To retrieve utilization data, identify a fleet and location.
    #
    # If successful, a `FleetUtilization` object is returned for the
    # requested fleet location.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # [GameLift metrics for fleets][2]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| DescribeFleetLocationAttributes \|
    # DescribeFleetLocationCapacity \| DescribeFleetLocationUtilization \|
    # DescribeFleetAttributes \| DescribeFleetCapacity \|
    # DescribeFleetUtilization \| UpdateFleetCapacity \| StopFleetActions \|
    # DeleteFleetLocations \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to request location utilization for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [required, String] :location
    #   The fleet location to retrieve utilization information for. Specify a
    #   location in the form of an AWS Region code, such as `us-west-2`.
    #
    # @return [Types::DescribeFleetLocationUtilizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetLocationUtilizationOutput#fleet_utilization #fleet_utilization} => Types::FleetUtilization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_utilization({
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_utilization.fleet_id #=> String
    #   resp.fleet_utilization.fleet_arn #=> String
    #   resp.fleet_utilization.active_server_process_count #=> Integer
    #   resp.fleet_utilization.active_game_session_count #=> Integer
    #   resp.fleet_utilization.current_player_session_count #=> Integer
    #   resp.fleet_utilization.maximum_player_session_count #=> Integer
    #   resp.fleet_utilization.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationUtilization AWS API Documentation
    #
    # @overload describe_fleet_location_utilization(params = {})
    # @param [Hash] params ({})
    def describe_fleet_location_utilization(params = {}, options = {})
      req = build_request(:describe_fleet_location_utilization, params)
      req.send_request(options)
    end

    # Retrieves a fleet's inbound connection permissions. Connection
    # permissions specify the range of IP addresses and port settings that
    # incoming traffic can use to access server processes in the fleet. Game
    # sessions that are running on instances in the fleet must use
    # connections that fall in this range.
    #
    # This operation can be used in the following ways:
    #
    # * To retrieve the inbound connection permissions for a fleet, identify
    #   the fleet's unique identifier.
    #
    # * To check the status of recent updates to a fleet remote location,
    #   specify the fleet ID and a location. Port setting updates can take
    #   time to propagate across all locations.
    #
    # If successful, a set of IpPermission objects is returned for the
    # requested fleet ID. When a location is specified, a pending status is
    # included. If the requested fleet has been deleted, the result set is
    # empty.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # ListFleets \| DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetCapacity \| DescribeFleetEvents \|
    # DescribeFleetLocationAttributes \| DescribeFleetPortSettings \|
    # DescribeFleetUtilization \| DescribeRuntimeConfiguration \|
    # DescribeScalingPolicies \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to retrieve port settings for. You
    #   can use either the fleet ID or ARN value.
    #
    # @option params [String] :location
    #   A remote location to check for status of port setting updates. Use the
    #   AWS Region code format, such as `us-west-2`.
    #
    # @return [Types::DescribeFleetPortSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetPortSettingsOutput#fleet_id #fleet_id} => String
    #   * {Types::DescribeFleetPortSettingsOutput#fleet_arn #fleet_arn} => String
    #   * {Types::DescribeFleetPortSettingsOutput#inbound_permissions #inbound_permissions} => Array&lt;Types::IpPermission&gt;
    #   * {Types::DescribeFleetPortSettingsOutput#update_status #update_status} => String
    #   * {Types::DescribeFleetPortSettingsOutput#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_port_settings({
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.inbound_permissions #=> Array
    #   resp.inbound_permissions[0].from_port #=> Integer
    #   resp.inbound_permissions[0].to_port #=> Integer
    #   resp.inbound_permissions[0].ip_range #=> String
    #   resp.inbound_permissions[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.update_status #=> String, one of "PENDING_UPDATE"
    #   resp.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetPortSettings AWS API Documentation
    #
    # @overload describe_fleet_port_settings(params = {})
    # @param [Hash] params ({})
    def describe_fleet_port_settings(params = {}, options = {})
      req = build_request(:describe_fleet_port_settings, params)
      req.send_request(options)
    end

    # Retrieves utilization statistics for one or more fleets. Utilization
    # data provides a snapshot of how the fleet's hosting resources are
    # currently being used. For fleets with remote locations, this operation
    # retrieves data for the fleet's home Region only. See
    # DescribeFleetLocationUtilization to get utilization statistics for a
    # fleet's remote locations.
    #
    # This operation can be used in the following ways:
    #
    # * To get utilization data for one or more specific fleets, provide a
    #   list of fleet IDs or fleet ARNs.
    #
    # * To get utilization data for all fleets, do not provide a fleet
    #   identifier.
    #
    # When requesting multiple fleets, use the pagination parameters to
    # retrieve results as a set of sequential pages.
    #
    # If successful, a FleetUtilization object is returned for each
    # requested fleet ID, unless the fleet identifier is not found. Each
    # fleet utilization object includes a `Location` property, which is set
    # to the fleet's home Region.
    #
    # <note markdown="1"> Some API operations may limit the number of fleet IDs allowed in one
    # request. If a request exceeds this limit, the request fails and the
    # error message includes the maximum allowed.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [Setting up GameLift Fleets][1]
    #
    # [GameLift Metrics for Fleets][2]
    #
    # **Related actions**
    #
    # ListFleets \| DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetCapacity \| DescribeFleetEvents \|
    # DescribeFleetLocationAttributes \| DescribeFleetPortSettings \|
    # DescribeFleetUtilization \| DescribeRuntimeConfiguration \|
    # DescribeScalingPolicies \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [Array<String>] :fleet_ids
    #   A unique identifier for the fleet(s) to retrieve utilization data for.
    #   You can use either the fleet ID or ARN value. To retrieve attributes
    #   for all current fleets, do not include this parameter.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
    #
    # @return [Types::DescribeFleetUtilizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetUtilizationOutput#fleet_utilization #fleet_utilization} => Array&lt;Types::FleetUtilization&gt;
    #   * {Types::DescribeFleetUtilizationOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_utilization({
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_utilization #=> Array
    #   resp.fleet_utilization[0].fleet_id #=> String
    #   resp.fleet_utilization[0].fleet_arn #=> String
    #   resp.fleet_utilization[0].active_server_process_count #=> Integer
    #   resp.fleet_utilization[0].active_game_session_count #=> Integer
    #   resp.fleet_utilization[0].current_player_session_count #=> Integer
    #   resp.fleet_utilization[0].maximum_player_session_count #=> Integer
    #   resp.fleet_utilization[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetUtilization AWS API Documentation
    #
    # @overload describe_fleet_utilization(params = {})
    # @param [Hash] params ({})
    def describe_fleet_utilization(params = {}, options = {})
      req = build_request(:describe_fleet_utilization, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Retrieves information for a registered game server. Information
    # includes game server status, health check info, and the instance that
    # the game server is running on.
    #
    # To retrieve game server information, specify the game server ID. If
    # successful, the requested game server object is returned.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # RegisterGameServer \| ListGameServers \| ClaimGameServer \|
    # DescribeGameServer \| UpdateGameServer \| DeregisterGameServer \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running. Use either the GameServerGroup name or ARN value.
    #
    # @option params [required, String] :game_server_id
    #   A custom string that uniquely identifies the game server information
    #   to be retrieved.
    #
    # @return [Types::DescribeGameServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameServerOutput#game_server #game_server} => Types::GameServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server.game_server_group_name #=> String
    #   resp.game_server.game_server_group_arn #=> String
    #   resp.game_server.game_server_id #=> String
    #   resp.game_server.instance_id #=> String
    #   resp.game_server.connection_info #=> String
    #   resp.game_server.game_server_data #=> String
    #   resp.game_server.claim_status #=> String, one of "CLAIMED"
    #   resp.game_server.utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_server.registration_time #=> Time
    #   resp.game_server.last_claim_time #=> Time
    #   resp.game_server.last_health_check_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServer AWS API Documentation
    #
    # @overload describe_game_server(params = {})
    # @param [Hash] params ({})
    def describe_game_server(params = {}, options = {})
      req = build_request(:describe_game_server, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Retrieves information on a game server group. This operation returns
    # only properties related to GameLift FleetIQ. To view or update
    # properties for the corresponding Auto Scaling group, such as launch
    # template, auto scaling policies, and maximum/minimum group size,
    # access the Auto Scaling group directly.
    #
    # To get attributes for a game server group, provide a group name or ARN
    # value. If successful, a GameServerGroup object is returned.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # CreateGameServerGroup \| ListGameServerGroups \|
    # DescribeGameServerGroup \| UpdateGameServerGroup \|
    # DeleteGameServerGroup \| ResumeGameServerGroup \|
    # SuspendGameServerGroup \| DescribeGameServerInstances \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the
    #   GameServerGroup name or ARN value.
    #
    # @return [Types::DescribeGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerGroup AWS API Documentation
    #
    # @overload describe_game_server_group(params = {})
    # @param [Hash] params ({})
    def describe_game_server_group(params = {}, options = {})
      req = build_request(:describe_game_server_group, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Retrieves status information about the Amazon EC2 instances associated
    # with a GameLift FleetIQ game server group. Use this operation to
    # detect when instances are active or not available to host new game
    # servers. If you are looking for instance configuration information,
    # call DescribeGameServerGroup or access the corresponding Auto Scaling
    # group properties.
    #
    # To request status for all instances in the game server group, provide
    # a game server group ID only. To request status for specific instances,
    # provide the game server group ID and one or more instance IDs. Use the
    # pagination parameters to retrieve results in sequential segments. If
    # successful, a collection of `GameServerInstance` objects is returned.
    #
    # This operation is not designed to be called with every game server
    # claim request; this practice can cause you to exceed your API limit,
    # which results in errors. Instead, as a best practice, cache the
    # results and refresh your cache no more than once every 10 seconds.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # CreateGameServerGroup \| ListGameServerGroups \|
    # DescribeGameServerGroup \| UpdateGameServerGroup \|
    # DeleteGameServerGroup \| ResumeGameServerGroup \|
    # SuspendGameServerGroup \| DescribeGameServerInstances \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the
    #   GameServerGroup name or ARN value.
    #
    # @option params [Array<String>] :instance_ids
    #   The EC2 instance IDs that you want to retrieve status on. EC2 instance
    #   IDs use a 17-character format, for example: `i-1234567890abcdef0`. To
    #   retrieve all instances in the game server group, leave this parameter
    #   empty.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeGameServerInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameServerInstancesOutput#game_server_instances #game_server_instances} => Array&lt;Types::GameServerInstance&gt;
    #   * {Types::DescribeGameServerInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server_instances({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     instance_ids: ["GameServerInstanceId"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_instances #=> Array
    #   resp.game_server_instances[0].game_server_group_name #=> String
    #   resp.game_server_instances[0].game_server_group_arn #=> String
    #   resp.game_server_instances[0].instance_id #=> String
    #   resp.game_server_instances[0].instance_status #=> String, one of "ACTIVE", "DRAINING", "SPOT_TERMINATING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerInstances AWS API Documentation
    #
    # @overload describe_game_server_instances(params = {})
    # @param [Hash] params ({})
    def describe_game_server_instances(params = {}, options = {})
      req = build_request(:describe_game_server_instances, params)
      req.send_request(options)
    end

    # Retrieves additional game session properties, including the game
    # session protection policy in force, a set of one or more game sessions
    # in a specific fleet location. You can optionally filter the results by
    # current game session status. Alternatively, use SearchGameSessions to
    # request a set of active game sessions that are filtered by certain
    # criteria. To retrieve all game session properties, use
    # DescribeGameSessions.
    #
    # This operation can be used in the following ways:
    #
    # * To retrieve details for all game sessions that are currently running
    #   on all locations in a fleet, provide a fleet or alias ID, with an
    #   optional status filter. This approach returns details from the
    #   fleet's home Region and all remote locations.
    #
    # * To retrieve details for all game sessions that are currently running
    #   on a specific fleet location, provide a fleet or alias ID and a
    #   location name, with optional status filter. The location can be the
    #   fleet's home Region or any remote location.
    #
    # * To retrieve details for a specific game session, provide the game
    #   session ID. This approach looks for the game session ID in all
    #   fleets that reside in the AWS Region defined in the request.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, a `GameSessionDetail` object is returned for each game
    # session that matches the request.
    #
    # **Learn more**
    #
    # [Find a game session][1]
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet to retrieve all game sessions active
    #   on the fleet. You can use either the fleet ID or ARN value.
    #
    # @option params [String] :game_session_id
    #   A unique identifier for the game session to retrieve.
    #
    # @option params [String] :alias_id
    #   A unique identifier for the alias associated with the fleet to
    #   retrieve all game sessions for. You can use either the alias ID or ARN
    #   value.
    #
    # @option params [String] :location
    #   A fleet location to get game sessions for. You can specify a fleet's
    #   home Region or a remote location. Use the AWS Region code format, such
    #   as `us-west-2`.
    #
    # @option params [String] :status_filter
    #   Game session status to filter results on. Possible game session
    #   statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING` and
    #   `TERMINATING` (the last two are transitory).
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeGameSessionDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionDetailsOutput#game_session_details #game_session_details} => Array&lt;Types::GameSessionDetail&gt;
    #   * {Types::DescribeGameSessionDetailsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_details({
    #     fleet_id: "FleetIdOrArn",
    #     game_session_id: "ArnStringModel",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_details #=> Array
    #   resp.game_session_details[0].game_session.game_session_id #=> String
    #   resp.game_session_details[0].game_session.name #=> String
    #   resp.game_session_details[0].game_session.fleet_id #=> String
    #   resp.game_session_details[0].game_session.fleet_arn #=> String
    #   resp.game_session_details[0].game_session.creation_time #=> Time
    #   resp.game_session_details[0].game_session.termination_time #=> Time
    #   resp.game_session_details[0].game_session.current_player_session_count #=> Integer
    #   resp.game_session_details[0].game_session.maximum_player_session_count #=> Integer
    #   resp.game_session_details[0].game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session_details[0].game_session.status_reason #=> String, one of "INTERRUPTED"
    #   resp.game_session_details[0].game_session.game_properties #=> Array
    #   resp.game_session_details[0].game_session.game_properties[0].key #=> String
    #   resp.game_session_details[0].game_session.game_properties[0].value #=> String
    #   resp.game_session_details[0].game_session.ip_address #=> String
    #   resp.game_session_details[0].game_session.dns_name #=> String
    #   resp.game_session_details[0].game_session.port #=> Integer
    #   resp.game_session_details[0].game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session_details[0].game_session.creator_id #=> String
    #   resp.game_session_details[0].game_session.game_session_data #=> String
    #   resp.game_session_details[0].game_session.matchmaker_data #=> String
    #   resp.game_session_details[0].game_session.location #=> String
    #   resp.game_session_details[0].protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionDetails AWS API Documentation
    #
    # @overload describe_game_session_details(params = {})
    # @param [Hash] params ({})
    def describe_game_session_details(params = {}, options = {})
      req = build_request(:describe_game_session_details, params)
      req.send_request(options)
    end

    # Retrieves information, including current status, about a game session
    # placement request.
    #
    # To get game session placement details, specify the placement ID.
    #
    # If successful, a GameSessionPlacement object is returned.
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :placement_id
    #   A unique identifier for a game session placement to retrieve.
    #
    # @return [Types::DescribeGameSessionPlacementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionPlacementOutput#game_session_placement #game_session_placement} => Types::GameSessionPlacement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_placement({
    #     placement_id: "IdStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_placement.placement_id #=> String
    #   resp.game_session_placement.game_session_queue_name #=> String
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"
    #   resp.game_session_placement.game_properties #=> Array
    #   resp.game_session_placement.game_properties[0].key #=> String
    #   resp.game_session_placement.game_properties[0].value #=> String
    #   resp.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.game_session_placement.game_session_name #=> String
    #   resp.game_session_placement.game_session_id #=> String
    #   resp.game_session_placement.game_session_arn #=> String
    #   resp.game_session_placement.game_session_region #=> String
    #   resp.game_session_placement.player_latencies #=> Array
    #   resp.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.game_session_placement.start_time #=> Time
    #   resp.game_session_placement.end_time #=> Time
    #   resp.game_session_placement.ip_address #=> String
    #   resp.game_session_placement.dns_name #=> String
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.game_session_placement.game_session_data #=> String
    #   resp.game_session_placement.matchmaker_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionPlacement AWS API Documentation
    #
    # @overload describe_game_session_placement(params = {})
    # @param [Hash] params ({})
    def describe_game_session_placement(params = {}, options = {})
      req = build_request(:describe_game_session_placement, params)
      req.send_request(options)
    end

    # Retrieves the properties for one or more game session queues. When
    # requesting multiple queues, use the pagination parameters to retrieve
    # results as a set of sequential pages. If successful, a
    # GameSessionQueue object is returned for each requested queue. When
    # specifying a list of queues, objects are returned only for queues that
    # currently exist in the Region.
    #
    # **Learn more**
    #
    # [ View Your Queues][1]
    #
    # **Related actions**
    #
    # CreateGameSessionQueue \| DescribeGameSessionQueues \|
    # UpdateGameSessionQueue \| DeleteGameSessionQueue \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [Array<String>] :names
    #   A list of queue names to retrieve information for. You can use either
    #   the queue ID or ARN value. To request settings for all queues, leave
    #   this parameter empty.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. You can
    #   request up to 50 results.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeGameSessionQueuesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionQueuesOutput#game_session_queues #game_session_queues} => Array&lt;Types::GameSessionQueue&gt;
    #   * {Types::DescribeGameSessionQueuesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_queues({
    #     names: ["GameSessionQueueNameOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_queues #=> Array
    #   resp.game_session_queues[0].name #=> String
    #   resp.game_session_queues[0].game_session_queue_arn #=> String
    #   resp.game_session_queues[0].timeout_in_seconds #=> Integer
    #   resp.game_session_queues[0].player_latency_policies #=> Array
    #   resp.game_session_queues[0].player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.game_session_queues[0].player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.game_session_queues[0].destinations #=> Array
    #   resp.game_session_queues[0].destinations[0].destination_arn #=> String
    #   resp.game_session_queues[0].filter_configuration.allowed_locations #=> Array
    #   resp.game_session_queues[0].filter_configuration.allowed_locations[0] #=> String
    #   resp.game_session_queues[0].priority_configuration.priority_order #=> Array
    #   resp.game_session_queues[0].priority_configuration.priority_order[0] #=> String, one of "LATENCY", "COST", "DESTINATION", "LOCATION"
    #   resp.game_session_queues[0].priority_configuration.location_order #=> Array
    #   resp.game_session_queues[0].priority_configuration.location_order[0] #=> String
    #   resp.game_session_queues[0].custom_event_data #=> String
    #   resp.game_session_queues[0].notification_target #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionQueues AWS API Documentation
    #
    # @overload describe_game_session_queues(params = {})
    # @param [Hash] params ({})
    def describe_game_session_queues(params = {}, options = {})
      req = build_request(:describe_game_session_queues, params)
      req.send_request(options)
    end

    # Retrieves a set of one or more game sessions in a specific fleet
    # location. You can optionally filter the results by current game
    # session status. Alternatively, use SearchGameSessions to request a set
    # of active game sessions that are filtered by certain criteria. To
    # retrieve the protection policy for game sessions, use
    # DescribeGameSessionDetails.
    #
    # This operation can be used in the following ways:
    #
    # * To retrieve all game sessions that are currently running on all
    #   locations in a fleet, provide a fleet or alias ID, with an optional
    #   status filter. This approach returns all game sessions in the
    #   fleet's home Region and all remote locations.
    #
    # * To retrieve all game sessions that are currently running on a
    #   specific fleet location, provide a fleet or alias ID and a location
    #   name, with optional status filter. The location can be the fleet's
    #   home Region or any remote location.
    #
    # * To retrieve a specific game session, provide the game session ID.
    #   This approach looks for the game session ID in all fleets that
    #   reside in the AWS Region defined in the request.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, a `GameSession` object is returned for each game
    # session that matches the request.
    #
    # *Available in GameLift Local.*
    #
    # **Learn more**
    #
    # [Find a game session][1]
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet to retrieve game sessions for. You
    #   can use either the fleet ID or ARN value.
    #
    # @option params [String] :game_session_id
    #   A unique identifier for the game session to retrieve.
    #
    # @option params [String] :alias_id
    #   A unique identifier for the alias associated with the fleet to
    #   retrieve game sessions for. You can use either the alias ID or ARN
    #   value.
    #
    # @option params [String] :location
    #   A fleet location to get game session details for. You can specify a
    #   fleet's home Region or a remote location. Use the AWS Region code
    #   format, such as `us-west-2`.
    #
    # @option params [String] :status_filter
    #   Game session status to filter results on. You can filter on the
    #   following states: `ACTIVE`, `TERMINATED`, `ACTIVATING`, and
    #   `TERMINATING`. The last two are transitory and used for only very
    #   brief periods of time.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeGameSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionsOutput#game_sessions #game_sessions} => Array&lt;Types::GameSession&gt;
    #   * {Types::DescribeGameSessionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_sessions({
    #     fleet_id: "FleetIdOrArn",
    #     game_session_id: "ArnStringModel",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_sessions #=> Array
    #   resp.game_sessions[0].game_session_id #=> String
    #   resp.game_sessions[0].name #=> String
    #   resp.game_sessions[0].fleet_id #=> String
    #   resp.game_sessions[0].fleet_arn #=> String
    #   resp.game_sessions[0].creation_time #=> Time
    #   resp.game_sessions[0].termination_time #=> Time
    #   resp.game_sessions[0].current_player_session_count #=> Integer
    #   resp.game_sessions[0].maximum_player_session_count #=> Integer
    #   resp.game_sessions[0].status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_sessions[0].status_reason #=> String, one of "INTERRUPTED"
    #   resp.game_sessions[0].game_properties #=> Array
    #   resp.game_sessions[0].game_properties[0].key #=> String
    #   resp.game_sessions[0].game_properties[0].value #=> String
    #   resp.game_sessions[0].ip_address #=> String
    #   resp.game_sessions[0].dns_name #=> String
    #   resp.game_sessions[0].port #=> Integer
    #   resp.game_sessions[0].player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_sessions[0].creator_id #=> String
    #   resp.game_sessions[0].game_session_data #=> String
    #   resp.game_sessions[0].matchmaker_data #=> String
    #   resp.game_sessions[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessions AWS API Documentation
    #
    # @overload describe_game_sessions(params = {})
    # @param [Hash] params ({})
    def describe_game_sessions(params = {}, options = {})
      req = build_request(:describe_game_sessions, params)
      req.send_request(options)
    end

    # Retrieves information about a fleet's instances, including instance
    # IDs, connection data, and status.
    #
    # This operation can be used in the following ways:
    #
    # * To get information on all instances that are deployed to a fleet's
    #   home Region, provide the fleet ID.
    #
    # * To get information on all instances that are deployed to a fleet's
    #   remote location, provide the fleet ID and location name.
    #
    # * To get information on a specific instance in a fleet, provide the
    #   fleet ID and instance ID.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, an `Instance` object is returned for each requested
    # instance. Instances are not returned in any particular order.
    #
    # **Learn more**
    #
    # [Remotely Access Fleet Instances][1]
    #
    # [Debug Fleet Issues][2]
    #
    # **Related actions**
    #
    # DescribeInstances \| GetInstanceAccess \| DescribeEC2InstanceLimits \|
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to retrieve instance information
    #   for. You can use either the fleet ID or ARN value.
    #
    # @option params [String] :instance_id
    #   A unique identifier for an instance to retrieve. Specify an instance
    #   ID or leave blank to retrieve all instances in the fleet.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @option params [String] :location
    #   The name of a location to retrieve instance information for, in the
    #   form of an AWS Region code such as `us-west-2`.
    #
    # @return [Types::DescribeInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancesOutput#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::DescribeInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances({
    #     fleet_id: "FleetIdOrArn", # required
    #     instance_id: "InstanceId",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].fleet_id #=> String
    #   resp.instances[0].fleet_arn #=> String
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].ip_address #=> String
    #   resp.instances[0].dns_name #=> String
    #   resp.instances[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.instances[0].type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"
    #   resp.instances[0].status #=> String, one of "PENDING", "ACTIVE", "TERMINATING"
    #   resp.instances[0].creation_time #=> Time
    #   resp.instances[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeInstances AWS API Documentation
    #
    # @overload describe_instances(params = {})
    # @param [Hash] params ({})
    def describe_instances(params = {}, options = {})
      req = build_request(:describe_instances, params)
      req.send_request(options)
    end

    # Retrieves one or more matchmaking tickets. Use this operation to
    # retrieve ticket information, including--after a successful match is
    # made--connection information for the resulting new game session.
    #
    # To request matchmaking tickets, provide a list of up to 10 ticket IDs.
    # If the request is successful, a ticket object is returned for each
    # requested ID that currently exists.
    #
    # This operation is not designed to be continually called to track
    # matchmaking ticket status. This practice can cause you to exceed your
    # API limit, which results in errors. Instead, as a best practice, set
    # up an Amazon Simple Notification Service (SNS) to receive
    # notifications, and provide the topic ARN in the matchmaking
    # configuration. Continuously poling ticket status with
    # DescribeMatchmaking should only be used for games in development with
    # low matchmaking usage.
    #
    #
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a game client][1]
    #
    # [ Set Up FlexMatch event notification][2]
    #
    # **Related actions**
    #
    # StartMatchmaking \| DescribeMatchmaking \| StopMatchmaking \|
    # AcceptMatch \| StartMatchBackfill \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, Array<String>] :ticket_ids
    #   A unique identifier for a matchmaking ticket. You can include up to 10
    #   ID values.
    #
    # @return [Types::DescribeMatchmakingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMatchmakingOutput#ticket_list #ticket_list} => Array&lt;Types::MatchmakingTicket&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking({
    #     ticket_ids: ["MatchmakingIdStringModel"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ticket_list #=> Array
    #   resp.ticket_list[0].ticket_id #=> String
    #   resp.ticket_list[0].configuration_name #=> String
    #   resp.ticket_list[0].configuration_arn #=> String
    #   resp.ticket_list[0].status #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"
    #   resp.ticket_list[0].status_reason #=> String
    #   resp.ticket_list[0].status_message #=> String
    #   resp.ticket_list[0].start_time #=> Time
    #   resp.ticket_list[0].end_time #=> Time
    #   resp.ticket_list[0].players #=> Array
    #   resp.ticket_list[0].players[0].player_id #=> String
    #   resp.ticket_list[0].players[0].player_attributes #=> Hash
    #   resp.ticket_list[0].players[0].player_attributes["NonZeroAndMaxString"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.ticket_list[0].players[0].team #=> String
    #   resp.ticket_list[0].players[0].latency_in_ms #=> Hash
    #   resp.ticket_list[0].players[0].latency_in_ms["NonEmptyString"] #=> Integer
    #   resp.ticket_list[0].game_session_connection_info.game_session_arn #=> String
    #   resp.ticket_list[0].game_session_connection_info.ip_address #=> String
    #   resp.ticket_list[0].game_session_connection_info.dns_name #=> String
    #   resp.ticket_list[0].game_session_connection_info.port #=> Integer
    #   resp.ticket_list[0].game_session_connection_info.matched_player_sessions #=> Array
    #   resp.ticket_list[0].game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.ticket_list[0].game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.ticket_list[0].estimated_wait_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmaking AWS API Documentation
    #
    # @overload describe_matchmaking(params = {})
    # @param [Hash] params ({})
    def describe_matchmaking(params = {}, options = {})
      req = build_request(:describe_matchmaking, params)
      req.send_request(options)
    end

    # Retrieves the details of FlexMatch matchmaking configurations.
    #
    # This operation offers the following options: (1) retrieve all
    # matchmaking configurations, (2) retrieve configurations for a
    # specified list, or (3) retrieve all configurations that use a
    # specified rule set name. When requesting multiple items, use the
    # pagination parameters to retrieve results as a set of sequential
    # pages.
    #
    # If successful, a configuration is returned for each requested name.
    # When specifying a list of names, only configurations that currently
    # exist are returned.
    #
    # **Learn more**
    #
    # [ Setting up FlexMatch matchmakers][1]
    #
    # **Related actions**
    #
    # CreateMatchmakingConfiguration \| DescribeMatchmakingConfigurations \|
    # UpdateMatchmakingConfiguration \| DeleteMatchmakingConfiguration \|
    # CreateMatchmakingRuleSet \| DescribeMatchmakingRuleSets \|
    # ValidateMatchmakingRuleSet \| DeleteMatchmakingRuleSet \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/matchmaker-build.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [Array<String>] :names
    #   A unique identifier for the matchmaking configuration(s) to retrieve.
    #   You can use either the configuration name or ARN value. To request all
    #   existing configurations, leave this parameter empty.
    #
    # @option params [String] :rule_set_name
    #   A unique identifier for the matchmaking rule set. You can use either
    #   the rule set name or ARN value. Use this parameter to retrieve all
    #   matchmaking configurations that use this rule set.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is limited to 10.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeMatchmakingConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMatchmakingConfigurationsOutput#configurations #configurations} => Array&lt;Types::MatchmakingConfiguration&gt;
    #   * {Types::DescribeMatchmakingConfigurationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking_configurations({
    #     names: ["MatchmakingConfigurationName"],
    #     rule_set_name: "MatchmakingRuleSetName",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0].name #=> String
    #   resp.configurations[0].configuration_arn #=> String
    #   resp.configurations[0].description #=> String
    #   resp.configurations[0].game_session_queue_arns #=> Array
    #   resp.configurations[0].game_session_queue_arns[0] #=> String
    #   resp.configurations[0].request_timeout_seconds #=> Integer
    #   resp.configurations[0].acceptance_timeout_seconds #=> Integer
    #   resp.configurations[0].acceptance_required #=> Boolean
    #   resp.configurations[0].rule_set_name #=> String
    #   resp.configurations[0].rule_set_arn #=> String
    #   resp.configurations[0].notification_target #=> String
    #   resp.configurations[0].additional_player_count #=> Integer
    #   resp.configurations[0].custom_event_data #=> String
    #   resp.configurations[0].creation_time #=> Time
    #   resp.configurations[0].game_properties #=> Array
    #   resp.configurations[0].game_properties[0].key #=> String
    #   resp.configurations[0].game_properties[0].value #=> String
    #   resp.configurations[0].game_session_data #=> String
    #   resp.configurations[0].backfill_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.configurations[0].flex_match_mode #=> String, one of "STANDALONE", "WITH_QUEUE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingConfigurations AWS API Documentation
    #
    # @overload describe_matchmaking_configurations(params = {})
    # @param [Hash] params ({})
    def describe_matchmaking_configurations(params = {}, options = {})
      req = build_request(:describe_matchmaking_configurations, params)
      req.send_request(options)
    end

    # Retrieves the details for FlexMatch matchmaking rule sets. You can
    # request all existing rule sets for the Region, or provide a list of
    # one or more rule set names. When requesting multiple items, use the
    # pagination parameters to retrieve results as a set of sequential
    # pages. If successful, a rule set is returned for each requested name.
    #
    # **Learn more**
    #
    # * [Build a rule set][1]
    #
    # ^
    #
    # **Related actions**
    #
    # CreateMatchmakingConfiguration \| DescribeMatchmakingConfigurations \|
    # UpdateMatchmakingConfiguration \| DeleteMatchmakingConfiguration \|
    # CreateMatchmakingRuleSet \| DescribeMatchmakingRuleSets \|
    # ValidateMatchmakingRuleSet \| DeleteMatchmakingRuleSet \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [Array<String>] :names
    #   A list of one or more matchmaking rule set names to retrieve details
    #   for. (Note: The rule set name is different from the optional "name"
    #   field in the rule set body.) You can use either the rule set name or
    #   ARN value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeMatchmakingRuleSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMatchmakingRuleSetsOutput#rule_sets #rule_sets} => Array&lt;Types::MatchmakingRuleSet&gt;
    #   * {Types::DescribeMatchmakingRuleSetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking_rule_sets({
    #     names: ["MatchmakingRuleSetName"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_sets #=> Array
    #   resp.rule_sets[0].rule_set_name #=> String
    #   resp.rule_sets[0].rule_set_arn #=> String
    #   resp.rule_sets[0].rule_set_body #=> String
    #   resp.rule_sets[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingRuleSets AWS API Documentation
    #
    # @overload describe_matchmaking_rule_sets(params = {})
    # @param [Hash] params ({})
    def describe_matchmaking_rule_sets(params = {}, options = {})
      req = build_request(:describe_matchmaking_rule_sets, params)
      req.send_request(options)
    end

    # Retrieves properties for one or more player sessions.
    #
    # This action can be used in the following ways:
    #
    # * To retrieve a specific player session, provide the player session ID
    #   only.
    #
    # * To retrieve all player sessions in a game session, provide the game
    #   session ID only.
    #
    # * To retrieve all player sessions for a specific player, provide a
    #   player ID only.
    #
    # To request player sessions, specify either a player session ID, game
    # session ID, or player ID. You can filter this request by player
    # session status. Use the pagination parameters to retrieve results as a
    # set of sequential pages.
    #
    # If successful, a `PlayerSession` object is returned for each session
    # that matches the request.
    #
    # *Available in Amazon GameLift Local.*
    #
    # **Related actions**
    #
    # CreatePlayerSession \| CreatePlayerSessions \| DescribePlayerSessions
    # \| StartGameSessionPlacement \| DescribeGameSessionPlacement \| [All
    # APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :game_session_id
    #   A unique identifier for the game session to retrieve player sessions
    #   for.
    #
    # @option params [String] :player_id
    #   A unique identifier for a player to retrieve player sessions for.
    #
    # @option params [String] :player_session_id
    #   A unique identifier for a player session to retrieve.
    #
    # @option params [String] :player_session_status_filter
    #   Player session status to filter results on.
    #
    #   Possible player session statuses include the following:
    #
    #   * **RESERVED** -- The player session request has been received, but
    #     the player has not yet connected to the server process and/or been
    #     validated.
    #
    #   * **ACTIVE** -- The player has been validated by the server process
    #     and is currently connected.
    #
    #   * **COMPLETED** -- The player connection has been dropped.
    #
    #   * **TIMEDOUT** -- A player session request was received, but the
    #     player did not connect and/or was not validated within the timeout
    #     limit (60 seconds).
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. If a player
    #   session ID is specified, this parameter is ignored.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value. If a player session ID is specified, this parameter is
    #   ignored.
    #
    # @return [Types::DescribePlayerSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePlayerSessionsOutput#player_sessions #player_sessions} => Array&lt;Types::PlayerSession&gt;
    #   * {Types::DescribePlayerSessionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_player_sessions({
    #     game_session_id: "ArnStringModel",
    #     player_id: "NonZeroAndMaxString",
    #     player_session_id: "PlayerSessionId",
    #     player_session_status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.player_sessions #=> Array
    #   resp.player_sessions[0].player_session_id #=> String
    #   resp.player_sessions[0].player_id #=> String
    #   resp.player_sessions[0].game_session_id #=> String
    #   resp.player_sessions[0].fleet_id #=> String
    #   resp.player_sessions[0].fleet_arn #=> String
    #   resp.player_sessions[0].creation_time #=> Time
    #   resp.player_sessions[0].termination_time #=> Time
    #   resp.player_sessions[0].status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_sessions[0].ip_address #=> String
    #   resp.player_sessions[0].dns_name #=> String
    #   resp.player_sessions[0].port #=> Integer
    #   resp.player_sessions[0].player_data #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribePlayerSessions AWS API Documentation
    #
    # @overload describe_player_sessions(params = {})
    # @param [Hash] params ({})
    def describe_player_sessions(params = {}, options = {})
      req = build_request(:describe_player_sessions, params)
      req.send_request(options)
    end

    # Retrieves a fleet's runtime configuration settings. The runtime
    # configuration tells GameLift which server processes to run (and how)
    # on each instance in the fleet.
    #
    # To get the runtime configuration that is currently in forces for a
    # fleet, provide the fleet ID.
    #
    # If successful, a RuntimeConfiguration object is returned for the
    # requested fleet. If the requested fleet has been deleted, the result
    # set is empty.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # [Running multiple processes on a fleet][2]
    #
    # **Related actions**
    #
    # ListFleets \| DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetCapacity \| DescribeFleetEvents \|
    # DescribeFleetLocationAttributes \| DescribeFleetPortSettings \|
    # DescribeFleetUtilization \| DescribeRuntimeConfiguration \|
    # DescribeScalingPolicies \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to get the runtime configuration
    #   for. You can use either the fleet ID or ARN value.
    #
    # @return [Types::DescribeRuntimeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuntimeConfigurationOutput#runtime_configuration #runtime_configuration} => Types::RuntimeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_runtime_configuration({
    #     fleet_id: "FleetIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_configuration.server_processes #=> Array
    #   resp.runtime_configuration.server_processes[0].launch_path #=> String
    #   resp.runtime_configuration.server_processes[0].parameters #=> String
    #   resp.runtime_configuration.server_processes[0].concurrent_executions #=> Integer
    #   resp.runtime_configuration.max_concurrent_game_session_activations #=> Integer
    #   resp.runtime_configuration.game_session_activation_timeout_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeRuntimeConfiguration AWS API Documentation
    #
    # @overload describe_runtime_configuration(params = {})
    # @param [Hash] params ({})
    def describe_runtime_configuration(params = {}, options = {})
      req = build_request(:describe_runtime_configuration, params)
      req.send_request(options)
    end

    # Retrieves all scaling policies applied to a fleet.
    #
    # To get a fleet's scaling policies, specify the fleet ID. You can
    # filter this request by policy status, such as to retrieve only active
    # scaling policies. Use the pagination parameters to retrieve results as
    # a set of sequential pages. If successful, set of ScalingPolicy objects
    # is returned for the fleet.
    #
    # A fleet may have all of its scaling policies suspended
    # (StopFleetActions). This operation does not affect the status of the
    # scaling policies, which remains ACTIVE. To see whether a fleet's
    # scaling policies are in force or suspended, call
    # DescribeFleetAttributes and check the stopped actions.
    #
    # **Related actions**
    #
    # DescribeFleetCapacity \| UpdateFleetCapacity \|
    # DescribeEC2InstanceLimits \| PutScalingPolicy \|
    # DescribeScalingPolicies \| DeleteScalingPolicy \| StopFleetActions \|
    # StartFleetActions \| [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to retrieve scaling policies for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [String] :status_filter
    #   Scaling policy status to filter results on. A scaling policy is only
    #   in force when in an `ACTIVE` status.
    #
    #   * **ACTIVE** -- The scaling policy is currently in force.
    #
    #   * **UPDATEREQUESTED** -- A request to update the scaling policy has
    #     been received.
    #
    #   * **UPDATING** -- A change is being made to the scaling policy.
    #
    #   * **DELETEREQUESTED** -- A request to delete the scaling policy has
    #     been received.
    #
    #   * **DELETING** -- The scaling policy is being deleted.
    #
    #   * **DELETED** -- The scaling policy has been deleted.
    #
    #   * **ERROR** -- An error occurred in creating the policy. It should be
    #     removed and recreated.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @option params [String] :location
    #   CONTENT TODO
    #
    # @return [Types::DescribeScalingPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingPoliciesOutput#scaling_policies #scaling_policies} => Array&lt;Types::ScalingPolicy&gt;
    #   * {Types::DescribeScalingPoliciesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_policies({
    #     fleet_id: "FleetIdOrArn", # required
    #     status_filter: "ACTIVE", # accepts ACTIVE, UPDATE_REQUESTED, UPDATING, DELETE_REQUESTED, DELETING, DELETED, ERROR
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_policies #=> Array
    #   resp.scaling_policies[0].fleet_id #=> String
    #   resp.scaling_policies[0].fleet_arn #=> String
    #   resp.scaling_policies[0].name #=> String
    #   resp.scaling_policies[0].status #=> String, one of "ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"
    #   resp.scaling_policies[0].scaling_adjustment #=> Integer
    #   resp.scaling_policies[0].scaling_adjustment_type #=> String, one of "ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"
    #   resp.scaling_policies[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.scaling_policies[0].threshold #=> Float
    #   resp.scaling_policies[0].evaluation_periods #=> Integer
    #   resp.scaling_policies[0].metric_name #=> String, one of "ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime"
    #   resp.scaling_policies[0].policy_type #=> String, one of "RuleBased", "TargetBased"
    #   resp.scaling_policies[0].target_configuration.target_value #=> Float
    #   resp.scaling_policies[0].update_status #=> String, one of "PENDING_UPDATE"
    #   resp.scaling_policies[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScalingPolicies AWS API Documentation
    #
    # @overload describe_scaling_policies(params = {})
    # @param [Hash] params ({})
    def describe_scaling_policies(params = {}, options = {})
      req = build_request(:describe_scaling_policies, params)
      req.send_request(options)
    end

    # Retrieves properties for a Realtime script.
    #
    # To request a script record, specify the script ID. If successful, an
    # object containing the script properties is returned.
    #
    # **Learn more**
    #
    # [Amazon GameLift Realtime Servers][1]
    #
    # **Related actions**
    #
    # CreateScript \| ListScripts \| DescribeScript \| UpdateScript \|
    # DeleteScript \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :script_id
    #   A unique identifier for the Realtime script to retrieve properties
    #   for. You can use either the script ID or ARN value.
    #
    # @return [Types::DescribeScriptOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScriptOutput#script #script} => Types::Script
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_script({
    #     script_id: "ScriptIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.script.script_id #=> String
    #   resp.script.script_arn #=> String
    #   resp.script.name #=> String
    #   resp.script.version #=> String
    #   resp.script.size_on_disk #=> Integer
    #   resp.script.creation_time #=> Time
    #   resp.script.storage_location.bucket #=> String
    #   resp.script.storage_location.key #=> String
    #   resp.script.storage_location.role_arn #=> String
    #   resp.script.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScript AWS API Documentation
    #
    # @overload describe_script(params = {})
    # @param [Hash] params ({})
    def describe_script(params = {}, options = {})
      req = build_request(:describe_script, params)
      req.send_request(options)
    end

    # Retrieves valid VPC peering authorizations that are pending for the
    # AWS account. This operation returns all VPC peering authorizations and
    # requests for peering. This includes those initiated and received by
    # this account.
    #
    # **Related actions**
    #
    # CreateVpcPeeringAuthorization \| DescribeVpcPeeringAuthorizations \|
    # DeleteVpcPeeringAuthorization \| CreateVpcPeeringConnection \|
    # DescribeVpcPeeringConnections \| DeleteVpcPeeringConnection \| [All
    # APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @return [Types::DescribeVpcPeeringAuthorizationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcPeeringAuthorizationsOutput#vpc_peering_authorizations #vpc_peering_authorizations} => Array&lt;Types::VpcPeeringAuthorization&gt;
    #
    # @example Response structure
    #
    #   resp.vpc_peering_authorizations #=> Array
    #   resp.vpc_peering_authorizations[0].game_lift_aws_account_id #=> String
    #   resp.vpc_peering_authorizations[0].peer_vpc_aws_account_id #=> String
    #   resp.vpc_peering_authorizations[0].peer_vpc_id #=> String
    #   resp.vpc_peering_authorizations[0].creation_time #=> Time
    #   resp.vpc_peering_authorizations[0].expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringAuthorizations AWS API Documentation
    #
    # @overload describe_vpc_peering_authorizations(params = {})
    # @param [Hash] params ({})
    def describe_vpc_peering_authorizations(params = {}, options = {})
      req = build_request(:describe_vpc_peering_authorizations, params)
      req.send_request(options)
    end

    # Retrieves information on VPC peering connections. Use this operation
    # to get peering information for all fleets or for one specific fleet
    # ID.
    #
    # To retrieve connection information, call this operation from the AWS
    # account that is used to manage the Amazon GameLift fleets. Specify a
    # fleet ID or leave the parameter empty to retrieve all connection
    # records. If successful, the retrieved information includes both active
    # and pending connections. Active connections identify the IpV4 CIDR
    # block that the VPC uses to connect.
    #
    # **Related actions**
    #
    # CreateVpcPeeringAuthorization \| DescribeVpcPeeringAuthorizations \|
    # DeleteVpcPeeringAuthorization \| CreateVpcPeeringConnection \|
    # DescribeVpcPeeringConnections \| DeleteVpcPeeringConnection \| [All
    # APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet. You can use either the fleet ID or
    #   ARN value.
    #
    # @return [Types::DescribeVpcPeeringConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcPeeringConnectionsOutput#vpc_peering_connections #vpc_peering_connections} => Array&lt;Types::VpcPeeringConnection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_peering_connections({
    #     fleet_id: "FleetId",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_peering_connections #=> Array
    #   resp.vpc_peering_connections[0].fleet_id #=> String
    #   resp.vpc_peering_connections[0].fleet_arn #=> String
    #   resp.vpc_peering_connections[0].ip_v4_cidr_block #=> String
    #   resp.vpc_peering_connections[0].vpc_peering_connection_id #=> String
    #   resp.vpc_peering_connections[0].status.code #=> String
    #   resp.vpc_peering_connections[0].status.message #=> String
    #   resp.vpc_peering_connections[0].peer_vpc_id #=> String
    #   resp.vpc_peering_connections[0].game_lift_vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringConnections AWS API Documentation
    #
    # @overload describe_vpc_peering_connections(params = {})
    # @param [Hash] params ({})
    def describe_vpc_peering_connections(params = {}, options = {})
      req = build_request(:describe_vpc_peering_connections, params)
      req.send_request(options)
    end

    # Retrieves the location of stored game session logs for a specified
    # game session. When a game session is terminated, GameLift
    # automatically stores the logs in Amazon S3 and retains them for 14
    # days. Use this URL to download the logs.
    #
    # <note markdown="1"> See the [AWS Service Limits][1] page for maximum log file sizes. Log
    # files that exceed this limit are not saved.
    #
    #  </note>
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to get logs for.
    #
    # @return [Types::GetGameSessionLogUrlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGameSessionLogUrlOutput#pre_signed_url #pre_signed_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_game_session_log_url({
    #     game_session_id: "ArnStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pre_signed_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetGameSessionLogUrl AWS API Documentation
    #
    # @overload get_game_session_log_url(params = {})
    # @param [Hash] params ({})
    def get_game_session_log_url(params = {}, options = {})
      req = build_request(:get_game_session_log_url, params)
      req.send_request(options)
    end

    # Requests remote access to a fleet instance. Remote access is useful
    # for debugging, gathering benchmarking data, or observing activity in
    # real time.
    #
    # To remotely access an instance, you need credentials that match the
    # operating system of the instance. For a Windows instance, GameLift
    # returns a user name and password as strings for use with a Windows
    # Remote Desktop client. For a Linux instance, GameLift returns a user
    # name and RSA private key, also as strings, for use with an SSH client.
    # The private key must be saved in the proper format to a `.pem` file
    # before using. If you're making this request using the AWS CLI, saving
    # the secret can be handled as part of the `GetInstanceAccess` request,
    # as shown in one of the examples for this operation.
    #
    # To request access to a specific instance, specify the IDs of both the
    # instance and the fleet it belongs to. You can retrieve a fleet's
    # instance IDs by calling DescribeInstances. If successful, an
    # InstanceAccess object is returned that contains the instance's IP
    # address and a set of credentials.
    #
    # **Learn more**
    #
    # [Remotely Access Fleet Instances][1]
    #
    # [Debug Fleet Issues][2]
    #
    # **Related actions**
    #
    # DescribeInstances \| GetInstanceAccess \| DescribeEC2InstanceLimits \|
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet that contains the instance you want
    #   access to. You can use either the fleet ID or ARN value. The fleet can
    #   be in any of the following statuses: `ACTIVATING`, `ACTIVE`, or
    #   `ERROR`. Fleets with an `ERROR` status may be accessible for a short
    #   time before they are deleted.
    #
    # @option params [required, String] :instance_id
    #   A unique identifier for the instance you want to get access to. You
    #   can access an instance in any status.
    #
    # @return [Types::GetInstanceAccessOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceAccessOutput#instance_access #instance_access} => Types::InstanceAccess
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_access({
    #     fleet_id: "FleetIdOrArn", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_access.fleet_id #=> String
    #   resp.instance_access.instance_id #=> String
    #   resp.instance_access.ip_address #=> String
    #   resp.instance_access.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.instance_access.credentials.user_name #=> String
    #   resp.instance_access.credentials.secret #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetInstanceAccess AWS API Documentation
    #
    # @overload get_instance_access(params = {})
    # @param [Hash] params ({})
    def get_instance_access(params = {}, options = {})
      req = build_request(:get_instance_access, params)
      req.send_request(options)
    end

    # Retrieves all aliases for this AWS account. You can filter the result
    # set by alias name and/or routing strategy type. Use the pagination
    # parameters to retrieve results in sequential pages.
    #
    # <note markdown="1"> Returned aliases are not listed in any particular order.
    #
    #  </note>
    #
    # **Related actions**
    #
    # CreateAlias \| ListAliases \| DescribeAlias \| UpdateAlias \|
    # DeleteAlias \| ResolveAlias \| [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :routing_strategy_type
    #   The routing type to filter results on. Use this parameter to retrieve
    #   only aliases with a certain routing type. To retrieve all aliases,
    #   leave this parameter empty.
    #
    #   Possible routing types include the following:
    #
    #   * **SIMPLE** -- The alias resolves to one specific fleet. Use this
    #     type when routing to active fleets.
    #
    #   * **TERMINAL** -- The alias does not resolve to a fleet but instead
    #     can be used to display a message to the user. A terminal alias
    #     throws a TerminalRoutingStrategyException with the RoutingStrategy
    #     message embedded.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListAliasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesOutput#aliases #aliases} => Array&lt;Types::Alias&gt;
    #   * {Types::ListAliasesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     routing_strategy_type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #     name: "NonEmptyString",
    #     limit: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0].alias_id #=> String
    #   resp.aliases[0].name #=> String
    #   resp.aliases[0].alias_arn #=> String
    #   resp.aliases[0].description #=> String
    #   resp.aliases[0].routing_strategy.type #=> String, one of "SIMPLE", "TERMINAL"
    #   resp.aliases[0].routing_strategy.fleet_id #=> String
    #   resp.aliases[0].routing_strategy.message #=> String
    #   resp.aliases[0].creation_time #=> Time
    #   resp.aliases[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Retrieves build resources for all builds associated with the AWS
    # account in use. You can limit results to builds that are in a specific
    # status by using the `Status` parameter. Use the pagination parameters
    # to retrieve results in a set of sequential pages.
    #
    # <note markdown="1"> Build resources are not listed in any particular order.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Upload a Custom Server Build][1]
    #
    # **Related actions**
    #
    # CreateBuild \| ListBuilds \| DescribeBuild \| UpdateBuild \|
    # DeleteBuild \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :status
    #   Build status to filter results by. To retrieve all builds, leave this
    #   parameter empty.
    #
    #   Possible build statuses include the following:
    #
    #   * **INITIALIZED** -- A new build has been defined, but no files have
    #     been uploaded. You cannot create fleets for builds that are in this
    #     status. When a build is successfully created, the build status is
    #     set to this value.
    #
    #   * **READY** -- The game build has been successfully uploaded. You can
    #     now create new fleets for this build.
    #
    #   * **FAILED** -- The game build upload failed. You cannot create new
    #     fleets for this build.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsOutput#builds #builds} => Array&lt;Types::Build&gt;
    #   * {Types::ListBuildsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds({
    #     status: "INITIALIZED", # accepts INITIALIZED, READY, FAILED
    #     limit: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.builds #=> Array
    #   resp.builds[0].build_id #=> String
    #   resp.builds[0].build_arn #=> String
    #   resp.builds[0].name #=> String
    #   resp.builds[0].version #=> String
    #   resp.builds[0].status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.builds[0].size_on_disk #=> Integer
    #   resp.builds[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.builds[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListBuilds AWS API Documentation
    #
    # @overload list_builds(params = {})
    # @param [Hash] params ({})
    def list_builds(params = {}, options = {})
      req = build_request(:list_builds, params)
      req.send_request(options)
    end

    # Retrieves a collection of fleet resources in an AWS Region. You can
    # call this operation to get fleets in a previously selected default
    # Region (see
    # [https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-region.html][1]or
    # specify a Region in your request. You can filter the result set to
    # find only those fleets that are deployed with a specific build or
    # script. For fleets that have multiple locations, this operation
    # retrieves fleets based on their home Region only.
    #
    # This operation can be used in the following ways:
    #
    # * To get a list of all fleets in a Region, don't provide a build or
    #   script identifier.
    #
    # * To get a list of all fleets where a specific custom game build is
    #   deployed, provide the build ID.
    #
    # * To get a list of all Realtime Servers fleets with a specific
    #   configuration script, provide the script ID.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, a list of fleet IDs that match the request parameters
    # is returned. A NextToken value is also returned if there are more
    # result pages to retrieve.
    #
    # <note markdown="1"> Fleet resources are not listed in a particular order.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][2]
    #
    # **Related actions**
    #
    # CreateFleet \| UpdateFleetCapacity \| PutScalingPolicy \|
    # DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetLocationAttributes \| UpdateFleetAttributes \|
    # StopFleetActions \| DeleteFleet \| [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-region.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :build_id
    #   A unique identifier for the build to request fleets for. Use this
    #   parameter to return only fleets using a specified build. Use either
    #   the build ID or ARN value.
    #
    # @option params [String] :script_id
    #   A unique identifier for the Realtime script to request fleets for. Use
    #   this parameter to return only fleets using a specified script. Use
    #   either the script ID or ARN value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListFleetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsOutput#fleet_ids #fleet_ids} => Array&lt;String&gt;
    #   * {Types::ListFleetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets({
    #     build_id: "BuildIdOrArn",
    #     script_id: "ScriptIdOrArn",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_ids #=> Array
    #   resp.fleet_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleets AWS API Documentation
    #
    # @overload list_fleets(params = {})
    # @param [Hash] params ({})
    def list_fleets(params = {}, options = {})
      req = build_request(:list_fleets, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Retrieves information on all game servers groups that exist in the
    # current AWS account for the selected Region. Use the pagination
    # parameters to retrieve results in a set of sequential segments.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # CreateGameServerGroup \| ListGameServerGroups \|
    # DescribeGameServerGroup \| UpdateGameServerGroup \|
    # DeleteGameServerGroup \| ResumeGameServerGroup \|
    # SuspendGameServerGroup \| DescribeGameServerInstances \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListGameServerGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGameServerGroupsOutput#game_server_groups #game_server_groups} => Array&lt;Types::GameServerGroup&gt;
    #   * {Types::ListGameServerGroupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_game_server_groups({
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_groups #=> Array
    #   resp.game_server_groups[0].game_server_group_name #=> String
    #   resp.game_server_groups[0].game_server_group_arn #=> String
    #   resp.game_server_groups[0].role_arn #=> String
    #   resp.game_server_groups[0].instance_definitions #=> Array
    #   resp.game_server_groups[0].instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_groups[0].instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_groups[0].balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_groups[0].game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_groups[0].auto_scaling_group_arn #=> String
    #   resp.game_server_groups[0].status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_groups[0].status_reason #=> String
    #   resp.game_server_groups[0].suspended_actions #=> Array
    #   resp.game_server_groups[0].suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_groups[0].creation_time #=> Time
    #   resp.game_server_groups[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListGameServerGroups AWS API Documentation
    #
    # @overload list_game_server_groups(params = {})
    # @param [Hash] params ({})
    def list_game_server_groups(params = {}, options = {})
      req = build_request(:list_game_server_groups, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Retrieves information on all game servers that are currently active in
    # a specified game server group. You can opt to sort the list by game
    # server age. Use the pagination parameters to retrieve results in a set
    # of sequential segments.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # RegisterGameServer \| ListGameServers \| ClaimGameServer \|
    # DescribeGameServer \| UpdateGameServer \| DeregisterGameServer \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   An identifier for the game server group to retrieve a list of game
    #   servers from. Use either the GameServerGroup name or ARN value.
    #
    # @option params [String] :sort_order
    #   Indicates how to sort the returned data based on game server
    #   registration timestamp. Use `ASCENDING` to retrieve oldest game
    #   servers first, or use `DESCENDING` to retrieve newest game servers
    #   first. If this parameter is left empty, game servers are returned in
    #   no particular order.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListGameServersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGameServersOutput#game_servers #game_servers} => Array&lt;Types::GameServer&gt;
    #   * {Types::ListGameServersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_game_servers({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_servers #=> Array
    #   resp.game_servers[0].game_server_group_name #=> String
    #   resp.game_servers[0].game_server_group_arn #=> String
    #   resp.game_servers[0].game_server_id #=> String
    #   resp.game_servers[0].instance_id #=> String
    #   resp.game_servers[0].connection_info #=> String
    #   resp.game_servers[0].game_server_data #=> String
    #   resp.game_servers[0].claim_status #=> String, one of "CLAIMED"
    #   resp.game_servers[0].utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_servers[0].registration_time #=> Time
    #   resp.game_servers[0].last_claim_time #=> Time
    #   resp.game_servers[0].last_health_check_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListGameServers AWS API Documentation
    #
    # @overload list_game_servers(params = {})
    # @param [Hash] params ({})
    def list_game_servers(params = {}, options = {})
      req = build_request(:list_game_servers, params)
      req.send_request(options)
    end

    # Retrieves script records for all Realtime scripts that are associated
    # with the AWS account in use.
    #
    # **Learn more**
    #
    # [Amazon GameLift Realtime Servers][1]
    #
    # **Related actions**
    #
    # CreateScript \| ListScripts \| DescribeScript \| UpdateScript \|
    # DeleteScript \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListScriptsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScriptsOutput#scripts #scripts} => Array&lt;Types::Script&gt;
    #   * {Types::ListScriptsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scripts({
    #     limit: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scripts #=> Array
    #   resp.scripts[0].script_id #=> String
    #   resp.scripts[0].script_arn #=> String
    #   resp.scripts[0].name #=> String
    #   resp.scripts[0].version #=> String
    #   resp.scripts[0].size_on_disk #=> Integer
    #   resp.scripts[0].creation_time #=> Time
    #   resp.scripts[0].storage_location.bucket #=> String
    #   resp.scripts[0].storage_location.key #=> String
    #   resp.scripts[0].storage_location.role_arn #=> String
    #   resp.scripts[0].storage_location.object_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListScripts AWS API Documentation
    #
    # @overload list_scripts(params = {})
    # @param [Hash] params ({})
    def list_scripts(params = {}, options = {})
      req = build_request(:list_scripts, params)
      req.send_request(options)
    end

    # Retrieves all tags that are assigned to a GameLift resource. Resource
    # tags are used to organize AWS resources for a range of purposes. This
    # operation handles the permissions necessary to manage tags for the
    # following GameLift resource types:
    #
    # * Build
    #
    # * Script
    #
    # * Fleet
    #
    # * Alias
    #
    # * GameSessionQueue
    #
    # * MatchmakingConfiguration
    #
    # * MatchmakingRuleSet
    #
    # To list tags for a resource, specify the unique ARN value for the
    # resource.
    #
    # **Learn more**
    #
    # [Tagging AWS Resources][1] in the *AWS General Reference*
    #
    # [ AWS Tagging Strategies][2]
    #
    # **Related actions**
    #
    # TagResource \| UntagResource \| ListTagsForResource \| [All APIs by
    # task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to and uniquely
    #   identifies the GameLift resource that you want to retrieve tags for.
    #   GameLift resource ARNs are included in the data object for the
    #   resource, which can be retrieved by calling a List or Describe
    #   operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates a scaling policy for a fleet. Scaling policies are
    # used to automatically scale a fleet's hosting capacity to meet player
    # demand. An active scaling policy instructs Amazon GameLift to track a
    # fleet metric and automatically change the fleet's capacity when a
    # certain threshold is reached. There are two types of scaling policies:
    # target-based and rule-based. Use a target-based policy to quickly and
    # efficiently manage fleet scaling; this option is the most commonly
    # used. Use rule-based policies when you need to exert fine-grained
    # control over auto-scaling.
    #
    # Fleets can have multiple scaling policies of each type in force at the
    # same time; you can have one target-based policy, one or multiple
    # rule-based scaling policies, or both. We recommend caution, however,
    # because multiple auto-scaling policies can have unintended
    # consequences.
    #
    # You can temporarily suspend all scaling policies for a fleet by
    # calling StopFleetActions with the fleet action AUTO\_SCALING. To
    # resume scaling policies, call StartFleetActions with the same fleet
    # action. To stop just one scaling policy--or to permanently remove it,
    # you must delete the policy with DeleteScalingPolicy.
    #
    # Learn more about how to work with auto-scaling in [Set Up Fleet
    # Automatic Scaling][1].
    #
    # **Target-based policy**
    #
    # A target-based policy tracks a single metric:
    # PercentAvailableGameSessions. This metric tells us how much of a
    # fleet's hosting capacity is ready to host game sessions but is not
    # currently in use. This is the fleet's buffer; it measures the
    # additional player demand that the fleet could handle at current
    # capacity. With a target-based policy, you set your ideal buffer size
    # and leave it to Amazon GameLift to take whatever action is needed to
    # maintain that target.
    #
    # For example, you might choose to maintain a 10% buffer for a fleet
    # that has the capacity to host 100 simultaneous game sessions. This
    # policy tells Amazon GameLift to take action whenever the fleet's
    # available capacity falls below or rises above 10 game sessions. Amazon
    # GameLift will start new instances or stop unused instances in order to
    # return to the 10% buffer.
    #
    # To create or update a target-based policy, specify a fleet ID and
    # name, and set the policy type to "TargetBased". Specify the metric
    # to track (PercentAvailableGameSessions) and reference a
    # TargetConfiguration object with your desired buffer value. Exclude all
    # other parameters. On a successful request, the policy name is
    # returned. The scaling policy is automatically in force as soon as
    # it's successfully created. If the fleet's auto-scaling actions are
    # temporarily suspended, the new policy will be in force once the fleet
    # actions are restarted.
    #
    # **Rule-based policy**
    #
    # A rule-based policy tracks specified fleet metric, sets a threshold
    # value, and specifies the type of action to initiate when triggered.
    # With a rule-based policy, you can select from several available fleet
    # metrics. Each policy specifies whether to scale up or scale down (and
    # by how much), so you need one policy for each type of action.
    #
    # For example, a policy may make the following statement: "If the
    # percentage of idle instances is greater than 20% for more than 15
    # minutes, then reduce the fleet capacity by 10%."
    #
    # A policy's rule statement has the following structure:
    #
    # If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for
    # `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by
    # `[ScalingAdjustment]`.
    #
    # To implement the example, the rule statement would look like this:
    #
    # If `[PercentIdleInstances]` is `[GreaterThanThreshold]` `[20]` for
    # `[15]` minutes, then `[PercentChangeInCapacity]` to/by `[10]`.
    #
    # To create or update a scaling policy, specify a unique combination of
    # name and fleet ID, and set the policy type to "RuleBased". Specify
    # the parameter values for a policy rule statement. On a successful
    # request, the policy name is returned. Scaling policies are
    # automatically in force as soon as they're successfully created. If
    # the fleet's auto-scaling actions are temporarily suspended, the new
    # policy will be in force once the fleet actions are restarted.
    #
    # **Related actions**
    #
    # DescribeFleetCapacity \| UpdateFleetCapacity \|
    # DescribeEC2InstanceLimits \| PutScalingPolicy \|
    # DescribeScalingPolicies \| DeleteScalingPolicy \| StopFleetActions \|
    # StartFleetActions \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a fleet's scaling policy.
    #   Policy names do not need to be unique. A fleet can have only one
    #   scaling policy with the same name.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to apply this policy to. You can use
    #   either the fleet ID or ARN value. The fleet cannot be in any of the
    #   following statuses: ERROR or DELETING.
    #
    # @option params [Integer] :scaling_adjustment
    #   Amount of adjustment to make, based on the scaling adjustment type.
    #
    # @option params [String] :scaling_adjustment_type
    #   The type of adjustment to make to a fleet's instance count (see
    #   FleetCapacity):
    #
    #   * **ChangeInCapacity** -- add (or subtract) the scaling adjustment
    #     value from the current instance count. Positive values scale up
    #     while negative values scale down.
    #
    #   * **ExactCapacity** -- set the instance count to the scaling
    #     adjustment value.
    #
    #   * **PercentChangeInCapacity** -- increase or reduce the current
    #     instance count by the scaling adjustment, read as a percentage.
    #     Positive values scale up while negative values scale down; for
    #     example, a value of "-10" scales the fleet down by 10%.
    #
    # @option params [Float] :threshold
    #   Metric value used to trigger a scaling event.
    #
    # @option params [String] :comparison_operator
    #   Comparison operator to use when measuring the metric against the
    #   threshold value.
    #
    # @option params [Integer] :evaluation_periods
    #   Length of time (in minutes) the metric must be at or beyond the
    #   threshold before a scaling event is triggered.
    #
    # @option params [required, String] :metric_name
    #   Name of the Amazon GameLift-defined metric that is used to trigger a
    #   scaling adjustment. For detailed descriptions of fleet metrics, see
    #   [Monitor Amazon GameLift with Amazon CloudWatch][1].
    #
    #   * **ActivatingGameSessions** -- Game sessions in the process of being
    #     created.
    #
    #   * **ActiveGameSessions** -- Game sessions that are currently running.
    #
    #   * **ActiveInstances** -- Fleet instances that are currently running at
    #     least one game session.
    #
    #   * **AvailableGameSessions** -- Additional game sessions that fleet
    #     could host simultaneously, given current capacity.
    #
    #   * **AvailablePlayerSessions** -- Empty player slots in currently
    #     active game sessions. This includes game sessions that are not
    #     currently accepting players. Reserved player slots are not included.
    #
    #   * **CurrentPlayerSessions** -- Player slots in active game sessions
    #     that are being used by a player or are reserved for a player.
    #
    #   * **IdleInstances** -- Active instances that are currently hosting
    #     zero game sessions.
    #
    #   * **PercentAvailableGameSessions** -- Unused percentage of the total
    #     number of game sessions that a fleet could host simultaneously,
    #     given current capacity. Use this metric for a target-based scaling
    #     policy.
    #
    #   * **PercentIdleInstances** -- Percentage of the total number of active
    #     instances that are hosting zero game sessions.
    #
    #   * **QueueDepth** -- Pending game session placement requests, in any
    #     queue, where the current fleet is the top-priority destination.
    #
    #   * **WaitTime** -- Current wait time for pending game session placement
    #     requests, in any queue, where the current fleet is the top-priority
    #     destination.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html
    #
    # @option params [String] :policy_type
    #   The type of scaling policy to create. For a target-based policy, set
    #   the parameter *MetricName* to 'PercentAvailableGameSessions' and
    #   specify a *TargetConfiguration*. For a rule-based policy set the
    #   following parameters: *MetricName*, *ComparisonOperator*, *Threshold*,
    #   *EvaluationPeriods*, *ScalingAdjustmentType*, and *ScalingAdjustment*.
    #
    # @option params [Types::TargetConfiguration] :target_configuration
    #   An object that contains settings for a target-based scaling policy.
    #
    # @return [Types::PutScalingPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutScalingPolicyOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy({
    #     name: "NonZeroAndMaxString", # required
    #     fleet_id: "FleetIdOrArn", # required
    #     scaling_adjustment: 1,
    #     scaling_adjustment_type: "ChangeInCapacity", # accepts ChangeInCapacity, ExactCapacity, PercentChangeInCapacity
    #     threshold: 1.0,
    #     comparison_operator: "GreaterThanOrEqualToThreshold", # accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #     evaluation_periods: 1,
    #     metric_name: "ActivatingGameSessions", # required, accepts ActivatingGameSessions, ActiveGameSessions, ActiveInstances, AvailableGameSessions, AvailablePlayerSessions, CurrentPlayerSessions, IdleInstances, PercentAvailableGameSessions, PercentIdleInstances, QueueDepth, WaitTime
    #     policy_type: "RuleBased", # accepts RuleBased, TargetBased
    #     target_configuration: {
    #       target_value: 1.0, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PutScalingPolicy AWS API Documentation
    #
    # @overload put_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_scaling_policy(params = {}, options = {})
      req = build_request(:put_scaling_policy, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Creates a new game server resource and notifies GameLift FleetIQ that
    # the game server is ready to host gameplay and players. This operation
    # is called by a game server process that is running on an instance in a
    # game server group. Registering game servers enables GameLift FleetIQ
    # to track available game servers and enables game clients and services
    # to claim a game server for a new game session.
    #
    # To register a game server, identify the game server group and instance
    # where the game server is running, and provide a unique identifier for
    # the game server. You can also include connection and game server data.
    # When a game client or service requests a game server by calling
    # ClaimGameServer, this information is returned in the response.
    #
    # Once a game server is successfully registered, it is put in status
    # `AVAILABLE`. A request to register a game server may fail if the
    # instance it is running on is in the process of shutting down as part
    # of instance balancing or scale-down activity.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # RegisterGameServer \| ListGameServers \| ClaimGameServer \|
    # DescribeGameServer \| UpdateGameServer \| DeregisterGameServer \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running. Use either the GameServerGroup name or ARN value.
    #
    # @option params [required, String] :game_server_id
    #   A custom string that uniquely identifies the game server to register.
    #   Game server IDs are developer-defined and must be unique across all
    #   game server groups in your AWS account.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier for the instance where the game server is
    #   running. This ID is available in the instance metadata. EC2 instance
    #   IDs use a 17-character format, for example: `i-1234567890abcdef0`.
    #
    # @option params [String] :connection_info
    #   Information that is needed to make inbound client connections to the
    #   game server. This might include the IP address and port, DNS name, and
    #   other information.
    #
    # @option params [String] :game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers using ListGameServers or
    #   ClaimGameServer.
    #
    # @return [Types::RegisterGameServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterGameServerOutput#game_server #game_server} => Types::GameServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #     instance_id: "GameServerInstanceId", # required
    #     connection_info: "GameServerConnectionInfo",
    #     game_server_data: "GameServerData",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server.game_server_group_name #=> String
    #   resp.game_server.game_server_group_arn #=> String
    #   resp.game_server.game_server_id #=> String
    #   resp.game_server.instance_id #=> String
    #   resp.game_server.connection_info #=> String
    #   resp.game_server.game_server_data #=> String
    #   resp.game_server.claim_status #=> String, one of "CLAIMED"
    #   resp.game_server.utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_server.registration_time #=> Time
    #   resp.game_server.last_claim_time #=> Time
    #   resp.game_server.last_health_check_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RegisterGameServer AWS API Documentation
    #
    # @overload register_game_server(params = {})
    # @param [Hash] params ({})
    def register_game_server(params = {}, options = {})
      req = build_request(:register_game_server, params)
      req.send_request(options)
    end

    # Retrieves a fresh set of credentials for use when uploading a new set
    # of game build files to Amazon GameLift's Amazon S3. This is done as
    # part of the build creation process; see CreateBuild.
    #
    # To request new credentials, specify the build ID as returned with an
    # initial `CreateBuild` request. If successful, a new set of credentials
    # are returned, along with the S3 storage location associated with the
    # build ID.
    #
    # **Learn more**
    #
    # [ Create a Build with Files in S3][1]
    #
    # **Related actions**
    #
    # CreateBuild \| ListBuilds \| DescribeBuild \| UpdateBuild \|
    # DeleteBuild \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :build_id
    #   A unique identifier for the build to get credentials for. You can use
    #   either the build ID or ARN value.
    #
    # @return [Types::RequestUploadCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestUploadCredentialsOutput#upload_credentials #upload_credentials} => Types::AwsCredentials
    #   * {Types::RequestUploadCredentialsOutput#storage_location #storage_location} => Types::S3Location
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_upload_credentials({
    #     build_id: "BuildIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_credentials.access_key_id #=> String
    #   resp.upload_credentials.secret_access_key #=> String
    #   resp.upload_credentials.session_token #=> String
    #   resp.storage_location.bucket #=> String
    #   resp.storage_location.key #=> String
    #   resp.storage_location.role_arn #=> String
    #   resp.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RequestUploadCredentials AWS API Documentation
    #
    # @overload request_upload_credentials(params = {})
    # @param [Hash] params ({})
    def request_upload_credentials(params = {}, options = {})
      req = build_request(:request_upload_credentials, params)
      req.send_request(options)
    end

    # Retrieves the fleet ID that an alias is currently pointing to.
    #
    # **Related actions**
    #
    # CreateAlias \| ListAliases \| DescribeAlias \| UpdateAlias \|
    # DeleteAlias \| ResolveAlias \| [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :alias_id
    #   The unique identifier of the alias that you want to retrieve a fleet
    #   ID for. You can use either the alias ID or ARN value.
    #
    # @return [Types::ResolveAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveAliasOutput#fleet_id #fleet_id} => String
    #   * {Types::ResolveAliasOutput#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_alias({
    #     alias_id: "AliasIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResolveAlias AWS API Documentation
    #
    # @overload resolve_alias(params = {})
    # @param [Hash] params ({})
    def resolve_alias(params = {}, options = {})
      req = build_request(:resolve_alias, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Reinstates activity on a game server group after it has been
    # suspended. A game server group might be suspended by
    # theSuspendGameServerGroup operation, or it might be suspended
    # involuntarily due to a configuration problem. In the second case, you
    # can manually resume activity on the group once the configuration
    # problem has been resolved. Refer to the game server group status and
    # status reason for more information on why group activity is suspended.
    #
    # To resume activity, specify a game server group ARN and the type of
    # activity to be resumed. If successful, a GameServerGroup object is
    # returned showing that the resumed activity is no longer listed in
    # `SuspendedActions`.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # CreateGameServerGroup \| ListGameServerGroups \|
    # DescribeGameServerGroup \| UpdateGameServerGroup \|
    # DeleteGameServerGroup \| ResumeGameServerGroup \|
    # SuspendGameServerGroup \| DescribeGameServerInstances \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the
    #   GameServerGroup name or ARN value.
    #
    # @option params [required, Array<String>] :resume_actions
    #   The activity to resume for this game server group.
    #
    # @return [Types::ResumeGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResumeGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     resume_actions: ["REPLACE_INSTANCE_TYPES"], # required, accepts REPLACE_INSTANCE_TYPES
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResumeGameServerGroup AWS API Documentation
    #
    # @overload resume_game_server_group(params = {})
    # @param [Hash] params ({})
    def resume_game_server_group(params = {}, options = {})
      req = build_request(:resume_game_server_group, params)
      req.send_request(options)
    end

    # Retrieves all active game sessions that match a set of search criteria
    # and sorts them into a specified order.
    #
    # When searching for game sessions, you specify exactly where you want
    # to search and provide a search filter expression, a sort expression,
    # or both. A search request can search only one fleet, but it can search
    # all of a fleet's locations.
    #
    # This operation can be used in the following ways:
    #
    # * To search all game sessions that are currently running on all
    #   locations in a fleet, provide a fleet or alias ID. This approach
    #   returns game sessions in the fleet's home Region and all remote
    #   locations that fit the search criteria.
    #
    # * To search all game sessions that are currently running on a specific
    #   fleet location, provide a fleet or alias ID and a location name. For
    #   location, you can specify a fleet's home Region or any remote
    #   location.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, a `GameSession` object is returned for each game
    # session that matches the request. Search finds game sessions that are
    # in `ACTIVE` status only. To retrieve information on game sessions in
    # other statuses, use DescribeGameSessions.
    #
    # You can search or sort by the following game session attributes:
    #
    # * **gameSessionId** -- A unique identifier for the game session. You
    #   can use either a `GameSessionId` or `GameSessionArn` value.
    #
    # * **gameSessionName** -- Name assigned to a game session. This value
    #   is set when requesting a new game session with CreateGameSession or
    #   updating with UpdateGameSession. Game session names do not need to
    #   be unique to a game session.
    #
    # * **gameSessionProperties** -- Custom data defined in a game
    #   session's `GameProperty` parameter. `GameProperty` values are
    #   stored as key:value pairs; the filter expression must indicate the
    #   key and a string to search the data values for. For example, to
    #   search for game sessions with custom data containing the key:value
    #   pair "gameMode:brawl", specify the following:
    #   `gameSessionProperties.gameMode = "brawl"`. All custom data values
    #   are searched as strings.
    #
    # * **maximumSessions** -- Maximum number of player sessions allowed for
    #   a game session. This value is set when requesting a new game session
    #   with CreateGameSession or updating with UpdateGameSession.
    #
    # * **creationTimeMillis** -- Value indicating when a game session was
    #   created. It is expressed in Unix time as milliseconds.
    #
    # * **playerSessionCount** -- Number of players currently connected to a
    #   game session. This value changes rapidly as players join the session
    #   or drop out.
    #
    # * **hasAvailablePlayerSessions** -- Boolean value indicating whether a
    #   game session has reached its maximum number of players. It is highly
    #   recommended that all search requests include this filter attribute
    #   to optimize search performance and return only sessions that players
    #   can join.
    #
    # <note markdown="1"> Returned values for `playerSessionCount` and
    # `hasAvailablePlayerSessions` change quickly as players join sessions
    # and others drop out. Results should be considered a snapshot in time.
    # Be sure to refresh search results often, and handle sessions that fill
    # up before a player can join.
    #
    #  </note>
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet to search for active game sessions.
    #   You can use either the fleet ID or ARN value. Each request must
    #   reference either a fleet ID or alias ID, but not both.
    #
    # @option params [String] :alias_id
    #   A unique identifier for the alias associated with the fleet to search
    #   for active game sessions. You can use either the alias ID or ARN
    #   value. Each request must reference either a fleet ID or alias ID, but
    #   not both.
    #
    # @option params [String] :location
    #   A fleet location to search for game sessions. You can specify a
    #   fleet's home Region or a remote location. Use the AWS Region code
    #   format, such as `us-west-2`.
    #
    # @option params [String] :filter_expression
    #   String containing the search criteria for the session search. If no
    #   filter expression is included, the request returns results for all
    #   game sessions in the fleet that are in `ACTIVE` status.
    #
    #   A filter expression can contain one or multiple conditions. Each
    #   condition consists of the following:
    #
    #   * **Operand** -- Name of a game session attribute. Valid values are
    #     `gameSessionName`, `gameSessionId`, `gameSessionProperties`,
    #     `maximumSessions`, `creationTimeMillis`, `playerSessionCount`,
    #     `hasAvailablePlayerSessions`.
    #
    #   * **Comparator** -- Valid comparators are: `=`, `<>`, `<`, `>`, `<=`,
    #     `>=`.
    #
    #   * **Value** -- Value to be searched for. Values may be numbers,
    #     boolean values (true/false) or strings depending on the operand.
    #     String values are case sensitive and must be enclosed in single
    #     quotes. Special characters must be escaped. Boolean and string
    #     values can only be used with the comparators `=` and `<>`. For
    #     example, the following filter expression searches on
    #     `gameSessionName`\: "`FilterExpression": "gameSessionName =
    #     'Matt\'s Awesome Game 1'"`.
    #
    #   To chain multiple conditions in a single expression, use the logical
    #   keywords `AND`, `OR`, and `NOT` and parentheses as needed. For
    #   example: `x AND y AND NOT z`, `NOT (x OR y)`.
    #
    #   Session search evaluates conditions from left to right using the
    #   following precedence rules:
    #
    #   1.  `=`, `<>`, `<`, `>`, `<=`, `>=`
    #
    #   2.  Parentheses
    #
    #   3.  NOT
    #
    #   4.  AND
    #
    #   5.  OR
    #
    #   For example, this filter expression retrieves game sessions hosting at
    #   least ten players that have an open player slot: `"maximumSessions>=10
    #   AND hasAvailablePlayerSessions=true"`.
    #
    # @option params [String] :sort_expression
    #   Instructions on how to sort the search results. If no sort expression
    #   is included, the request returns results in random order. A sort
    #   expression consists of the following elements:
    #
    #   * **Operand** -- Name of a game session attribute. Valid values are
    #     `gameSessionName`, `gameSessionId`, `gameSessionProperties`,
    #     `maximumSessions`, `creationTimeMillis`, `playerSessionCount`,
    #     `hasAvailablePlayerSessions`.
    #
    #   * **Order** -- Valid sort orders are `ASC` (ascending) and `DESC`
    #     (descending).
    #
    #   For example, this sort expression returns the oldest active sessions
    #   first: `"SortExpression": "creationTimeMillis ASC"`. Results with a
    #   null value for the sort operand are returned at the end of the list.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. The maximum
    #   number of results returned is 20, even if this value is not set or is
    #   set higher than 20.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::SearchGameSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchGameSessionsOutput#game_sessions #game_sessions} => Array&lt;Types::GameSession&gt;
    #   * {Types::SearchGameSessionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_game_sessions({
    #     fleet_id: "FleetIdOrArn",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     filter_expression: "NonZeroAndMaxString",
    #     sort_expression: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_sessions #=> Array
    #   resp.game_sessions[0].game_session_id #=> String
    #   resp.game_sessions[0].name #=> String
    #   resp.game_sessions[0].fleet_id #=> String
    #   resp.game_sessions[0].fleet_arn #=> String
    #   resp.game_sessions[0].creation_time #=> Time
    #   resp.game_sessions[0].termination_time #=> Time
    #   resp.game_sessions[0].current_player_session_count #=> Integer
    #   resp.game_sessions[0].maximum_player_session_count #=> Integer
    #   resp.game_sessions[0].status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_sessions[0].status_reason #=> String, one of "INTERRUPTED"
    #   resp.game_sessions[0].game_properties #=> Array
    #   resp.game_sessions[0].game_properties[0].key #=> String
    #   resp.game_sessions[0].game_properties[0].value #=> String
    #   resp.game_sessions[0].ip_address #=> String
    #   resp.game_sessions[0].dns_name #=> String
    #   resp.game_sessions[0].port #=> Integer
    #   resp.game_sessions[0].player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_sessions[0].creator_id #=> String
    #   resp.game_sessions[0].game_session_data #=> String
    #   resp.game_sessions[0].matchmaker_data #=> String
    #   resp.game_sessions[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SearchGameSessions AWS API Documentation
    #
    # @overload search_game_sessions(params = {})
    # @param [Hash] params ({})
    def search_game_sessions(params = {}, options = {})
      req = build_request(:search_game_sessions, params)
      req.send_request(options)
    end

    # Resumes certain types of activity on fleet instances that were
    # suspended with StopFleetActions. For multi-location fleets, fleet
    # actions are managed separately for each location. Currently, this
    # operation is used to restart a fleet's auto-scaling activity.
    #
    # This operation can be used in the following ways:
    #
    # * To restart actions on instances in the fleet's home Region, provide
    #   a fleet ID and the type of actions to resume.
    #
    # * To restart actions on instances in one of the fleet's remote
    #   locations, provide a fleet ID, a location name, and the type of
    #   actions to resume.
    #
    # If successful, GameLift once again initiates scaling events as
    # triggered by the fleet's scaling policies. If actions on the fleet
    # location were never stopped, this operation will have no effect. You
    # can view a fleet's stopped actions using DescribeFleetAttributes or
    # DescribeFleetLocationAttributes.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # CreateFleet \| UpdateFleetCapacity \| PutScalingPolicy \|
    # DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetLocationAttributes \| UpdateFleetAttributes \|
    # StopFleetActions \| DeleteFleet \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to restart actions on. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<String>] :actions
    #   List of actions to restart on the fleet.
    #
    # @option params [String] :location
    #   The fleet location to restart fleet actions for. Specify a location in
    #   the form of an AWS Region code, such as `us-west-2`.
    #
    # @return [Types::StartFleetActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFleetActionsOutput#fleet_id #fleet_id} => String
    #   * {Types::StartFleetActionsOutput#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fleet_actions({
    #     fleet_id: "FleetIdOrArn", # required
    #     actions: ["AUTO_SCALING"], # required, accepts AUTO_SCALING
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartFleetActions AWS API Documentation
    #
    # @overload start_fleet_actions(params = {})
    # @param [Hash] params ({})
    def start_fleet_actions(params = {}, options = {})
      req = build_request(:start_fleet_actions, params)
      req.send_request(options)
    end

    # Places a request for a new game session in a queue (see
    # CreateGameSessionQueue). When processing a placement request, Amazon
    # GameLift searches for available resources on the queue's
    # destinations, scanning each until it finds resources or the placement
    # request times out.
    #
    # A game session placement request can also request player sessions.
    # When a new game session is successfully created, Amazon GameLift
    # creates a player session for each player included in the request.
    #
    # When placing a game session, by default Amazon GameLift tries each
    # fleet in the order they are listed in the queue configuration.
    # Ideally, a queue's destinations are listed in preference order.
    #
    # Alternatively, when requesting a game session with players, you can
    # also provide latency data for each player in relevant Regions. Latency
    # data indicates the performance lag a player experiences when connected
    # to a fleet in the Region. Amazon GameLift uses latency data to reorder
    # the list of destinations to place the game session in a Region with
    # minimal lag. If latency data is provided for multiple players, Amazon
    # GameLift calculates each Region's average lag for all players and
    # reorders to get the best game play across all players.
    #
    # To place a new game session request, specify the following:
    #
    # * The queue name and a set of game session properties and settings
    #
    # * A unique ID (such as a UUID) for the placement. You use this ID to
    #   track the status of the placement request
    #
    # * (Optional) A set of player data and a unique player ID for each
    #   player that you are joining to the new game session (player data is
    #   optional, but if you include it, you must also provide a unique ID
    #   for each player)
    #
    # * Latency data for all players (if you want to optimize game play for
    #   the players)
    #
    # If successful, a new game session placement is created.
    #
    # To track the status of a placement request, call
    # DescribeGameSessionPlacement and check the request's status. If the
    # status is `FULFILLED`, a new game session has been created and a game
    # session ARN and Region are referenced. If the placement request times
    # out, you can resubmit the request or retry it with a different queue.
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :placement_id
    #   A unique identifier to assign to the new game session placement. This
    #   value is developer-defined. The value must be unique across all
    #   Regions and cannot be reused unless you are resubmitting a canceled or
    #   timed-out placement request.
    #
    # @option params [required, String] :game_session_queue_name
    #   Name of the queue to use to place the new game session. You can use
    #   either the queue name or ARN value.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [required, Integer] :maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously to
    #   the game session.
    #
    # @option params [String] :game_session_name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [Array<Types::PlayerLatency>] :player_latencies
    #   A set of values, expressed in milliseconds, that indicates the amount
    #   of latency that a player experiences when connected to AWS Regions.
    #   This information is used to try to place the new game session where it
    #   can offer the best possible gameplay experience for the players.
    #
    # @option params [Array<Types::DesiredPlayerSession>] :desired_player_sessions
    #   Set of information on each player to create a player session for.
    #
    # @option params [String] :game_session_data
    #   A set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the GameSession
    #   object with a request to start a new game session (see [Start a Game
    #   Session][1]).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @return [Types::StartGameSessionPlacementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartGameSessionPlacementOutput#game_session_placement #game_session_placement} => Types::GameSessionPlacement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_game_session_placement({
    #     placement_id: "IdStringModel", # required
    #     game_session_queue_name: "GameSessionQueueNameOrArn", # required
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #     maximum_player_session_count: 1, # required
    #     game_session_name: "NonZeroAndMaxString",
    #     player_latencies: [
    #       {
    #         player_id: "NonZeroAndMaxString",
    #         region_identifier: "NonZeroAndMaxString",
    #         latency_in_milliseconds: 1.0,
    #       },
    #     ],
    #     desired_player_sessions: [
    #       {
    #         player_id: "NonZeroAndMaxString",
    #         player_data: "PlayerData",
    #       },
    #     ],
    #     game_session_data: "LargeGameSessionData",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_placement.placement_id #=> String
    #   resp.game_session_placement.game_session_queue_name #=> String
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"
    #   resp.game_session_placement.game_properties #=> Array
    #   resp.game_session_placement.game_properties[0].key #=> String
    #   resp.game_session_placement.game_properties[0].value #=> String
    #   resp.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.game_session_placement.game_session_name #=> String
    #   resp.game_session_placement.game_session_id #=> String
    #   resp.game_session_placement.game_session_arn #=> String
    #   resp.game_session_placement.game_session_region #=> String
    #   resp.game_session_placement.player_latencies #=> Array
    #   resp.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.game_session_placement.start_time #=> Time
    #   resp.game_session_placement.end_time #=> Time
    #   resp.game_session_placement.ip_address #=> String
    #   resp.game_session_placement.dns_name #=> String
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.game_session_placement.game_session_data #=> String
    #   resp.game_session_placement.matchmaker_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartGameSessionPlacement AWS API Documentation
    #
    # @overload start_game_session_placement(params = {})
    # @param [Hash] params ({})
    def start_game_session_placement(params = {}, options = {})
      req = build_request(:start_game_session_placement, params)
      req.send_request(options)
    end

    # Finds new players to fill open slots in currently running game
    # sessions. The backfill match process is essentially identical to the
    # process of forming new matches. Backfill requests use the same
    # matchmaker that was used to make the original match, and they provide
    # matchmaking data for all players currently in the game session.
    # FlexMatch uses this information to select new players so that
    # backfilled match continues to meet the original match requirements.
    #
    # When using FlexMatch with GameLift managed hosting, you can request a
    # backfill match from a client service by calling this operation with a
    # GameSession identifier. You also have the option of making backfill
    # requests directly from your game server. In response to a request,
    # FlexMatch creates player sessions for the new players, updates the
    # `GameSession` resource, and sends updated matchmaking data to the game
    # server. You can request a backfill match at any point after a game
    # session is started. Each game session can have only one active
    # backfill request at a time; a subsequent request automatically
    # replaces the earlier request.
    #
    # When using FlexMatch as a standalone component, request a backfill
    # match by calling this operation without a game session identifier. As
    # with newly formed matches, matchmaking results are returned in a
    # matchmaking event so that your game can update the game session that
    # is being backfilled.
    #
    # To request a backfill match, specify a unique ticket ID, the original
    # matchmaking configuration, and matchmaking data for all current
    # players in the game session being backfilled. Optionally, specify the
    # `GameSession` ARN. If successful, a match backfill ticket is created
    # and returned with status set to QUEUED. Track the status of backfill
    # tickets using the same method for tracking tickets for new matches.
    #
    # **Learn more**
    #
    # [ Backfill existing games with FlexMatch][1]
    #
    # [ Matchmaking events][2] (reference)
    #
    # [ How GameLift FlexMatch works][3]
    #
    # **Related actions**
    #
    # StartMatchmaking \| DescribeMatchmaking \| StopMatchmaking \|
    # AcceptMatch \| StartMatchBackfill \| [All APIs by task][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :ticket_id
    #   A unique identifier for a matchmaking ticket. If no ticket ID is
    #   specified here, Amazon GameLift will generate one in the form of a
    #   UUID. Use this identifier to track the match backfill ticket status
    #   and retrieve match results.
    #
    # @option params [required, String] :configuration_name
    #   Name of the matchmaker to use for this request. You can use either the
    #   configuration name or ARN value. The ARN of the matchmaker that was
    #   used with the original game session is listed in the GameSession
    #   object, `MatchmakerData` property.
    #
    # @option params [String] :game_session_arn
    #   A unique identifier for the game session. Use the game session ID.
    #   When using FlexMatch as a standalone matchmaking solution, this
    #   parameter is not needed.
    #
    # @option params [required, Array<Types::Player>] :players
    #   Match information on all players that are currently assigned to the
    #   game session. This information is used by the matchmaker to find new
    #   players and add them to the existing game.
    #
    #   * PlayerID, PlayerAttributes, Team -- This information is maintained
    #     in the GameSession object, `MatchmakerData` property, for all
    #     players who are currently assigned to the game session. The
    #     matchmaker data is in JSON syntax, formatted as a string. For more
    #     details, see [ Match Data][1].
    #
    #   * LatencyInMs -- If the matchmaker uses player latency, include a
    #     latency value, in milliseconds, for the Region that the game session
    #     is currently in. Do not include latency values for any other Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data
    #
    # @return [Types::StartMatchBackfillOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMatchBackfillOutput#matchmaking_ticket #matchmaking_ticket} => Types::MatchmakingTicket
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_match_backfill({
    #     ticket_id: "MatchmakingIdStringModel",
    #     configuration_name: "MatchmakingConfigurationName", # required
    #     game_session_arn: "ArnStringModel",
    #     players: [ # required
    #       {
    #         player_id: "NonZeroAndMaxString",
    #         player_attributes: {
    #           "NonZeroAndMaxString" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         team: "NonZeroAndMaxString",
    #         latency_in_ms: {
    #           "NonEmptyString" => 1,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.matchmaking_ticket.ticket_id #=> String
    #   resp.matchmaking_ticket.configuration_name #=> String
    #   resp.matchmaking_ticket.configuration_arn #=> String
    #   resp.matchmaking_ticket.status #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"
    #   resp.matchmaking_ticket.status_reason #=> String
    #   resp.matchmaking_ticket.status_message #=> String
    #   resp.matchmaking_ticket.start_time #=> Time
    #   resp.matchmaking_ticket.end_time #=> Time
    #   resp.matchmaking_ticket.players #=> Array
    #   resp.matchmaking_ticket.players[0].player_id #=> String
    #   resp.matchmaking_ticket.players[0].player_attributes #=> Hash
    #   resp.matchmaking_ticket.players[0].player_attributes["NonZeroAndMaxString"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.matchmaking_ticket.players[0].team #=> String
    #   resp.matchmaking_ticket.players[0].latency_in_ms #=> Hash
    #   resp.matchmaking_ticket.players[0].latency_in_ms["NonEmptyString"] #=> Integer
    #   resp.matchmaking_ticket.game_session_connection_info.game_session_arn #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.ip_address #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.dns_name #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.port #=> Integer
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions #=> Array
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.matchmaking_ticket.estimated_wait_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchBackfill AWS API Documentation
    #
    # @overload start_match_backfill(params = {})
    # @param [Hash] params ({})
    def start_match_backfill(params = {}, options = {})
      req = build_request(:start_match_backfill, params)
      req.send_request(options)
    end

    # Uses FlexMatch to create a game match for a group of players based on
    # custom matchmaking rules. With games that use GameLift managed
    # hosting, this operation also triggers GameLift to find hosting
    # resources and start a new game session for the new match. Each
    # matchmaking request includes information on one or more players and
    # specifies the FlexMatch matchmaker to use. When a request is for
    # multiple players, FlexMatch attempts to build a match that includes
    # all players in the request, placing them in the same team and finding
    # additional players as needed to fill the match.
    #
    # To start matchmaking, provide a unique ticket ID, specify a
    # matchmaking configuration, and include the players to be matched. You
    # must also include any player attributes that are required by the
    # matchmaking configuration's rule set. If successful, a matchmaking
    # ticket is returned with status set to `QUEUED`.
    #
    # Track matchmaking events to respond as needed and acquire game session
    # connection information for successfully completed matches. Ticket
    # status updates are tracked using event notification through Amazon
    # Simple Notification Service (SNS), which is defined in the matchmaking
    # configuration.
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a game client][1]
    #
    # [ Set Up FlexMatch event notification][2]
    #
    # [ How GameLift FlexMatch works][3]
    #
    # **Related actions**
    #
    # StartMatchmaking \| DescribeMatchmaking \| StopMatchmaking \|
    # AcceptMatch \| StartMatchBackfill \| [All APIs by task][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :ticket_id
    #   A unique identifier for a matchmaking ticket. If no ticket ID is
    #   specified here, Amazon GameLift will generate one in the form of a
    #   UUID. Use this identifier to track the matchmaking ticket status and
    #   retrieve match results.
    #
    # @option params [required, String] :configuration_name
    #   Name of the matchmaking configuration to use for this request.
    #   Matchmaking configurations must exist in the same Region as this
    #   request. You can use either the configuration name or ARN value.
    #
    # @option params [required, Array<Types::Player>] :players
    #   Information on each player to be matched. This information must
    #   include a player ID, and may contain player attributes and latency
    #   data to be used in the matchmaking process. After a successful match,
    #   `Player` objects contain the name of the team the player is assigned
    #   to.
    #
    # @return [Types::StartMatchmakingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMatchmakingOutput#matchmaking_ticket #matchmaking_ticket} => Types::MatchmakingTicket
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_matchmaking({
    #     ticket_id: "MatchmakingIdStringModel",
    #     configuration_name: "MatchmakingConfigurationName", # required
    #     players: [ # required
    #       {
    #         player_id: "NonZeroAndMaxString",
    #         player_attributes: {
    #           "NonZeroAndMaxString" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         team: "NonZeroAndMaxString",
    #         latency_in_ms: {
    #           "NonEmptyString" => 1,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.matchmaking_ticket.ticket_id #=> String
    #   resp.matchmaking_ticket.configuration_name #=> String
    #   resp.matchmaking_ticket.configuration_arn #=> String
    #   resp.matchmaking_ticket.status #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"
    #   resp.matchmaking_ticket.status_reason #=> String
    #   resp.matchmaking_ticket.status_message #=> String
    #   resp.matchmaking_ticket.start_time #=> Time
    #   resp.matchmaking_ticket.end_time #=> Time
    #   resp.matchmaking_ticket.players #=> Array
    #   resp.matchmaking_ticket.players[0].player_id #=> String
    #   resp.matchmaking_ticket.players[0].player_attributes #=> Hash
    #   resp.matchmaking_ticket.players[0].player_attributes["NonZeroAndMaxString"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.matchmaking_ticket.players[0].team #=> String
    #   resp.matchmaking_ticket.players[0].latency_in_ms #=> Hash
    #   resp.matchmaking_ticket.players[0].latency_in_ms["NonEmptyString"] #=> Integer
    #   resp.matchmaking_ticket.game_session_connection_info.game_session_arn #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.ip_address #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.dns_name #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.port #=> Integer
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions #=> Array
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.matchmaking_ticket.estimated_wait_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchmaking AWS API Documentation
    #
    # @overload start_matchmaking(params = {})
    # @param [Hash] params ({})
    def start_matchmaking(params = {}, options = {})
      req = build_request(:start_matchmaking, params)
      req.send_request(options)
    end

    # Suspends certain types of activity in a fleet location. Currently,
    # this operation is used to stop auto-scaling activity. For
    # multi-location fleets, fleet actions are managed separately for each
    # location.
    #
    # Stopping fleet actions has several potential purposes. It allows you
    # to temporarily stop auto-scaling activity but retain your scaling
    # policies for use in the future. For multi-location fleets, you can set
    # up fleet-wide auto-scaling, and then opt out of it for certain
    # locations.
    #
    # This operation can be used in the following ways:
    #
    # * To stop actions on instances in the fleet's home Region, provide a
    #   fleet ID and the type of actions to suspend.
    #
    # * To stop actions on instances in one of the fleet's remote
    #   locations, provide a fleet ID, a location name, and the type of
    #   actions to suspend.
    #
    # If successful, GameLift no longer initiates scaling events except in
    # response to manual changes using UpdateFleetCapacity. You can view a
    # fleet's stopped actions using DescribeFleetAttributes or
    # DescribeFleetLocationAttributes. Suspended activity can be restarted
    # using StartFleetActions.
    #
    # **Learn more**
    #
    # [Setting up GameLift Fleets][1]
    #
    # **Related actions**
    #
    # CreateFleet \| UpdateFleetCapacity \| PutScalingPolicy \|
    # DescribeEC2InstanceLimits \| DescribeFleetAttributes \|
    # DescribeFleetLocationAttributes \| UpdateFleetAttributes \|
    # StopFleetActions \| DeleteFleet \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to stop actions on. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<String>] :actions
    #   List of actions to suspend on the fleet.
    #
    # @option params [String] :location
    #   The fleet location to stop fleet actions for. Specify a location in
    #   the form of an AWS Region code, such as `us-west-2`.
    #
    # @return [Types::StopFleetActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopFleetActionsOutput#fleet_id #fleet_id} => String
    #   * {Types::StopFleetActionsOutput#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_fleet_actions({
    #     fleet_id: "FleetIdOrArn", # required
    #     actions: ["AUTO_SCALING"], # required, accepts AUTO_SCALING
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopFleetActions AWS API Documentation
    #
    # @overload stop_fleet_actions(params = {})
    # @param [Hash] params ({})
    def stop_fleet_actions(params = {}, options = {})
      req = build_request(:stop_fleet_actions, params)
      req.send_request(options)
    end

    # Cancels a game session placement that is in `PENDING` status. To stop
    # a placement, provide the placement ID values. If successful, the
    # placement is moved to `CANCELLED` status.
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :placement_id
    #   A unique identifier for a game session placement to cancel.
    #
    # @return [Types::StopGameSessionPlacementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopGameSessionPlacementOutput#game_session_placement #game_session_placement} => Types::GameSessionPlacement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_game_session_placement({
    #     placement_id: "IdStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_placement.placement_id #=> String
    #   resp.game_session_placement.game_session_queue_name #=> String
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"
    #   resp.game_session_placement.game_properties #=> Array
    #   resp.game_session_placement.game_properties[0].key #=> String
    #   resp.game_session_placement.game_properties[0].value #=> String
    #   resp.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.game_session_placement.game_session_name #=> String
    #   resp.game_session_placement.game_session_id #=> String
    #   resp.game_session_placement.game_session_arn #=> String
    #   resp.game_session_placement.game_session_region #=> String
    #   resp.game_session_placement.player_latencies #=> Array
    #   resp.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.game_session_placement.start_time #=> Time
    #   resp.game_session_placement.end_time #=> Time
    #   resp.game_session_placement.ip_address #=> String
    #   resp.game_session_placement.dns_name #=> String
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.game_session_placement.game_session_data #=> String
    #   resp.game_session_placement.matchmaker_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopGameSessionPlacement AWS API Documentation
    #
    # @overload stop_game_session_placement(params = {})
    # @param [Hash] params ({})
    def stop_game_session_placement(params = {}, options = {})
      req = build_request(:stop_game_session_placement, params)
      req.send_request(options)
    end

    # Cancels a matchmaking ticket or match backfill ticket that is
    # currently being processed. To stop the matchmaking operation, specify
    # the ticket ID. If successful, work on the ticket is stopped, and the
    # ticket status is changed to `CANCELLED`.
    #
    # This call is also used to turn off automatic backfill for an
    # individual game session. This is for game sessions that are created
    # with a matchmaking configuration that has automatic backfill enabled.
    # The ticket ID is included in the `MatchmakerData` of an updated game
    # session object, which is provided to the game server.
    #
    # <note markdown="1"> If the operation is successful, the service sends back an empty JSON
    # struct with the HTTP 200 response (not an empty HTTP body).
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a game client][1]
    #
    # **Related actions**
    #
    # StartMatchmaking \| DescribeMatchmaking \| StopMatchmaking \|
    # AcceptMatch \| StartMatchBackfill \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :ticket_id
    #   A unique identifier for a matchmaking ticket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_matchmaking({
    #     ticket_id: "MatchmakingIdStringModel", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopMatchmaking AWS API Documentation
    #
    # @overload stop_matchmaking(params = {})
    # @param [Hash] params ({})
    def stop_matchmaking(params = {}, options = {})
      req = build_request(:stop_matchmaking, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Temporarily stops activity on a game server group without terminating
    # instances or the game server group. You can restart activity by
    # calling ResumeGameServerGroup. You can suspend the following activity:
    #
    # * **Instance type replacement** - This activity evaluates the current
    #   game hosting viability of all Spot instance types that are defined
    #   for the game server group. It updates the Auto Scaling group to
    #   remove nonviable Spot Instance types, which have a higher chance of
    #   game server interruptions. It then balances capacity across the
    #   remaining viable Spot Instance types. When this activity is
    #   suspended, the Auto Scaling group continues with its current
    #   balance, regardless of viability. Instance protection, utilization
    #   metrics, and capacity scaling activities continue to be active.
    #
    # ^
    #
    # To suspend activity, specify a game server group ARN and the type of
    # activity to be suspended. If successful, a GameServerGroup object is
    # returned showing that the activity is listed in `SuspendedActions`.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # CreateGameServerGroup \| ListGameServerGroups \|
    # DescribeGameServerGroup \| UpdateGameServerGroup \|
    # DeleteGameServerGroup \| ResumeGameServerGroup \|
    # SuspendGameServerGroup \| DescribeGameServerInstances \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the
    #   GameServerGroup name or ARN value.
    #
    # @option params [required, Array<String>] :suspend_actions
    #   The activity to suspend for this game server group.
    #
    # @return [Types::SuspendGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SuspendGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     suspend_actions: ["REPLACE_INSTANCE_TYPES"], # required, accepts REPLACE_INSTANCE_TYPES
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SuspendGameServerGroup AWS API Documentation
    #
    # @overload suspend_game_server_group(params = {})
    # @param [Hash] params ({})
    def suspend_game_server_group(params = {}, options = {})
      req = build_request(:suspend_game_server_group, params)
      req.send_request(options)
    end

    # Assigns a tag to a GameLift resource. AWS resource tags provide an
    # additional management tool set. You can use tags to organize
    # resources, create IAM permissions policies to manage access to groups
    # of resources, customize AWS cost breakdowns, etc. This operation
    # handles the permissions necessary to manage tags for the following
    # GameLift resource types:
    #
    # * Build
    #
    # * Script
    #
    # * Fleet
    #
    # * Alias
    #
    # * GameSessionQueue
    #
    # * MatchmakingConfiguration
    #
    # * MatchmakingRuleSet
    #
    # To add a tag to a resource, specify the unique ARN value for the
    # resource and provide a tag list containing one or more tags. The
    # operation succeeds even if the list includes tags that are already
    # assigned to the specified resource.
    #
    # **Learn more**
    #
    # [Tagging AWS Resources][1] in the *AWS General Reference*
    #
    # [ AWS Tagging Strategies][2]
    #
    # **Related actions**
    #
    # TagResource \| UntagResource \| ListTagsForResource \| [All APIs by
    # task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to and uniquely
    #   identifies the GameLift resource that you want to assign tags to.
    #   GameLift resource ARNs are included in the data object for the
    #   resource, which can be retrieved by calling a List or Describe
    #   operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of one or more tags to assign to the specified GameLift
    #   resource. Tags are developer-defined and structured as key-value
    #   pairs. The maximum tag limit may be lower than stated. See [ Tagging
    #   AWS Resources][1] for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag that is assigned to a GameLift resource. Resource tags
    # are used to organize AWS resources for a range of purposes. This
    # operation handles the permissions necessary to manage tags for the
    # following GameLift resource types:
    #
    # * Build
    #
    # * Script
    #
    # * Fleet
    #
    # * Alias
    #
    # * GameSessionQueue
    #
    # * MatchmakingConfiguration
    #
    # * MatchmakingRuleSet
    #
    # To remove a tag from a resource, specify the unique ARN value for the
    # resource and provide a string list containing one or more tags to be
    # removed. This operation succeeds even if the list includes tags that
    # are not currently assigned to the specified resource.
    #
    # **Learn more**
    #
    # [Tagging AWS Resources][1] in the *AWS General Reference*
    #
    # [ AWS Tagging Strategies][2]
    #
    # **Related actions**
    #
    # TagResource \| UntagResource \| ListTagsForResource \| [All APIs by
    # task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to and uniquely
    #   identifies the GameLift resource that you want to remove tags from.
    #   GameLift resource ARNs are included in the data object for the
    #   resource, which can be retrieved by calling a List or Describe
    #   operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of one or more tag keys to remove from the specified GameLift
    #   resource. An AWS resource can have only one tag with a specific tag
    #   key, so specifying the tag key identifies which tag to remove.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates properties for an alias. To update properties, specify the
    # alias ID to be updated and provide the information to be changed. To
    # reassign an alias to another fleet, provide an updated routing
    # strategy. If successful, the updated alias record is returned.
    #
    # **Related actions**
    #
    # CreateAlias \| ListAliases \| DescribeAlias \| UpdateAlias \|
    # DeleteAlias \| ResolveAlias \| [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :alias_id
    #   A unique identifier for the alias that you want to update. You can use
    #   either the alias ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A human-readable description of the alias.
    #
    # @option params [Types::RoutingStrategy] :routing_strategy
    #   The routing configuration, including routing type and fleet target,
    #   for the alias.
    #
    # @return [Types::UpdateAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias({
    #     alias_id: "AliasIdOrArn", # required
    #     name: "NonBlankAndLengthConstraintString",
    #     description: "NonZeroAndMaxString",
    #     routing_strategy: {
    #       type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #       fleet_id: "FleetId",
    #       message: "FreeText",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_id #=> String
    #   resp.alias.name #=> String
    #   resp.alias.alias_arn #=> String
    #   resp.alias.description #=> String
    #   resp.alias.routing_strategy.type #=> String, one of "SIMPLE", "TERMINAL"
    #   resp.alias.routing_strategy.fleet_id #=> String
    #   resp.alias.routing_strategy.message #=> String
    #   resp.alias.creation_time #=> Time
    #   resp.alias.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateAlias AWS API Documentation
    #
    # @overload update_alias(params = {})
    # @param [Hash] params ({})
    def update_alias(params = {}, options = {})
      req = build_request(:update_alias, params)
      req.send_request(options)
    end

    # Updates metadata in a build resource, including the build name and
    # version. To update the metadata, specify the build ID to update and
    # provide the new values. If successful, a build object containing the
    # updated metadata is returned.
    #
    # **Learn more**
    #
    # [ Upload a Custom Server Build][1]
    #
    # **Related actions**
    #
    # CreateBuild \| ListBuilds \| DescribeBuild \| UpdateBuild \|
    # DeleteBuild \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :build_id
    #   A unique identifier for the build to update. You can use either the
    #   build ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a build. Build names do
    #   not need to be unique.
    #
    # @option params [String] :version
    #   Version information that is associated with a build or script. Version
    #   strings do not need to be unique.
    #
    # @return [Types::UpdateBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_build({
    #     build_id: "BuildIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.build.build_id #=> String
    #   resp.build.build_arn #=> String
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.build.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateBuild AWS API Documentation
    #
    # @overload update_build(params = {})
    # @param [Hash] params ({})
    def update_build(params = {}, options = {})
      req = build_request(:update_build, params)
      req.send_request(options)
    end

    # Updates a fleet's mutable attributes, including game session
    # protection and resource creation limits.
    #
    # To update fleet attributes, specify the fleet ID and the property
    # values that you want to change.
    #
    # If successful, an updated `FleetAttributes` object is returned.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| UpdateFleetAttributes \| UpdateFleetCapacity
    # \| UpdateFleetPortSettings \| UpdateRuntimeConfiguration \|
    # StopFleetActions \| StartFleetActions \| PutScalingPolicy \|
    # DeleteFleet \| DeleteFleetLocations \| DeleteScalingPolicy \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to update attribute metadata for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A human-readable description of a fleet.
    #
    # @option params [String] :new_game_session_protection_policy
    #   The game session protection policy to apply to all new instances
    #   created in this fleet. Instances that already exist are not affected.
    #   You can set protection for individual instances using
    #   UpdateGameSession.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   Policy settings that limit the number of game sessions an individual
    #   player can create over a span of time.
    #
    # @option params [Array<String>] :metric_groups
    #   The name of a metric group to add this fleet to. Use a metric group in
    #   Amazon CloudWatch to aggregate the metrics from multiple fleets.
    #   Provide an existing metric group name, or create a new metric group by
    #   providing a new name. A fleet can only be in one metric group at a
    #   time.
    #
    # @return [Types::UpdateFleetAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetAttributesOutput#fleet_id #fleet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_attributes({
    #     fleet_id: "FleetIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     description: "NonZeroAndMaxString",
    #     new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1,
    #     },
    #     metric_groups: ["MetricGroup"],
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetAttributes AWS API Documentation
    #
    # @overload update_fleet_attributes(params = {})
    # @param [Hash] params ({})
    def update_fleet_attributes(params = {}, options = {})
      req = build_request(:update_fleet_attributes, params)
      req.send_request(options)
    end

    # Updates capacity settings for a fleet. For fleets with multiple
    # locations, use this operation to manage capacity settings in each
    # location individually. Fleet capacity determines the number of game
    # sessions and players that can be hosted based on the fleet
    # configuration. Use this operation to set the following fleet capacity
    # properties:
    #
    # * Minimum/maximum size: Set hard limits on fleet capacity. GameLift
    #   cannot set the fleet's capacity to a value outside of this range,
    #   whether the capacity is changed manually or through automatic
    #   scaling.
    #
    # * Desired capacity: Manually set the number of EC2 instances to be
    #   maintained in a fleet location. Before changing a fleet's desired
    #   capacity, you may want to call DescribeEC2InstanceLimits to get the
    #   maximum capacity of the fleet's EC2 instance type. Alternatively,
    #   consider using automatic scaling to adjust capacity based on player
    #   demand.
    #
    # This operation can be used in the following ways:
    #
    # * To update capacity for a fleet's home Region, or if the fleet has
    #   no remote locations, omit the `Location` parameter. The fleet must
    #   be in `ACTIVE` status.
    #
    # * To update capacity for a fleet's remote location, include the
    #   `Location` parameter set to the location to be updated. The location
    #   must be in `ACTIVE` status.
    #
    # If successful, capacity settings are updated immediately. In response
    # a change in desired capacity, GameLift initiates steps to start new
    # instances or terminate existing instances in the requested fleet
    # location. This continues until the location's active instance count
    # matches the new desired instance count. You can track a fleet's
    # current capacity by calling DescribeFleetCapacity or
    # DescribeFleetLocationCapacity. If the requested desired instance count
    # is higher than the instance type's limit, the `LimitExceeded`
    # exception occurs.
    #
    # **Learn more**
    #
    # [Scaling fleet capacity][1]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| UpdateFleetAttributes \| UpdateFleetCapacity
    # \| UpdateFleetPortSettings \| UpdateRuntimeConfiguration \|
    # StopFleetActions \| StartFleetActions \| PutScalingPolicy \|
    # DeleteFleet \| DeleteFleetLocations \| DeleteScalingPolicy \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-manage-capacity.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to update capacity settings for. You
    #   can use either the fleet ID or ARN value.
    #
    # @option params [Integer] :desired_instances
    #   The number of EC2 instances you want to maintain in the specified
    #   fleet location. This value must fall between the minimum and maximum
    #   size limits.
    #
    # @option params [Integer] :min_size
    #   The minimum number of instances that are allowed in the specified
    #   fleet location. If this parameter is not set, the default is 0.
    #
    # @option params [Integer] :max_size
    #   The maximum number of instances that are allowed in the specified
    #   fleet location. If this parameter is not set, the default is 1.
    #
    # @option params [String] :location
    #   The name of a remote location to update fleet capacity settings for,
    #   in the form of an AWS Region code such as `us-west-2`.
    #
    # @return [Types::UpdateFleetCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetCapacityOutput#fleet_id #fleet_id} => String
    #   * {Types::UpdateFleetCapacityOutput#fleet_arn #fleet_arn} => String
    #   * {Types::UpdateFleetCapacityOutput#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_capacity({
    #     fleet_id: "FleetIdOrArn", # required
    #     desired_instances: 1,
    #     min_size: 1,
    #     max_size: 1,
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetCapacity AWS API Documentation
    #
    # @overload update_fleet_capacity(params = {})
    # @param [Hash] params ({})
    def update_fleet_capacity(params = {}, options = {})
      req = build_request(:update_fleet_capacity, params)
      req.send_request(options)
    end

    # Updates permissions that allow inbound traffic to connect to game
    # sessions that are being hosted on instances in the fleet.
    #
    # To update settings, specify the fleet ID to be updated and specify the
    # changes to be made. List the permissions you want to add in
    # `InboundPermissionAuthorizations`, and permissions you want to remove
    # in `InboundPermissionRevocations`. Permissions to be removed must
    # match existing fleet permissions.
    #
    # If successful, the fleet ID for the updated fleet is returned. For
    # fleets with remote locations, port setting updates can take time to
    # propagate across all locations. You can check the status of updates in
    # each location by calling `DescribeFleetPortSettings` with a location
    # name.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| UpdateFleetAttributes \| UpdateFleetCapacity
    # \| UpdateFleetPortSettings \| UpdateRuntimeConfiguration \|
    # StopFleetActions \| StartFleetActions \| PutScalingPolicy \|
    # DeleteFleet \| DeleteFleetLocations \| DeleteScalingPolicy \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to update port settings for. You can
    #   use either the fleet ID or ARN value.
    #
    # @option params [Array<Types::IpPermission>] :inbound_permission_authorizations
    #   A collection of port settings to be added to the fleet resource.
    #
    # @option params [Array<Types::IpPermission>] :inbound_permission_revocations
    #   A collection of port settings to be removed from the fleet resource.
    #
    # @return [Types::UpdateFleetPortSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetPortSettingsOutput#fleet_id #fleet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_port_settings({
    #     fleet_id: "FleetIdOrArn", # required
    #     inbound_permission_authorizations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "NonBlankString", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #     inbound_permission_revocations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "NonBlankString", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetPortSettings AWS API Documentation
    #
    # @overload update_fleet_port_settings(params = {})
    # @param [Hash] params ({})
    def update_fleet_port_settings(params = {}, options = {})
      req = build_request(:update_fleet_port_settings, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Updates information about a registered game server to help GameLift
    # FleetIQ to track game server availability. This operation is called by
    # a game server process that is running on an instance in a game server
    # group.
    #
    # Use this operation to update the following types of game server
    # information. You can make all three types of updates in the same
    # request:
    #
    # * To update the game server's utilization status, identify the game
    #   server and game server group and specify the current utilization
    #   status. Use this status to identify when game servers are currently
    #   hosting games and when they are available to be claimed.
    #
    # * To report health status, identify the game server and game server
    #   group and set health check to `HEALTHY`. If a game server does not
    #   report health status for a certain length of time, the game server
    #   is no longer considered healthy. As a result, it will be eventually
    #   deregistered from the game server group to avoid affecting
    #   utilization metrics. The best practice is to report health every 60
    #   seconds.
    #
    # * To change game server metadata, provide updated game server data.
    #
    # Once a game server is successfully updated, the relevant statuses and
    # timestamps are updated.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # RegisterGameServer \| ListGameServers \| ClaimGameServer \|
    # DescribeGameServer \| UpdateGameServer \| DeregisterGameServer \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running. Use either the GameServerGroup name or ARN value.
    #
    # @option params [required, String] :game_server_id
    #   A custom string that uniquely identifies the game server to update.
    #
    # @option params [String] :game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers using ListGameServers or
    #   ClaimGameServer.
    #
    # @option params [String] :utilization_status
    #   Indicates whether the game server is available or is currently hosting
    #   gameplay.
    #
    # @option params [String] :health_check
    #   Indicates health status of the game server. A request that includes
    #   this parameter updates the game server's *LastHealthCheckTime*
    #   timestamp.
    #
    # @return [Types::UpdateGameServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameServerOutput#game_server #game_server} => Types::GameServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #     game_server_data: "GameServerData",
    #     utilization_status: "AVAILABLE", # accepts AVAILABLE, UTILIZED
    #     health_check: "HEALTHY", # accepts HEALTHY
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server.game_server_group_name #=> String
    #   resp.game_server.game_server_group_arn #=> String
    #   resp.game_server.game_server_id #=> String
    #   resp.game_server.instance_id #=> String
    #   resp.game_server.connection_info #=> String
    #   resp.game_server.game_server_data #=> String
    #   resp.game_server.claim_status #=> String, one of "CLAIMED"
    #   resp.game_server.utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_server.registration_time #=> Time
    #   resp.game_server.last_claim_time #=> Time
    #   resp.game_server.last_health_check_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameServer AWS API Documentation
    #
    # @overload update_game_server(params = {})
    # @param [Hash] params ({})
    def update_game_server(params = {}, options = {})
      req = build_request(:update_game_server, params)
      req.send_request(options)
    end

    # **This operation is used with the GameLift FleetIQ solution and game
    # server groups.**
    #
    # Updates GameLift FleetIQ-specific properties for a game server group.
    # Many Auto Scaling group properties are updated on the Auto Scaling
    # group directly, including the launch template, Auto Scaling policies,
    # and maximum/minimum/desired instance counts.
    #
    # To update the game server group, specify the game server group ID and
    # provide the updated values. Before applying the updates, the new
    # values are validated to ensure that GameLift FleetIQ can continue to
    # perform instance balancing activity. If successful, a GameServerGroup
    # object is returned.
    #
    # **Learn more**
    #
    # [GameLift FleetIQ Guide][1]
    #
    # **Related actions**
    #
    # CreateGameServerGroup \| ListGameServerGroups \|
    # DescribeGameServerGroup \| UpdateGameServerGroup \|
    # DeleteGameServerGroup \| ResumeGameServerGroup \|
    # SuspendGameServerGroup \| DescribeGameServerInstances \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the
    #   GameServerGroup name or ARN value.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name ([ARN][1]) for an IAM role that allows Amazon
    #   GameLift to access your EC2 Auto Scaling groups.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [Array<Types::InstanceDefinition>] :instance_definitions
    #   An updated list of EC2 instance types to use in the Auto Scaling
    #   group. The instance definitions must specify at least two different
    #   instance types that are supported by GameLift FleetIQ. This updated
    #   list replaces the entire current list of instance definitions for the
    #   game server group. For more information on instance types, see [EC2
    #   Instance Types][1] in the *Amazon EC2 User Guide*. You can optionally
    #   specify capacity weighting for each instance type. If no weight value
    #   is specified for an instance type, it is set to the default value
    #   "1". For more information about capacity weighting, see [ Instance
    #   Weighting for Amazon EC2 Auto Scaling][2] in the Amazon EC2 Auto
    #   Scaling User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html
    #
    # @option params [String] :game_server_protection_policy
    #   A flag that indicates whether instances in the game server group are
    #   protected from early termination. Unprotected instances that have
    #   active game servers running might be terminated during a scale-down
    #   event, causing players to be dropped from the game. Protected
    #   instances cannot be terminated while there are active game servers
    #   running except in the event of a forced game server group deletion
    #   (see ). An exception to this is with Spot Instances, which can be
    #   terminated by AWS regardless of protection status. This property is
    #   set to `NO_PROTECTION` by default.
    #
    # @option params [String] :balancing_strategy
    #   Indicates how GameLift FleetIQ balances the use of Spot Instances and
    #   On-Demand Instances in the game server group. Method options include
    #   the following:
    #
    #   * `SPOT_ONLY` - Only Spot Instances are used in the game server group.
    #     If Spot Instances are unavailable or not viable for game hosting,
    #     the game server group provides no hosting capacity until Spot
    #     Instances can again be used. Until then, no new instances are
    #     started, and the existing nonviable Spot Instances are terminated
    #     (after current gameplay ends) and are not replaced.
    #
    #   * `SPOT_PREFERRED` - (default value) Spot Instances are used whenever
    #     available in the game server group. If Spot Instances are
    #     unavailable, the game server group continues to provide hosting
    #     capacity by falling back to On-Demand Instances. Existing nonviable
    #     Spot Instances are terminated (after current gameplay ends) and are
    #     replaced with new On-Demand Instances.
    #
    #   * `ON_DEMAND_ONLY` - Only On-Demand Instances are used in the game
    #     server group. No Spot Instances are used, even when available, while
    #     this balancing strategy is in force.
    #
    # @return [Types::UpdateGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     role_arn: "IamRoleArn",
    #     instance_definitions: [
    #       {
    #         instance_type: "c4.large", # required, accepts c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge
    #         weighted_capacity: "WeightedCapacity",
    #       },
    #     ],
    #     game_server_protection_policy: "NO_PROTECTION", # accepts NO_PROTECTION, FULL_PROTECTION
    #     balancing_strategy: "SPOT_ONLY", # accepts SPOT_ONLY, SPOT_PREFERRED, ON_DEMAND_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameServerGroup AWS API Documentation
    #
    # @overload update_game_server_group(params = {})
    # @param [Hash] params ({})
    def update_game_server_group(params = {}, options = {})
      req = build_request(:update_game_server_group, params)
      req.send_request(options)
    end

    # Updates the mutable properties of a game session.
    #
    # To update a game session, specify the game session ID and the values
    # you want to change.
    #
    # If successful, the updated `GameSession` object is returned.
    #
    # **Related actions**
    #
    # CreateGameSession \| DescribeGameSessions \|
    # DescribeGameSessionDetails \| SearchGameSessions \| UpdateGameSession
    # \| GetGameSessionLogUrl \| StartGameSessionPlacement \|
    # DescribeGameSessionPlacement \| StopGameSessionPlacement \| [All APIs
    # by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to update.
    #
    # @option params [Integer] :maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously to
    #   the game session.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [String] :player_session_creation_policy
    #   A policy that determines whether the game session is accepting new
    #   players.
    #
    # @option params [String] :protection_policy
    #   Game session protection policy to apply to this game session only.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #
    # @return [Types::UpdateGameSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameSessionOutput#game_session #game_session} => Types::GameSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_session({
    #     game_session_id: "ArnStringModel", # required
    #     maximum_player_session_count: 1,
    #     name: "NonZeroAndMaxString",
    #     player_session_creation_policy: "ACCEPT_ALL", # accepts ACCEPT_ALL, DENY_ALL
    #     protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session.game_session_id #=> String
    #   resp.game_session.name #=> String
    #   resp.game_session.fleet_id #=> String
    #   resp.game_session.fleet_arn #=> String
    #   resp.game_session.creation_time #=> Time
    #   resp.game_session.termination_time #=> Time
    #   resp.game_session.current_player_session_count #=> Integer
    #   resp.game_session.maximum_player_session_count #=> Integer
    #   resp.game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session.status_reason #=> String, one of "INTERRUPTED"
    #   resp.game_session.game_properties #=> Array
    #   resp.game_session.game_properties[0].key #=> String
    #   resp.game_session.game_properties[0].value #=> String
    #   resp.game_session.ip_address #=> String
    #   resp.game_session.dns_name #=> String
    #   resp.game_session.port #=> Integer
    #   resp.game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session.creator_id #=> String
    #   resp.game_session.game_session_data #=> String
    #   resp.game_session.matchmaker_data #=> String
    #   resp.game_session.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSession AWS API Documentation
    #
    # @overload update_game_session(params = {})
    # @param [Hash] params ({})
    def update_game_session(params = {}, options = {})
      req = build_request(:update_game_session, params)
      req.send_request(options)
    end

    # Updates the configuration of a game session queue, which determines
    # how the queue processes new game session requests. To update settings,
    # specify the queue name to be updated and provide the new settings.
    # When updating destinations, provide a complete list of destinations.
    #
    # **Learn more**
    #
    # [ Using Multi-Region Queues][1]
    #
    # **Related actions**
    #
    # CreateGameSessionQueue \| DescribeGameSessionQueues \|
    # UpdateGameSessionQueue \| DeleteGameSessionQueue \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with game session queue. Queue
    #   names must be unique within each Region. You can use either the queue
    #   ID or ARN value.
    #
    # @option params [Integer] :timeout_in_seconds
    #   The maximum time, in seconds, that a new game session placement
    #   request remains in the queue. When a request exceeds this time, the
    #   game session placement changes to a `TIMED_OUT` status.
    #
    # @option params [Array<Types::PlayerLatencyPolicy>] :player_latency_policies
    #   A set of policies that act as a sliding cap on player latency. FleetIQ
    #   works to deliver low latency for most players in a game session. These
    #   policies ensure that no individual player can be placed into a game
    #   with unreasonably high latency. Use multiple policies to gradually
    #   relax latency requirements a step at a time. Multiple policies are
    #   applied based on their maximum allowed latency, starting with the
    #   lowest value. When updating policies, provide a complete collection of
    #   policies.
    #
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   A list of fleets and/or fleet aliases that can be used to fulfill game
    #   session placement requests in the queue. Destinations are identified
    #   by either a fleet ARN or a fleet alias ARN, and are listed in order of
    #   placement preference. When updating this list, provide a complete list
    #   of destinations.
    #
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   A list of locations where a queue is allowed to place new game
    #   sessions. Locations are specified in the form of AWS Region codes,
    #   such as `us-west-2`. If this parameter is not set, game sessions can
    #   be placed in any queue location. To remove an existing filter
    #   configuration, pass in an empty set.
    #
    # @option params [Types::PriorityConfiguration] :priority_configuration
    #   Custom settings to use when prioritizing destinations and locations
    #   for game session placements. This configuration replaces the FleetIQ
    #   default prioritization process. Priority types that are not explicitly
    #   named will be automatically applied at the end of the prioritization
    #   process. To remove an existing priority configuration, pass in an
    #   empty set.
    #
    # @option params [String] :custom_event_data
    #   Information to be added to all events that are related to this game
    #   session queue.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive game session placement
    #   notifications. See [ Setting up notifications for game session
    #   placement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html
    #
    # @return [Types::UpdateGameSessionQueueOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameSessionQueueOutput#game_session_queue #game_session_queue} => Types::GameSessionQueue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_session_queue({
    #     name: "GameSessionQueueNameOrArn", # required
    #     timeout_in_seconds: 1,
    #     player_latency_policies: [
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1,
    #       },
    #     ],
    #     destinations: [
    #       {
    #         destination_arn: "ArnStringModel",
    #       },
    #     ],
    #     filter_configuration: {
    #       allowed_locations: ["LocationStringModel"],
    #     },
    #     priority_configuration: {
    #       priority_order: ["LATENCY"], # accepts LATENCY, COST, DESTINATION, LOCATION
    #       location_order: ["LocationStringModel"],
    #     },
    #     custom_event_data: "QueueCustomEventData",
    #     notification_target: "QueueSnsArnStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_queue.name #=> String
    #   resp.game_session_queue.game_session_queue_arn #=> String
    #   resp.game_session_queue.timeout_in_seconds #=> Integer
    #   resp.game_session_queue.player_latency_policies #=> Array
    #   resp.game_session_queue.player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.game_session_queue.player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.game_session_queue.destinations #=> Array
    #   resp.game_session_queue.destinations[0].destination_arn #=> String
    #   resp.game_session_queue.filter_configuration.allowed_locations #=> Array
    #   resp.game_session_queue.filter_configuration.allowed_locations[0] #=> String
    #   resp.game_session_queue.priority_configuration.priority_order #=> Array
    #   resp.game_session_queue.priority_configuration.priority_order[0] #=> String, one of "LATENCY", "COST", "DESTINATION", "LOCATION"
    #   resp.game_session_queue.priority_configuration.location_order #=> Array
    #   resp.game_session_queue.priority_configuration.location_order[0] #=> String
    #   resp.game_session_queue.custom_event_data #=> String
    #   resp.game_session_queue.notification_target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionQueue AWS API Documentation
    #
    # @overload update_game_session_queue(params = {})
    # @param [Hash] params ({})
    def update_game_session_queue(params = {}, options = {})
      req = build_request(:update_game_session_queue, params)
      req.send_request(options)
    end

    # Updates settings for a FlexMatch matchmaking configuration. These
    # changes affect all matches and game sessions that are created after
    # the update. To update settings, specify the configuration name to be
    # updated and provide the new settings.
    #
    # **Learn more**
    #
    # [ Design a FlexMatch matchmaker][1]
    #
    # **Related actions**
    #
    # CreateMatchmakingConfiguration \| DescribeMatchmakingConfigurations \|
    # UpdateMatchmakingConfiguration \| DeleteMatchmakingConfiguration \|
    # CreateMatchmakingRuleSet \| DescribeMatchmakingRuleSets \|
    # ValidateMatchmakingRuleSet \| DeleteMatchmakingRuleSet \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking configuration to update. You
    #   can use either the configuration name or ARN value.
    #
    # @option params [String] :description
    #   A descriptive label that is associated with matchmaking configuration.
    #
    # @option params [Array<String>] :game_session_queue_arns
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a GameLift
    #   game session queue resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::gamesessionqueue/<queue name>`. Queues can
    #   be located in any Region. Queues are used to start new GameLift-hosted
    #   game sessions for matches that are created with this matchmaking
    #   configuration. If `FlexMatchMode` is set to `STANDALONE`, do not set
    #   this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [Integer] :request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that fail due to timing out can
    #   be resubmitted as needed.
    #
    # @option params [Integer] :acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match, if acceptance is required.
    #
    # @option params [Boolean] :acceptance_required
    #   A flag that indicates whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to TRUE. With this option enabled, matchmaking tickets
    #   use the status `REQUIRES_ACCEPTANCE` to indicate when a completed
    #   potential match is waiting for player acceptance.
    #
    # @option params [String] :rule_set_name
    #   A unique identifier for the matchmaking rule set to use with this
    #   configuration. You can use either the rule set name or ARN value. A
    #   matchmaking configuration can only use rule sets that are defined in
    #   the same Region.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive matchmaking notifications.
    #   See [ Setting up notifications for matchmaking][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    #
    # @option params [Integer] :additional_player_count
    #   The number of player slots in a match to keep open for future players.
    #   For example, if the configuration's rule set specifies a match for a
    #   single 12-person team, and the additional player count is set to 2,
    #   only 10 players are selected for the match. This parameter is not used
    #   if `FlexMatchMode` is set to `STANDALONE`.
    #
    # @option params [String] :custom_event_data
    #   Information to add to all events related to the matchmaking
    #   configuration.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match. This
    #   parameter is not used if `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [String] :game_session_data
    #   A set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the GameSession
    #   object with a request to start a new game session (see [Start a Game
    #   Session][1]). This information is added to the new GameSession object
    #   that is created for a successful match. This parameter is not used if
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [String] :backfill_mode
    #   The method that is used to backfill game sessions created with this
    #   matchmaking configuration. Specify MANUAL when your game manages
    #   backfill requests manually or does not use the match backfill feature.
    #   Specify AUTOMATIC to have GameLift create a StartMatchBackfill request
    #   whenever a game session has one or more open slots. Learn more about
    #   manual and automatic backfill in [Backfill Existing Games with
    #   FlexMatch][1]. Automatic backfill is not available when
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    #
    # @option params [String] :flex_match_mode
    #   Indicates whether this matchmaking configuration is being used with
    #   GameLift hosting or as a standalone matchmaking solution.
    #
    #   * **STANDALONE** - FlexMatch forms matches and returns match
    #     information, including players and team assignments, in a [
    #     MatchmakingSucceeded][1] event.
    #
    #   * **WITH\_QUEUE** - FlexMatch forms matches and uses the specified
    #     GameLift queue to start a game session for the match.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded
    #
    # @return [Types::UpdateMatchmakingConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMatchmakingConfigurationOutput#configuration #configuration} => Types::MatchmakingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_matchmaking_configuration({
    #     name: "MatchmakingConfigurationName", # required
    #     description: "NonZeroAndMaxString",
    #     game_session_queue_arns: ["ArnStringModel"],
    #     request_timeout_seconds: 1,
    #     acceptance_timeout_seconds: 1,
    #     acceptance_required: false,
    #     rule_set_name: "MatchmakingRuleSetName",
    #     notification_target: "SnsArnStringModel",
    #     additional_player_count: 1,
    #     custom_event_data: "CustomEventData",
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #     game_session_data: "GameSessionData",
    #     backfill_mode: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #     flex_match_mode: "STANDALONE", # accepts STANDALONE, WITH_QUEUE
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.name #=> String
    #   resp.configuration.configuration_arn #=> String
    #   resp.configuration.description #=> String
    #   resp.configuration.game_session_queue_arns #=> Array
    #   resp.configuration.game_session_queue_arns[0] #=> String
    #   resp.configuration.request_timeout_seconds #=> Integer
    #   resp.configuration.acceptance_timeout_seconds #=> Integer
    #   resp.configuration.acceptance_required #=> Boolean
    #   resp.configuration.rule_set_name #=> String
    #   resp.configuration.rule_set_arn #=> String
    #   resp.configuration.notification_target #=> String
    #   resp.configuration.additional_player_count #=> Integer
    #   resp.configuration.custom_event_data #=> String
    #   resp.configuration.creation_time #=> Time
    #   resp.configuration.game_properties #=> Array
    #   resp.configuration.game_properties[0].key #=> String
    #   resp.configuration.game_properties[0].value #=> String
    #   resp.configuration.game_session_data #=> String
    #   resp.configuration.backfill_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.configuration.flex_match_mode #=> String, one of "STANDALONE", "WITH_QUEUE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateMatchmakingConfiguration AWS API Documentation
    #
    # @overload update_matchmaking_configuration(params = {})
    # @param [Hash] params ({})
    def update_matchmaking_configuration(params = {}, options = {})
      req = build_request(:update_matchmaking_configuration, params)
      req.send_request(options)
    end

    # Updates the current runtime configuration for the specified fleet,
    # which tells GameLift how to launch server processes on all instances
    # in the fleet. You can update a fleet's runtime configuration at any
    # time after the fleet is created; it does not need to be in `ACTIVE`
    # status.
    #
    # To update runtime configuration, specify the fleet ID and provide a
    # `RuntimeConfiguration` with an updated set of server process
    # configurations.
    #
    # If successful, the fleet's runtime configuration settings are
    # updated. Each instance in the fleet regularly checks for and retrieves
    # updated runtime configurations. Instances immediately begin complying
    # with the new configuration by launching new server processes or not
    # replacing existing processes when they shut down. Updating a fleet's
    # runtime configuration never affects existing server processes.
    #
    # **Learn more**
    #
    # [Setting up GameLift fleets][1]
    #
    # **Related actions**
    #
    # CreateFleetLocations \| UpdateFleetAttributes \| UpdateFleetCapacity
    # \| UpdateFleetPortSettings \| UpdateRuntimeConfiguration \|
    # StopFleetActions \| StartFleetActions \| PutScalingPolicy \|
    # DeleteFleet \| DeleteFleetLocations \| DeleteScalingPolicy \| [All
    # APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to update runtime configuration for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [required, Types::RuntimeConfiguration] :runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. Server processes run either a custom game build executable or a
    #   Realtime Servers script. The runtime configuration lists the types of
    #   server processes to run on an instance, how to launch them, and the
    #   number of processes to run concurrently.
    #
    # @return [Types::UpdateRuntimeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuntimeConfigurationOutput#runtime_configuration #runtime_configuration} => Types::RuntimeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_runtime_configuration({
    #     fleet_id: "FleetIdOrArn", # required
    #     runtime_configuration: { # required
    #       server_processes: [
    #         {
    #           launch_path: "LaunchPathStringModel", # required
    #           parameters: "LaunchParametersStringModel",
    #           concurrent_executions: 1, # required
    #         },
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_configuration.server_processes #=> Array
    #   resp.runtime_configuration.server_processes[0].launch_path #=> String
    #   resp.runtime_configuration.server_processes[0].parameters #=> String
    #   resp.runtime_configuration.server_processes[0].concurrent_executions #=> Integer
    #   resp.runtime_configuration.max_concurrent_game_session_activations #=> Integer
    #   resp.runtime_configuration.game_session_activation_timeout_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfiguration AWS API Documentation
    #
    # @overload update_runtime_configuration(params = {})
    # @param [Hash] params ({})
    def update_runtime_configuration(params = {}, options = {})
      req = build_request(:update_runtime_configuration, params)
      req.send_request(options)
    end

    # Updates Realtime script metadata and content.
    #
    # To update script metadata, specify the script ID and provide updated
    # name and/or version values.
    #
    # To update script content, provide an updated zip file by pointing to
    # either a local file or an Amazon S3 bucket location. You can use
    # either method regardless of how the original script was uploaded. Use
    # the *Version* parameter to track updates to the script.
    #
    # If the call is successful, the updated metadata is stored in the
    # script record and a revised script is uploaded to the Amazon GameLift
    # service. Once the script is updated and acquired by a fleet instance,
    # the new version is used for all new game sessions.
    #
    # **Learn more**
    #
    # [Amazon GameLift Realtime Servers][1]
    #
    # **Related actions**
    #
    # CreateScript \| ListScripts \| DescribeScript \| UpdateScript \|
    # DeleteScript \| [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :script_id
    #   A unique identifier for the Realtime script to update. You can use
    #   either the script ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a script. Script names do
    #   not need to be unique.
    #
    # @option params [String] :version
    #   Version information that is associated with a build or script. Version
    #   strings do not need to be unique.
    #
    # @option params [Types::S3Location] :storage_location
    #   The location of the Amazon S3 bucket where a zipped file containing
    #   your Realtime scripts is stored. The storage location must specify the
    #   Amazon S3 bucket name, the zip file name (the "key"), and a role ARN
    #   that allows Amazon GameLift to access the Amazon S3 storage location.
    #   The S3 bucket must be in the same Region where you want to create a
    #   new script. By default, Amazon GameLift uploads the latest version of
    #   the zip file; if you have S3 object versioning turned on, you can use
    #   the `ObjectVersion` parameter to specify an earlier version.
    #
    # @option params [String, StringIO, File] :zip_file
    #   A data object containing your Realtime scripts and dependencies as a
    #   zip file. The zip file can have one or multiple files. Maximum size of
    #   a zip file is 5 MB.
    #
    #   When using the AWS CLI tool to create a script, this parameter is set
    #   to the zip file name. It must be prepended with the string
    #   "fileb://" to indicate that the file data is a binary object. For
    #   example: `--zip-file fileb://myRealtimeScript.zip`.
    #
    # @return [Types::UpdateScriptOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScriptOutput#script #script} => Types::Script
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_script({
    #     script_id: "ScriptIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString",
    #     },
    #     zip_file: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.script.script_id #=> String
    #   resp.script.script_arn #=> String
    #   resp.script.name #=> String
    #   resp.script.version #=> String
    #   resp.script.size_on_disk #=> Integer
    #   resp.script.creation_time #=> Time
    #   resp.script.storage_location.bucket #=> String
    #   resp.script.storage_location.key #=> String
    #   resp.script.storage_location.role_arn #=> String
    #   resp.script.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateScript AWS API Documentation
    #
    # @overload update_script(params = {})
    # @param [Hash] params ({})
    def update_script(params = {}, options = {})
      req = build_request(:update_script, params)
      req.send_request(options)
    end

    # Validates the syntax of a matchmaking rule or rule set. This operation
    # checks that the rule set is using syntactically correct JSON and that
    # it conforms to allowed property expressions. To validate syntax,
    # provide a rule set JSON string.
    #
    # **Learn more**
    #
    # * [Build a rule set][1]
    #
    # ^
    #
    # **Related actions**
    #
    # CreateMatchmakingConfiguration \| DescribeMatchmakingConfigurations \|
    # UpdateMatchmakingConfiguration \| DeleteMatchmakingConfiguration \|
    # CreateMatchmakingRuleSet \| DescribeMatchmakingRuleSets \|
    # ValidateMatchmakingRuleSet \| DeleteMatchmakingRuleSet \| [All APIs by
    # task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :rule_set_body
    #   A collection of matchmaking rules to validate, formatted as a JSON
    #   string.
    #
    # @return [Types::ValidateMatchmakingRuleSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateMatchmakingRuleSetOutput#valid #valid} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_matchmaking_rule_set({
    #     rule_set_body: "RuleSetBody", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.valid #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ValidateMatchmakingRuleSet AWS API Documentation
    #
    # @overload validate_matchmaking_rule_set(params = {})
    # @param [Hash] params ({})
    def validate_matchmaking_rule_set(params = {}, options = {})
      req = build_request(:validate_matchmaking_rule_set, params)
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
      context[:gem_name] = 'aws-sdk-gamelift'
      context[:gem_version] = '1.52.0'
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
