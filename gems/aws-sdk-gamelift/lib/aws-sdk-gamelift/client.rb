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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:gamelift)

module Aws::GameLift
  # An API client for Aws::GameLift.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::GameLift
    @identifier = :gamelift

    add_plugin(::Aws::GameLift::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GameLift::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
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
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
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
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Registers a player's acceptance or rejection of a proposed FlexMatch match. A
    #             matchmaking configuration may require player acceptance; if so, then matches built with
    #             that configuration cannot be completed unless all players accept the proposed match
    #             within a specified time limit. </p>
    #          <p>When FlexMatch builds a match, all the matchmaking tickets involved in the proposed
    #             match are placed into status <code>REQUIRES_ACCEPTANCE</code>. This is a trigger for
    #             your game to get acceptance from all players in each ticket. Calls to this action are only valid
    #             for tickets that are in this status; calls for tickets not in this status result in an
    #             error.</p>
    #          <p>To register acceptance, specify the ticket ID, one or more players, and an acceptance response.
    #             When all players have accepted, Amazon GameLift Servers advances the matchmaking tickets to status
    #                 <code>PLACING</code>, and attempts to create a new game session for the match. </p>
    #          <p>If any player rejects the match, or if acceptances are not received before a specified
    #             timeout, the proposed match is dropped. Each matchmaking ticket in the failed match is handled as follows: </p>
    #          <ul>
    #             <li>
    #                <p>If the ticket has one or more players who rejected the match or failed to
    #                 respond, the ticket status is set <code>CANCELLED</code> and processing is
    #                 terminated.</p>
    #             </li>
    #             <li>
    #                <p>If all players in the ticket accepted the match, the ticket
    #                 status is returned to <code>SEARCHING</code> to find a new match. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html">
    #                 Add FlexMatch to a game client</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html">
    #                 FlexMatch events</a> (reference)</p>
    # @param [Hash, Types::AcceptMatchInput] params
    # @option params [String] :ticket_id
    #   <p>A unique identifier for a matchmaking ticket. The ticket must be in status <code>REQUIRES_ACCEPTANCE</code>; otherwise this
    #               request will fail.</p>
    # @option params [Array<String>] :player_ids
    #   <p>A unique identifier for a player delivering the response. This parameter can include one or multiple player
    #               IDs.</p>
    # @option params [String] :acceptance_type
    #   <p>Player response to the proposed match.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ticket_id: "MatchmakingIdStringModel", # required
    #     player_ids: ["PlayerId"], # required
    #     acceptance_type: "ACCEPT" # One of: ["ACCEPT", "REJECT"], # required
    #   }
    #   options = {}
    #   response = client.accept_match(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AcceptMatchOutput]
    def accept_match(params = {}, options = {})
      request = build_request(:accept_match, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Locates an available game server and
    #             temporarily reserves it to host gameplay and players. This operation is called from a
    #             game client or client service (such as a matchmaker) to request hosting resources for a
    #             new game session. In response, Amazon GameLift Servers FleetIQ locates an available game server, places it in
    #                 <code>CLAIMED</code> status for 60 seconds, and returns connection information that
    #             players can use to connect to the game server. </p>
    #          <p>To claim a game server, identify a game server group. You can also specify a game
    #             server ID, although this approach bypasses Amazon GameLift Servers FleetIQ placement optimization. Optionally,
    #             include game data to pass to the game server at the start of a game session, such as a
    #             game map or player information. Add filter options to further restrict how a
    #             game server is chosen, such as only allowing game servers on <code>ACTIVE</code> instances
    #                 to be claimed.</p>
    #          <p>When a game server is successfully claimed, connection information is returned. A
    #             claimed game server's utilization status remains <code>AVAILABLE</code> while the claim
    #             status is set to <code>CLAIMED</code> for up to 60 seconds. This time period gives the
    #             game server time to update its status to <code>UTILIZED</code> after players join. If
    #             the game server's status is not updated within 60 seconds, the game server reverts to
    #             unclaimed status and is available to be claimed by another request. The claim time
    #             period is a fixed value and is not configurable.</p>
    #          <p>If you try to claim a specific game server, this request will fail in the following
    #             cases:</p>
    #          <ul>
    #             <li>
    #                <p>If the game server utilization status is <code>UTILIZED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the game server claim status is <code>CLAIMED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the game server is running on an instance in <code>DRAINING</code> status and
    #                 the provided filter option does not allow placing on <code>DRAINING</code> instances.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::ClaimGameServerInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running. If you are not specifying a game server to claim, this value identifies
    #               where you want Amazon GameLift Servers FleetIQ to look for an available game server to claim. </p>
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server to claim. If this parameter is left empty, Amazon GameLift Servers FleetIQ searches for an available
    #               game server in the specified game server group.</p>
    # @option params [String] :game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data 
    #               is passed to a game client or service when it requests information on game servers. </p>
    # @option params [Types::ClaimFilterOption] :filter_option
    #   <p>Object that restricts how a claimed game server is chosen.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId",
    #     game_server_data: "GameServerData",
    #     filter_option: {
    #       instance_statuses: ["ACTIVE" # One of: ["ACTIVE", "DRAINING"]]
    #     }
    #   }
    #   options = {}
    #   response = client.claim_game_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       game_server_id: "GameServerId",
    #       instance_id: "GameServerInstanceId",
    #       connection_info: "GameServerConnectionInfo",
    #       game_server_data: "GameServerData",
    #       claim_status: "CLAIMED" # One of: ["CLAIMED"],
    #       utilization_status: "AVAILABLE" # One of: ["AVAILABLE", "UTILIZED"],
    #       registration_time: Time.now,
    #       last_claim_time: Time.now,
    #       last_health_check_time: Time.now
    #     }
    #   }
    # @return [Types::ClaimGameServerOutput]
    def claim_game_server(params = {}, options = {})
      request = build_request(:claim_game_server, params)
      request.send_request(options)
    end

    # <p>Creates an alias for a fleet. In most situations, you can use an alias ID in place of
    #             a fleet ID. An alias provides a level of abstraction for a fleet that is useful when
    #             redirecting player traffic from one fleet to another, such as when updating your game
    #             build. </p>
    #          <p>Amazon GameLift Servers supports two types of routing strategies for aliases: simple and terminal. A
    #             simple alias points to an active fleet. A terminal alias is used to display messaging or
    #             link to a URL instead of routing players to an active fleet. For example, you might use
    #             a terminal alias when a game version is no longer supported and you want to direct
    #             players to an upgrade site. </p>
    #          <p>To create a fleet alias, specify an alias name, routing strategy, and optional
    #             description. Each simple alias can point to only one fleet, but a fleet can have
    #             multiple aliases. If successful, a new alias record is returned, including an alias ID
    #             and an ARN. You can reassign an alias to another fleet by calling
    #                 <code>UpdateAlias</code>.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreateAliasInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    # @option params [String] :description
    #   <p>A human-readable description of the alias.</p>
    # @option params [Types::RoutingStrategy] :routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the alias.
    #           </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new alias resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources are useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonBlankAndLengthConstraintString", # required
    #     description: "NonZeroAndMaxString",
    #     routing_strategy: { # required
    #       type: "SIMPLE" # One of: ["SIMPLE", "TERMINAL"],
    #       fleet_id: "FleetId",
    #       message: "FreeText"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias: {
    #       alias_id: "AliasId",
    #       name: "NonBlankAndLengthConstraintString",
    #       alias_arn: "AliasArn",
    #       description: "FreeText",
    #       routing_strategy: {
    #         type: "SIMPLE" # One of: ["SIMPLE", "TERMINAL"],
    #         fleet_id: "FleetId",
    #         message: "FreeText"
    #       },
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::CreateAliasOutput]
    def create_alias(params = {}, options = {})
      request = build_request(:create_alias, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon GameLift Servers build resource for your game server binary files. Combine game
    #             server binaries into a zip file for use with Amazon GameLift Servers. </p>
    #          <important>
    #             <p>When setting up a new game build for Amazon GameLift Servers, we recommend using the CLI command <b>
    #                   <a href="https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html">upload-build</a>
    #                </b>. This helper command combines two tasks: (1) it
    #                 uploads your build files from a file directory to an Amazon GameLift Servers Amazon S3 location, and (2)
    #                 it creates a new build resource.</p>
    #          </important>
    #          <p>You can use the <code>CreateBuild</code> operation in the following scenarios:</p>
    #          <ul>
    #             <li>
    #                <p>Create a new game build with build files that are in an Amazon S3 location under an
    #                     Amazon Web Services account that you control. To use this option, you give Amazon GameLift Servers access to
    #                     the Amazon S3 bucket. With permissions in place, specify a build name, operating
    #                     system, and the Amazon S3 storage location of your game build.</p>
    #             </li>
    #             <li>
    #                <p>Upload your build files to a Amazon GameLift Servers Amazon S3 location. To use this option,
    #                     specify a build name and operating system. This operation creates a new build
    #                     resource and also returns an Amazon S3 location with temporary access credentials.
    #                     Use the credentials to manually upload your build files to the specified Amazon S3
    #                     location. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html">Uploading Objects</a> in
    #                     the <i>Amazon S3 Developer Guide</i>. After you upload build files to
    #                     the Amazon GameLift Servers Amazon S3 location, you can't update them. </p>
    #             </li>
    #          </ul>
    #          <p>If successful, this operation creates a new build resource with a unique build ID and
    #             places it in <code>INITIALIZED</code> status. A build must be in <code>READY</code>
    #             status before you can create fleets with it.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">Uploading Your
    #                 Game</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build"> Create a Build with Files in Amazon S3</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreateBuildInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. You can change this value later. </p>
    # @option params [String] :version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. You can change this value later. </p>
    # @option params [Types::S3Location] :storage_location
    #   <p>Information indicating where your game build files are stored. Use this parameter only
    #               when creating a build with files stored in an Amazon S3 bucket that you own. The storage
    #               location must specify an Amazon S3 bucket name and key. The location must also specify a role
    #               ARN that you set up to allow Amazon GameLift Servers to access your Amazon S3 bucket. The S3 bucket and your
    #               new build must be in the same Region.</p>
    #            <p>If a <code>StorageLocation</code> is specified, the size of your file can be found in
    #               your Amazon S3 bucket. Amazon GameLift Servers will report a <code>SizeOnDisk</code> of 0. </p>
    # @option params [String] :operating_system
    #   <p>The operating system that your game server binaries run on. This value determines the
    #               type of fleet resources that you use for this build. If your game build contains
    #               multiple executables, they all must run on the same operating system. You must specify a
    #               valid operating system in this request. There is no default value. You can't change a
    #               build's operating system later.</p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more details in 
    #               the <a href="http://aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>. 
    #               For game servers
    #                   that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the
    #                   game server build to server SDK 5.x, and then deploy to AL2023 instances. See
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html">
    #                   Migrate to server SDK version 5.</a>
    #               </p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new build resource. Tags are developer defined
    #               key-value pairs. Tagging Amazon Web Services resources are useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html">TagResource</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html">UntagResource</a>, and
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html">ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit
    #               may be lower than stated. See the Amazon Web Services General Reference for actual tagging
    #               limits.</p>
    # @option params [String] :server_sdk_version
    #   <p>A server SDK version you used when integrating your game server build with Amazon GameLift Servers. For more information see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-custom-intro.html">Integrate games
    #                   with custom game servers</a>. By default Amazon GameLift Servers sets this value to
    #                   <code>4.0.2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString"
    #     },
    #     operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     server_sdk_version: "ServerSdkVersion"
    #   }
    #   options = {}
    #   response = client.create_build(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build: {
    #       build_id: "BuildId",
    #       build_arn: "BuildArn",
    #       name: "FreeText",
    #       version: "FreeText",
    #       status: "INITIALIZED" # One of: ["INITIALIZED", "READY", "FAILED"],
    #       size_on_disk: 1,
    #       operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #       creation_time: Time.now,
    #       server_sdk_version: "ServerSdkVersion"
    #     },
    #     upload_credentials: {
    #       access_key_id: "NonEmptyString",
    #       secret_access_key: "NonEmptyString",
    #       session_token: "NonEmptyString"
    #     },
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString"
    #     }
    #   }
    # @return [Types::CreateBuildOutput]
    def create_build(params = {}, options = {})
      request = build_request(:create_build, params)
      request.send_request(options)
    end

    # <p>Creates a managed fleet of Amazon Elastic Compute Cloud (Amazon EC2) instances to host your containerized game
    #             servers. Use this operation to define how to deploy a container architecture onto each
    #             fleet instance and configure fleet settings. You can create a container fleet in any
    #             Amazon Web Services Regions that Amazon GameLift Servers supports for multi-location fleets. A container fleet can be
    #             deployed to a single location or multiple locations. Container fleets are deployed with
    #             Amazon Linux 2023 as the instance operating system.</p>
    #          <p>Define the fleet's container architecture using container group definitions. Each
    #             fleet can have one of the following container group types:</p>
    #          <ul>
    #             <li>
    #                <p>The game server container group runs your game server build and dependent software. Amazon GameLift Servers
    #                     deploys one or more replicas of this container group to each fleet instance. The
    #                     number of replicas depends on the computing capabilities of the fleet instance
    #                     in use. </p>
    #             </li>
    #             <li>
    #                <p>An optional per-instance container group might be used to run other software that only needs
    #                     to run once per instance, such as background services, logging, or test
    #                     processes. One per-instance container group is deployed to each fleet instance. </p>
    #             </li>
    #          </ul>
    #          <p>Each container group can include the definition for one or more containers. A
    #             container definition specifies a container image that is stored in an Amazon Elastic Container Registry (Amazon ECR)
    #             public or private repository.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <p>Use this operation to make the following types of requests. Most fleet settings have
    #             default values, so you can create a working fleet with a minimal configuration and
    #             default values, which you can customize later.</p>
    #          <ul>
    #             <li>
    #                <p>Create a fleet with no container groups. You can configure a container fleet and then add
    #                     container group definitions later. In this scenario, no fleet instances are
    #                     deployed, and the fleet can't host game sessions until you add a game server
    #                     container group definition. Provide the following required parameter
    #                     values:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>FleetRoleArn</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Create a fleet with a game server container group. Provide the following required parameter
    #                     values:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>FleetRoleArn</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>GameServerContainerGroupDefinitionName</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Create a fleet with a game server container group and a per-instance container group. Provide
    #                     the following required parameter values:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>FleetRoleArn</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>GameServerContainerGroupDefinitionName</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>PerInstanceContainerGroupDefinitionName</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, this operation creates a new container fleet resource, places it in
    #                 <code>PENDING</code> status, and initiates the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow">fleet creation workflow</a>. For fleets with container groups, this workflow
    #             starts a fleet deployment and transitions the status to <code>ACTIVE</code>. Fleets
    #             without a container group are placed in <code>CREATED</code> status.</p>
    #          <p>You can update most of the properties of a fleet, including container group
    #             definitions, and deploy the update across all fleet instances. Use a fleet update to
    #             deploy a new game server version update across the container fleet. </p>
    # @param [Hash, Types::CreateContainerFleetInput] params
    # @option params [String] :fleet_role_arn
    #   <p>The unique identifier for an Identity and Access Management (IAM) role with permissions to run your
    #               containers on resources that are managed by Amazon GameLift Servers. Use an IAM service role with the
    #                   <code>GameLiftContainerFleetPolicy</code> managed policy attached. For more
    #               information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html">Set up an IAM service
    #                   role</a>. You can't change this fleet property after the fleet is
    #               created.</p>
    #            <p>IAM role ARN values use the following pattern: <code>arn:aws:iam::[Amazon Web Services account]:role/[role name]</code>.</p>
    # @option params [String] :description
    #   <p>A meaningful description of the container fleet.</p>
    # @option params [String] :game_server_container_group_definition_name
    #   <p>A container group definition resource that describes how to deploy containers with
    #               your game server build and support software onto each fleet instance. You can specify
    #               the container group definition's name to use the latest version. Alternatively, provide
    #               an ARN value with a specific version number.</p>
    #            <p>Create a container group definition by calling 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a>. 
    #               This operation creates a 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a> resource. </p>
    # @option params [String] :per_instance_container_group_definition_name
    #   <p>The name of a container group definition resource that describes a set of axillary
    #               software. A fleet instance has one process for executables in this container group. A
    #               per-instance container group is optional. You can update the fleet to add or remove a
    #               per-instance container group at any time. You can specify the container group
    #               definition's name to use the latest version. Alternatively, provide an ARN value with a
    #               specific version number. </p>
    #            <p>Create a container group definition by calling 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html</a>. 
    #               This operation creates a 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html</a> resource.</p>
    # @option params [Types::ConnectionPortRange] :instance_connection_port_range
    #   <p>The set of port numbers to open on each fleet instance. A fleet's connection ports map
    #               to container ports that are configured in the fleet's container group definitions. </p>
    #            <p>By default, Amazon GameLift Servers calculates an optimal port range based on your fleet
    #               configuration. To use the calculated range, don't set this parameter. The values
    #               are:</p>
    #            <ul>
    #               <li>
    #                  <p>Port range: 4192 to a number calculated based on your fleet configuration.
    #                       Amazon GameLift Servers uses the following formula: <code>4192 + [# of game server container
    #                           groups per fleet instance] * [# of container ports in the game server
    #                           container group definition] + [# of container ports in the game server
    #                           container group definition]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can also choose to manually set this parameter. When manually setting this
    #               parameter, you must use port numbers that match the fleet's inbound permissions port
    #               range.</p>
    #            <note>
    #               <p>If you set values manually, Amazon GameLift Servers no longer calculates a port range for you,
    #                   even if you later remove the manual settings. </p>
    #            </note>
    # @option params [Array<Types::IpPermission>] :instance_inbound_permissions
    #   <p>The IP address ranges and port settings that allow inbound traffic to access game
    #               server processes and other processes on this fleet. As a best practice, when remotely
    #               accessing a fleet instance, we recommend opening ports only when you need them and
    #               closing them when you're finished.</p>
    #            <p>By default, Amazon GameLift Servers calculates an optimal port range based on your fleet
    #               configuration. To use the calculated range, don't set this parameter. The values
    #               are:</p>
    #            <ul>
    #               <li>
    #                  <p>Protocol: UDP</p>
    #               </li>
    #               <li>
    #                  <p>Port range: 4192 to a number calculated based on your fleet configuration. Amazon GameLift Servers uses the
    #                       following formula: <code>4192 + [# of game server container groups per fleet
    #                           instance] * [# of container ports in the game server container group
    #                           definition] + [# of container ports in the game server container group
    #                           definition]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can also choose to manually set this parameter. When manually setting this
    #               parameter, you must use port numbers that match the fleet's connection port
    #               range.</p>
    #            <note>
    #               <p>If you set values manually, Amazon GameLift Servers no longer calculates a port range for you,
    #                   even if you later remove the manual settings. </p>
    #            </note>
    # @option params [Integer] :game_server_container_groups_per_instance
    #   <p>The number of times to replicate the game server container group on each fleet
    #               instance. </p>
    #            <p>By default, Amazon GameLift Servers calculates the maximum number of game server container groups that
    #               can fit on each instance. This calculation is based on the CPU and memory resources of
    #               the fleet's instance type). To use the calculated maximum, don't set this parameter. If
    #               you set this number manually, Amazon GameLift Servers uses your value as long as it's less than the
    #               calculated maximum.</p>
    # @option params [String] :instance_type
    #   <p>The Amazon EC2 instance type to use for all instances in the fleet. For multi-location
    #               fleets, the instance type must be available in the home region and all remote locations.
    #               Instance type determines the computing resources and processing power that's available
    #               to host your game servers. This includes including CPU, memory, storage, and networking
    #               capacity. </p>
    #            <p>By default, Amazon GameLift Servers selects an instance type that fits the needs of your container
    #               groups and is available in all selected fleet locations. You can also choose to manually
    #               set this parameter. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud
    #                   Instance Types</a> for detailed descriptions of Amazon EC2 instance types.</p>
    #            <p>You can't update this fleet property later.</p>
    # @option params [String] :billing_type
    #   <p>Indicates whether to use On-Demand or Spot instances for this fleet. Learn more about
    #               when to use <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot"> On-Demand versus Spot Instances</a>. This fleet property can't be changed after the fleet is created.</p>
    #            <p>By default, this property is set to <code>ON_DEMAND</code>.</p>
    #            <p>You can't update this fleet property later.</p>
    # @option params [Array<Types::LocationConfiguration>] :locations
    #   <p>A set of locations to deploy container fleet instances to. You can add any Amazon Web Services
    #               Region or Local Zone that's supported by Amazon GameLift Servers. Provide a list of one or more Amazon Web Services
    #               Region codes, such as <code>us-west-2</code>, or Local Zone names. Also include the
    #               fleet's home Region, which is the Amazon Web Services Region where the fleet is created. For a list of
    #               supported Regions and Local Zones, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html"> Amazon GameLift Servers service
    #                   locations</a> for managed hosting.</p>
    # @option params [Array<String>] :metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to. You can use a metric group 
    #               to aggregate metrics for multiple fleets. You can specify an existing metric
    #               group name or use a new name to create a new metric group. Each fleet can have only one metric group, 
    #               but you can change this value at any time. </p>
    # @option params [String] :new_game_session_protection_policy
    #   <p>Determines whether Amazon GameLift Servers can shut down game sessions on the fleet that are actively
    #               running and hosting players. Amazon GameLift Servers might prompt an instance shutdown when scaling down
    #               fleet capacity or when retiring unhealthy instances. You can also set game session
    #               protection for individual game sessions using <a href="gamelift/latest/apireference/API_UpdateGameSession.html">UpdateGameSession</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>NoProtection</b> -- Game sessions can be shut down
    #                       during active gameplay. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FullProtection</b> -- Game sessions in
    #                           <code>ACTIVE</code> status can't be shut down.</p>
    #               </li>
    #            </ul>
    #            <p>By default, this property is set to <code>NoProtection</code>. </p>
    # @option params [Types::GameSessionCreationLimitPolicy] :game_session_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that each individual player can create
    #               on instances in this fleet. The limit applies for a specified span of time.</p>
    # @option params [Types::LogConfiguration] :log_configuration
    #   <p>A method for collecting container logs for the fleet. Amazon GameLift Servers saves all standard
    #               output for each container in logs, including game session logs. You can select from the
    #               following methods: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLOUDWATCH</code> -- Send logs to an Amazon CloudWatch log group that you define. Each container
    #                       emits a log stream, which is organized in the log group. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> -- Store logs in an Amazon S3 bucket that you define.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> -- Don't collect container logs.</p>
    #               </li>
    #            </ul>
    #            <p>By default, this property is set to <code>CLOUDWATCH</code>. </p>
    #            <p>Amazon GameLift Servers requires permissions to send logs other Amazon Web Services services in your account. These permissions are included in the IAM fleet role for this container fleet (see <code>FleetRoleArn)</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new fleet resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources are useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_role_arn: "IamRoleArn", # required
    #     description: "NonZeroAndMaxString",
    #     game_server_container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     per_instance_container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     instance_connection_port_range: {
    #       from_port: 1, # required
    #       to_port: 1, # required
    #     },
    #     instance_inbound_permissions: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #       }
    #     ],
    #     game_server_container_groups_per_instance: 1,
    #     instance_type: "NonZeroAndMaxString",
    #     billing_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #     locations: [
    #       {
    #         location: "LocationStringModel", # required
    #       }
    #     ],
    #     metric_groups: ["MetricGroup"],
    #     new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #     game_session_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1
    #     },
    #     log_configuration: {
    #       log_destination: "NONE" # One of: ["NONE", "CLOUDWATCH", "S3"],
    #       s3_bucket_name: "NonEmptyString",
    #       log_group_arn: "LogGroupArnStringModel"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_container_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_fleet: {
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       fleet_role_arn: "IamRoleArn",
    #       game_server_container_group_definition_name: "ContainerGroupDefinitionName",
    #       game_server_container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       per_instance_container_group_definition_name: "ContainerGroupDefinitionName",
    #       per_instance_container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       instance_connection_port_range: {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #       },
    #       instance_inbound_permissions: [
    #         {
    #           from_port: 1, # required
    #           to_port: 1, # required
    #           ip_range: "IpRange", # required
    #           protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #         }
    #       ],
    #       game_server_container_groups_per_instance: 1,
    #       maximum_game_server_container_groups_per_instance: 1,
    #       instance_type: "NonZeroAndMaxString",
    #       billing_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #       description: "NonZeroAndMaxString",
    #       creation_time: Time.now,
    #       metric_groups: ["MetricGroup"],
    #       new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #       game_session_creation_limit_policy: {
    #         new_game_sessions_per_creator: 1,
    #         policy_period_in_minutes: 1
    #       },
    #       status: "PENDING" # One of: ["PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"],
    #       deployment_details: {
    #         latest_deployment_id: "DeploymentId"
    #       },
    #       log_configuration: {
    #         log_destination: "NONE" # One of: ["NONE", "CLOUDWATCH", "S3"],
    #         s3_bucket_name: "NonEmptyString",
    #         log_group_arn: "LogGroupArnStringModel"
    #       },
    #       location_attributes: [
    #         {
    #           location: "LocationStringModel",
    #           status: "PENDING" # One of: ["PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateContainerFleetOutput]
    def create_container_fleet(params = {}, options = {})
      request = build_request(:create_container_fleet, params)
      request.send_request(options)
    end

    # <p>Creates a <code>ContainerGroupDefinition</code> that describes a set of containers for
    #       hosting your game server with Amazon GameLift Servers managed containers hosting. An Amazon GameLift Servers container group
    #       is similar to a container task or pod. Use container group definitions when you create a
    #       container fleet with <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerFleet.html">CreateContainerFleet</a>. </p>
    #          <p>A container group definition determines how Amazon GameLift Servers deploys your containers to each
    #       instance in a container fleet. You can maintain multiple versions of a container group
    #       definition.</p>
    #          <p>There are two types of container groups:</p>
    #          <ul>
    #             <li>
    #                <p>A <b>game server container group</b> has the containers that run
    #           your game server application and supporting software. A game server container group can
    #           have these container types:</p>
    #                <ul>
    #                   <li>
    #                      <p>Game server container. This container runs your game server. You can define one
    #               game server container in a game server container group.</p>
    #                   </li>
    #                   <li>
    #                      <p>Support container. This container runs software in parallel with your game server.
    #               You can define up to 8 support containers in a game server group.</p>
    #                   </li>
    #                </ul>
    #                <p>When building a game server container group definition, you can choose to bundle your
    #           game server executable and all dependent software into a single game server container.
    #           Alternatively, you can separate the software into one game server container and one or
    #           more support containers.</p>
    #                <p>On a container fleet instance, a game server container group can be deployed multiple
    #           times (depending on the compute resources of the instance). This means that all containers
    #           in the container group are replicated together.</p>
    #             </li>
    #             <li>
    #                <p>A <b>per-instance container group</b> has containers for processes
    #           that aren't replicated on a container fleet instance. This might include background
    #           services, logging, test processes, or processes that need to persist independently of the
    #           game server container group. When building a per-instance container group, you can define
    #           up to 10 support containers.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>This operation requires Identity and Access Management (IAM) permissions to access container images in
    #         Amazon ECR repositories. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-iam-policy-examples.html"> IAM permissions
    #           for Amazon GameLift Servers</a> for help setting the appropriate permissions.</p>
    #          </note>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <p>Use this operation to make the following types of requests. You can specify values for the
    #       minimum required parameters and customize optional values later.</p>
    #          <ul>
    #             <li>
    #                <p>Create a game server container group definition. Provide the following required parameter values:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>Name</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>ContainerGroupType</code> (<code>GAME_SERVER</code>)</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>OperatingSystem</code> (omit to use default value)</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>TotalMemoryLimitMebibytes</code> (omit to use default value)</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>TotalVcpuLimit </code>(omit to use default value)</p>
    #                   </li>
    #                   <li>
    #                      <p>At least one <code>GameServerContainerDefinition</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <code>ContainerName</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>ImageUrl</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>PortConfiguration</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>ServerSdkVersion</code> (omit to use default value)</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Create a per-instance container group definition. Provide the following required parameter
    #           values:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>Name</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>ContainerGroupType</code> (<code>PER_INSTANCE</code>)</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>OperatingSystem</code> (omit to use default value)</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>TotalMemoryLimitMebibytes</code> (omit to use default value)</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>TotalVcpuLimit </code>(omit to use default value)</p>
    #                   </li>
    #                   <li>
    #                      <p>At least one <code>SupportContainerDefinition</code>
    #                      </p>
    #                      <ul>
    #                         <li>
    #                            <p>
    #                               <code>ContainerName</code>
    #                            </p>
    #                         </li>
    #                         <li>
    #                            <p>
    #                               <code>ImageUrl</code>
    #                            </p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, this request creates a <code>ContainerGroupDefinition</code> resource and
    #       assigns a unique ARN value. You can update most properties of a container group definition by
    #       calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>, and optionally save the update as a new version.</p>
    # @param [Hash, Types::CreateContainerGroupDefinitionInput] params
    # @option params [String] :name
    #   <p>A descriptive identifier for the container group definition. The name value must be unique in an Amazon Web Services Region.</p>
    # @option params [String] :container_group_type
    #   <p>The type of container group being defined. Container group type determines how Amazon GameLift Servers 
    #         deploys the container group on each fleet instance.</p>
    #            <p>Default value: <code>GAME_SERVER</code>
    #            </p>
    # @option params [Integer] :total_memory_limit_mebibytes
    #   <p>The maximum amount of memory (in MiB) to allocate to the container group. All containers in
    #         the group share this memory. If you specify memory limits for an individual container, the
    #         total value must be greater than any individual container's memory limit.</p>
    #            <p>Default value: 1024</p>
    # @option params [Float] :total_vcpu_limit
    #   <p>The maximum amount of vCPU units to allocate to the container group (1 vCPU is equal to 1024
    #         CPU units). All containers in the group share this memory. If you specify vCPU limits for
    #         individual containers, the total value must be equal to or greater than the sum of the CPU
    #         limits for all containers in the group.</p>
    #            <p>Default value: 1</p>
    # @option params [Types::GameServerContainerDefinitionInput] :game_server_container_definition
    #   <p>The definition for the game server container in this group. Define a game server container
    #         only when the container group type is <code>GAME_SERVER</code>. Game server containers specify
    #         a container image with your game server build. You can pass in your container definitions as a
    #         JSON file.</p>
    # @option params [Array<Types::SupportContainerDefinitionInput>] :support_container_definitions
    #   <p>One or more definition for support containers in this group. You can define a support
    #         container in any type of container group. You can pass in your container definitions as a JSON
    #         file.</p>
    # @option params [String] :operating_system
    #   <p>The platform that all containers in the group use. Containers in a group must run on the
    #         same operating system.</p>
    #            <p>Default value: <code>AMAZON_LINUX_2023</code>
    #            </p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more details in the <a href="http://aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>. For game
    #       servers that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the game
    #           server build to server SDK 5.x, and then deploy to AL2023 instances. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html"> Migrate to
    #             server SDK version 5.</a>
    #               </p>
    #            </note>
    # @option params [String] :version_description
    #   <p>A description for the initial version of this container group definition. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the container group definition resource. Tags are
    #         developer-defined key-value pairs. Tagging Amazon Web Services resources are useful for resource management,
    #         access management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #           <i>Amazon Web Services General Reference</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ContainerGroupDefinitionName", # required
    #     container_group_type: "GAME_SERVER" # One of: ["GAME_SERVER", "PER_INSTANCE"],
    #     total_memory_limit_mebibytes: 1, # required
    #     total_vcpu_limit: 1.0, # required
    #     game_server_container_definition: {
    #       container_name: "NonZeroAnd128MaxAsciiString", # required
    #       depends_on: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString", # required
    #           condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #         }
    #       ],
    #       mount_points: [
    #         {
    #           instance_path: "InstancePathString", # required
    #           container_path: "ContainerPathString",
    #           access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #         }
    #       ],
    #       environment_override: [
    #         {
    #           name: "NonZeroAnd255MaxString", # required
    #           value: "NonZeroAnd255MaxString", # required
    #         }
    #       ],
    #       image_uri: "ImageUriString", # required
    #       port_configuration: { # required
    #         container_port_ranges: [ # required
    #           {
    #             from_port: 1, # required
    #             to_port: 1, # required
    #             protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #           }
    #         ]
    #       },
    #       server_sdk_version: "ServerSdkVersion", # required
    #     },
    #     support_container_definitions: [
    #       {
    #         container_name: "NonZeroAnd128MaxAsciiString", # required
    #         depends_on: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString", # required
    #             condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #           }
    #         ],
    #         mount_points: [
    #           {
    #             instance_path: "InstancePathString", # required
    #             container_path: "ContainerPathString",
    #             access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #           }
    #         ],
    #         environment_override: [
    #           {
    #             name: "NonZeroAnd255MaxString", # required
    #             value: "NonZeroAnd255MaxString", # required
    #           }
    #         ],
    #         essential: false,
    #         health_check: {
    #           command: ["NonZeroAnd255MaxString"], # required
    #           interval: 1,
    #           retries: 1,
    #           start_period: 1,
    #           timeout: 1
    #         },
    #         image_uri: "ImageUriString", # required
    #         memory_hard_limit_mebibytes: 1,
    #         port_configuration: {
    #           container_port_ranges: [ # required
    #             {
    #               from_port: 1, # required
    #               to_port: 1, # required
    #               protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #             }
    #           ]
    #         },
    #         vcpu: 1.0
    #       }
    #     ],
    #     operating_system: "AMAZON_LINUX_2023" # One of: ["AMAZON_LINUX_2023"], # required
    #     version_description: "NonZeroAndMaxString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_container_group_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_group_definition: {
    #       container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       creation_time: Time.now,
    #       operating_system: "AMAZON_LINUX_2023" # One of: ["AMAZON_LINUX_2023"],
    #       name: "ContainerGroupDefinitionName", # required
    #       container_group_type: "GAME_SERVER" # One of: ["GAME_SERVER", "PER_INSTANCE"],
    #       total_memory_limit_mebibytes: 1,
    #       total_vcpu_limit: 1.0,
    #       game_server_container_definition: {
    #         container_name: "NonZeroAnd128MaxAsciiString",
    #         depends_on: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString", # required
    #             condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #           }
    #         ],
    #         mount_points: [
    #           {
    #             instance_path: "InstancePathString", # required
    #             container_path: "ContainerPathString",
    #             access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #           }
    #         ],
    #         environment_override: [
    #           {
    #             name: "NonZeroAnd255MaxString", # required
    #             value: "NonZeroAnd255MaxString", # required
    #           }
    #         ],
    #         image_uri: "ImageUriString",
    #         port_configuration: {
    #           container_port_ranges: [ # required
    #             {
    #               from_port: 1, # required
    #               to_port: 1, # required
    #               protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #             }
    #           ]
    #         },
    #         resolved_image_digest: "Sha256",
    #         server_sdk_version: "ServerSdkVersion"
    #       },
    #       support_container_definitions: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString",
    #           depends_on: [
    #             {
    #               container_name: "NonZeroAnd128MaxAsciiString", # required
    #               condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               instance_path: "InstancePathString", # required
    #               container_path: "ContainerPathString",
    #               access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #             }
    #           ],
    #           environment_override: [
    #             {
    #               name: "NonZeroAnd255MaxString", # required
    #               value: "NonZeroAnd255MaxString", # required
    #             }
    #           ],
    #           essential: false,
    #           health_check: {
    #             command: ["NonZeroAnd255MaxString"], # required
    #             interval: 1,
    #             retries: 1,
    #             start_period: 1,
    #             timeout: 1
    #           },
    #           image_uri: "ImageUriString",
    #           memory_hard_limit_mebibytes: 1,
    #           port_configuration: {
    #             container_port_ranges: [ # required
    #               {
    #                 from_port: 1, # required
    #                 to_port: 1, # required
    #                 protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #               }
    #             ]
    #           },
    #           resolved_image_digest: "Sha256",
    #           vcpu: 1.0
    #         }
    #       ],
    #       version_number: 1,
    #       version_description: "NonZeroAndMaxString",
    #       status: "READY" # One of: ["READY", "COPYING", "FAILED"],
    #       status_reason: "NonZeroAndMaxString"
    #     }
    #   }
    # @return [Types::CreateContainerGroupDefinitionOutput]
    def create_container_group_definition(params = {}, options = {})
      request = build_request(:create_container_group_definition, params)
      request.send_request(options)
    end

    # <p>Creates a fleet of compute resources to host your game servers. Use this operation to
    #             set up the following types of fleets based on compute type: </p>
    #          <p>
    #             <b>Managed EC2 fleet</b>
    #          </p>
    #          <p>An EC2 fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances. Your game server build is
    #             deployed to each fleet instance. Amazon GameLift Servers manages the fleet's instances and controls the
    #             lifecycle of game server processes, which host game sessions for players. EC2 fleets can
    #             have instances in multiple locations. Each instance in the fleet is designated a
    #                 <code>Compute</code>.</p>
    #          <p>To create an EC2 fleet, provide these required parameters:</p>
    #          <ul>
    #             <li>
    #                <p>Either <code>BuildId</code> or <code>ScriptId</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ComputeType</code> set to <code>EC2</code> (the default value)</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>EC2InboundPermissions</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>EC2InstanceType</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FleetType</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Name</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RuntimeConfiguration</code> with at least one <code>ServerProcesses</code>
    #                     configuration</p>
    #             </li>
    #          </ul>
    #          <p>If successful, this operation creates a new fleet resource and places it in
    #                 <code>NEW</code> status while Amazon GameLift Servers initiates the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow">fleet creation workflow</a>. To debug your fleet, fetch logs, view performance
    #             metrics or other actions on the fleet, create a development fleet with port 22/3389
    #             open. As a best practice, we recommend opening ports for remote access only when you
    #             need them and closing them when you're finished. </p>
    #          <p>When the fleet status is ACTIVE, you can adjust capacity settings and turn autoscaling
    #             on/off for each location.</p>
    #          <p>
    #             <b>Anywhere fleet</b>
    #          </p>
    #          <p>An Anywhere fleet represents compute resources that are not owned or managed by
    #             Amazon GameLift Servers. You might create an Anywhere fleet with your local machine for testing, or use
    #             one to host game servers with on-premises hardware or other game hosting solutions. </p>
    #          <p>To create an Anywhere fleet, provide these required parameters:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ComputeType</code> set to <code>ANYWHERE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Locations</code> specifying a custom location</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Name</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>If successful, this operation creates a new fleet resource and places it in
    #                 <code>ACTIVE</code> status. You can register computes with a fleet in
    #                 <code>ACTIVE</code> status. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up
    #             fleets</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation">Debug fleet creation issues</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Multi-location fleets</a>
    #          </p>
    # @param [Hash, Types::CreateFleetInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    # @option params [String] :description
    #   <p>A description for the fleet.</p>
    # @option params [String] :build_id
    #   <p>The unique identifier for a custom game server build to be deployed to a fleet with
    #               compute type <code>EC2</code>. You can use either the build ID or ARN. The build must be
    #               uploaded to Amazon GameLift Servers and in <code>READY</code> status. This fleet property can't be changed after the fleet is created.</p>
    # @option params [String] :script_id
    #   <p>The unique identifier for a Realtime configuration script to be deployed to a fleet with
    #               compute type <code>EC2</code>. You can use either the script ID or ARN. Scripts must be
    #               uploaded to Amazon GameLift Servers prior to creating the fleet. This fleet property can't be changed after the fleet is created.</p>
    # @option params [String] :server_launch_path
    #   <p>
    #               <b>This parameter is no longer used.</b> Specify a server
    #               launch path using the <code>RuntimeConfiguration</code> parameter. Requests that use
    #               this parameter instead continue to be valid.</p>
    # @option params [String] :server_launch_parameters
    #   <p>
    #               <b>This parameter is no longer used.</b> Specify server
    #               launch parameters using the <code>RuntimeConfiguration</code> parameter. Requests that
    #               use this parameter instead continue to be valid.</p>
    # @option params [Array<String>] :log_paths
    #   <p>
    #               <b>This parameter is no longer used.</b> To specify where
    #               Amazon GameLift Servers should store log files once a server process shuts down, use the Amazon GameLift Servers server
    #               API <code>ProcessReady()</code> and specify one or more directory paths in
    #                   <code>logParameters</code>. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-initialize">Initialize the server process</a> in the <i>Amazon GameLift Servers Developer
    #                   Guide</i>. </p>
    # @option params [String] :ec2_instance_type
    #   <p>The Amazon GameLift Servers-supported Amazon EC2 instance type to use with managed EC2 fleets.
    #               Instance type determines the computing resources that will be used to host your game
    #               servers, including CPU, memory, storage, and networking capacity. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance Types</a> for
    #               detailed descriptions of Amazon EC2 instance types.</p>
    # @option params [Array<Types::IpPermission>] :ec2_inbound_permissions
    #   <p>The IP address ranges and port settings that allow inbound traffic to access game
    #               server processes and other processes on this fleet. Set this parameter for managed EC2 fleets. You can leave this parameter empty when creating the fleet, but you must call 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetPortSettings">https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetPortSettings</a> to set it before players can connect to game sessions. 
    #               As a best practice, we recommend 
    #               opening ports for remote access only when you need them and closing them when you're finished. 
    #               For Amazon GameLift Servers Realtime fleets, Amazon GameLift Servers automatically sets TCP and UDP ranges.</p>
    # @option params [String] :new_game_session_protection_policy
    #   <p>The status of termination protection for active game sessions on the fleet. By
    #               default, this property is set to <code>NoProtection</code>. You can also set game
    #               session protection for an individual game session by calling <a href="gamelift/latest/apireference/API_UpdateGameSession.html">UpdateGameSession</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>NoProtection</b> - Game sessions can be terminated
    #                       during active gameplay as a result of a scale-down event. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FullProtection</b> - Game sessions in
    #                           <code>ACTIVE</code> status cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    # @option params [Types::RuntimeConfiguration] :runtime_configuration
    #   <p>Instructions for how to launch and run server processes on the fleet. Set runtime
    #               configuration for managed EC2 fleets. For an Anywhere fleets, set this
    #               parameter only if the fleet is running the Amazon GameLift Servers Agent. The runtime configuration
    #               defines one or more server process configurations. Each server process identifies a game
    #               executable or Realtime script file and the number of processes to run concurrently. </p>
    #            <note>
    #               <p>This parameter replaces the parameters <code>ServerLaunchPath</code> and
    #                       <code>ServerLaunchParameters</code>, which are still supported for backward
    #                   compatibility.</p>
    #            </note>
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that an individual player can create
    #               on instances in this fleet within a specified span of time.</p>
    # @option params [Array<String>] :metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to. A metric group is
    #               used to aggregate the metrics for multiple fleets. You can specify an existing metric
    #               group name or set a new name to create a new metric group. A fleet can be included in
    #               only one metric group at a time. </p>
    # @option params [String] :peer_vpc_aws_account_id
    #   <p>Used when peering your Amazon GameLift Servers fleet with a VPC, the unique identifier for the Amazon Web Services
    #               account that owns the VPC. You can find your account ID in the Amazon Web Services Management Console under account
    #               settings. </p>
    # @option params [String] :peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console. 
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    # @option params [String] :fleet_type
    #   <p>Indicates whether to use On-Demand or Spot instances for this fleet. By default, this
    #               property is set to <code>ON_DEMAND</code>. Learn more about when to use <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot"> On-Demand versus Spot Instances</a>. This fleet property can't be changed after the fleet is created.</p>
    # @option params [String] :instance_role_arn
    #   <p>A unique identifier for an IAM role that manages access to your Amazon Web Services services. 
    #           With an instance role ARN set, any application that runs on an instance in this fleet can assume the role, 
    #           including install scripts, server processes, and daemons (background processes). Create a role or look up a role's 
    #           ARN by using the <a href="https://console.aws.amazon.com/iam/">IAM dashboard</a> in the Amazon Web Services Management Console.
    #           Learn more about using on-box credentials for your game servers at 
    #           <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html">
    #           Access external resources from a game server</a>. This fleet property can't be changed after the fleet is created.</p>
    # @option params [Types::CertificateConfiguration] :certificate_configuration
    #   <p>Prompts Amazon GameLift Servers to generate a TLS/SSL certificate for the fleet. Amazon GameLift Servers uses the
    #               certificates to encrypt traffic between game clients and the game servers running on
    #               Amazon GameLift Servers. By default, the <code>CertificateConfiguration</code> is <code>DISABLED</code>.
    #               You can't change this property after you create the fleet. </p>
    #            <p>Certificate Manager (ACM) certificates expire after 13 months.
    #               Certificate expiration can cause fleets to fail, preventing players from connecting to
    #               instances in the fleet. We recommend you replace fleets before 13 months, consider using
    #               fleet aliases for a smooth transition.</p>
    #            <note>
    #               <p>ACM isn't available in all Amazon Web Services regions. A fleet creation request
    #                   with certificate generation enabled in an unsupported Region, fails with a 4xx
    #                   error. For more information about the supported Regions, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-regions.html">Supported
    #                       Regions</a> in the <i>Certificate Manager User
    #                   Guide</i>.</p>
    #            </note>
    # @option params [Array<Types::LocationConfiguration>] :locations
    #   <p>A set of remote locations to deploy additional instances to and manage as a
    #               multi-location fleet. Use this parameter when creating a fleet in Amazon Web Services Regions that
    #               support multiple locations. You can add any Amazon Web Services Region or Local Zone that's supported
    #               by Amazon GameLift Servers. Provide a list of one or more Amazon Web Services Region codes, such as
    #                   <code>us-west-2</code>, or Local Zone names. When using this parameter, Amazon GameLift Servers
    #               requires you to include your home location in the request. For a list of supported
    #               Regions and Local Zones, see 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html">
    #                   Amazon GameLift Servers service locations</a> for managed hosting.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new fleet resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources are useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :compute_type
    #   <p>The type of compute resource used to host your game servers. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> – The game server build is deployed to Amazon EC2 instances for
    #                       cloud hosting. This is the default setting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ANYWHERE</code> – Game servers 
    #                       and supporting software are deployed to compute resources that you provide and
    #                       manage. With this compute type, you can also set the
    #                           <code>AnywhereConfiguration</code> parameter.</p>
    #               </li>
    #            </ul>
    # @option params [Types::AnywhereConfiguration] :anywhere_configuration
    #   <p>Amazon GameLift Servers Anywhere configuration options.</p>
    # @option params [String] :instance_role_credentials_provider
    #   <p>Prompts Amazon GameLift Servers to generate a shared credentials file for the IAM role
    #               that's defined in <code>InstanceRoleArn</code>. The shared credentials file is stored on
    #               each fleet instance and refreshed as needed. Use shared credentials for applications
    #               that are deployed along with the game server executable, if the game server is
    #               integrated with server SDK version 5.x. For more information about using shared
    #               credentials, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html"> Communicate
    #                   with other Amazon Web Services resources from your fleets</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonZeroAndMaxString", # required
    #     description: "NonZeroAndMaxString",
    #     build_id: "BuildIdOrArn",
    #     script_id: "ScriptIdOrArn",
    #     server_launch_path: "LaunchPathStringModel",
    #     server_launch_parameters: "LaunchParametersStringModel",
    #     log_paths: ["NonZeroAndMaxString"],
    #     ec2_instance_type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #     ec2_inbound_permissions: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #       }
    #     ],
    #     new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #     runtime_configuration: {
    #       server_processes: [
    #         {
    #           launch_path: "LaunchPathStringModel", # required
    #           parameters: "LaunchParametersStringModel",
    #           concurrent_executions: 1, # required
    #         }
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1
    #     },
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1
    #     },
    #     metric_groups: ["MetricGroup"],
    #     peer_vpc_aws_account_id: "NonZeroAndMaxString",
    #     peer_vpc_id: "NonZeroAndMaxString",
    #     fleet_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #     instance_role_arn: "NonEmptyString",
    #     certificate_configuration: {
    #       certificate_type: "DISABLED" # One of: ["DISABLED", "GENERATED"], # required
    #     },
    #     locations: [
    #       {
    #         location: "LocationStringModel", # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     compute_type: "EC2" # One of: ["EC2", "ANYWHERE"],
    #     anywhere_configuration: {
    #       cost: "NonNegativeLimitedLengthDouble", # required
    #     },
    #     instance_role_credentials_provider: "SHARED_CREDENTIAL_FILE" # One of: ["SHARED_CREDENTIAL_FILE"]
    #   }
    #   options = {}
    #   response = client.create_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_attributes: {
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       fleet_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #       instance_type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #       description: "NonZeroAndMaxString",
    #       name: "NonZeroAndMaxString",
    #       creation_time: Time.now,
    #       termination_time: Time.now,
    #       status: "NEW" # One of: ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"],
    #       build_id: "BuildId",
    #       build_arn: "BuildArn",
    #       script_id: "ScriptId",
    #       script_arn: "ScriptArn",
    #       server_launch_path: "LaunchPathStringModel",
    #       server_launch_parameters: "LaunchParametersStringModel",
    #       log_paths: ["NonZeroAndMaxString"],
    #       new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #       operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #       resource_creation_limit_policy: {
    #         new_game_sessions_per_creator: 1,
    #         policy_period_in_minutes: 1
    #       },
    #       metric_groups: ["MetricGroup"],
    #       stopped_actions: ["AUTO_SCALING" # One of: ["AUTO_SCALING"]],
    #       instance_role_arn: "NonEmptyString",
    #       certificate_configuration: {
    #         certificate_type: "DISABLED" # One of: ["DISABLED", "GENERATED"], # required
    #       },
    #       compute_type: "EC2" # One of: ["EC2", "ANYWHERE"],
    #       anywhere_configuration: {
    #         cost: "NonNegativeLimitedLengthDouble", # required
    #       },
    #       instance_role_credentials_provider: "SHARED_CREDENTIAL_FILE" # One of: ["SHARED_CREDENTIAL_FILE"]
    #     },
    #     location_states: [
    #       {
    #         location: "LocationStringModel",
    #         status: "NEW" # One of: ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"]
    #       }
    #     ]
    #   }
    # @return [Types::CreateFleetOutput]
    def create_fleet(params = {}, options = {})
      request = build_request(:create_fleet, params)
      request.send_request(options)
    end

    # <p>Adds remote locations to an EC2 and begins populating the new locations with
    #             instances. The new instances conform to the fleet's instance type, auto-scaling, and
    #             other configuration settings.</p>
    #          <note>
    #             <p>You can't add remote locations to a fleet that resides in an Amazon Web Services Region that
    #                 doesn't support multiple locations. Fleets created prior to March 2021 can't support
    #                 multiple locations.</p>
    #          </note>
    #          <p>To add fleet locations, specify the fleet to be updated and provide a list of one or
    #             more locations. </p>
    #          <p>If successful, this operation returns the list of added locations with their status
    #             set to <code>NEW</code>. Amazon GameLift Servers initiates the process of starting an instance in each
    #             added location. You can track the status of each new location by monitoring location
    #             creation events using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html">DescribeFleetEvents</a>.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up
    #             fleets</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-editing.html#fleets-update-locations">Update fleet locations</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html">
    #                 Amazon GameLift Servers service locations</a> for managed hosting.</p>
    # @param [Hash, Types::CreateFleetLocationsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to add locations to. You can use either the fleet ID or ARN value.</p>
    # @option params [Array<Types::LocationConfiguration>] :locations
    #   <p>A list of locations to deploy additional instances to and manage as part of the fleet.
    #               You can add any Amazon GameLift Servers-supported Amazon Web Services Region as a remote location, in the form of an
    #               Amazon Web Services Region code such as <code>us-west-2</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: [ # required
    #       {
    #         location: "LocationStringModel", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_fleet_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetIdOrArn",
    #     fleet_arn: "FleetArn",
    #     location_states: [
    #       {
    #         location: "LocationStringModel",
    #         status: "NEW" # One of: ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"]
    #       }
    #     ]
    #   }
    # @return [Types::CreateFleetLocationsOutput]
    def create_fleet_locations(params = {}, options = {})
      request = build_request(:create_fleet_locations, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Creates a Amazon GameLift Servers FleetIQ game server
    #             group for managing game hosting on a collection of Amazon Elastic Compute Cloud instances for game hosting.
    #             This operation creates the game server group, creates an Auto Scaling group in your
    #             Amazon Web Services account, and establishes a link between the two groups. You can view the status of
    #             your game server groups in the Amazon GameLift Servers console. Game server group metrics and events are
    #             emitted to Amazon CloudWatch.</p>
    #          <p>Before creating a new game server group, you must have the following: </p>
    #          <ul>
    #             <li>
    #                <p>An Amazon Elastic Compute Cloud launch template that specifies how to launch Amazon Elastic Compute Cloud instances
    #                     with your game server build. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html"> Launching an Instance from a Launch Template</a> in the
    #                         <i>Amazon Elastic Compute Cloud User Guide</i>. </p>
    #             </li>
    #             <li>
    #                <p>An IAM role that extends limited access to your Amazon Web Services account to allow Amazon GameLift Servers FleetIQ
    #                     to create and interact with the Auto Scaling group. For more information, see
    #                         <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-iam-permissions-roles.html">Create IAM
    #                         roles for cross-service interaction</a> in the <i>Amazon GameLift Servers FleetIQ Developer
    #                         Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <p>To create a new game server group, specify a unique group name, IAM role and Amazon Elastic Compute Cloud
    #             launch template, and provide a list of instance types that can be used in the group. You
    #             must also set initial maximum and minimum limits on the group's instance count. You can
    #             optionally set an Auto Scaling policy with target tracking based on a Amazon GameLift Servers FleetIQ
    #             metric.</p>
    #          <p>Once the game server group and corresponding Auto Scaling group are created, you have
    #             full access to change the Auto Scaling group's configuration as needed. Several
    #             properties that are set when creating a game server group, including maximum/minimum
    #             size and auto-scaling policy settings, must be updated directly in the Auto Scaling
    #             group. Keep in mind that some Auto Scaling group properties are periodically updated by
    #             Amazon GameLift Servers FleetIQ as part of its balancing activities to optimize for availability and cost.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::CreateGameServerGroupInput] params
    # @option params [String] :game_server_group_name
    #   <p>An identifier for the new game server group. This value is used to generate unique ARN
    #               identifiers for the Amazon EC2 Auto Scaling group and the Amazon GameLift Servers FleetIQ game server group. The name
    #               must be unique per Region per Amazon Web Services account.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift Servers to access your Amazon EC2 Auto Scaling groups.</p>
    # @option params [Integer] :min_size
    #   <p>The minimum number of instances allowed in the Amazon EC2 Auto Scaling group. During
    #               automatic scaling events, Amazon GameLift Servers FleetIQ and Amazon EC2 do not scale down the group below this
    #               minimum. In production, this value should be set to at least 1. After the Auto Scaling
    #               group is created, update this value directly in the Auto Scaling group using the Amazon Web Services
    #               console or APIs.</p>
    # @option params [Integer] :max_size
    #   <p>The maximum number of instances allowed in the Amazon EC2 Auto Scaling group. During
    #               automatic scaling events, Amazon GameLift Servers FleetIQ and EC2 do not scale up the group above this maximum.
    #               After the Auto Scaling group is created, update this value directly in the Auto Scaling
    #               group using the Amazon Web Services console or APIs.</p>
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   <p>The Amazon EC2 launch template that contains configuration settings and game server code to
    #               be deployed to all instances in the game server group. You can specify the template
    #               using either the template name or ID. For help with creating a launch template, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Creating a Launch
    #                   Template for an Auto Scaling Group</a> in the <i>Amazon Elastic Compute Cloud Auto Scaling
    #                   User Guide</i>. After the Auto Scaling group is created, update this value
    #               directly in the Auto Scaling group using the Amazon Web Services console or APIs.</p>
    #            <note>
    #               <p>If you specify network interfaces in your launch template, you must explicitly set
    #                   the property <code>AssociatePublicIpAddress</code> to "true". If no network
    #                   interface is specified in the launch template, Amazon GameLift Servers FleetIQ uses your account's default
    #                   VPC.</p>
    #            </note>
    # @option params [Array<Types::InstanceDefinition>] :instance_definitions
    #   <p>The Amazon EC2 instance types and sizes to use in the Auto Scaling group. The instance
    #               definitions must specify at least two different instance types that are supported by
    #               Amazon GameLift Servers FleetIQ. For more information on instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">EC2 Instance Types</a> in the
    #                   <i>Amazon Elastic Compute Cloud User Guide</i>. You can optionally specify capacity
    #               weighting for each instance type. If no weight value is specified for an instance type,
    #               it is set to the default value "1". For more information about capacity weighting, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html"> Instance Weighting for
    #                   Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>
    # @option params [Types::GameServerGroupAutoScalingPolicy] :auto_scaling_policy
    #   <p>Configuration settings to define a scaling policy for the Auto Scaling group that is
    #               optimized for game hosting. The scaling policy uses the metric
    #                   <code>"PercentUtilizedGameServers"</code> to maintain a buffer of idle game servers
    #               that can immediately accommodate new games and players. After the Auto Scaling group is
    #               created, update this value directly in the Auto Scaling group using the Amazon Web Services console or
    #               APIs.</p>
    # @option params [String] :balancing_strategy
    #   <p>Indicates how Amazon GameLift Servers FleetIQ balances the use of Spot Instances and On-Demand Instances in the
    #               game server group. Method options include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
    #                       Instances are unavailable or not viable for game hosting, the game server group
    #                       provides no hosting capacity until Spot Instances can again be used. Until then,
    #                       no new instances are started, and the existing nonviable Spot Instances are
    #                       terminated (after current gameplay ends) and are not replaced.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
    #                       the game server group. If Spot Instances are unavailable, the game server group
    #                       continues to provide hosting capacity by falling back to On-Demand Instances.
    #                       Existing nonviable Spot Instances are terminated (after current gameplay ends)
    #                       and are replaced with new On-Demand Instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
    #                       server group. No Spot Instances are used, even when available, while this
    #                       balancing strategy is in force.</p>
    #               </li>
    #            </ul>
    # @option params [String] :game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected 
    #               from early termination. Unprotected instances that have active game servers running might 
    #               be terminated during a scale-down event, causing players to be dropped from the game. 
    #               Protected instances cannot be terminated while there are active game servers running except 
    #               in the event of a forced game server group deletion (see ). An exception to this is with Spot 
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>
    # @option params [Array<String>] :vpc_subnets
    #   <p>A list of virtual private cloud (VPC) subnets to use with instances in the game server
    #               group. By default, all Amazon GameLift Servers FleetIQ-supported Availability Zones are used. You can use this
    #               parameter to specify VPCs that you've set up. This property cannot be updated after the
    #               game server group is created, and the corresponding Auto Scaling group will always use
    #               the property value that is set with this request, even if the Auto Scaling group is
    #               updated directly.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new game server group resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource
    #               management, access management, and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupName", # required
    #     role_arn: "IamRoleArn", # required
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     launch_template: { # required
    #       launch_template_id: "LaunchTemplateId",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "LaunchTemplateVersion"
    #     },
    #     instance_definitions: [ # required
    #       {
    #         instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #         weighted_capacity: "WeightedCapacity"
    #       }
    #     ],
    #     auto_scaling_policy: {
    #       estimated_instance_warmup: 1,
    #       target_tracking_configuration: { # required
    #         target_value: 1.0, # required
    #       }
    #     },
    #     balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"],
    #     game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #     vpc_subnets: ["VpcSubnet"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_game_server_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server_group: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       role_arn: "IamRoleArn",
    #       instance_definitions: [
    #         {
    #           instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #           weighted_capacity: "WeightedCapacity"
    #         }
    #       ],
    #       balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"],
    #       game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #       auto_scaling_group_arn: "AutoScalingGroupArn",
    #       status: "NEW" # One of: ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"],
    #       status_reason: "NonZeroAndMaxString",
    #       suspended_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]],
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::CreateGameServerGroupOutput]
    def create_game_server_group(params = {}, options = {})
      request = build_request(:create_game_server_group, params)
      request.send_request(options)
    end

    # <p>Creates a multiplayer game session for players in a specific fleet location. This
    #             operation prompts an available server process to start a game session and retrieves
    #             connection information for the new game session. As an alternative, consider using the
    #             Amazon GameLift Servers game session placement feature with <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html">StartGameSessionPlacement</a>, which uses the FleetIQ algorithm and queues to
    #             optimize the placement process.</p>
    #          <p>When creating a game session, you specify exactly where you want to place it and
    #             provide a set of game session configuration settings. The target fleet must be in
    #                 <code>ACTIVE</code> status. </p>
    #          <p>You can use this operation in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To create a game session on an instance in a fleet's home Region, provide a
    #                     fleet or alias ID along with your game session configuration. </p>
    #             </li>
    #             <li>
    #                <p>To create a game session on an instance in a fleet's remote location, provide
    #                     a fleet or alias ID and a location name, along with your game session
    #                     configuration. </p>
    #             </li>
    #             <li>
    #                <p>To create a game session on an instance in an Anywhere fleet, specify the
    #                     fleet's custom location.</p>
    #             </li>
    #          </ul>
    #          <p>If successful, Amazon GameLift Servers initiates a workflow to start a new game session and returns a
    #                 <code>GameSession</code> object containing the game session configuration and
    #             status. When the game session status is <code>ACTIVE</code>, it is updated with
    #             connection information and you can create player sessions for the game session. By
    #             default, newly created game sessions are open to new players. You can restrict new
    #             player access by using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSession.html">UpdateGameSession</a> to change the game session's player session creation
    #             policy.</p>
    #          <p>Amazon GameLift Servers retains logs for active for 14 days. To access the logs, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetGameSessionLogUrl.html">GetGameSessionLogUrl</a> to download the log files.</p>
    #          <p>
    #             <i>Available in Amazon GameLift Servers Local.</i>
    #          </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreateGameSessionInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to create a game session in. You can use either the fleet ID or ARN value. Each
    #               request must reference either a fleet ID or alias ID, but not both.</p>
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias associated with the fleet to create a game session in. You can use either the
    #               alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but
    #               not both.</p>
    # @option params [Integer] :maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    # @option params [Array<Types::GameProperty>] :game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.
    #             For an example, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-create">Create a game session with custom properties</a>.                    
    #           </p>
    # @option params [String] :creator_id
    #   <p>A unique identifier for a player or entity creating the game session. </p>
    #            <p>If you add a resource creation limit policy to a fleet, the
    #                   <code>CreateGameSession</code> operation requires a <code>CreatorId</code>. Amazon GameLift Servers
    #               limits the number of game session creation requests with the same <code>CreatorId</code>
    #               in a specified time period.</p>
    #            <p>If you your fleet doesn't have a resource creation limit policy and you provide a
    #                   <code>CreatorId</code> in your <code>CreateGameSession</code> requests, Amazon GameLift Servers
    #               limits requests to one request per <code>CreatorId</code> per second.</p>
    #            <p>To not limit <code>CreateGameSession</code> requests with the same
    #                   <code>CreatorId</code>, don't provide a <code>CreatorId</code> in your
    #                   <code>CreateGameSession</code> request.</p>
    # @option params [String] :game_session_id
    #   <p>
    #               <i>This parameter is deprecated. Use <code>IdempotencyToken</code>
    #                   instead.</i>
    #            </p>
    #            <p>Custom string that uniquely identifies a request for a new game session. Maximum token
    #               length is 48 characters. If provided, this string is included in the new game session's
    #               ID.</p>
    # @option params [String] :idempotency_token
    #   <p>Custom string that uniquely identifies the new game session request. This is useful
    #               for ensuring that game session requests with the same idempotency token are processed
    #               only once. Subsequent requests with the same string return the original
    #                   <code>GameSession</code> object, with an updated status. Maximum token length is 48
    #               characters. If provided, this string is included in the new game session's ID.
    #               A game session ARN has the following format: 
    #       <code>arn:aws:gamelift:<location>::gamesession/<fleet ID>/<custom ID string or idempotency token></code>. Idempotency tokens remain in use for 30 days after a game session has ended;
    #               game session objects are retained for this time period and then deleted.</p>
    # @option params [String] :game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>.</p>
    # @option params [String] :location
    #   <p>A fleet's remote location to place the new game session in. If this parameter is not
    #               set, the new game session is placed in the fleet's home Region. Specify a remote
    #               location with an Amazon Web Services Region code such as <code>us-west-2</code>. When using an
    #               Anywhere fleet, this parameter is required and must be set to the Anywhere fleet's
    #               custom location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn",
    #     alias_id: "AliasIdOrArn",
    #     maximum_player_session_count: 1, # required
    #     name: "NonZeroAndMaxString",
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       }
    #     ],
    #     creator_id: "NonZeroAndMaxString",
    #     game_session_id: "IdStringModel",
    #     idempotency_token: "IdStringModel",
    #     game_session_data: "LargeGameSessionData",
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.create_game_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session: {
    #       game_session_id: "NonZeroAndMaxString",
    #       name: "NonZeroAndMaxString",
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       creation_time: Time.now,
    #       termination_time: Time.now,
    #       current_player_session_count: 1,
    #       maximum_player_session_count: 1,
    #       status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"],
    #       status_reason: "INTERRUPTED" # One of: ["INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"],
    #       game_properties: [
    #         {
    #           key: "GamePropertyKey", # required
    #           value: "GamePropertyValue", # required
    #         }
    #       ],
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       port: 1,
    #       player_session_creation_policy: "ACCEPT_ALL" # One of: ["ACCEPT_ALL", "DENY_ALL"],
    #       creator_id: "NonZeroAndMaxString",
    #       game_session_data: "LargeGameSessionData",
    #       matchmaker_data: "MatchmakerData",
    #       location: "LocationStringModel"
    #     }
    #   }
    # @return [Types::CreateGameSessionOutput]
    def create_game_session(params = {}, options = {})
      request = build_request(:create_game_session, params)
      request.send_request(options)
    end

    # <p>Creates a placement queue that processes requests for new game sessions. A queue uses
    #             FleetIQ algorithms to locate the best available placement locations for a new game
    #             session, and then prompts the game server process to start a new game session.</p>
    #          <p>A game session queue is configured with a set of destinations (Amazon GameLift Servers fleets or
    #             aliases) that determine where the queue can place new game sessions. These destinations
    #             can span multiple Amazon Web Services Regions, can use different instance types, and can include both
    #             Spot and On-Demand fleets. If the queue includes multi-location fleets, the queue can
    #             place game sessions in any of a fleet's remote locations.</p>
    #          <p>You can configure a queue to determine how it selects the best available placement for
    #             a new game session. Queues can prioritize placement decisions based on a combination of
    #             location, hosting cost, and player latency. You can set up the queue to use the default
    #             prioritization or provide alternate instructions using
    #                 <code>PriorityConfiguration</code>.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <p>Use this operation to make these common types of requests. </p>
    #          <ul>
    #             <li>
    #                <p>Create a queue with the minimum required parameters.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>Name</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>Destinations</code> (This parameter isn't required, but a queue
    #                             can't make placements without at least one destination.)</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Create a queue with placement notification. Queues that have high placement
    #                     activity must use a notification system, such as with Amazon Simple Notification Service (Amazon SNS) or Amazon CloudWatch.</p>
    #                <ul>
    #                   <li>
    #                      <p>Required parameters <code>Name</code> and
    #                             <code>Destinations</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>NotificationTarget</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Create a queue with custom prioritization settings. These custom settings
    #                     replace the default prioritization configuration for a queue.</p>
    #                <ul>
    #                   <li>
    #                      <p>Required parameters <code>Name</code> and
    #                             <code>Destinations</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>PriorityConfiguration</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Create a queue with special rules for processing player latency data.</p>
    #                <ul>
    #                   <li>
    #                      <p>Required parameters <code>Name</code> and
    #                             <code>Destinations</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>PlayerLatencyPolicies</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, this operation returns a new <code>GameSessionQueue</code> object with
    #             an assigned queue ARN. Use the queue's name or ARN when submitting new game session
    #             requests with <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html">StartGameSessionPlacement</a> or <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchmaking.html">StartMatchmaking</a>. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html">
    #                 Design a game session queue</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html">
    #                 Create a game session queue</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html">CreateGameSessionQueue</a> 
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html">DescribeGameSessionQueues</a>
    #                     | 
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html">UpdateGameSessionQueue</a>
    #                     | 
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteGameSessionQueue.html">DeleteGameSessionQueue</a>
    #                     | 
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreateGameSessionQueueInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>
    # @option params [Integer] :timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status. If you don't specify a request timeout, the queue uses a default value.</p>
    # @option params [Array<Types::PlayerLatencyPolicy>] :player_latency_policies
    #   <p>A set of policies that enforce a sliding cap on player latency when processing game sessions placement requests. 
    #   	Use multiple policies to gradually relax the cap over time if Amazon GameLift Servers can't make a placement.
    #   	    Policies are evaluated in order starting with the lowest maximum latency value.</p>
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue. 
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference.</p>
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations 
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is 
    #               not set, game sessions can be placed in any queue location. </p>
    # @option params [Types::PriorityConfiguration] :priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This 
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly 
    #               named will be automatically applied at the end of the prioritization process. </p>
    # @option params [String] :custom_event_data
    #   <p>Information to be added to all events that are related to this game session
    #               queue.</p>
    # @option params [String] :notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html"> Setting up
    #                   notifications for game session placement</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new game session queue resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources are useful for resource
    #               management, access management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "GameSessionQueueName", # required
    #     timeout_in_seconds: 1,
    #     player_latency_policies: [
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1
    #       }
    #     ],
    #     destinations: [
    #       {
    #         destination_arn: "ArnStringModel"
    #       }
    #     ],
    #     filter_configuration: {
    #       allowed_locations: ["LocationStringModel"]
    #     },
    #     priority_configuration: {
    #       priority_order: ["LATENCY" # One of: ["LATENCY", "COST", "DESTINATION", "LOCATION"]],
    #       location_order: ["LocationStringModel"]
    #     },
    #     custom_event_data: "QueueCustomEventData",
    #     notification_target: "QueueSnsArnStringModel",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_game_session_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session_queue: {
    #       name: "GameSessionQueueName",
    #       game_session_queue_arn: "GameSessionQueueArn",
    #       timeout_in_seconds: 1,
    #       player_latency_policies: [
    #         {
    #           maximum_individual_player_latency_milliseconds: 1,
    #           policy_duration_seconds: 1
    #         }
    #       ],
    #       destinations: [
    #         {
    #           destination_arn: "ArnStringModel"
    #         }
    #       ],
    #       filter_configuration: {
    #         allowed_locations: ["LocationStringModel"]
    #       },
    #       priority_configuration: {
    #         priority_order: ["LATENCY" # One of: ["LATENCY", "COST", "DESTINATION", "LOCATION"]],
    #         location_order: ["LocationStringModel"]
    #       },
    #       custom_event_data: "QueueCustomEventData",
    #       notification_target: "QueueSnsArnStringModel"
    #     }
    #   }
    # @return [Types::CreateGameSessionQueueOutput]
    def create_game_session_queue(params = {}, options = {})
      request = build_request(:create_game_session_queue, params)
      request.send_request(options)
    end

    # <p>Creates a custom location for use in an Anywhere fleet.</p>
    # @param [Hash, Types::CreateLocationInput] params
    # @option params [String] :location_name
    #   <p>A descriptive name for the custom location.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new resource. Tags are developer-defined key-value
    #               pairs. Tagging Amazon Web Services resources are useful for resource management, access management,
    #               and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Rareference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_name: "CustomInputLocationStringModel", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: {
    #       location_name: "LocationStringModel",
    #       location_arn: "LocationArnModel",
    #       ping_beacon: {
    #         udp_endpoint: {
    #           domain: "NonZeroAndMaxString",
    #           port: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateLocationOutput]
    def create_location(params = {}, options = {})
      request = build_request(:create_location, params)
      request.send_request(options)
    end

    # <p>Defines a new matchmaking configuration for use with FlexMatch. Whether your are using
    #             FlexMatch with Amazon GameLift Servers hosting or as a standalone matchmaking service, the matchmaking
    #             configuration sets out rules for matching players and forming teams. If you're also
    #             using Amazon GameLift Servers hosting, it defines how to start game sessions for each match. Your
    #             matchmaking system can use multiple configurations to handle different game scenarios.
    #             All matchmaking requests identify the matchmaking configuration to use and provide
    #             player attributes consistent with that configuration. </p>
    #          <p>To create a matchmaking configuration, you must provide the following: configuration
    #             name and FlexMatch mode (with or without Amazon GameLift Servers hosting); a rule set that specifies how
    #             to evaluate players and find acceptable matches; whether player acceptance is required;
    #             and the maximum time allowed for a matchmaking attempt. When using FlexMatch with Amazon GameLift Servers
    #             hosting, you also need to identify the game session queue to use when starting a game
    #             session for the match.</p>
    #          <p>In addition, you must set up an Amazon Simple Notification Service topic to receive matchmaking notifications.
    #             Provide the topic ARN in the matchmaking configuration.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html"> Design a FlexMatch
    #                 matchmaker</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html"> Set up FlexMatch event
    #                 notification</a>
    #          </p>
    # @param [Hash, Types::CreateMatchmakingConfigurationInput] params
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking configuration. This name is used to identify the configuration associated with a matchmaking
    #               request or ticket.</p>
    # @option params [String] :description
    #   <p>A human-readable description of the matchmaking configuration. </p>
    # @option params [Array<String>] :game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               Amazon GameLift Servers-hosted game sessions for matches that are created with this matchmaking
    #               configuration. If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not
    #               set this parameter. </p>
    # @option params [Integer] :request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    # @option params [Integer] :acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required. </p>
    # @option params [Boolean] :acceptance_required
    #   <p>A flag that determines whether a match that was created with this configuration must
    #               be accepted by the matched players. To require acceptance, set to <code>TRUE</code>.
    #               With this option enabled, matchmaking tickets use the status
    #                   <code>REQUIRES_ACCEPTANCE</code> to indicate when a completed potential match is
    #               waiting for player acceptance. </p>
    # @option params [String] :rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
    #               value. A matchmaking configuration can only use rule sets that are defined in the same
    #               Region.</p>
    # @option params [String] :notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #                   Setting up notifications for matchmaking</a> for more information.</p>
    # @option params [Integer] :additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies 
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
    #                   <code>STANDALONE</code>.</p>
    # @option params [String] :custom_event_data
    #   <p>Information to be added to all events related to this matchmaking configuration.
    #           </p>
    # @option params [Array<Types::GameProperty>] :game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>. This information is added to the new <code>GameSession</code> object that is
    #               created for a successful match. This parameter is not used if <code>FlexMatchMode</code>
    #               is set to <code>STANDALONE</code>.</p>
    # @option params [String] :game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>. This information is added to the new <code>GameSession</code> object that is
    #               created for a successful match. This parameter is not used if <code>FlexMatchMode</code>
    #               is set to <code>STANDALONE</code>.</p>
    # @option params [String] :backfill_mode
    #   <p>The method used to backfill game sessions that are created with this matchmaking
    #               configuration. Specify <code>MANUAL</code> when your game manages backfill requests
    #               manually or does not use the match backfill feature. Specify <code>AUTOMATIC</code> to
    #               have Amazon GameLift Servers create a backfill request whenever a game session has one or more open
    #               slots. Learn more about manual and automatic backfill in <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html"> Backfill Existing Games
    #                   with FlexMatch</a>. Automatic backfill is not available when
    #                   <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    # @option params [String] :flex_match_mode
    #   <p>Indicates whether this matchmaking configuration is being used with Amazon GameLift Servers hosting or
    #               as a standalone matchmaking solution. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>STANDALONE</b> - FlexMatch forms matches and
    #                       returns match information, including players and team assignments, in a <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded"> MatchmakingSucceeded</a> event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>WITH_QUEUE</b> - FlexMatch forms matches and uses
    #                       the specified Amazon GameLift Servers queue to start a game session for the match. </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new matchmaking configuration resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources are useful for resource
    #               management, access management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
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
    #       }
    #     ],
    #     game_session_data: "GameSessionData",
    #     backfill_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #     flex_match_mode: "STANDALONE" # One of: ["STANDALONE", "WITH_QUEUE"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_matchmaking_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       name: "MatchmakingIdStringModel",
    #       configuration_arn: "MatchmakingConfigurationArn",
    #       description: "NonZeroAndMaxString",
    #       game_session_queue_arns: ["ArnStringModel"],
    #       request_timeout_seconds: 1,
    #       acceptance_timeout_seconds: 1,
    #       acceptance_required: false,
    #       rule_set_name: "MatchmakingIdStringModel",
    #       rule_set_arn: "MatchmakingRuleSetArn",
    #       notification_target: "SnsArnStringModel",
    #       additional_player_count: 1,
    #       custom_event_data: "CustomEventData",
    #       creation_time: Time.now,
    #       game_properties: [
    #         {
    #           key: "GamePropertyKey", # required
    #           value: "GamePropertyValue", # required
    #         }
    #       ],
    #       game_session_data: "GameSessionData",
    #       backfill_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #       flex_match_mode: "STANDALONE" # One of: ["STANDALONE", "WITH_QUEUE"]
    #     }
    #   }
    # @return [Types::CreateMatchmakingConfigurationOutput]
    def create_matchmaking_configuration(params = {}, options = {})
      request = build_request(:create_matchmaking_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new rule set for FlexMatch matchmaking. A rule set describes the type of match
    #             to create, such as the number and size of teams. It also sets the parameters for
    #             acceptable player matches, such as minimum skill level or character type.</p>
    #          <p>To create a matchmaking rule set, provide unique rule set name and the rule set body
    #             in JSON format. Rule sets must be defined in the same Region as the matchmaking
    #             configuration they are used with.</p>
    #          <p>Since matchmaking rule sets cannot be edited, it is a good idea to check the rule set
    #             syntax using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ValidateMatchmakingRuleSet.html">ValidateMatchmakingRuleSet</a> before creating a new rule set.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a rule
    #                         set</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html">Design a
    #                         matchmaker</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-intro.html">Matchmaking with
    #                         FlexMatch</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateMatchmakingRuleSetInput] params
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking rule set. A matchmaking configuration identifies the rule set it uses by this name
    #               value. Note that the rule set name is different from the optional <code>name</code>
    #               field in the rule set body.</p>
    # @option params [String] :rule_set_body
    #   <p>A collection of matchmaking rules, formatted as a JSON string. Comments are not
    #               allowed in JSON, but most elements support a description field.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new matchmaking rule set resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources are useful for resource
    #               management, access management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MatchmakingIdStringModel", # required
    #     rule_set_body: "RuleSetBody", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_matchmaking_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_set: { # required
    #       rule_set_name: "MatchmakingIdStringModel",
    #       rule_set_arn: "MatchmakingRuleSetArn",
    #       rule_set_body: "RuleSetBody", # required
    #       creation_time: Time.now
    #     }
    #   }
    # @return [Types::CreateMatchmakingRuleSetOutput]
    def create_matchmaking_rule_set(params = {}, options = {})
      request = build_request(:create_matchmaking_rule_set, params)
      request.send_request(options)
    end

    # <p>Reserves an open player slot in a game session for a player. New player sessions can
    #             be created in any game session with an open slot that is in <code>ACTIVE</code> status
    #             and has a player creation policy of <code>ACCEPT_ALL</code>. You can add a group of
    #             players to a game session with <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSessions.html">CreatePlayerSessions</a> . </p>
    #          <p>To create a player session, specify a game session ID, player ID, and optionally a set
    #             of player data. </p>
    #          <p>If successful, a slot is reserved in the game session for the player and a new
    #                 <code>PlayerSessions</code> object is returned with a player session ID. The player
    #             references the player session ID when sending a connection request to the game session,
    #             and the game server can use it to validate the player reservation with the Amazon GameLift Servers
    #             service. Player sessions cannot be updated. </p>
    #          <p>The maximum number of players per game session is 200. It is not adjustable. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreatePlayerSessionInput] params
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to add a player to.</p>
    # @option params [String] :player_id
    #   <p>A unique identifier for a player. Player IDs are developer-defined.</p>
    # @option params [String] :player_data
    #   <p>Developer-defined information related to a player. Amazon GameLift Servers does not use this data, so it can be formatted as needed for use in the game.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_session_id: "ArnStringModel", # required
    #     player_id: "PlayerId", # required
    #     player_data: "PlayerData"
    #   }
    #   options = {}
    #   response = client.create_player_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     player_session: {
    #       player_session_id: "PlayerSessionId",
    #       player_id: "PlayerId",
    #       game_session_id: "NonZeroAndMaxString",
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       creation_time: Time.now,
    #       termination_time: Time.now,
    #       status: "RESERVED" # One of: ["RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"],
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       port: 1,
    #       player_data: "PlayerData"
    #     }
    #   }
    # @return [Types::CreatePlayerSessionOutput]
    def create_player_session(params = {}, options = {})
      request = build_request(:create_player_session, params)
      request.send_request(options)
    end

    # <p>Reserves open slots in a game session for a group of players. New player sessions can
    #             be created in any game session with an open slot that is in <code>ACTIVE</code> status
    #             and has a player creation policy of <code>ACCEPT_ALL</code>. To add a single player to a
    #             game session, use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSession.html">CreatePlayerSession</a>
    #          </p>
    #          <p>To create player sessions, specify a game session ID and a list of player IDs.
    #             Optionally, provide a set of player data for each player ID. </p>
    #          <p>If successful, a slot is reserved in the game session for each player, and new
    #                 <code>PlayerSession</code> objects are returned with player session IDs. Each player
    #             references their player session ID when sending a connection request to the game
    #             session, and the game server can use it to validate the player reservation with the
    #             Amazon GameLift Servers service. Player sessions cannot be updated.</p>
    #          <p>The maximum number of players per game session is 200. It is not adjustable. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreatePlayerSessionsInput] params
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to add players to.</p>
    # @option params [Array<String>] :player_ids
    #   <p>List of unique identifiers for the players to be added.</p>
    # @option params [Hash<String, String>] :player_data_map
    #   <p>Map of string pairs, each specifying a player ID and a set of developer-defined
    #               information related to the player. Amazon GameLift Servers does not use this data, so it can be formatted
    #               as needed for use in the game. Any player data strings for player IDs that are not
    #               included in the <code>PlayerIds</code> parameter are ignored. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_session_id: "ArnStringModel", # required
    #     player_ids: ["PlayerId"], # required
    #     player_data_map: {
    #       "NonZeroAndMaxString" => "PlayerData"
    #     }
    #   }
    #   options = {}
    #   response = client.create_player_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     player_sessions: [
    #       {
    #         player_session_id: "PlayerSessionId",
    #         player_id: "PlayerId",
    #         game_session_id: "NonZeroAndMaxString",
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         creation_time: Time.now,
    #         termination_time: Time.now,
    #         status: "RESERVED" # One of: ["RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"],
    #         ip_address: "IpAddress",
    #         dns_name: "DnsName",
    #         port: 1,
    #         player_data: "PlayerData"
    #       }
    #     ]
    #   }
    # @return [Types::CreatePlayerSessionsOutput]
    def create_player_sessions(params = {}, options = {})
      request = build_request(:create_player_sessions, params)
      request.send_request(options)
    end

    # <p>Creates a new script record for your Amazon GameLift Servers Realtime script. Realtime scripts are JavaScript that
    #             provide configuration settings and optional custom game logic for your game. The script
    #             is deployed when you create a Amazon GameLift Servers Realtime fleet to host your game sessions. Script logic is
    #             executed during an active game session. </p>
    #          <p>To create a new script record, specify a script name and provide the script file(s).
    #             The script files and all dependencies must be zipped into a single file. You can pull
    #             the zip file from either of these locations: </p>
    #          <ul>
    #             <li>
    #                <p>A locally available directory. Use the <i>ZipFile</i> parameter
    #                     for this option.</p>
    #             </li>
    #             <li>
    #                <p>An Amazon Simple Storage Service (Amazon S3) bucket under your Amazon Web Services account. Use the
    #                         <i>StorageLocation</i> parameter for this option. You'll need
    #                     to have an Identity Access Management (IAM) role that allows the Amazon GameLift Servers service
    #                     to access your S3 bucket. </p>
    #             </li>
    #          </ul>
    #          <p>If the call is successful, a new script record is created with a unique script ID. If
    #             the script file is provided as a local file, the file is uploaded to an Amazon GameLift Servers-owned S3
    #             bucket and the script record's storage location reflects this location. If the script
    #             file is provided as an S3 bucket, Amazon GameLift Servers accesses the file at this storage location as
    #             needed for deployment.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Servers Amazon GameLift Servers Realtime</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html">Set Up a Role for Amazon GameLift Servers Access</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreateScriptInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique. You can use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateScript.html">UpdateScript</a> to
    #               change this value later. </p>
    # @option params [String] :version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateScript.html">UpdateScript</a> to
    #               change this value later. </p>
    # @option params [Types::S3Location] :storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift Servers to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift Servers uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    # @option params [String] :zip_file
    #   <p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
    #               file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
    #            <p>When using the Amazon Web Services CLI tool to create a script, this parameter is set to the zip
    #               file name. It must be prepended with the string "fileb://" to indicate that the file
    #               data is a binary object. For example: <code>--zip-file
    #                   fileb://myRealtimeScript.zip</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of labels to assign to the new script resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources are useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html">TagResource</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html">UntagResource</a>, and
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html">ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit
    #               may be lower than stated. See the Amazon Web Services General Reference for actual tagging
    #               limits.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString"
    #     },
    #     zip_file: "data",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_script(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     script: {
    #       script_id: "ScriptId",
    #       script_arn: "ScriptArn",
    #       name: "NonZeroAndMaxString",
    #       version: "NonZeroAndMaxString",
    #       size_on_disk: 1,
    #       creation_time: Time.now,
    #       storage_location: {
    #         bucket: "NonEmptyString",
    #         key: "NonEmptyString",
    #         role_arn: "NonEmptyString",
    #         object_version: "NonEmptyString"
    #       }
    #     }
    #   }
    # @return [Types::CreateScriptOutput]
    def create_script(params = {}, options = {})
      request = build_request(:create_script, params)
      request.send_request(options)
    end

    # <p>Requests authorization to create or delete a peer connection between the VPC for your
    #             Amazon GameLift Servers fleet and a virtual private cloud (VPC) in your Amazon Web Services account. VPC peering enables the game servers on
    #             your fleet to communicate directly with other Amazon Web Services resources. After you've received
    #             authorization, use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringConnection.html">CreateVpcPeeringConnection</a> to establish the peering connection. For more
    #             information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers
    #                 Fleets</a>.</p>
    #          <p>You can peer with VPCs that are owned by any Amazon Web Services account you have access to,
    #             including the account that you use to manage your Amazon GameLift Servers fleets. You cannot peer with
    #             VPCs that are in different Regions.</p>
    #          <p>To request authorization to create a connection, call this operation from the Amazon Web Services
    #             account with the VPC that you want to peer to your Amazon GameLift Servers fleet. For example, to enable
    #             your game servers to retrieve data from a DynamoDB table, use the account that manages
    #             that DynamoDB resource. Identify the following values: (1) The ID of the VPC that you
    #             want to peer with, and (2) the ID of the Amazon Web Services account that you use to manage Amazon GameLift Servers. If
    #             successful, VPC peering is authorized for the specified VPC. </p>
    #          <p>To request authorization to delete a connection, call this operation from the Amazon Web Services
    #             account with the VPC that is peered with your Amazon GameLift Servers fleet. Identify the following
    #             values: (1) VPC ID that you want to delete the peering connection for, and (2) ID of the
    #             Amazon Web Services account that you use to manage Amazon GameLift Servers. </p>
    #          <p>The authorization remains valid for 24 hours unless it is canceled. You must create or
    #             delete the peering connection while the authorization is valid. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreateVpcPeeringAuthorizationInput] params
    # @option params [String] :game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your Amazon GameLift Servers fleet. 
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    # @option params [String] :peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console. 
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_lift_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   }
    #   options = {}
    #   response = client.create_vpc_peering_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_peering_authorization: {
    #       game_lift_aws_account_id: "NonZeroAndMaxString",
    #       peer_vpc_aws_account_id: "NonZeroAndMaxString",
    #       peer_vpc_id: "NonZeroAndMaxString",
    #       creation_time: Time.now,
    #       expiration_time: Time.now
    #     }
    #   }
    # @return [Types::CreateVpcPeeringAuthorizationOutput]
    def create_vpc_peering_authorization(params = {}, options = {})
      request = build_request(:create_vpc_peering_authorization, params)
      request.send_request(options)
    end

    # <p>Establishes a VPC peering connection between a virtual private cloud (VPC) in an Amazon Web Services account with the VPC
    #             for your Amazon GameLift Servers fleet. VPC peering enables the game servers on your fleet to communicate
    #             directly with other Amazon Web Services resources. You can peer with VPCs in any Amazon Web Services account that
    #             you have access to, including the account that you use to manage your Amazon GameLift Servers fleets. You
    #             cannot peer with VPCs that are in different Regions. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC
    #                 Peering with Amazon GameLift Servers Fleets</a>.</p>
    #          <p>Before calling this operation to establish the peering connection, you first need to
    #             use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html">CreateVpcPeeringAuthorization</a> and identify the VPC you want to peer with.
    #             Once the authorization for the specified VPC is issued, you have 24 hours to establish
    #             the connection. These two operations handle all tasks necessary to peer the two VPCs,
    #             including acceptance, updating routing tables, etc. </p>
    #          <p>To establish the connection, call this operation from the Amazon Web Services account that is used
    #             to manage the Amazon GameLift Servers fleets. Identify the following values: (1) The ID of the fleet you
    #             want to be enable a VPC peering connection for; (2) The Amazon Web Services account with the VPC that
    #             you want to peer with; and (3) The ID of the VPC you want to peer with. This operation
    #             is asynchronous. If successful, a connection request is created. You can use continuous
    #             polling to track the request's status using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeVpcPeeringConnections.html">DescribeVpcPeeringConnections</a> , or by monitoring fleet events for success
    #             or failure using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html">DescribeFleetEvents</a> . </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::CreateVpcPeeringConnectionInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet. You can use either the fleet ID or ARN value. This tells Amazon GameLift Servers which GameLift
    #               VPC to peer with. </p>
    # @option params [String] :peer_vpc_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account with the VPC that you want to peer your
    #               Amazon GameLift Servers fleet with. You can find your Account ID in the Amazon Web Services Management Console under account
    #               settings.</p>
    # @option params [String] :peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console. 
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetId", # required
    #     peer_vpc_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   }
    #   options = {}
    #   response = client.create_vpc_peering_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateVpcPeeringConnectionOutput]
    def create_vpc_peering_connection(params = {}, options = {})
      request = build_request(:create_vpc_peering_connection, params)
      request.send_request(options)
    end

    # <p>Deletes an alias. This operation removes all record of the alias. Game clients
    #             attempting to access a server process using the deleted alias receive an error. To
    #             delete an alias, specify the alias ID to be deleted.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DeleteAliasInput] params
    # @option params [String] :alias_id
    #   <p>A unique identifier of the alias that you want to delete. You can use either the alias
    #               ID or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "AliasIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_alias(params = {}, options = {})
      request = build_request(:delete_alias, params)
      request.send_request(options)
    end

    # <p>Deletes a build. This operation permanently deletes the build resource and any
    #             uploaded build files. Deleting a build does not affect the status of any active fleets
    #             using the build, but you can no longer create new fleets with the deleted build.</p>
    #          <p>To delete a build, specify the build ID. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html"> Upload a Custom
    #                 Server Build</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DeleteBuildInput] params
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to delete. You can use either the build ID or ARN value. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     build_id: "BuildIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_build(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_build(params = {}, options = {})
      request = build_request(:delete_build, params)
      request.send_request(options)
    end

    # <p>Deletes all resources and information related to a container fleet and shuts down
    #             currently running fleet instances, including those in remote locations. The container
    #             fleet must be in <code>ACTIVE</code> status to be deleted.</p>
    #          <p>To delete a fleet, specify the fleet ID to be terminated. During the deletion process,
    #             the fleet status is changed to <code>DELETING</code>. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 Fleets</a>
    #          </p>
    # @param [Hash, Types::DeleteContainerFleetInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the container fleet to delete. You can use either the fleet ID
    #               or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_container_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContainerFleetOutput]
    def delete_container_fleet(params = {}, options = {})
      request = build_request(:delete_container_fleet, params)
      request.send_request(options)
    end

    # <p>Deletes a container group definition. </p>
    #          <p>
    #             <b>Request options:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Delete an entire container group definition, including all versions. Specify the
    #           container group definition name, or use an ARN value without the version number.</p>
    #             </li>
    #             <li>
    #                <p>Delete a particular version. Specify the container group definition name and a version
    #           number, or use an ARN value that includes the version number.</p>
    #             </li>
    #             <li>
    #                <p>Keep the newest versions and delete all older versions. Specify the container group
    #           definition name and the number of versions to retain. For example, set
    #             <code>VersionCountToRetain</code> to 5 to delete all but the five most recent
    #           versions.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Result</b>
    #          </p>
    #          <p>If successful, Amazon GameLift Servers removes the container group definition versions that you request deletion for. 
    #     This request will fail for any requested versions if the following is true: </p>
    #          <ul>
    #             <li>
    #                <p>If the version is being used in an active fleet</p>
    #             </li>
    #             <li>
    #                <p>If the version is being deployed to a fleet in a deployment that's currently in progress.</p>
    #             </li>
    #             <li>
    #                <p>If the version is designated as a rollback definition in a fleet deployment that's currently in progress.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html">Manage a container group definition</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteContainerGroupDefinitionInput] params
    # @option params [String] :name
    #   <p>The unique identifier for the container group definition to delete. You can use either the <code>Name</code> or <code>ARN</code>
    #         value.</p>
    # @option params [Integer] :version_number
    #   <p>The specific version to delete.</p>
    # @option params [Integer] :version_count_to_retain
    #   <p>The number of most recent versions to keep while deleting all older versions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ContainerGroupDefinitionNameOrArn", # required
    #     version_number: 1,
    #     version_count_to_retain: 1
    #   }
    #   options = {}
    #   response = client.delete_container_group_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContainerGroupDefinitionOutput]
    def delete_container_group_definition(params = {}, options = {})
      request = build_request(:delete_container_group_definition, params)
      request.send_request(options)
    end

    # <p>Deletes all resources and information related to a fleet and shuts down any currently
    #             running fleet instances, including those in remote locations.</p>
    #          <note>
    #             <p>If the fleet being deleted has a VPC peering connection, you first need to get a
    #                 valid authorization (good for 24 hours) by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html">CreateVpcPeeringAuthorization</a>. You don't need to explicitly delete the
    #                 VPC peering connection.</p>
    #          </note>
    #          <p>To delete a fleet, specify the fleet ID to be terminated. During the deletion process,
    #             the fleet status is changed to <code>DELETING</code>. When completed, the status
    #             switches to <code>TERMINATED</code> and the fleet event <code>FLEET_DELETED</code> is
    #             emitted.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 Fleets</a>
    #          </p>
    # @param [Hash, Types::DeleteFleetInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_fleet(params = {}, options = {})
      request = build_request(:delete_fleet, params)
      request.send_request(options)
    end

    # <p>Removes locations from a multi-location fleet. When deleting a location, all game
    #             server process and all instances that are still active in the location are shut down. </p>
    #          <p>To delete fleet locations, identify the fleet ID and provide a list of the locations
    #             to be deleted. </p>
    #          <p>If successful, GameLift sets the location status to <code>DELETING</code>, and begins
    #             to shut down existing server processes and terminate instances in each location being
    #             deleted. When completed, the location status changes to <code>TERMINATED</code>.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    # @param [Hash, Types::DeleteFleetLocationsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to delete locations for. You can use either the fleet ID or ARN value.</p>
    # @option params [Array<String>] :locations
    #   <p>The list of fleet locations to delete. Specify locations in the form of an Amazon Web Services
    #               Region code, such as <code>us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: ["LocationStringModel"], # required
    #   }
    #   options = {}
    #   response = client.delete_fleet_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetIdOrArn",
    #     fleet_arn: "FleetArn",
    #     location_states: [
    #       {
    #         location: "LocationStringModel",
    #         status: "NEW" # One of: ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"]
    #       }
    #     ]
    #   }
    # @return [Types::DeleteFleetLocationsOutput]
    def delete_fleet_locations(params = {}, options = {})
      request = build_request(:delete_fleet_locations, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Terminates a game server group
    #             and permanently deletes the game server group record. You have several options for how
    #             these resources are impacted when deleting the game server group. Depending on the type
    #             of delete operation selected, this operation might affect these resources:</p>
    #          <ul>
    #             <li>
    #                <p>The game server group</p>
    #             </li>
    #             <li>
    #                <p>The corresponding Auto Scaling group</p>
    #             </li>
    #             <li>
    #                <p>All game servers that are currently running in the group</p>
    #             </li>
    #          </ul>
    #          <p>To delete a game server group, identify the game server group to delete and specify
    #             the type of delete operation to initiate. Game server groups can only be deleted if they
    #             are in <code>ACTIVE</code> or <code>ERROR</code> status.</p>
    #          <p>If the delete request is successful, a series of operations are kicked off. The game
    #             server group status is changed to <code>DELETE_SCHEDULED</code>, which prevents new game
    #             servers from being registered and stops automatic scaling activity. Once all game
    #             servers in the game server group are deregistered, Amazon GameLift Servers FleetIQ can begin deleting resources.
    #             If any of the delete operations fail, the game server group is placed in
    #                 <code>ERROR</code> status.</p>
    #          <p>Amazon GameLift Servers FleetIQ emits delete events to Amazon CloudWatch.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::DeleteGameServerGroupInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    # @option params [String] :delete_option
    #   <p>The type of delete to perform. Options include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SAFE_DELETE</code> – (default) Terminates the game server group and
    #                       Amazon EC2 Auto Scaling group only when it has no game servers that are in
    #                           <code>UTILIZED</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_DELETE</code> – Terminates the game server group, including all
    #                       active game servers regardless of their utilization status, and the Amazon EC2 Auto
    #                       Scaling group. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RETAIN</code> – Does a safe delete of the game server group but retains
    #                       the Amazon EC2 Auto Scaling group as is.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     delete_option: "SAFE_DELETE" # One of: ["SAFE_DELETE", "FORCE_DELETE", "RETAIN"]
    #   }
    #   options = {}
    #   response = client.delete_game_server_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server_group: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       role_arn: "IamRoleArn",
    #       instance_definitions: [
    #         {
    #           instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #           weighted_capacity: "WeightedCapacity"
    #         }
    #       ],
    #       balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"],
    #       game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #       auto_scaling_group_arn: "AutoScalingGroupArn",
    #       status: "NEW" # One of: ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"],
    #       status_reason: "NonZeroAndMaxString",
    #       suspended_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]],
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::DeleteGameServerGroupOutput]
    def delete_game_server_group(params = {}, options = {})
      request = build_request(:delete_game_server_group, params)
      request.send_request(options)
    end

    # <p>Deletes a game session queue. Once a queue is successfully deleted, unfulfilled <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html">StartGameSessionPlacement</a> requests that reference the queue will fail. To
    #             delete a queue, specify the queue name.</p>
    # @param [Hash, Types::DeleteGameSessionQueueInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "GameSessionQueueNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_game_session_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGameSessionQueueOutput]
    def delete_game_session_queue(params = {}, options = {})
      request = build_request(:delete_game_session_queue, params)
      request.send_request(options)
    end

    # <p>Deletes a custom location.</p>
    #          <p>Before deleting a custom location, review any fleets currently using the custom
    #             location and deregister the location if it is in use. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeregisterCompute.html">DeregisterCompute</a>.</p>
    # @param [Hash, Types::DeleteLocationInput] params
    # @option params [String] :location_name
    #   <p>The location name of the custom location to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_name: "CustomLocationNameOrArnModel", # required
    #   }
    #   options = {}
    #   response = client.delete_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLocationOutput]
    def delete_location(params = {}, options = {})
      request = build_request(:delete_location, params)
      request.send_request(options)
    end

    # <p>Permanently removes a FlexMatch matchmaking configuration. To delete, specify the
    #             configuration name. A matchmaking configuration cannot be deleted if it is being used in
    #             any active matchmaking tickets.</p>
    # @param [Hash, Types::DeleteMatchmakingConfigurationInput] params
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking configuration. You can use either the configuration name or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MatchmakingConfigurationName", # required
    #   }
    #   options = {}
    #   response = client.delete_matchmaking_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMatchmakingConfigurationOutput]
    def delete_matchmaking_configuration(params = {}, options = {})
      request = build_request(:delete_matchmaking_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an existing matchmaking rule set. To delete the rule set, provide the rule set
    #             name. Rule sets cannot be deleted if they are currently being used by a matchmaking
    #             configuration. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a rule
    #                         set</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteMatchmakingRuleSetInput] params
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking rule set to be deleted. (Note: The rule set name is different from the optional "name"
    #               field in the rule set body.) You can use either the rule set name or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MatchmakingRuleSetName", # required
    #   }
    #   options = {}
    #   response = client.delete_matchmaking_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMatchmakingRuleSetOutput]
    def delete_matchmaking_rule_set(params = {}, options = {})
      request = build_request(:delete_matchmaking_rule_set, params)
      request.send_request(options)
    end

    # <p>Deletes a fleet scaling policy. Once deleted, the policy is no longer in force and
    #             Amazon GameLift Servers removes all record of it. To delete a scaling policy, specify both the scaling
    #             policy name and the fleet ID it is associated with.</p>
    #          <p>To temporarily suspend scaling policies, use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html">StopFleetActions</a>. This operation suspends all policies for the
    #             fleet.</p>
    # @param [Hash, Types::DeleteScalingPolicyInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonZeroAndMaxString", # required
    #     fleet_id: "FleetIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_scaling_policy(params = {}, options = {})
      request = build_request(:delete_scaling_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a Realtime script. This operation permanently deletes the script record. If
    #             script files were uploaded, they are also deleted (files stored in an S3 bucket are not
    #             deleted). </p>
    #          <p>To delete a script, specify the script ID. Before deleting a script, be sure to
    #             terminate all fleets that are deployed with the script being deleted. Fleet instances
    #             periodically check for script updates, and if the script record no longer exists, the
    #             instance will go into an error state and be unable to host game sessions.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Servers Amazon GameLift Servers Realtime</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DeleteScriptInput] params
    # @option params [String] :script_id
    #   <p>A unique identifier for the Realtime script to delete. You can use either the script ID or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     script_id: "ScriptIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_script(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_script(params = {}, options = {})
      request = build_request(:delete_script, params)
      request.send_request(options)
    end

    # <p>Cancels a pending VPC peering authorization for the specified VPC. If you need to
    #             delete an existing VPC peering connection, use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteVpcPeeringConnection.html">DeleteVpcPeeringConnection</a>.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DeleteVpcPeeringAuthorizationInput] params
    # @option params [String] :game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your Amazon GameLift Servers fleet. 
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    # @option params [String] :peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the 
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console. 
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_lift_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_peering_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVpcPeeringAuthorizationOutput]
    def delete_vpc_peering_authorization(params = {}, options = {})
      request = build_request(:delete_vpc_peering_authorization, params)
      request.send_request(options)
    end

    # <p>Removes a VPC peering connection. To delete the connection, you must have a valid
    #             authorization for the VPC peering connection that you want to delete.. </p>
    #          <p>Once a valid authorization exists, call this operation from the Amazon Web Services account that is
    #             used to manage the Amazon GameLift Servers fleets. Identify the connection to delete by the connection ID
    #             and fleet ID. If successful, the connection is removed. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DeleteVpcPeeringConnectionInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet. This fleet specified must match the fleet referenced in the VPC peering
    #               connection record. You can use either the fleet ID or ARN value.</p>
    # @option params [String] :vpc_peering_connection_id
    #   <p>A unique identifier for a VPC peering connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetId", # required
    #     vpc_peering_connection_id: "NonZeroAndMaxString", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_peering_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVpcPeeringConnectionOutput]
    def delete_vpc_peering_connection(params = {}, options = {})
      request = build_request(:delete_vpc_peering_connection, params)
      request.send_request(options)
    end

    # <p>Removes a compute resource from an Anywhere fleet. Deregistered computes can no longer
    #             host game sessions through Amazon GameLift Servers. Use this operation with an Anywhere fleet that
    #             doesn't use the Amazon GameLift Servers Agent For Anywhere fleets with the Agent, the Agent handles all
    #             compute registry tasks for you. </p>
    #          <p>To deregister a compute, call this operation from the compute that's being
    #             deregistered and specify the compute name and the fleet ID. </p>
    # @param [Hash, Types::DeregisterComputeInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet the compute resource is currently registered to.</p>
    # @option params [String] :compute_name
    #   <p>The unique identifier of the compute resource to deregister. For an Anywhere fleet
    #               compute, use the registered compute name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.deregister_compute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterComputeOutput]
    def deregister_compute(params = {}, options = {})
      request = build_request(:deregister_compute, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Removes the game server from a
    #             game server group. As a result of this operation, the deregistered game server can no
    #             longer be claimed and will not be returned in a list of active game servers. </p>
    #          <p>To deregister a game server, specify the game server group and game server ID. If
    #             successful, this operation emits a CloudWatch event with termination timestamp and
    #             reason.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::DeregisterGameServerInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #   }
    #   options = {}
    #   response = client.deregister_game_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_game_server(params = {}, options = {})
      request = build_request(:deregister_game_server, params)
      request.send_request(options)
    end

    # <p>Retrieves properties for an alias. This operation returns all alias metadata and
    #             settings. To get an alias's target fleet ID only, use <code>ResolveAlias</code>. </p>
    #          <p>To get alias properties, specify the alias ID. If successful, the requested alias
    #             record is returned.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribeAliasInput] params
    # @option params [String] :alias_id
    #   <p>The unique identifier for the fleet alias that you want to retrieve. You can use
    #               either the alias ID or ARN value. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "AliasIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.describe_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias: {
    #       alias_id: "AliasId",
    #       name: "NonBlankAndLengthConstraintString",
    #       alias_arn: "AliasArn",
    #       description: "FreeText",
    #       routing_strategy: {
    #         type: "SIMPLE" # One of: ["SIMPLE", "TERMINAL"],
    #         fleet_id: "FleetId",
    #         message: "FreeText"
    #       },
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeAliasOutput]
    def describe_alias(params = {}, options = {})
      request = build_request(:describe_alias, params)
      request.send_request(options)
    end

    # <p>Retrieves properties for a custom game build. To request a build resource, specify a
    #             build ID. If successful, an object containing the build properties is returned.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html"> Upload a Custom
    #                 Server Build</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribeBuildInput] params
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to retrieve properties for. You can use either the build ID or ARN value.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     build_id: "BuildIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.describe_build(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build: {
    #       build_id: "BuildId",
    #       build_arn: "BuildArn",
    #       name: "FreeText",
    #       version: "FreeText",
    #       status: "INITIALIZED" # One of: ["INITIALIZED", "READY", "FAILED"],
    #       size_on_disk: 1,
    #       operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #       creation_time: Time.now,
    #       server_sdk_version: "ServerSdkVersion"
    #     }
    #   }
    # @return [Types::DescribeBuildOutput]
    def describe_build(params = {}, options = {})
      request = build_request(:describe_build, params)
      request.send_request(options)
    end

    # <p>Retrieves properties for a specific compute resource in an Amazon GameLift Servers fleet. You can list
    #             all computes in a fleet by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html">ListCompute</a>. </p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <p>Provide the fleet ID and compute name. The compute name varies depending on the type
    #             of fleet.</p>
    #          <ul>
    #             <li>
    #                <p>For a compute in a managed EC2 fleet, provide an instance ID. Each instance in
    #                     the fleet is a compute.</p>
    #             </li>
    #             <li>
    #                <p>For a compute in a managed container fleet, provide a compute name. In a
    #                     container fleet, each game server container group on a fleet instance is
    #                     assigned a compute name.</p>
    #             </li>
    #             <li>
    #                <p>For a compute in an Anywhere fleet, provide a registered compute name.
    #                     Anywhere fleet computes are created when you register a hosting resource with
    #                     the fleet.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, this operation returns details for the requested compute resource.
    #             Depending on the fleet's compute type, the result includes the following information: </p>
    #          <ul>
    #             <li>
    #                <p>For a managed EC2 fleet, this operation returns information about the EC2
    #                     instance.</p>
    #             </li>
    #             <li>
    #                <p>For an Anywhere fleet, this operation returns information about the registered
    #                     compute.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeComputeInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet that the compute belongs to. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [String] :compute_name
    #   <p>The unique identifier of the compute resource to retrieve properties for. For a
    #               managed container fleet or Anywhere fleet, use a compute name. For an EC2 fleet, use an
    #               instance ID. To retrieve a fleet's compute identifiers, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html">ListCompute</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.describe_compute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute: {
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       compute_name: "ComputeName",
    #       compute_arn: "ComputeArn",
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       compute_status: "PENDING" # One of: ["PENDING", "ACTIVE", "TERMINATING", "IMPAIRED"],
    #       location: "LocationStringModel",
    #       creation_time: Time.now,
    #       operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #       type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #       game_lift_service_sdk_endpoint: "GameLiftServiceSdkEndpointOutput",
    #       game_lift_agent_endpoint: "GameLiftAgentEndpointOutput",
    #       instance_id: "InstanceId",
    #       container_attributes: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString",
    #           container_runtime_id: "NonEmptyString"
    #         }
    #       ],
    #       game_server_container_group_definition_arn: "ContainerGroupDefinitionNameOrArn"
    #     }
    #   }
    # @return [Types::DescribeComputeOutput]
    def describe_compute(params = {}, options = {})
      request = build_request(:describe_compute, params)
      request.send_request(options)
    end

    # <p>Retrieves the properties for a container fleet. When requesting attributes for
    #             multiple fleets, use the pagination parameters to retrieve results as a set of
    #             sequential pages.  </p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Get container fleet properties for a single fleet. Provide either the fleet ID or ARN value. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, a <code>ContainerFleet</code> object is returned. This object includes
    #             the fleet properties, including information about the most recent deployment.</p>
    #          <note>
    #             <p>Some API operations limit the number of fleet IDs that allowed in one request. If
    #                 a request exceeds this limit, the request fails and the error message contains the
    #                 maximum allowed number.</p>
    #          </note>
    # @param [Hash, Types::DescribeContainerFleetInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the container fleet to retrieve. You can use either the fleet
    #               ID or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.describe_container_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_fleet: {
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       fleet_role_arn: "IamRoleArn",
    #       game_server_container_group_definition_name: "ContainerGroupDefinitionName",
    #       game_server_container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       per_instance_container_group_definition_name: "ContainerGroupDefinitionName",
    #       per_instance_container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       instance_connection_port_range: {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #       },
    #       instance_inbound_permissions: [
    #         {
    #           from_port: 1, # required
    #           to_port: 1, # required
    #           ip_range: "IpRange", # required
    #           protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #         }
    #       ],
    #       game_server_container_groups_per_instance: 1,
    #       maximum_game_server_container_groups_per_instance: 1,
    #       instance_type: "NonZeroAndMaxString",
    #       billing_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #       description: "NonZeroAndMaxString",
    #       creation_time: Time.now,
    #       metric_groups: ["MetricGroup"],
    #       new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #       game_session_creation_limit_policy: {
    #         new_game_sessions_per_creator: 1,
    #         policy_period_in_minutes: 1
    #       },
    #       status: "PENDING" # One of: ["PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"],
    #       deployment_details: {
    #         latest_deployment_id: "DeploymentId"
    #       },
    #       log_configuration: {
    #         log_destination: "NONE" # One of: ["NONE", "CLOUDWATCH", "S3"],
    #         s3_bucket_name: "NonEmptyString",
    #         log_group_arn: "LogGroupArnStringModel"
    #       },
    #       location_attributes: [
    #         {
    #           location: "LocationStringModel",
    #           status: "PENDING" # One of: ["PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeContainerFleetOutput]
    def describe_container_fleet(params = {}, options = {})
      request = build_request(:describe_container_fleet, params)
      request.send_request(options)
    end

    # <p>Retrieves the properties of a container group definition, including all container
    #       definitions in the group. </p>
    #          <p>
    #             <b>Request options:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Retrieve the latest version of a  container group definition. Specify the container
    #           group definition name only, or use an ARN value without a version number.</p>
    #             </li>
    #             <li>
    #                <p>Retrieve a particular version. Specify the container group definition name and a
    #           version number, or use an ARN value that includes the version number.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results:</b>
    #          </p>
    #          <p>If successful, this operation returns the complete properties of a container group
    #       definition version.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html">Manage a container group definition</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeContainerGroupDefinitionInput] params
    # @option params [String] :name
    #   <p>The unique identifier for the container group definition to retrieve properties for. You can use either the <code>Name</code> or
    #           <code>ARN</code> value.</p>
    # @option params [Integer] :version_number
    #   <p>The specific version to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ContainerGroupDefinitionNameOrArn", # required
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.describe_container_group_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_group_definition: {
    #       container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       creation_time: Time.now,
    #       operating_system: "AMAZON_LINUX_2023" # One of: ["AMAZON_LINUX_2023"],
    #       name: "ContainerGroupDefinitionName", # required
    #       container_group_type: "GAME_SERVER" # One of: ["GAME_SERVER", "PER_INSTANCE"],
    #       total_memory_limit_mebibytes: 1,
    #       total_vcpu_limit: 1.0,
    #       game_server_container_definition: {
    #         container_name: "NonZeroAnd128MaxAsciiString",
    #         depends_on: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString", # required
    #             condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #           }
    #         ],
    #         mount_points: [
    #           {
    #             instance_path: "InstancePathString", # required
    #             container_path: "ContainerPathString",
    #             access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #           }
    #         ],
    #         environment_override: [
    #           {
    #             name: "NonZeroAnd255MaxString", # required
    #             value: "NonZeroAnd255MaxString", # required
    #           }
    #         ],
    #         image_uri: "ImageUriString",
    #         port_configuration: {
    #           container_port_ranges: [ # required
    #             {
    #               from_port: 1, # required
    #               to_port: 1, # required
    #               protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #             }
    #           ]
    #         },
    #         resolved_image_digest: "Sha256",
    #         server_sdk_version: "ServerSdkVersion"
    #       },
    #       support_container_definitions: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString",
    #           depends_on: [
    #             {
    #               container_name: "NonZeroAnd128MaxAsciiString", # required
    #               condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               instance_path: "InstancePathString", # required
    #               container_path: "ContainerPathString",
    #               access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #             }
    #           ],
    #           environment_override: [
    #             {
    #               name: "NonZeroAnd255MaxString", # required
    #               value: "NonZeroAnd255MaxString", # required
    #             }
    #           ],
    #           essential: false,
    #           health_check: {
    #             command: ["NonZeroAnd255MaxString"], # required
    #             interval: 1,
    #             retries: 1,
    #             start_period: 1,
    #             timeout: 1
    #           },
    #           image_uri: "ImageUriString",
    #           memory_hard_limit_mebibytes: 1,
    #           port_configuration: {
    #             container_port_ranges: [ # required
    #               {
    #                 from_port: 1, # required
    #                 to_port: 1, # required
    #                 protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #               }
    #             ]
    #           },
    #           resolved_image_digest: "Sha256",
    #           vcpu: 1.0
    #         }
    #       ],
    #       version_number: 1,
    #       version_description: "NonZeroAndMaxString",
    #       status: "READY" # One of: ["READY", "COPYING", "FAILED"],
    #       status_reason: "NonZeroAndMaxString"
    #     }
    #   }
    # @return [Types::DescribeContainerGroupDefinitionOutput]
    def describe_container_group_definition(params = {}, options = {})
      request = build_request(:describe_container_group_definition, params)
      request.send_request(options)
    end

    # <p>Retrieves the instance limits and current utilization for an Amazon Web Services Region or location.
    #             Instance limits control the number of instances, per instance type, per location, that
    #             your Amazon Web Services account can use. Learn more at <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a>. The information
    #             returned includes the maximum number of instances allowed and your account's current
    #             usage across all fleets. This information can affect your ability to scale your Amazon GameLift Servers
    #             fleets. You can request a limit increase for your account by using the <b>Service limits</b> page in the Amazon GameLift Servers console.</p>
    #          <p>Instance limits differ based on whether the instances are deployed in a fleet's home
    #             Region or in a remote location. For remote locations, limits also differ based on the
    #             combination of home Region and remote location. All requests must specify an Amazon Web Services
    #             Region (either explicitly or as your default settings). To get the limit for a remote
    #             location, you must also specify the location. For example, the following requests all
    #             return different results: </p>
    #          <ul>
    #             <li>
    #                <p>Request specifies the Region <code>ap-northeast-1</code> with no location. The
    #                     result is limits and usage data on all instance types that are deployed in
    #                         <code>us-east-2</code>, by all of the fleets that reside in
    #                         <code>ap-northeast-1</code>. </p>
    #             </li>
    #             <li>
    #                <p>Request specifies the Region <code>us-east-1</code> with location
    #                         <code>ca-central-1</code>. The result is limits and usage data on all
    #                     instance types that are deployed in <code>ca-central-1</code>, by all of the
    #                     fleets that reside in <code>us-east-2</code>. These limits do not affect fleets
    #                     in any other Regions that deploy instances to <code>ca-central-1</code>.</p>
    #             </li>
    #             <li>
    #                <p>Request specifies the Region <code>eu-west-1</code> with location
    #                         <code>ca-central-1</code>. The result is limits and usage data on all
    #                     instance types that are deployed in <code>ca-central-1</code>, by all of the
    #                     fleets that reside in <code>eu-west-1</code>.</p>
    #             </li>
    #          </ul>
    #          <p>This operation can be used in the following ways:</p>
    #          <ul>
    #             <li>
    #                <p>To get limit and usage data for all instance types that are deployed in an
    #                     Amazon Web Services Region by fleets that reside in the same Region: Specify the Region only.
    #                     Optionally, specify a single instance type to retrieve information for.</p>
    #             </li>
    #             <li>
    #                <p>To get limit and usage data for all instance types that are deployed to a
    #                     remote location by fleets that reside in different Amazon Web Services Region: Provide both
    #                     the Amazon Web Services Region and the remote location. Optionally, specify a single instance
    #                     type to retrieve information for.</p>
    #             </li>
    #          </ul>
    #          <p>If successful, an <code>EC2InstanceLimits</code> object is returned with limits and
    #             usage data for each requested instance type.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers fleets</a>
    #          </p>
    # @param [Hash, Types::DescribeEC2InstanceLimitsInput] params
    # @option params [String] :ec2_instance_type
    #   <p>Name of an Amazon EC2 instance type that is supported in Amazon GameLift Servers. A fleet instance type
    #               determines the computing resources of each instance in the fleet, including CPU, memory,
    #               storage, and networking capacity. Do not specify a value for this parameter to retrieve
    #               limits for all instance types.</p>
    # @option params [String] :location
    #   <p>The name of a remote location to request instance limits for, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ec2_instance_type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.describe_ec2_instance_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ec2_instance_limits: [
    #       {
    #         ec2_instance_type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #         current_instances: 1,
    #         instance_limit: 1,
    #         location: "LocationStringModel"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEC2InstanceLimitsOutput]
    def describe_ec2_instance_limits(params = {}, options = {})
      request = build_request(:describe_ec2_instance_limits, params)
      request.send_request(options)
    end

    # <p>Retrieves core fleet-wide properties for fleets in an Amazon Web Services Region. Properties include the computing
    #             hardware and deployment configuration for instances in the fleet.</p>
    #          <p>You can use this operation in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To get attributes for specific fleets, provide a list of fleet IDs or fleet ARNs.</p>
    #             </li>
    #             <li>
    #                <p>To get attributes for all fleets, do not provide a fleet identifier.</p>
    #             </li>
    #          </ul>
    #          <p>When requesting attributes for multiple fleets, use the pagination parameters to
    #             retrieve results as a set of sequential pages. </p>
    #          <p>If successful, a <code>FleetAttributes</code> object is returned for each fleet
    #             requested, unless the fleet identifier is not found. </p>
    #          <note>
    #             <p>Some API operations limit the number of fleet IDs that allowed in one request. If
    #                 a request exceeds this limit, the request fails and the error message contains the
    #                 maximum allowed number.</p>
    #          </note>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    # @param [Hash, Types::DescribeFleetAttributesInput] params
    # @option params [Array<String>] :fleet_ids
    #   <p>A list of unique fleet identifiers to retrieve attributes for. You can use either the
    #               fleet ID or ARN value. To retrieve attributes for all current fleets, do not include
    #               this parameter. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_fleet_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_attributes: [
    #       {
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         fleet_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #         instance_type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #         description: "NonZeroAndMaxString",
    #         name: "NonZeroAndMaxString",
    #         creation_time: Time.now,
    #         termination_time: Time.now,
    #         status: "NEW" # One of: ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"],
    #         build_id: "BuildId",
    #         build_arn: "BuildArn",
    #         script_id: "ScriptId",
    #         script_arn: "ScriptArn",
    #         server_launch_path: "LaunchPathStringModel",
    #         server_launch_parameters: "LaunchParametersStringModel",
    #         log_paths: ["NonZeroAndMaxString"],
    #         new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #         operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #         resource_creation_limit_policy: {
    #           new_game_sessions_per_creator: 1,
    #           policy_period_in_minutes: 1
    #         },
    #         metric_groups: ["MetricGroup"],
    #         stopped_actions: ["AUTO_SCALING" # One of: ["AUTO_SCALING"]],
    #         instance_role_arn: "NonEmptyString",
    #         certificate_configuration: {
    #           certificate_type: "DISABLED" # One of: ["DISABLED", "GENERATED"], # required
    #         },
    #         compute_type: "EC2" # One of: ["EC2", "ANYWHERE"],
    #         anywhere_configuration: {
    #           cost: "NonNegativeLimitedLengthDouble", # required
    #         },
    #         instance_role_credentials_provider: "SHARED_CREDENTIAL_FILE" # One of: ["SHARED_CREDENTIAL_FILE"]
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeFleetAttributesOutput]
    def describe_fleet_attributes(params = {}, options = {})
      request = build_request(:describe_fleet_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource capacity settings for one or more fleets.  For a container
    #             fleet, this operation also returns counts for game server container groups.</p>
    #          <p>With multi-location fleets, this operation retrieves data for the fleet's home Region
    #             only. To retrieve capacity for remote locations, see 
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html</a>.</p>
    #          <p>This operation can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To get capacity data for one or more specific fleets, provide a list of fleet
    #                     IDs or fleet ARNs. </p>
    #             </li>
    #             <li>
    #                <p>To get capacity data for all fleets, do not provide a fleet identifier.
    #                 </p>
    #             </li>
    #          </ul>
    #          <p>When requesting multiple fleets, use the pagination parameters to retrieve results as
    #             a set of sequential pages. </p>
    #          <p>If successful, a <code>FleetCapacity</code> object is returned for each requested
    #             fleet ID. Each <code>FleetCapacity</code> object includes a <code>Location</code>
    #             property, which is set to the fleet's home Region. Capacity values are returned only for
    #             fleets that currently exist.</p>
    #          <note>
    #             <p>Some API operations may limit the number of fleet IDs that are allowed in one
    #                 request. If a request exceeds this limit, the request fails and the error message
    #                 includes the maximum allowed.</p>
    #          </note>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #             fleets</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift metrics for fleets</a>
    #          </p>
    # @param [Hash, Types::DescribeFleetCapacityInput] params
    # @option params [Array<String>] :fleet_ids
    #   <p>A unique identifier for the fleet to retrieve capacity information for. You can use either the fleet ID or ARN
    #               value. Leave this parameter empty to retrieve capacity information for all
    #               fleets.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_fleet_capacity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_capacity: [
    #       {
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         instance_type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #         instance_counts: {
    #           desired: 1,
    #           minimum: 1,
    #           maximum: 1,
    #           pending: 1,
    #           active: 1,
    #           idle: 1,
    #           terminating: 1
    #         },
    #         location: "LocationStringModel",
    #         game_server_container_group_counts: {
    #           pending: 1,
    #           active: 1,
    #           idle: 1,
    #           terminating: 1
    #         }
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeFleetCapacityOutput]
    def describe_fleet_capacity(params = {}, options = {})
      request = build_request(:describe_fleet_capacity, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a managed container fleet deployment. </p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Get information about the latest deployment for a specific fleet. Provide the
    #                     fleet ID or ARN.</p>
    #             </li>
    #             <li>
    #                <p> Get information about a specific deployment. Provide the fleet ID or ARN and
    #                     the deployment ID.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, a <code>FleetDeployment</code> object is returned.</p>
    # @param [Hash, Types::DescribeFleetDeploymentInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the container fleet. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [String] :deployment_id
    #   <p>A unique identifier for the deployment to return information for. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     deployment_id: "DeploymentId"
    #   }
    #   options = {}
    #   response = client.describe_fleet_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_deployment: {
    #       deployment_id: "DeploymentId",
    #       fleet_id: "FleetId",
    #       game_server_binary_arn: "FleetBinaryArn",
    #       rollback_game_server_binary_arn: "FleetBinaryArn",
    #       per_instance_binary_arn: "FleetBinaryArn",
    #       rollback_per_instance_binary_arn: "FleetBinaryArn",
    #       deployment_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "IMPAIRED", "COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "CANCELLED", "PENDING"],
    #       deployment_configuration: {
    #         protection_strategy: "WITH_PROTECTION" # One of: ["WITH_PROTECTION", "IGNORE_PROTECTION"],
    #         minimum_healthy_percentage: 1,
    #         impairment_strategy: "MAINTAIN" # One of: ["MAINTAIN", "ROLLBACK"]
    #       },
    #       creation_time: Time.now
    #     },
    #     locational_deployments: {
    #       "NonZeroAnd128MaxAsciiString" => {
    #         deployment_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "IMPAIRED", "COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "CANCELLED", "PENDING"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeFleetDeploymentOutput]
    def describe_fleet_deployment(params = {}, options = {})
      request = build_request(:describe_fleet_deployment, params)
      request.send_request(options)
    end

    # <p>Retrieves entries from a fleet's event log. Fleet events are initiated by changes in
    #             status, such as during fleet creation and termination, changes in capacity, etc. If a
    #             fleet has multiple locations, events are also initiated by changes to status and
    #             capacity in remote locations. </p>
    #          <p>You can specify a time range to limit the result set. Use the pagination parameters to
    #             retrieve results as a set of sequential pages. </p>
    #          <p>If successful, a collection of event log entries matching the request are
    #             returned.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    # @param [Hash, Types::DescribeFleetEventsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to get event logs for. You can use either the fleet ID or ARN value.</p>
    # @option params [Time] :start_time
    #   <p>The earliest date to retrieve event logs for. If no start time is specified, this call
    #               returns entries starting from when the fleet was created to the specified end time.
    #               Format is a number expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
    # @option params [Time] :end_time
    #   <p>The most recent date to retrieve event logs for. If no end time is specified, this
    #               call returns entries from the specified start time up to the present. Format is a number
    #               expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_fleet_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         event_id: "NonZeroAndMaxString",
    #         resource_id: "NonZeroAndMaxString",
    #         event_code: "GENERIC_EVENT" # One of: ["GENERIC_EVENT", "FLEET_CREATED", "FLEET_DELETED", "FLEET_SCALING_EVENT", "FLEET_STATE_DOWNLOADING", "FLEET_STATE_VALIDATING", "FLEET_STATE_BUILDING", "FLEET_STATE_ACTIVATING", "FLEET_STATE_ACTIVE", "FLEET_STATE_ERROR", "FLEET_STATE_PENDING", "FLEET_STATE_CREATING", "FLEET_STATE_CREATED", "FLEET_STATE_UPDATING", "FLEET_INITIALIZATION_FAILED", "FLEET_BINARY_DOWNLOAD_FAILED", "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND", "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE", "FLEET_VALIDATION_TIMED_OUT", "FLEET_ACTIVATION_FAILED", "FLEET_ACTIVATION_FAILED_NO_INSTANCES", "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED", "SERVER_PROCESS_INVALID_PATH", "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT", "SERVER_PROCESS_PROCESS_READY_TIMEOUT", "SERVER_PROCESS_CRASHED", "SERVER_PROCESS_TERMINATED_UNHEALTHY", "SERVER_PROCESS_FORCE_TERMINATED", "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT", "SERVER_PROCESS_SDK_INITIALIZATION_FAILED", "SERVER_PROCESS_MISCONFIGURED_CONTAINER_PORT", "GAME_SESSION_ACTIVATION_TIMEOUT", "FLEET_CREATION_EXTRACTING_BUILD", "FLEET_CREATION_RUNNING_INSTALLER", "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG", "FLEET_VPC_PEERING_SUCCEEDED", "FLEET_VPC_PEERING_FAILED", "FLEET_VPC_PEERING_DELETED", "INSTANCE_INTERRUPTED", "INSTANCE_RECYCLED", "INSTANCE_REPLACED_UNHEALTHY", "FLEET_CREATION_COMPLETED_INSTALLER", "FLEET_CREATION_FAILED_INSTALLER", "COMPUTE_LOG_UPLOAD_FAILED", "GAME_SERVER_CONTAINER_GROUP_CRASHED", "PER_INSTANCE_CONTAINER_GROUP_CRASHED", "GAME_SERVER_CONTAINER_GROUP_REPLACED_UNHEALTHY", "LOCATION_STATE_PENDING", "LOCATION_STATE_CREATING", "LOCATION_STATE_CREATED", "LOCATION_STATE_ACTIVATING", "LOCATION_STATE_ACTIVE", "LOCATION_STATE_UPDATING", "LOCATION_STATE_ERROR", "LOCATION_STATE_DELETING", "LOCATION_STATE_DELETED"],
    #         message: "NonEmptyString",
    #         event_time: Time.now,
    #         pre_signed_log_url: "NonZeroAndMaxString",
    #         count: 1
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeFleetEventsOutput]
    def describe_fleet_events(params = {}, options = {})
      request = build_request(:describe_fleet_events, params)
      request.send_request(options)
    end

    # <p>Retrieves information on a fleet's remote locations, including life-cycle status and
    #             any suspended fleet activity. </p>
    #          <p>This operation can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To get data for specific locations, provide a fleet identifier and a list of
    #                     locations. Location data is returned in the order that it is requested. </p>
    #             </li>
    #             <li>
    #                <p>To get data for all locations, provide a fleet identifier only. Location data
    #                     is returned in no particular order. </p>
    #             </li>
    #          </ul>
    #          <p>When requesting attributes for multiple locations, use the pagination parameters to
    #             retrieve results as a set of sequential pages. </p>
    #          <p>If successful, a <code>LocationAttributes</code> object is returned for each requested
    #             location. If the fleet does not have a requested location, no information is returned.
    #             This operation does not return the home Region. To get information on a fleet's home
    #             Region, call <code>DescribeFleetAttributes</code>.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
    #                 up Amazon GameLift Servers fleets</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html">
    #                 Amazon GameLift Servers service locations</a> for managed hosting</p>
    # @param [Hash, Types::DescribeFleetLocationAttributesInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve remote locations for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [Array<String>] :locations
    #   <p>A list of fleet locations to retrieve information for. Specify locations in the form
    #               of an Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This limit is not currently enforced.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: ["LocationStringModel"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_fleet_location_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetIdOrArn",
    #     fleet_arn: "FleetArn",
    #     location_attributes: [
    #       {
    #         location_state: {
    #           location: "LocationStringModel",
    #           status: "NEW" # One of: ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"]
    #         },
    #         stopped_actions: ["AUTO_SCALING" # One of: ["AUTO_SCALING"]],
    #         update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE"]
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeFleetLocationAttributesOutput]
    def describe_fleet_location_attributes(params = {}, options = {})
      request = build_request(:describe_fleet_location_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource capacity settings for a fleet location. The data returned
    #             includes the current capacity (number of EC2 instances) and some scaling settings for
    #             the requested fleet location. For a managed container fleet, this operation also returns counts
    #             for game server container groups.</p>
    #          <p>Use this operation to retrieve capacity information for a fleet's remote location or
    #             home Region (you can also retrieve home Region capacity by calling
    #             <code>DescribeFleetCapacity</code>).</p>
    #          <p>To retrieve capacity data, identify a fleet and location. </p>
    #          <p>If successful, a <code>FleetCapacity</code> object is returned for the requested fleet
    #             location. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html"> Amazon GameLift Servers service locations</a> for managed hosting</p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift metrics for fleets</a>
    #          </p>
    # @param [Hash, Types::DescribeFleetLocationCapacityInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to request location capacity for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [String] :location
    #   <p>The fleet location to retrieve capacity information for. Specify a location in the
    #               form of an Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel", # required
    #   }
    #   options = {}
    #   response = client.describe_fleet_location_capacity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_capacity: {
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       instance_type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #       instance_counts: {
    #         desired: 1,
    #         minimum: 1,
    #         maximum: 1,
    #         pending: 1,
    #         active: 1,
    #         idle: 1,
    #         terminating: 1
    #       },
    #       location: "LocationStringModel",
    #       game_server_container_group_counts: {
    #         pending: 1,
    #         active: 1,
    #         idle: 1,
    #         terminating: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeFleetLocationCapacityOutput]
    def describe_fleet_location_capacity(params = {}, options = {})
      request = build_request(:describe_fleet_location_capacity, params)
      request.send_request(options)
    end

    # <p>Retrieves current usage data for a fleet location. Utilization data provides a
    #             snapshot of current game hosting activity at the requested location. Use this operation
    #             to retrieve utilization information for a fleet's remote location or home Region (you
    #             can also retrieve home Region utilization by calling
    #                 <code>DescribeFleetUtilization</code>).</p>
    #          <p>To retrieve utilization data, identify a fleet and location. </p>
    #          <p>If successful, a <code>FleetUtilization</code> object is returned for the requested
    #             fleet location. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html"> Amazon GameLift Servers service locations</a> for managed hosting</p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift metrics for fleets</a>
    #          </p>
    # @param [Hash, Types::DescribeFleetLocationUtilizationInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to request location utilization for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [String] :location
    #   <p>The fleet location to retrieve utilization information for. Specify a location in the
    #               form of an Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel", # required
    #   }
    #   options = {}
    #   response = client.describe_fleet_location_utilization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_utilization: {
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       active_server_process_count: 1,
    #       active_game_session_count: 1,
    #       current_player_session_count: 1,
    #       maximum_player_session_count: 1,
    #       location: "LocationStringModel"
    #     }
    #   }
    # @return [Types::DescribeFleetLocationUtilizationOutput]
    def describe_fleet_location_utilization(params = {}, options = {})
      request = build_request(:describe_fleet_location_utilization, params)
      request.send_request(options)
    end

    # <p>Retrieves a fleet's inbound connection permissions. Connection permissions specify IP
    #             addresses and port settings that incoming traffic can use to access server processes in
    #             the fleet. Game server processes that are running in the fleet must use a port that
    #             falls within this range. </p>
    #          <p>Use this operation in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To retrieve the port settings for a fleet, identify the fleet's unique
    #                     identifier. </p>
    #             </li>
    #             <li>
    #                <p>To check the status of recent updates to a fleet remote location, specify the
    #                     fleet ID and a location. Port setting updates can take time to propagate across
    #                     all locations. </p>
    #             </li>
    #          </ul>
    #          <p>If successful, a set of <code>IpPermission</code> objects is returned for the
    #             requested fleet ID. When specifying a location, this operation returns a pending status.
    #             If the requested fleet has been deleted, the result set is empty.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    # @param [Hash, Types::DescribeFleetPortSettingsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve port settings for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [String] :location
    #   <p>A remote location to check for status of port setting updates. Use the Amazon Web Services Region
    #               code format, such as <code>us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.describe_fleet_port_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId",
    #     fleet_arn: "FleetArn",
    #     inbound_permissions: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #       }
    #     ],
    #     update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE"],
    #     location: "LocationStringModel"
    #   }
    # @return [Types::DescribeFleetPortSettingsOutput]
    def describe_fleet_port_settings(params = {}, options = {})
      request = build_request(:describe_fleet_port_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves utilization statistics for one or more fleets. Utilization data provides a
    #             snapshot of how the fleet's hosting resources are currently being used. For fleets with
    #             remote locations, this operation retrieves data for the fleet's home Region only. See
    #                 <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationUtilization.html">DescribeFleetLocationUtilization</a> to get utilization statistics for a
    #             fleet's remote locations.</p>
    #          <p>This operation can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To get utilization data for one or more specific fleets, provide a list of
    #                     fleet IDs or fleet ARNs. </p>
    #             </li>
    #             <li>
    #                <p>To get utilization data for all fleets, do not provide a fleet identifier.
    #                 </p>
    #             </li>
    #          </ul>
    #          <p>When requesting multiple fleets, use the pagination parameters to retrieve results as
    #             a set of sequential pages. </p>
    #          <p>If successful, a <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_FleetUtilization.html">FleetUtilization</a> object is returned for each requested fleet ID, unless the
    #             fleet identifier is not found. Each fleet utilization object includes a
    #                 <code>Location</code> property, which is set to the fleet's home Region. </p>
    #          <note>
    #             <p>Some API operations may limit the number of fleet IDs allowed in one request. If a
    #                 request exceeds this limit, the request fails and the error message includes the
    #                 maximum allowed.</p>
    #          </note>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 Fleets</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift Metrics for Fleets</a>
    #          </p>
    # @param [Hash, Types::DescribeFleetUtilizationInput] params
    # @option params [Array<String>] :fleet_ids
    #   <p>A unique identifier for the fleet to retrieve utilization data for. You can use either the fleet ID or ARN value.
    #               To retrieve attributes for all current fleets, do not include this parameter. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_fleet_utilization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_utilization: [
    #       {
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         active_server_process_count: 1,
    #         active_game_session_count: 1,
    #         current_player_session_count: 1,
    #         maximum_player_session_count: 1,
    #         location: "LocationStringModel"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeFleetUtilizationOutput]
    def describe_fleet_utilization(params = {}, options = {})
      request = build_request(:describe_fleet_utilization, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Retrieves information for a
    #             registered game server. Information includes game server status, health check info, and
    #             the instance that the game server is running on. </p>
    #          <p>To retrieve game server information, specify the game server ID. If successful, the
    #             requested game server object is returned. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::DescribeGameServerInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server information to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #   }
    #   options = {}
    #   response = client.describe_game_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       game_server_id: "GameServerId",
    #       instance_id: "GameServerInstanceId",
    #       connection_info: "GameServerConnectionInfo",
    #       game_server_data: "GameServerData",
    #       claim_status: "CLAIMED" # One of: ["CLAIMED"],
    #       utilization_status: "AVAILABLE" # One of: ["AVAILABLE", "UTILIZED"],
    #       registration_time: Time.now,
    #       last_claim_time: Time.now,
    #       last_health_check_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeGameServerOutput]
    def describe_game_server(params = {}, options = {})
      request = build_request(:describe_game_server, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Retrieves information on a
    #             game server group. This operation returns only properties related to Amazon GameLift Servers FleetIQ. To view or
    #             update properties for the corresponding Auto Scaling group, such as launch template,
    #             auto scaling policies, and maximum/minimum group size, access the Auto Scaling group
    #             directly.</p>
    #          <p>To get attributes for a game server group, provide a group name or ARN value. If
    #             successful, a <code>GameServerGroup</code> object is returned.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::DescribeGameServerGroupInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.describe_game_server_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server_group: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       role_arn: "IamRoleArn",
    #       instance_definitions: [
    #         {
    #           instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #           weighted_capacity: "WeightedCapacity"
    #         }
    #       ],
    #       balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"],
    #       game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #       auto_scaling_group_arn: "AutoScalingGroupArn",
    #       status: "NEW" # One of: ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"],
    #       status_reason: "NonZeroAndMaxString",
    #       suspended_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]],
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeGameServerGroupOutput]
    def describe_game_server_group(params = {}, options = {})
      request = build_request(:describe_game_server_group, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Retrieves status
    #             information about the Amazon EC2 instances associated with a Amazon GameLift Servers FleetIQ game server group.
    #             Use this operation to detect when instances are active or not available to host new game
    #             servers.</p>
    #          <p>To request status for all instances in the game server group, provide a game server
    #             group ID only. To request status for specific instances, provide the game server group
    #             ID and one or more instance IDs. Use the pagination parameters to retrieve results in
    #             sequential segments. If successful, a collection of <code>GameServerInstance</code>
    #             objects is returned. </p>
    #          <p>This operation is not designed to be called with every game server claim request; this
    #             practice can cause you to exceed your API limit, which results in errors. Instead, as a
    #             best practice, cache the results and refresh your cache no more than once every 10
    #             seconds.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::DescribeGameServerInstancesInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    # @option params [Array<String>] :instance_ids
    #   <p>The Amazon EC2 instance IDs that you want to retrieve status on. Amazon EC2 instance IDs use a
    #               17-character format, for example: <code>i-1234567890abcdef0</code>. To retrieve all
    #               instances in the game server group, leave this parameter empty. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     instance_ids: ["GameServerInstanceId"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_game_server_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server_instances: [
    #       {
    #         game_server_group_name: "GameServerGroupName",
    #         game_server_group_arn: "GameServerGroupArn",
    #         instance_id: "GameServerInstanceId",
    #         instance_status: "ACTIVE" # One of: ["ACTIVE", "DRAINING", "SPOT_TERMINATING"]
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeGameServerInstancesOutput]
    def describe_game_server_instances(params = {}, options = {})
      request = build_request(:describe_game_server_instances, params)
      request.send_request(options)
    end

    # <p>Retrieves additional game session properties, including the game session protection
    #             policy in force, a set of one or more game sessions in a specific fleet location. You
    #             can optionally filter the results by current game session status.</p>
    #          <p>This operation can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To retrieve details for all game sessions that are currently running on all
    #                     locations in a fleet, provide a fleet or alias ID, with an optional status
    #                     filter. This approach returns details from the fleet's home Region and all
    #                     remote locations.</p>
    #             </li>
    #             <li>
    #                <p>To retrieve details for all game sessions that are currently running on a
    #                     specific fleet location, provide a fleet or alias ID and a location name, with
    #                     optional status filter. The location can be the fleet's home Region or any
    #                     remote location.</p>
    #             </li>
    #             <li>
    #                <p>To retrieve details for a specific game session, provide the game session ID.
    #                     This approach looks for the game session ID in all fleets that reside in the
    #                     Amazon Web Services Region defined in the request.</p>
    #             </li>
    #          </ul>
    #          <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #          <p>If successful, a <code>GameSessionDetail</code> object is returned for each game
    #             session that matches the request.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find">Find a game session</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribeGameSessionDetailsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve all game sessions active on the fleet. You can use either the fleet
    #               ID or ARN value.</p>
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to retrieve. </p>
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias associated with the fleet to retrieve all game sessions for. You can use either
    #               the alias ID or ARN value.</p>
    # @option params [String] :location
    #   <p>A fleet location to get game session details for. You can specify a fleet's home
    #               Region or a remote location. Use the Amazon Web Services Region code format, such as
    #                   <code>us-west-2</code>. </p>
    # @option params [String] :status_filter
    #   <p>Game session status to filter results on. Possible game session statuses include
    #                   <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code> and
    #                   <code>TERMINATING</code> (the last two are transitory). </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn",
    #     game_session_id: "ArnStringModel",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_game_session_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session_details: [
    #       {
    #         game_session: {
    #           game_session_id: "NonZeroAndMaxString",
    #           name: "NonZeroAndMaxString",
    #           fleet_id: "FleetId",
    #           fleet_arn: "FleetArn",
    #           creation_time: Time.now,
    #           termination_time: Time.now,
    #           current_player_session_count: 1,
    #           maximum_player_session_count: 1,
    #           status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"],
    #           status_reason: "INTERRUPTED" # One of: ["INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"],
    #           game_properties: [
    #             {
    #               key: "GamePropertyKey", # required
    #               value: "GamePropertyValue", # required
    #             }
    #           ],
    #           ip_address: "IpAddress",
    #           dns_name: "DnsName",
    #           port: 1,
    #           player_session_creation_policy: "ACCEPT_ALL" # One of: ["ACCEPT_ALL", "DENY_ALL"],
    #           creator_id: "NonZeroAndMaxString",
    #           game_session_data: "LargeGameSessionData",
    #           matchmaker_data: "MatchmakerData",
    #           location: "LocationStringModel"
    #         },
    #         protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"]
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeGameSessionDetailsOutput]
    def describe_game_session_details(params = {}, options = {})
      request = build_request(:describe_game_session_details, params)
      request.send_request(options)
    end

    # <p>Retrieves information, including current status, about a game session placement
    #             request. </p>
    #          <p>To get game session placement details, specify the placement ID.</p>
    #          <p>This operation is not designed to be continually called to track game session status.
    #             This practice can cause you to exceed your API limit, which results in errors. Instead,
    #             you must configure an Amazon Simple Notification Service (SNS) topic to receive notifications from FlexMatch or
    #             queues. Continuously polling with <code>DescribeGameSessionPlacement</code> should only
    #             be used for games in development with low game session usage. </p>
    # @param [Hash, Types::DescribeGameSessionPlacementInput] params
    # @option params [String] :placement_id
    #   <p>A unique identifier for a game session placement to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     placement_id: "IdStringModel", # required
    #   }
    #   options = {}
    #   response = client.describe_game_session_placement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session_placement: {
    #       placement_id: "IdStringModel",
    #       game_session_queue_name: "GameSessionQueueName",
    #       status: "PENDING" # One of: ["PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"],
    #       game_properties: [
    #         {
    #           key: "GamePropertyKey", # required
    #           value: "GamePropertyValue", # required
    #         }
    #       ],
    #       maximum_player_session_count: 1,
    #       game_session_name: "NonZeroAndMaxString",
    #       game_session_id: "NonZeroAndMaxString",
    #       game_session_arn: "NonZeroAndMaxString",
    #       game_session_region: "NonZeroAndMaxString",
    #       player_latencies: [
    #         {
    #           player_id: "PlayerId",
    #           region_identifier: "NonZeroAndMaxString",
    #           latency_in_milliseconds: 1.0
    #         }
    #       ],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       port: 1,
    #       placed_player_sessions: [
    #         {
    #           player_id: "PlayerId",
    #           player_session_id: "PlayerSessionId"
    #         }
    #       ],
    #       game_session_data: "LargeGameSessionData",
    #       matchmaker_data: "MatchmakerData",
    #       priority_configuration_override: {
    #         placement_fallback_strategy: "DEFAULT_AFTER_SINGLE_PASS" # One of: ["DEFAULT_AFTER_SINGLE_PASS", "NONE"],
    #         location_order: ["LocationStringModel"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeGameSessionPlacementOutput]
    def describe_game_session_placement(params = {}, options = {})
      request = build_request(:describe_game_session_placement, params)
      request.send_request(options)
    end

    # <p>Retrieves the properties for one or more game session queues. When requesting multiple
    #             queues, use the pagination parameters to retrieve results as a set of sequential pages.
    #             When specifying a list of queues, objects are returned only for queues that currently
    #             exist in the Region.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html">
    #                 View Your Queues</a>
    #          </p>
    # @param [Hash, Types::DescribeGameSessionQueuesInput] params
    # @option params [Array<String>] :names
    #   <p>A list of queue names to retrieve information for. You can use either the queue ID or
    #               ARN value. To request settings for all queues, leave this parameter empty. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. You can request up to 50 results.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["GameSessionQueueNameOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_game_session_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session_queues: [
    #       {
    #         name: "GameSessionQueueName",
    #         game_session_queue_arn: "GameSessionQueueArn",
    #         timeout_in_seconds: 1,
    #         player_latency_policies: [
    #           {
    #             maximum_individual_player_latency_milliseconds: 1,
    #             policy_duration_seconds: 1
    #           }
    #         ],
    #         destinations: [
    #           {
    #             destination_arn: "ArnStringModel"
    #           }
    #         ],
    #         filter_configuration: {
    #           allowed_locations: ["LocationStringModel"]
    #         },
    #         priority_configuration: {
    #           priority_order: ["LATENCY" # One of: ["LATENCY", "COST", "DESTINATION", "LOCATION"]],
    #           location_order: ["LocationStringModel"]
    #         },
    #         custom_event_data: "QueueCustomEventData",
    #         notification_target: "QueueSnsArnStringModel"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeGameSessionQueuesOutput]
    def describe_game_session_queues(params = {}, options = {})
      request = build_request(:describe_game_session_queues, params)
      request.send_request(options)
    end

    # <p>Retrieves a set of one or more game sessions in a specific fleet location. You can
    #             optionally filter the results by current game session status.</p>
    #          <p>This operation can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To retrieve all game sessions that are currently running on all locations in a
    #                     fleet, provide a fleet or alias ID, with an optional status filter. This
    #                     approach returns all game sessions in the fleet's home Region and all remote
    #                     locations.</p>
    #             </li>
    #             <li>
    #                <p>To retrieve all game sessions that are currently running on a specific fleet
    #                     location, provide a fleet or alias ID and a location name, with optional status
    #                     filter. The location can be the fleet's home Region or any remote
    #                     location.</p>
    #             </li>
    #             <li>
    #                <p>To retrieve a specific game session, provide the game session ID. This
    #                     approach looks for the game session ID in all fleets that reside in the Amazon Web Services
    #                     Region defined in the request.</p>
    #             </li>
    #          </ul>
    #          <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #          <p>If successful, a <code>GameSession</code> object is returned for each game session
    #             that matches the request.</p>
    #          <p>This operation is not designed to be continually called to track game session status.
    #             This practice can cause you to exceed your API limit, which results in errors. Instead,
    #             you must configure an Amazon Simple Notification Service (SNS) topic to receive notifications from FlexMatch or
    #             queues. Continuously polling with <code>DescribeGameSessions</code> should only be used
    #             for games in development with low game session usage. </p>
    #          <p>
    #             <i>Available in Amazon GameLift Servers Local.</i>
    #          </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find">Find a game session</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribeGameSessionsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve game sessions for. You can use either the fleet ID or ARN value.
    #           </p>
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to retrieve. </p>
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias associated with the fleet to retrieve game sessions for. You can use either the
    #               alias ID or ARN value.</p>
    # @option params [String] :location
    #   <p>A fleet location to get game sessions for. You can specify a fleet's home Region or a
    #               remote location. Use the Amazon Web Services Region code format, such as <code>us-west-2</code>.
    #           </p>
    # @option params [String] :status_filter
    #   <p>Game session status to filter results on. You can filter on the following states:
    #                   <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code>, and
    #                   <code>TERMINATING</code>. The last two are transitory and used for only very brief
    #               periods of time. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn",
    #     game_session_id: "ArnStringModel",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_game_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_sessions: [
    #       {
    #         game_session_id: "NonZeroAndMaxString",
    #         name: "NonZeroAndMaxString",
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         creation_time: Time.now,
    #         termination_time: Time.now,
    #         current_player_session_count: 1,
    #         maximum_player_session_count: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"],
    #         status_reason: "INTERRUPTED" # One of: ["INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"],
    #         game_properties: [
    #           {
    #             key: "GamePropertyKey", # required
    #             value: "GamePropertyValue", # required
    #           }
    #         ],
    #         ip_address: "IpAddress",
    #         dns_name: "DnsName",
    #         port: 1,
    #         player_session_creation_policy: "ACCEPT_ALL" # One of: ["ACCEPT_ALL", "DENY_ALL"],
    #         creator_id: "NonZeroAndMaxString",
    #         game_session_data: "LargeGameSessionData",
    #         matchmaker_data: "MatchmakerData",
    #         location: "LocationStringModel"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeGameSessionsOutput]
    def describe_game_sessions(params = {}, options = {})
      request = build_request(:describe_game_sessions, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the EC2 instances in an Amazon GameLift Servers managed fleet, including
    #             instance ID, connection data, and status. You can use this operation with a
    #             multi-location fleet to get location-specific instance information. As an alternative,
    #             use the operations <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute">https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute</a> and <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute">https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute</a>
    #             to retrieve information for compute resources, including EC2 and Anywhere fleets.</p>
    #          <p>You can call this operation in the following ways:</p>
    #          <ul>
    #             <li>
    #                <p>To get information on all instances in a fleet's home Region, specify the
    #                     fleet ID.</p>
    #             </li>
    #             <li>
    #                <p>To get information on all instances in a fleet's remote location, specify the
    #                     fleet ID and location name.</p>
    #             </li>
    #             <li>
    #                <p>To get information on a specific instance in a fleet, specify the fleet ID and
    #                     instance ID.</p>
    #             </li>
    #          </ul>
    #          <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #          <p>If successful, this operation returns <code>Instance</code> objects for each requested
    #             instance, listed in no particular order. If you call this operation for an Anywhere
    #             fleet, you receive an InvalidRequestException.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html">Remotely connect to
    #                 fleet instances</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html">Debug fleet
    #                 issues</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribeInstancesInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve instance information for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [String] :instance_id
    #   <p>A unique identifier for an instance to retrieve. Specify an instance ID or leave blank
    #               to retrieve all instances in the fleet.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @option params [String] :location
    #   <p>The name of a location to retrieve instance information for, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     instance_id: "InstanceId",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.describe_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         instance_id: "InstanceId",
    #         ip_address: "IpAddress",
    #         dns_name: "DnsName",
    #         operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #         type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #         status: "PENDING" # One of: ["PENDING", "ACTIVE", "TERMINATING"],
    #         creation_time: Time.now,
    #         location: "LocationStringModel"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeInstancesOutput]
    def describe_instances(params = {}, options = {})
      request = build_request(:describe_instances, params)
      request.send_request(options)
    end

    # <p>Retrieves one or more matchmaking tickets. Use this operation to retrieve ticket
    #             information, including--after a successful match is made--connection information for the
    #             resulting new game session. </p>
    #          <p>To request matchmaking tickets, provide a list of up to 10 ticket IDs. If the request
    #             is successful, a ticket object is returned for each requested ID that currently
    #             exists.</p>
    #          <p>This operation is not designed to be continually called to track matchmaking ticket
    #             status. This practice can cause you to exceed your API limit, which results in errors.
    #             Instead, as a best practice, set up an Amazon Simple Notification Service to receive notifications, and provide
    #             the topic ARN in the matchmaking configuration.</p>
    #          <p></p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html">
    #                 Add FlexMatch to a game client</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html"> Set Up FlexMatch event
    #                 notification</a>
    #          </p>
    # @param [Hash, Types::DescribeMatchmakingInput] params
    # @option params [Array<String>] :ticket_ids
    #   <p>A unique identifier for a matchmaking ticket. You can include up to 10 ID values. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ticket_ids: ["MatchmakingIdStringModel"], # required
    #   }
    #   options = {}
    #   response = client.describe_matchmaking(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ticket_list: [
    #       {
    #         ticket_id: "MatchmakingIdStringModel",
    #         configuration_name: "MatchmakingIdStringModel",
    #         configuration_arn: "MatchmakingConfigurationArn",
    #         status: "CANCELLED" # One of: ["CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"],
    #         status_reason: "StringModel",
    #         status_message: "StringModel",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         players: [
    #           {
    #             player_id: "PlayerId",
    #             player_attributes: {
    #               "NonZeroAndMaxString" => {
    #                 s: "PlayerAttributeString",
    #                 n: 1.0,
    #                 sl: ["PlayerAttributeString"],
    #                 sdm: {
    #                   "PlayerAttributeString" => 1.0
    #                 }
    #               }
    #             },
    #             team: "NonZeroAndMaxString",
    #             latency_in_ms: {
    #               "NonEmptyString" => 1
    #             }
    #           }
    #         ],
    #         game_session_connection_info: {
    #           game_session_arn: "ArnStringModel",
    #           ip_address: "IpAddress",
    #           dns_name: "DnsName",
    #           port: 1,
    #           matched_player_sessions: [
    #             {
    #               player_id: "PlayerId",
    #               player_session_id: "PlayerSessionId"
    #             }
    #           ]
    #         },
    #         estimated_wait_time: 1
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMatchmakingOutput]
    def describe_matchmaking(params = {}, options = {})
      request = build_request(:describe_matchmaking, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of FlexMatch matchmaking configurations. </p>
    #          <p>This operation offers the following options: (1) retrieve all matchmaking
    #             configurations, (2) retrieve configurations for a specified list, or (3) retrieve all
    #             configurations that use a specified rule set name. When requesting multiple items, use
    #             the pagination parameters to retrieve results as a set of sequential pages. </p>
    #          <p>If successful, a configuration is returned for each requested name. When specifying a
    #             list of names, only configurations that currently exist are returned. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/matchmaker-build.html"> Setting up FlexMatch matchmakers</a>
    #          </p>
    # @param [Hash, Types::DescribeMatchmakingConfigurationsInput] params
    # @option params [Array<String>] :names
    #   <p>A unique identifier for the matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To
    #               request all existing configurations, leave this parameter empty.</p>
    # @option params [String] :rule_set_name
    #   <p>A unique identifier for the matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to
    #               retrieve all matchmaking configurations that use this rule set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is limited to 10.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["MatchmakingConfigurationName"],
    #     rule_set_name: "MatchmakingRuleSetName",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_matchmaking_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configurations: [
    #       {
    #         name: "MatchmakingIdStringModel",
    #         configuration_arn: "MatchmakingConfigurationArn",
    #         description: "NonZeroAndMaxString",
    #         game_session_queue_arns: ["ArnStringModel"],
    #         request_timeout_seconds: 1,
    #         acceptance_timeout_seconds: 1,
    #         acceptance_required: false,
    #         rule_set_name: "MatchmakingIdStringModel",
    #         rule_set_arn: "MatchmakingRuleSetArn",
    #         notification_target: "SnsArnStringModel",
    #         additional_player_count: 1,
    #         custom_event_data: "CustomEventData",
    #         creation_time: Time.now,
    #         game_properties: [
    #           {
    #             key: "GamePropertyKey", # required
    #             value: "GamePropertyValue", # required
    #           }
    #         ],
    #         game_session_data: "GameSessionData",
    #         backfill_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #         flex_match_mode: "STANDALONE" # One of: ["STANDALONE", "WITH_QUEUE"]
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeMatchmakingConfigurationsOutput]
    def describe_matchmaking_configurations(params = {}, options = {})
      request = build_request(:describe_matchmaking_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieves the details for FlexMatch matchmaking rule sets. You can request all existing
    #             rule sets for the Region, or provide a list of one or more rule set names. When
    #             requesting multiple items, use the pagination parameters to retrieve results as a set of
    #             sequential pages. If successful, a rule set is returned for each requested name. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a rule
    #                         set</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeMatchmakingRuleSetsInput] params
    # @option params [Array<String>] :names
    #   <p>A list of one or more matchmaking rule set names to retrieve details for. (Note: The
    #               rule set name is different from the optional "name" field in the rule set body.) You can
    #               use either the rule set name or ARN value. </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["MatchmakingRuleSetName"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_matchmaking_rule_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_sets: [ # required
    #       {
    #         rule_set_name: "MatchmakingIdStringModel",
    #         rule_set_arn: "MatchmakingRuleSetArn",
    #         rule_set_body: "RuleSetBody", # required
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeMatchmakingRuleSetsOutput]
    def describe_matchmaking_rule_sets(params = {}, options = {})
      request = build_request(:describe_matchmaking_rule_sets, params)
      request.send_request(options)
    end

    # <p>Retrieves properties for one or more player sessions. </p>
    #          <p>This action can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To retrieve a specific player session, provide the player session ID
    #                     only.</p>
    #             </li>
    #             <li>
    #                <p>To retrieve all player sessions in a game session, provide the game session ID
    #                     only.</p>
    #             </li>
    #             <li>
    #                <p>To retrieve all player sessions for a specific player, provide a player ID
    #                     only.</p>
    #             </li>
    #          </ul>
    #          <p>To request player sessions, specify either a player session ID, game session ID, or
    #             player ID. You can filter this request by player session status. If you provide
    #             a specific <code>PlayerSessionId</code> or <code>PlayerId</code>, Amazon GameLift Servers ignores the filter criteria. 
    #             Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #          <p>If successful, a <code>PlayerSession</code> object is returned for each session that
    #             matches the request.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribePlayerSessionsInput] params
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to retrieve player sessions for.</p>
    # @option params [String] :player_id
    #   <p>A unique identifier for a player to retrieve player sessions for.</p>
    # @option params [String] :player_session_id
    #   <p>A unique identifier for a player session to retrieve.</p>
    # @option params [String] :player_session_status_filter
    #   <p>Player session status to filter results on. Note that when a PlayerSessionId or
    #               PlayerId is provided in a DescribePlayerSessions request, then the
    #               PlayerSessionStatusFilter has no effect on the response.</p>
    #            <p>Possible player session statuses include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RESERVED</b> -- The player session request has been
    #                       received, but the player has not yet connected to the server process and/or been
    #                       validated. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The player has been validated by the
    #                       server process and is currently connected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPLETED</b> -- The player connection has been
    #                       dropped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TIMEDOUT</b> -- A player session request was
    #                       received, but the player did not connect and/or was not validated within the
    #                       timeout limit (60 seconds).</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_session_id: "ArnStringModel",
    #     player_id: "PlayerId",
    #     player_session_id: "PlayerSessionId",
    #     player_session_status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.describe_player_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     player_sessions: [
    #       {
    #         player_session_id: "PlayerSessionId",
    #         player_id: "PlayerId",
    #         game_session_id: "NonZeroAndMaxString",
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         creation_time: Time.now,
    #         termination_time: Time.now,
    #         status: "RESERVED" # One of: ["RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"],
    #         ip_address: "IpAddress",
    #         dns_name: "DnsName",
    #         port: 1,
    #         player_data: "PlayerData"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribePlayerSessionsOutput]
    def describe_player_sessions(params = {}, options = {})
      request = build_request(:describe_player_sessions, params)
      request.send_request(options)
    end

    # <p>Retrieves a fleet's runtime configuration settings. The runtime configuration
    #             determines which server processes run, and how, on computes in the fleet. For managed
    #             EC2 fleets, the runtime configuration describes server processes that run on each fleet
    #             instance.
    #             can update a fleet's runtime configuration at any time using 
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateRuntimeConfiguration.html">UpdateRuntimeConfiguration</a>.</p>
    #          <p>To get the current runtime configuration for a fleet, provide the fleet ID. </p>
    #          <p>If successful, a <code>RuntimeConfiguration</code> object is returned for the
    #             requested fleet. If the requested fleet has been deleted, the result set is
    #             empty.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html">Running multiple
    #                 processes on a fleet</a>
    #          </p>
    # @param [Hash, Types::DescribeRuntimeConfigurationInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to get the runtime configuration for. You can use either the fleet ID or ARN
    #               value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.describe_runtime_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_configuration: {
    #       server_processes: [
    #         {
    #           launch_path: "LaunchPathStringModel", # required
    #           parameters: "LaunchParametersStringModel",
    #           concurrent_executions: 1, # required
    #         }
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1
    #     }
    #   }
    # @return [Types::DescribeRuntimeConfigurationOutput]
    def describe_runtime_configuration(params = {}, options = {})
      request = build_request(:describe_runtime_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves all scaling policies applied to a fleet.</p>
    #          <p>To get a fleet's scaling policies, specify the fleet ID. You can filter this request
    #             by policy status, such as to retrieve only active scaling policies. Use the pagination
    #             parameters to retrieve results as a set of sequential pages. If successful, set of
    #                 <code>ScalingPolicy</code> objects is returned for the fleet.</p>
    #          <p>A fleet may have all of its scaling policies suspended. This operation does not affect
    #             the status of the scaling policies, which remains ACTIVE.</p>
    # @param [Hash, Types::DescribeScalingPoliciesInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet for which to retrieve scaling policies. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [String] :status_filter
    #   <p>Scaling policy status to filter results on. A scaling policy is only in force when in
    #               an <code>ACTIVE</code> status.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The scaling policy is currently in
    #                       force.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPDATEREQUESTED</b> -- A request to update the
    #                       scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPDATING</b> -- A change is being made to the
    #                       scaling policy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETEREQUESTED</b> -- A request to delete the
    #                       scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETING</b> -- The scaling policy is being
    #                       deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETED</b> -- The scaling policy has been
    #                       deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ERROR</b> -- An error occurred in creating the
    #                       policy. It should be removed and recreated.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @option params [String] :location
    #   <p> The fleet location. If you don't specify this value, the response contains the
    #               scaling policies of every location in the fleet. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     status_filter: "ACTIVE" # One of: ["ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.describe_scaling_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scaling_policies: [
    #       {
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         name: "NonZeroAndMaxString",
    #         status: "ACTIVE" # One of: ["ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"],
    #         scaling_adjustment: 1,
    #         scaling_adjustment_type: "ChangeInCapacity" # One of: ["ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"],
    #         comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"],
    #         threshold: 1.0,
    #         evaluation_periods: 1,
    #         metric_name: "ActivatingGameSessions" # One of: ["ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime", "ConcurrentActivatableGameSessions"],
    #         policy_type: "RuleBased" # One of: ["RuleBased", "TargetBased"],
    #         target_configuration: {
    #           target_value: 1.0, # required
    #         },
    #         update_status: "PENDING_UPDATE" # One of: ["PENDING_UPDATE"],
    #         location: "LocationStringModel"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::DescribeScalingPoliciesOutput]
    def describe_scaling_policies(params = {}, options = {})
      request = build_request(:describe_scaling_policies, params)
      request.send_request(options)
    end

    # <p>Retrieves properties for a Realtime script. </p>
    #          <p>To request a script record, specify the script ID. If successful, an object containing
    #             the script properties is returned.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Servers Amazon GameLift Servers Realtime</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribeScriptInput] params
    # @option params [String] :script_id
    #   <p>A unique identifier for the Realtime script to retrieve properties for. You can use either the script ID or ARN
    #               value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     script_id: "ScriptIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.describe_script(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     script: {
    #       script_id: "ScriptId",
    #       script_arn: "ScriptArn",
    #       name: "NonZeroAndMaxString",
    #       version: "NonZeroAndMaxString",
    #       size_on_disk: 1,
    #       creation_time: Time.now,
    #       storage_location: {
    #         bucket: "NonEmptyString",
    #         key: "NonEmptyString",
    #         role_arn: "NonEmptyString",
    #         object_version: "NonEmptyString"
    #       }
    #     }
    #   }
    # @return [Types::DescribeScriptOutput]
    def describe_script(params = {}, options = {})
      request = build_request(:describe_script, params)
      request.send_request(options)
    end

    # <p>Retrieves valid VPC peering authorizations that are pending for the Amazon Web Services account.
    #             This operation returns all VPC peering authorizations and requests for peering. This
    #             includes those initiated and received by this account. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribeVpcPeeringAuthorizationsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_vpc_peering_authorizations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_peering_authorizations: [
    #       {
    #         game_lift_aws_account_id: "NonZeroAndMaxString",
    #         peer_vpc_aws_account_id: "NonZeroAndMaxString",
    #         peer_vpc_id: "NonZeroAndMaxString",
    #         creation_time: Time.now,
    #         expiration_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeVpcPeeringAuthorizationsOutput]
    def describe_vpc_peering_authorizations(params = {}, options = {})
      request = build_request(:describe_vpc_peering_authorizations, params)
      request.send_request(options)
    end

    # <p>Retrieves information on VPC peering connections. Use this operation to get peering
    #             information for all fleets or for one specific fleet ID. </p>
    #          <p>To retrieve connection information, call this operation from the Amazon Web Services account that is
    #             used to manage the Amazon GameLift Servers fleets. Specify a fleet ID or leave the parameter empty to
    #             retrieve all connection records. If successful, the retrieved information includes both
    #             active and pending connections. Active connections identify the IpV4 CIDR block that the
    #             VPC uses to connect. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::DescribeVpcPeeringConnectionsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet. You can use either the fleet ID or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetId"
    #   }
    #   options = {}
    #   response = client.describe_vpc_peering_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_peering_connections: [
    #       {
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         ip_v4_cidr_block: "NonZeroAndMaxString",
    #         vpc_peering_connection_id: "NonZeroAndMaxString",
    #         status: {
    #           code: "NonZeroAndMaxString",
    #           message: "NonZeroAndMaxString"
    #         },
    #         peer_vpc_id: "NonZeroAndMaxString",
    #         game_lift_vpc_id: "NonZeroAndMaxString"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeVpcPeeringConnectionsOutput]
    def describe_vpc_peering_connections(params = {}, options = {})
      request = build_request(:describe_vpc_peering_connections, params)
      request.send_request(options)
    end

    # <p>Requests authorization to remotely connect to a hosting resource in a Amazon GameLift Servers managed
    #             fleet. This operation is not used with Amazon GameLift Servers Anywhere fleets.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <p>Provide the fleet ID and compute name. The compute name varies depending on the type
    #             of fleet.</p>
    #          <ul>
    #             <li>
    #                <p>For a compute in a managed EC2 fleet, provide an instance ID. Each instance in
    #                     the fleet is a compute.</p>
    #             </li>
    #             <li>
    #                <p>For a compute in a managed container fleet, provide a compute name. In a
    #                     container fleet, each game server container group on a fleet instance is
    #                     assigned a compute name. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, this operation returns a set of temporary Amazon Web Services credentials, including
    #             a two-part access key and a session token.</p>
    #          <ul>
    #             <li>
    #                <p>With a managed EC2 fleet (where compute type is <code>EC2</code>), use these
    #                     credentials with Amazon EC2 Systems Manager (SSM) to start a session with the compute. For more
    #                     details, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html#sessions-start-cli"> Starting a session (CLI)</a> in the <i>Amazon EC2 Systems Manager User
    #                         Guide</i>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetComputeAccessInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet that holds the compute resource that you want to connect to. You can use either the
    #               fleet ID or ARN value.</p>
    # @option params [String] :compute_name
    #   <p>A unique identifier for the compute resource that you want to connect to. For an EC2
    #               fleet, use an instance ID. For a managed container fleet, use a compute name. You can
    #               retrieve a fleet's compute names by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html">ListCompute</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_compute_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetIdOrArn",
    #     fleet_arn: "FleetArn",
    #     compute_name: "ComputeNameOrArn",
    #     compute_arn: "ComputeArn",
    #     credentials: {
    #       access_key_id: "NonEmptyString",
    #       secret_access_key: "NonEmptyString",
    #       session_token: "NonEmptyString"
    #     },
    #     target: "SessionTarget",
    #     container_identifiers: [
    #       {
    #         container_name: "NonZeroAnd128MaxAsciiString",
    #         container_runtime_id: "NonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::GetComputeAccessOutput]
    def get_compute_access(params = {}, options = {})
      request = build_request(:get_compute_access, params)
      request.send_request(options)
    end

    # <p>Requests an authentication token from Amazon GameLift Servers for a compute resource in an Amazon GameLift Servers
    #             fleet. Game servers that are running on the compute use this token to communicate
    #             with the Amazon GameLift Servers service, such as when calling the Amazon GameLift Servers server SDK action
    #                 <code>InitSDK()</code>. Authentication tokens are valid for a limited time span, so
    #             you need to request a fresh token before the current token expires.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>For managed EC2 fleets (compute type <code>EC2</code>), auth token retrieval
    #                     and refresh is handled automatically. All game servers that are running on all
    #                     fleet instances have access to a valid auth token.</p>
    #             </li>
    #             <li>
    #                <p>For Anywhere fleets (compute type <code>ANYWHERE</code>), if you're using the
    #                     Amazon GameLift Servers Agent, auth token retrieval and refresh is handled automatically for any
    #                     compute where the Agent is running. If you're not using
    #                     the Agent, create a mechanism to retrieve and refresh auth tokens for computes
    #                     that are running game server processes.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-anywhere.html">Create an
    #                         Anywhere fleet</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing.html">Test your
    #                         integration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html">Server SDK
    #                         reference guides</a> (for version 5.x)</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetComputeAuthTokenInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet that the compute is registered to.</p>
    # @option params [String] :compute_name
    #   <p>The name of the compute resource you are requesting the authentication token for. For
    #               an Anywhere fleet compute, use the registered compute name. For an EC2 fleet instance,
    #               use the instance ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_compute_auth_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetIdOrArn",
    #     fleet_arn: "FleetArn",
    #     compute_name: "ComputeNameOrArn",
    #     compute_arn: "ComputeArn",
    #     auth_token: "ComputeAuthToken",
    #     expiration_timestamp: Time.now
    #   }
    # @return [Types::GetComputeAuthTokenOutput]
    def get_compute_auth_token(params = {}, options = {})
      request = build_request(:get_compute_auth_token, params)
      request.send_request(options)
    end

    # <p>Retrieves the location of stored game session logs for a specified game session on
    #             Amazon GameLift Servers managed fleets. When a game session is terminated, Amazon GameLift Servers automatically stores
    #             the logs in Amazon S3 and retains them for 14 days. Use this URL to download the logs.</p>
    #          <note>
    #             <p>See the <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">Amazon Web Services Service
    #                     Limits</a> page for maximum log file sizes. Log files that exceed this limit
    #                 are not saved.</p>
    #          </note>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::GetGameSessionLogUrlInput] params
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to get logs for. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_session_id: "ArnStringModel", # required
    #   }
    #   options = {}
    #   response = client.get_game_session_log_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pre_signed_url: "NonZeroAndMaxString"
    #   }
    # @return [Types::GetGameSessionLogUrlOutput]
    def get_game_session_log_url(params = {}, options = {})
      request = build_request(:get_game_session_log_url, params)
      request.send_request(options)
    end

    # <p>Requests authorization to remotely connect to an instance in an Amazon GameLift Servers managed fleet.
    #             Use this operation to connect to instances with game servers that use Amazon GameLift Servers server SDK
    #             4.x or earlier. To connect to instances with game servers that use server SDK 5.x or
    #             later, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess">https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess</a>.</p>
    #          <p>To request access to an instance, specify IDs for the instance and the fleet it
    #             belongs to. You can retrieve instance IDs for a fleet by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeInstances.html">DescribeInstances</a> with the fleet ID. </p>
    #          <p>If successful, this operation returns an IP address and credentials. The returned
    #             credentials match the operating system of the instance, as follows: </p>
    #          <ul>
    #             <li>
    #                <p>For a Windows instance: returns a user name and secret (password) for use with
    #                     a Windows Remote Desktop client. </p>
    #             </li>
    #             <li>
    #                <p>For a Linux instance: returns a user name and secret (RSA private key) for use
    #                     with an SSH client. You must save the secret to a <code>.pem</code> file. If
    #                     you're using the CLI, see the example <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess.html#API_GetInstanceAccess_Examples"> Get credentials for a Linux instance</a> for tips on automatically
    #                     saving the secret to a <code>.pem</code> file. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html">Remotely connect to
    #                 fleet instances</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html">Debug fleet
    #                 issues</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::GetInstanceAccessInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet that contains the instance you want to access. You can request access to
    #               instances in EC2 fleets with the following statuses: <code>ACTIVATING</code>,
    #                   <code>ACTIVE</code>, or <code>ERROR</code>. Use either a fleet ID or an ARN value. </p>
    #            <note>
    #               <p>You can access fleets in <code>ERROR</code> status for a short period of time before Amazon GameLift Servers deletes them.</p>
    #            </note>
    # @option params [String] :instance_id
    #   <p>A unique identifier for the instance you want to access. You can access an instance in any status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_instance_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_access: {
    #       fleet_id: "FleetId",
    #       instance_id: "InstanceId",
    #       ip_address: "IpAddress",
    #       operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #       credentials: {
    #         user_name: "NonEmptyString",
    #         secret: "NonEmptyString"
    #       }
    #     }
    #   }
    # @return [Types::GetInstanceAccessOutput]
    def get_instance_access(params = {}, options = {})
      request = build_request(:get_instance_access, params)
      request.send_request(options)
    end

    # <p>Retrieves all aliases for this Amazon Web Services account. You can filter the result set by alias
    #             name and/or routing strategy type. Use the pagination parameters to retrieve results in
    #             sequential pages.</p>
    #          <note>
    #             <p>Returned aliases are not listed in any particular order.</p>
    #          </note>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::ListAliasesInput] params
    # @option params [String] :routing_strategy_type
    #   <p>The routing type to filter results on. Use this parameter to retrieve only aliases
    #               with a certain routing type. To retrieve all aliases, leave this parameter empty.</p>
    #            <p>Possible routing types include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>SIMPLE</b> -- The alias resolves to one specific
    #                       fleet. Use this type when routing to active fleets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TERMINAL</b> -- The alias does not resolve to a
    #                       fleet but instead can be used to display a message to the user. A terminal alias
    #                       throws a TerminalRoutingStrategyException with the <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_RoutingStrategy.html">RoutingStrategy</a> message embedded.</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     routing_strategy_type: "SIMPLE" # One of: ["SIMPLE", "TERMINAL"],
    #     name: "NonEmptyString",
    #     limit: 1,
    #     next_token: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.list_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aliases: [
    #       {
    #         alias_id: "AliasId",
    #         name: "NonBlankAndLengthConstraintString",
    #         alias_arn: "AliasArn",
    #         description: "FreeText",
    #         routing_strategy: {
    #           type: "SIMPLE" # One of: ["SIMPLE", "TERMINAL"],
    #           fleet_id: "FleetId",
    #           message: "FreeText"
    #         },
    #         creation_time: Time.now,
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListAliasesOutput]
    def list_aliases(params = {}, options = {})
      request = build_request(:list_aliases, params)
      request.send_request(options)
    end

    # <p>Retrieves build resources for all builds associated with the Amazon Web Services account in use. You
    #             can limit results to builds that are in a specific status by using the
    #                 <code>Status</code> parameter. Use the pagination parameters to retrieve results in
    #             a set of sequential pages. </p>
    #          <note>
    #             <p>Build resources are not listed in any particular order.</p>
    #          </note>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html"> Upload a Custom
    #                 Server Build</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::ListBuildsInput] params
    # @option params [String] :status
    #   <p>Build status to filter results by. To retrieve all builds, leave this parameter
    #               empty.</p>
    #            <p>Possible build statuses include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>INITIALIZED</b> -- A new build has been defined,
    #                       but no files have been uploaded. You cannot create fleets for builds that are in
    #                       this status. When a build is successfully created, the build status is set to
    #                       this value. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>READY</b> -- The game build has been successfully
    #                       uploaded. You can now create new fleets for this build.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b> -- The game build upload failed. You
    #                       cannot create new fleets for this build. </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "INITIALIZED" # One of: ["INITIALIZED", "READY", "FAILED"],
    #     limit: 1,
    #     next_token: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.list_builds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     builds: [
    #       {
    #         build_id: "BuildId",
    #         build_arn: "BuildArn",
    #         name: "FreeText",
    #         version: "FreeText",
    #         status: "INITIALIZED" # One of: ["INITIALIZED", "READY", "FAILED"],
    #         size_on_disk: 1,
    #         operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #         creation_time: Time.now,
    #         server_sdk_version: "ServerSdkVersion"
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListBuildsOutput]
    def list_builds(params = {}, options = {})
      request = build_request(:list_builds, params)
      request.send_request(options)
    end

    # <p>Retrieves information on the compute resources in an Amazon GameLift Servers fleet. Use the pagination
    #             parameters to retrieve results in a set of sequential pages.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Retrieve a list of all computes in a fleet. Specify a fleet ID. </p>
    #             </li>
    #             <li>
    #                <p>Retrieve a list of all computes in a specific fleet location. Specify a fleet
    #                     ID and location.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, this operation returns information on a set of computes. Depending on
    #             the type of fleet, the result includes the following information: </p>
    #          <ul>
    #             <li>
    #                <p>For a managed EC2 fleet (compute type <code>EC2</code>), this operation
    #                     returns information about the EC2 instance. Compute names are EC2 instance
    #                     IDs.</p>
    #             </li>
    #             <li>
    #                <p>For an Anywhere fleet (compute type <code>ANYWHERE</code>), this operation
    #                     returns compute names and details from when the compute was registered with
    #                         <code>RegisterCompute</code>. This includes
    #                         <code>GameLiftServiceSdkEndpoint</code> or
    #                         <code>GameLiftAgentEndpoint</code>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListComputeInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve compute resources for.</p>
    # @option params [String] :location
    #   <p>The name of a location to retrieve compute resources for. For an Amazon GameLift Servers Anywhere
    #               fleet, use a custom location. For a managed fleet, provide a
    #               Amazon Web Services Region or Local Zone code (for example: <code>us-west-2</code> or
    #               <code>us-west-2-lax-1</code>).</p>
    # @option params [String] :container_group_definition_name
    #   <p>For computes in a managed container fleet, the name of the deployed container group
    #               definition. </p>
    # @option params [String] :compute_status
    #   <p>The status of computes in a managed container fleet, based on the success of the
    #               latest update deployment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> -- The compute is deployed with the correct container
    #                       definitions. It is ready to process game servers and host game sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPAIRED</code> -- An update deployment to the compute failed, and the
    #                       compute is deployed with incorrect container definitions.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel",
    #     container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     compute_status: "ACTIVE" # One of: ["ACTIVE", "IMPAIRED"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_compute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute_list: [
    #       {
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         compute_name: "ComputeName",
    #         compute_arn: "ComputeArn",
    #         ip_address: "IpAddress",
    #         dns_name: "DnsName",
    #         compute_status: "PENDING" # One of: ["PENDING", "ACTIVE", "TERMINATING", "IMPAIRED"],
    #         location: "LocationStringModel",
    #         creation_time: Time.now,
    #         operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #         type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #         game_lift_service_sdk_endpoint: "GameLiftServiceSdkEndpointOutput",
    #         game_lift_agent_endpoint: "GameLiftAgentEndpointOutput",
    #         instance_id: "InstanceId",
    #         container_attributes: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString",
    #             container_runtime_id: "NonEmptyString"
    #           }
    #         ],
    #         game_server_container_group_definition_arn: "ContainerGroupDefinitionNameOrArn"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListComputeOutput]
    def list_compute(params = {}, options = {})
      request = build_request(:list_compute, params)
      request.send_request(options)
    end

    # <p>Retrieves a collection of container fleet resources in an Amazon Web Services Region. For fleets
    #             that have multiple locations, this operation retrieves fleets based on their home Region
    #             only.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Get a list of all fleets. Call this operation without specifying a container
    #                     group definition. </p>
    #             </li>
    #             <li>
    #                <p>Get a list of fleets filtered by container group definition. Provide the
    #                     container group definition name or ARN value.</p>
    #             </li>
    #             <li>
    #                <p>To get a list of all Amazon GameLift Servers Realtime fleets with a specific configuration script,
    #                     provide the script ID. </p>
    #             </li>
    #          </ul>
    #          <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #          <p>If successful, this operation returns a collection of container fleets that match the request
    #             parameters. A NextToken value is also returned if there are more result pages to
    #             retrieve.</p>
    #          <note>
    #             <p>Fleet IDs are returned in no particular order.</p>
    #          </note>
    # @param [Hash, Types::ListContainerFleetsInput] params
    # @option params [String] :container_group_definition_name
    #   <p>The container group definition to filter the list on. Use this parameter to retrieve
    #               only those fleets that use the specified container group definition. You can specify the
    #               container group definition's name to get fleets with the latest versions. Alternatively,
    #               provide an ARN value to get fleets with a specific version number.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_container_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_fleets: [
    #       {
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         fleet_role_arn: "IamRoleArn",
    #         game_server_container_group_definition_name: "ContainerGroupDefinitionName",
    #         game_server_container_group_definition_arn: "ContainerGroupDefinitionArn",
    #         per_instance_container_group_definition_name: "ContainerGroupDefinitionName",
    #         per_instance_container_group_definition_arn: "ContainerGroupDefinitionArn",
    #         instance_connection_port_range: {
    #           from_port: 1, # required
    #           to_port: 1, # required
    #         },
    #         instance_inbound_permissions: [
    #           {
    #             from_port: 1, # required
    #             to_port: 1, # required
    #             ip_range: "IpRange", # required
    #             protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #           }
    #         ],
    #         game_server_container_groups_per_instance: 1,
    #         maximum_game_server_container_groups_per_instance: 1,
    #         instance_type: "NonZeroAndMaxString",
    #         billing_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #         description: "NonZeroAndMaxString",
    #         creation_time: Time.now,
    #         metric_groups: ["MetricGroup"],
    #         new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #         game_session_creation_limit_policy: {
    #           new_game_sessions_per_creator: 1,
    #           policy_period_in_minutes: 1
    #         },
    #         status: "PENDING" # One of: ["PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"],
    #         deployment_details: {
    #           latest_deployment_id: "DeploymentId"
    #         },
    #         log_configuration: {
    #           log_destination: "NONE" # One of: ["NONE", "CLOUDWATCH", "S3"],
    #           s3_bucket_name: "NonEmptyString",
    #           log_group_arn: "LogGroupArnStringModel"
    #         },
    #         location_attributes: [
    #           {
    #             location: "LocationStringModel",
    #             status: "PENDING" # One of: ["PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListContainerFleetsOutput]
    def list_container_fleets(params = {}, options = {})
      request = build_request(:list_container_fleets, params)
      request.send_request(options)
    end

    # <p>Retrieves all versions of a container group definition. Use the pagination parameters to
    #       retrieve results in a set of sequential pages.</p>
    #          <p>
    #             <b>Request options:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Get all versions of a specified container group definition. Specify the container
    #           group definition name or ARN value. (If the ARN value has a version number, it's
    #           ignored.)</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results:</b>
    #          </p>
    #          <p>If successful, this operation returns the complete properties of a set of container group
    #       definition versions that match the request.</p>
    #          <note>
    #             <p>This operation returns the list of container group definitions in descending version
    #         order (latest first). </p>
    #          </note>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html">Manage a container group definition</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListContainerGroupDefinitionVersionsInput] params
    # @option params [String] :name
    #   <p>The unique identifier for the container group definition to retrieve properties for. You can use either the <code>Name</code> or
    #         <code>ARN</code> value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ContainerGroupDefinitionNameOrArn", # required
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_container_group_definition_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_group_definitions: [
    #       {
    #         container_group_definition_arn: "ContainerGroupDefinitionArn",
    #         creation_time: Time.now,
    #         operating_system: "AMAZON_LINUX_2023" # One of: ["AMAZON_LINUX_2023"],
    #         name: "ContainerGroupDefinitionName", # required
    #         container_group_type: "GAME_SERVER" # One of: ["GAME_SERVER", "PER_INSTANCE"],
    #         total_memory_limit_mebibytes: 1,
    #         total_vcpu_limit: 1.0,
    #         game_server_container_definition: {
    #           container_name: "NonZeroAnd128MaxAsciiString",
    #           depends_on: [
    #             {
    #               container_name: "NonZeroAnd128MaxAsciiString", # required
    #               condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               instance_path: "InstancePathString", # required
    #               container_path: "ContainerPathString",
    #               access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #             }
    #           ],
    #           environment_override: [
    #             {
    #               name: "NonZeroAnd255MaxString", # required
    #               value: "NonZeroAnd255MaxString", # required
    #             }
    #           ],
    #           image_uri: "ImageUriString",
    #           port_configuration: {
    #             container_port_ranges: [ # required
    #               {
    #                 from_port: 1, # required
    #                 to_port: 1, # required
    #                 protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #               }
    #             ]
    #           },
    #           resolved_image_digest: "Sha256",
    #           server_sdk_version: "ServerSdkVersion"
    #         },
    #         support_container_definitions: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString",
    #             depends_on: [
    #               {
    #                 container_name: "NonZeroAnd128MaxAsciiString", # required
    #                 condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #               }
    #             ],
    #             mount_points: [
    #               {
    #                 instance_path: "InstancePathString", # required
    #                 container_path: "ContainerPathString",
    #                 access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #               }
    #             ],
    #             environment_override: [
    #               {
    #                 name: "NonZeroAnd255MaxString", # required
    #                 value: "NonZeroAnd255MaxString", # required
    #               }
    #             ],
    #             essential: false,
    #             health_check: {
    #               command: ["NonZeroAnd255MaxString"], # required
    #               interval: 1,
    #               retries: 1,
    #               start_period: 1,
    #               timeout: 1
    #             },
    #             image_uri: "ImageUriString",
    #             memory_hard_limit_mebibytes: 1,
    #             port_configuration: {
    #               container_port_ranges: [ # required
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                   protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #                 }
    #               ]
    #             },
    #             resolved_image_digest: "Sha256",
    #             vcpu: 1.0
    #           }
    #         ],
    #         version_number: 1,
    #         version_description: "NonZeroAndMaxString",
    #         status: "READY" # One of: ["READY", "COPYING", "FAILED"],
    #         status_reason: "NonZeroAndMaxString"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListContainerGroupDefinitionVersionsOutput]
    def list_container_group_definition_versions(params = {}, options = {})
      request = build_request(:list_container_group_definition_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves container group definitions for the Amazon Web Services account and Amazon Web Services Region. Use the pagination parameters to retrieve results in a set of sequential
    #       pages.</p>
    #          <p>This operation returns only the latest version of each definition. To retrieve all
    #       versions of a container group definition, use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitionVersions.html">ListContainerGroupDefinitionVersions</a>.</p>
    #          <p>
    #             <b>Request options:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Retrieve the most recent versions of all container group definitions. </p>
    #             </li>
    #             <li>
    #                <p>Retrieve the most recent versions of all container group definitions, filtered by
    #           type. Specify the container group type to filter on. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results:</b>
    #          </p>
    #          <p>If successful, this operation returns the complete properties of a set of container group
    #       definition versions that match the request.</p>
    #          <note>
    #             <p>This operation returns the list of container group definitions in no particular order. </p>
    #          </note>
    # @param [Hash, Types::ListContainerGroupDefinitionsInput] params
    # @option params [String] :container_group_type
    #   <p>The type of container group to retrieve. Container group type determines how Amazon GameLift Servers
    #         deploys the container group on each fleet instance.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_group_type: "GAME_SERVER" # One of: ["GAME_SERVER", "PER_INSTANCE"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_container_group_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_group_definitions: [
    #       {
    #         container_group_definition_arn: "ContainerGroupDefinitionArn",
    #         creation_time: Time.now,
    #         operating_system: "AMAZON_LINUX_2023" # One of: ["AMAZON_LINUX_2023"],
    #         name: "ContainerGroupDefinitionName", # required
    #         container_group_type: "GAME_SERVER" # One of: ["GAME_SERVER", "PER_INSTANCE"],
    #         total_memory_limit_mebibytes: 1,
    #         total_vcpu_limit: 1.0,
    #         game_server_container_definition: {
    #           container_name: "NonZeroAnd128MaxAsciiString",
    #           depends_on: [
    #             {
    #               container_name: "NonZeroAnd128MaxAsciiString", # required
    #               condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               instance_path: "InstancePathString", # required
    #               container_path: "ContainerPathString",
    #               access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #             }
    #           ],
    #           environment_override: [
    #             {
    #               name: "NonZeroAnd255MaxString", # required
    #               value: "NonZeroAnd255MaxString", # required
    #             }
    #           ],
    #           image_uri: "ImageUriString",
    #           port_configuration: {
    #             container_port_ranges: [ # required
    #               {
    #                 from_port: 1, # required
    #                 to_port: 1, # required
    #                 protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #               }
    #             ]
    #           },
    #           resolved_image_digest: "Sha256",
    #           server_sdk_version: "ServerSdkVersion"
    #         },
    #         support_container_definitions: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString",
    #             depends_on: [
    #               {
    #                 container_name: "NonZeroAnd128MaxAsciiString", # required
    #                 condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #               }
    #             ],
    #             mount_points: [
    #               {
    #                 instance_path: "InstancePathString", # required
    #                 container_path: "ContainerPathString",
    #                 access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #               }
    #             ],
    #             environment_override: [
    #               {
    #                 name: "NonZeroAnd255MaxString", # required
    #                 value: "NonZeroAnd255MaxString", # required
    #               }
    #             ],
    #             essential: false,
    #             health_check: {
    #               command: ["NonZeroAnd255MaxString"], # required
    #               interval: 1,
    #               retries: 1,
    #               start_period: 1,
    #               timeout: 1
    #             },
    #             image_uri: "ImageUriString",
    #             memory_hard_limit_mebibytes: 1,
    #             port_configuration: {
    #               container_port_ranges: [ # required
    #                 {
    #                   from_port: 1, # required
    #                   to_port: 1, # required
    #                   protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #                 }
    #               ]
    #             },
    #             resolved_image_digest: "Sha256",
    #             vcpu: 1.0
    #           }
    #         ],
    #         version_number: 1,
    #         version_description: "NonZeroAndMaxString",
    #         status: "READY" # One of: ["READY", "COPYING", "FAILED"],
    #         status_reason: "NonZeroAndMaxString"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListContainerGroupDefinitionsOutput]
    def list_container_group_definitions(params = {}, options = {})
      request = build_request(:list_container_group_definitions, params)
      request.send_request(options)
    end

    # <p>Retrieves a collection of container fleet deployments in an Amazon Web Services Region. Use the
    #             pagination parameters to retrieve results as a set of sequential pages.  </p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Get a list of all deployments. Call this operation without specifying a fleet ID. </p>
    #             </li>
    #             <li>
    #                <p>Get a list of all deployments for a fleet. Specify the container fleet ID or ARN value.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, this operation returns a list of deployments that match the request
    #             parameters. A NextToken value is also returned if there are more result pages to
    #             retrieve.</p>
    #          <note>
    #             <p>Deployments are returned starting with the latest.</p>
    #          </note>
    # @param [Hash, Types::ListFleetDeploymentsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the container fleet. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_fleet_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_deployments: [
    #       {
    #         deployment_id: "DeploymentId",
    #         fleet_id: "FleetId",
    #         game_server_binary_arn: "FleetBinaryArn",
    #         rollback_game_server_binary_arn: "FleetBinaryArn",
    #         per_instance_binary_arn: "FleetBinaryArn",
    #         rollback_per_instance_binary_arn: "FleetBinaryArn",
    #         deployment_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "IMPAIRED", "COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "CANCELLED", "PENDING"],
    #         deployment_configuration: {
    #           protection_strategy: "WITH_PROTECTION" # One of: ["WITH_PROTECTION", "IGNORE_PROTECTION"],
    #           minimum_healthy_percentage: 1,
    #           impairment_strategy: "MAINTAIN" # One of: ["MAINTAIN", "ROLLBACK"]
    #         },
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListFleetDeploymentsOutput]
    def list_fleet_deployments(params = {}, options = {})
      request = build_request(:list_fleet_deployments, params)
      request.send_request(options)
    end

    # <p>Retrieves a collection of fleet resources in an Amazon Web Services Region. You can filter the
    #             result set to find only those fleets that are deployed with a specific build or script.
    #             For fleets that have multiple locations, this operation retrieves fleets based on their
    #             home Region only.</p>
    #          <p>You can use  operation in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To get a list of all fleets in a Region, don't provide a build or script
    #                     identifier.</p>
    #             </li>
    #             <li>
    #                <p>To get a list of all fleets where a specific game build is deployed, provide
    #                     the build ID.</p>
    #             </li>
    #             <li>
    #                <p>To get a list of all Amazon GameLift Servers Realtime fleets with a specific configuration script,
    #                     provide the script ID. </p>
    #             </li>
    #          </ul>
    #          <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #          <p>If successful, this operation returns a list of fleet IDs that match the request
    #             parameters. A NextToken value is also returned if there are more result pages to
    #             retrieve.</p>
    #          <note>
    #             <p>Fleet IDs are returned in no particular order.</p>
    #          </note>
    # @param [Hash, Types::ListFleetsInput] params
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to request fleets for. Use this parameter to return only fleets using a
    #               specified build. Use either the build ID or ARN value.</p>
    # @option params [String] :script_id
    #   <p>A unique identifier for the Realtime script to request fleets for. Use this parameter to return only fleets using a
    #               specified script. Use either the script ID or ARN value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     build_id: "BuildIdOrArn",
    #     script_id: "ScriptIdOrArn",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_ids: ["FleetId"],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListFleetsOutput]
    def list_fleets(params = {}, options = {})
      request = build_request(:list_fleets, params)
      request.send_request(options)
    end

    # <p>Lists a game server groups.</p>
    # @param [Hash, Types::ListGameServerGroupsInput] params
    # @option params [Integer] :limit
    #   <p>The game server groups' limit.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_game_server_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server_groups: [
    #       {
    #         game_server_group_name: "GameServerGroupName",
    #         game_server_group_arn: "GameServerGroupArn",
    #         role_arn: "IamRoleArn",
    #         instance_definitions: [
    #           {
    #             instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #             weighted_capacity: "WeightedCapacity"
    #           }
    #         ],
    #         balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"],
    #         game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #         auto_scaling_group_arn: "AutoScalingGroupArn",
    #         status: "NEW" # One of: ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"],
    #         status_reason: "NonZeroAndMaxString",
    #         suspended_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]],
    #         creation_time: Time.now,
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListGameServerGroupsOutput]
    def list_game_server_groups(params = {}, options = {})
      request = build_request(:list_game_server_groups, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Retrieves information on all game
    #             servers that are currently active in a specified game server group. You can opt to sort
    #             the list by game server age. Use the pagination parameters to retrieve results in a set
    #             of sequential segments. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::ListGameServersInput] params
    # @option params [String] :game_server_group_name
    #   <p>An identifier for the game server group to retrieve a list of game servers from. Use
    #               either the name or ARN value.</p>
    # @option params [String] :sort_order
    #   <p>Indicates how to sort the returned data based on game server registration timestamp.
    #               Use <code>ASCENDING</code> to retrieve oldest game servers first, or use
    #                   <code>DESCENDING</code> to retrieve newest game servers first. If this parameter is
    #               left empty, game servers are returned in no particular order.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_game_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_servers: [
    #       {
    #         game_server_group_name: "GameServerGroupName",
    #         game_server_group_arn: "GameServerGroupArn",
    #         game_server_id: "GameServerId",
    #         instance_id: "GameServerInstanceId",
    #         connection_info: "GameServerConnectionInfo",
    #         game_server_data: "GameServerData",
    #         claim_status: "CLAIMED" # One of: ["CLAIMED"],
    #         utilization_status: "AVAILABLE" # One of: ["AVAILABLE", "UTILIZED"],
    #         registration_time: Time.now,
    #         last_claim_time: Time.now,
    #         last_health_check_time: Time.now
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListGameServersOutput]
    def list_game_servers(params = {}, options = {})
      request = build_request(:list_game_servers, params)
      request.send_request(options)
    end

    # <p>Lists all custom and Amazon Web Services locations where Amazon GameLift Servers can host game servers. </p>
    #          <p>Note that if you call this API using a location that doesn't have a service endpoint,
    #             such as one that can only be a remote location in a multi-location fleet, the API
    #             returns an error.</p>
    #          <p>Consult the table of supported locations in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html">Amazon GameLift Servers service
    #                 locations</a> to identify home Regions that support single and multi-location
    #             fleets.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html">Service locations</a>
    #          </p>
    # @param [Hash, Types::ListLocationsInput] params
    # @option params [Array<String>] :filters
    #   <p>Filters the list for <code>AWS</code> or <code>CUSTOM</code> locations. Use this
    #               parameter to narrow down results to only Amazon Web Services-managed locations (Amazon EC2 or container) or
    #               only your custom locations (such as an Amazon GameLift Servers Anywhere fleet).</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: ["AWS" # One of: ["AWS", "CUSTOM"]],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.list_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locations: [
    #       {
    #         location_name: "LocationStringModel",
    #         location_arn: "LocationArnModel",
    #         ping_beacon: {
    #           udp_endpoint: {
    #             domain: "NonZeroAndMaxString",
    #             port: 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::ListLocationsOutput]
    def list_locations(params = {}, options = {})
      request = build_request(:list_locations, params)
      request.send_request(options)
    end

    # <p>Retrieves script records for all Realtime scripts that are associated with the Amazon Web Services
    #             account in use. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Servers Amazon GameLift Servers Realtime</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::ListScriptsInput] params
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     next_token: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.list_scripts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scripts: [
    #       {
    #         script_id: "ScriptId",
    #         script_arn: "ScriptArn",
    #         name: "NonZeroAndMaxString",
    #         version: "NonZeroAndMaxString",
    #         size_on_disk: 1,
    #         creation_time: Time.now,
    #         storage_location: {
    #           bucket: "NonEmptyString",
    #           key: "NonEmptyString",
    #           role_arn: "NonEmptyString",
    #           object_version: "NonEmptyString"
    #         }
    #       }
    #     ],
    #     next_token: "NonEmptyString"
    #   }
    # @return [Types::ListScriptsOutput]
    def list_scripts(params = {}, options = {})
      request = build_request(:list_scripts, params)
      request.send_request(options)
    end

    # <p>Retrieves all tags assigned to a Amazon GameLift Servers resource. Use resource tags to organize Amazon Web Services
    #             resources for a range of purposes. This operation handles the permissions necessary to
    #             manage tags for Amazon GameLift Servers resources that support tagging.</p>
    #          <p>To list tags for a resource, specify the unique ARN value for the resource.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #                 Resources</a> in the <i>Amazon Web Services General Reference</i>
    #          </p>
    #          <p>
    #             <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
    #                 Amazon Web Services Tagging Strategies</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that uniquely identifies
    #               the Amazon GameLift Servers resource that you want to retrieve tags for. Amazon GameLift Servers includes resource ARNs in
    #               the data object for the resource. You can retrieve the ARN by calling a
    #                   <code>List</code> or <code>Describe</code> operation for the resource type. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates or updates a scaling policy for a fleet. Scaling policies are used to
    #             automatically scale a fleet's hosting capacity to meet player demand. An active scaling
    #             policy instructs Amazon GameLift Servers to track a fleet metric and automatically change the fleet's
    #             capacity when a certain threshold is reached. There are two types of scaling policies:
    #             target-based and rule-based. Use a target-based policy to quickly and efficiently manage
    #             fleet scaling; this option is the most commonly used. Use rule-based policies when you
    #             need to exert fine-grained control over auto-scaling. </p>
    #          <p>Fleets can have multiple scaling policies of each type in force at the same time; you
    #             can have one target-based policy, one or multiple rule-based scaling policies, or both.
    #             We recommend caution, however, because multiple auto-scaling policies can have
    #             unintended consequences.</p>
    #          <p>Learn more about how to work with auto-scaling in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html">Set Up Fleet Automatic
    #                 Scaling</a>.</p>
    #          <p>
    #             <b>Target-based policy</b>
    #          </p>
    #          <p>A target-based policy tracks a single metric: PercentAvailableGameSessions. This
    #             metric tells us how much of a fleet's hosting capacity is ready to host game sessions
    #             but is not currently in use. This is the fleet's buffer; it measures the additional
    #             player demand that the fleet could handle at current capacity. With a target-based
    #             policy, you set your ideal buffer size and leave it to Amazon GameLift Servers to take whatever action is
    #             needed to maintain that target. </p>
    #          <p>For example, you might choose to maintain a 10% buffer for a fleet that has the
    #             capacity to host 100 simultaneous game sessions. This policy tells Amazon GameLift Servers to take action
    #             whenever the fleet's available capacity falls below or rises above 10 game sessions.
    #             Amazon GameLift Servers will start new instances or stop unused instances in order to return to the 10%
    #             buffer. </p>
    #          <p>To create or update a target-based policy, specify a fleet ID and name, and set the
    #             policy type to "TargetBased". Specify the metric to track (PercentAvailableGameSessions)
    #             and reference a <code>TargetConfiguration</code> object with your desired buffer value.
    #             Exclude all other parameters. On a successful request, the policy name is returned. The
    #             scaling policy is automatically in force as soon as it's successfully created. If the
    #             fleet's auto-scaling actions are temporarily suspended, the new policy will be in force
    #             once the fleet actions are restarted.</p>
    #          <p>
    #             <b>Rule-based policy</b>
    #          </p>
    #          <p>A rule-based policy tracks specified fleet metric, sets a threshold value, and
    #             specifies the type of action to initiate when triggered. With a rule-based policy, you
    #             can select from several available fleet metrics. Each policy specifies whether to scale
    #             up or scale down (and by how much), so you need one policy for each type of action. </p>
    #          <p>For example, a policy may make the following statement: "If the percentage of idle
    #             instances is greater than 20% for more than 15 minutes, then reduce the fleet capacity
    #             by 10%."</p>
    #          <p>A policy's rule statement has the following structure:</p>
    #          <p>If <code>[MetricName]</code> is <code>[ComparisonOperator]</code>
    #             <code>[Threshold]</code> for <code>[EvaluationPeriods]</code> minutes, then
    #                 <code>[ScalingAdjustmentType]</code> to/by <code>[ScalingAdjustment]</code>.</p>
    #          <p>To implement the example, the rule statement would look like this:</p>
    #          <p>If <code>[PercentIdleInstances]</code> is <code>[GreaterThanThreshold]</code>
    #             <code>[20]</code> for <code>[15]</code> minutes, then
    #                 <code>[PercentChangeInCapacity]</code> to/by <code>[10]</code>.</p>
    #          <p>To create or update a scaling policy, specify a unique combination of name and fleet
    #             ID, and set the policy type to "RuleBased". Specify the parameter values for a policy
    #             rule statement. On a successful request, the policy name is returned. Scaling policies
    #             are automatically in force as soon as they're successfully created. If the fleet's
    #             auto-scaling actions are temporarily suspended, the new policy will be in force once the
    #             fleet actions are restarted.</p>
    # @param [Hash, Types::PutScalingPolicyInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.</p>
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to apply this policy to. You can use either the fleet ID or ARN value. The fleet
    #               cannot be in any of the following statuses: ERROR or DELETING.</p>
    # @option params [Integer] :scaling_adjustment
    #   <p>Amount of adjustment to make, based on the scaling adjustment type.</p>
    # @option params [String] :scaling_adjustment_type
    #   <p>The type of adjustment to make to a fleet's instance count:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ChangeInCapacity</b> -- add (or subtract) the
    #                       scaling adjustment value from the current instance count. Positive values scale
    #                       up while negative values scale down.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ExactCapacity</b> -- set the instance count to the
    #                       scaling adjustment value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PercentChangeInCapacity</b> -- increase or reduce
    #                       the current instance count by the scaling adjustment, read as a percentage.
    #                       Positive values scale up while negative values scale down; for example, a value
    #                       of "-10" scales the fleet down by 10%.</p>
    #               </li>
    #            </ul>
    # @option params [Float] :threshold
    #   <p>Metric value used to trigger a scaling event.</p>
    # @option params [String] :comparison_operator
    #   <p>Comparison operator to use when measuring the metric against the threshold
    #               value.</p>
    # @option params [Integer] :evaluation_periods
    #   <p>Length of time (in minutes) the metric must be at or beyond the threshold before a
    #               scaling event is triggered.</p>
    # @option params [String] :metric_name
    #   <p>Name of the Amazon GameLift Servers-defined metric that is used to trigger a scaling adjustment. For
    #               detailed descriptions of fleet metrics, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html">Monitor Amazon GameLift Servers
    #                   with Amazon CloudWatch</a>. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ActivatingGameSessions</b> -- Game sessions in
    #                       the process of being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ActiveGameSessions</b> -- Game sessions that
    #                       are currently running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ActiveInstances</b> -- Fleet instances that
    #                       are currently running at least one game session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AvailableGameSessions</b> -- Additional game
    #                       sessions that fleet could host simultaneously, given current capacity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AvailablePlayerSessions</b> -- Empty player
    #                       slots in currently active game sessions. This includes game sessions that are
    #                       not currently accepting players. Reserved player slots are not
    #                       included.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CurrentPlayerSessions</b> -- Player slots in
    #                       active game sessions that are being used by a player or are reserved for a
    #                       player. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IdleInstances</b> -- Active instances that are
    #                       currently hosting zero game sessions. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PercentAvailableGameSessions</b> -- Unused
    #                       percentage of the total number of game sessions that a fleet could host
    #                       simultaneously, given current capacity. Use this metric for a target-based
    #                       scaling policy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PercentIdleInstances</b> -- Percentage of the
    #                       total number of active instances that are hosting zero game sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>QueueDepth</b> -- Pending game session
    #                       placement requests, in any queue, where the current fleet is the top-priority
    #                       destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>WaitTime</b> -- Current wait time for pending
    #                       game session placement requests, in any queue, where the current fleet is the
    #                       top-priority destination. </p>
    #               </li>
    #            </ul>
    # @option params [String] :policy_type
    #   <p>The type of scaling policy to create. For a target-based policy, set the parameter
    #                   <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a
    #                   <i>TargetConfiguration</i>. For a rule-based policy set the following
    #               parameters: <i>MetricName</i>, <i>ComparisonOperator</i>,
    #                   <i>Threshold</i>, <i>EvaluationPeriods</i>,
    #                   <i>ScalingAdjustmentType</i>, and
    #                   <i>ScalingAdjustment</i>.</p>
    # @option params [Types::TargetConfiguration] :target_configuration
    #   <p>An object that contains settings for a target-based scaling policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonZeroAndMaxString", # required
    #     fleet_id: "FleetIdOrArn", # required
    #     scaling_adjustment: 1,
    #     scaling_adjustment_type: "ChangeInCapacity" # One of: ["ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"],
    #     threshold: 1.0,
    #     comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"],
    #     evaluation_periods: 1,
    #     metric_name: "ActivatingGameSessions" # One of: ["ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime", "ConcurrentActivatableGameSessions"], # required
    #     policy_type: "RuleBased" # One of: ["RuleBased", "TargetBased"],
    #     target_configuration: {
    #       target_value: 1.0, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "NonZeroAndMaxString"
    #   }
    # @return [Types::PutScalingPolicyOutput]
    def put_scaling_policy(params = {}, options = {})
      request = build_request(:put_scaling_policy, params)
      request.send_request(options)
    end

    # <p>Registers a compute resource in an Amazon GameLift Servers Anywhere fleet. </p>
    #          <p>For an Anywhere fleet that's running the Amazon GameLift Servers Agent, the Agent
    #             handles all compute registry tasks for you. For an Anywhere fleet that doesn't use the
    #             Agent, call this operation to register fleet computes.</p>
    #          <p>To register a compute, give the compute a name (must be unique within the
    #             fleet) and specify the compute resource's DNS name or IP address. Provide a 
    #             fleet ID and a fleet location to associate with the compute being registered. You can
    #             optionally include the path to a TLS certificate on the compute resource.</p>
    #          <p>If successful, this operation returns compute details, including an Amazon GameLift Servers SDK
    #             endpoint or Agent endpoint. Game server processes running on the compute can use this
    #             endpoint to communicate with the Amazon GameLift Servers service. Each server process includes the SDK
    #             endpoint in its call to the Amazon GameLift Servers server SDK action <code>InitSDK()</code>. </p>
    #          <p>To view compute details, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute.html">DescribeCompute</a> with the compute name. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-anywhere.html">Create an
    #                         Anywhere fleet</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing.html">Test your
    #                         integration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html">Server SDK
    #                         reference guides</a> (for version 5.x)</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RegisterComputeInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to register the compute to. You can use either the fleet ID or ARN value.</p>
    # @option params [String] :compute_name
    #   <p>A descriptive label for the compute resource.</p>
    # @option params [String] :certificate_path
    #   <p>The path to a TLS certificate on your compute resource. Amazon GameLift Servers doesn't validate the
    #               path and certificate.</p>
    # @option params [String] :dns_name
    #   <p>The DNS name of the compute resource. Amazon GameLift Servers requires either a DNS name or IP
    #               address.</p>
    # @option params [String] :ip_address
    #   <p>The IP address of the compute resource. Amazon GameLift Servers requires either a DNS name or IP
    #               address. When registering an Anywhere fleet, an IP address is required.</p>
    # @option params [String] :location
    #   <p>The name of a custom location to associate with the compute resource being registered.
    #               This parameter is required when registering a compute for an Anywhere fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeName", # required
    #     certificate_path: "NonZeroAndMaxString",
    #     dns_name: "DnsNameInput",
    #     ip_address: "IpAddress",
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.register_compute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute: {
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       compute_name: "ComputeName",
    #       compute_arn: "ComputeArn",
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       compute_status: "PENDING" # One of: ["PENDING", "ACTIVE", "TERMINATING", "IMPAIRED"],
    #       location: "LocationStringModel",
    #       creation_time: Time.now,
    #       operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #       type: "t2.micro" # One of: ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"],
    #       game_lift_service_sdk_endpoint: "GameLiftServiceSdkEndpointOutput",
    #       game_lift_agent_endpoint: "GameLiftAgentEndpointOutput",
    #       instance_id: "InstanceId",
    #       container_attributes: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString",
    #           container_runtime_id: "NonEmptyString"
    #         }
    #       ],
    #       game_server_container_group_definition_arn: "ContainerGroupDefinitionNameOrArn"
    #     }
    #   }
    # @return [Types::RegisterComputeOutput]
    def register_compute(params = {}, options = {})
      request = build_request(:register_compute, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Creates a new game server
    #             resource and notifies Amazon GameLift Servers FleetIQ that the game server is ready to host gameplay and players.
    #             This operation is called by a game server process that is running on an instance in a
    #             game server group. Registering game servers enables Amazon GameLift Servers FleetIQ to track available game
    #             servers and enables game clients and services to claim a game server for a new game
    #             session. </p>
    #          <p>To register a game server, identify the game server group and instance where the game
    #             server is running, and provide a unique identifier for the game server. You can also
    #             include connection and game server data.</p>
    #          <p>Once a game server is successfully registered, it is put in status
    #                 <code>AVAILABLE</code>. A request to register a game server may fail if the instance
    #             it is running on is in the process of shutting down as part of instance balancing or
    #             scale-down activity. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::RegisterGameServerInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server to register. Game server IDs are developer-defined and must be unique
    #               across all game server groups in your Amazon Web Services account.</p>
    # @option params [String] :instance_id
    #   <p>The unique identifier for the instance where the game server is running. This ID is
    #               available in the instance metadata. EC2 instance IDs 
    #               use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>
    # @option params [String] :connection_info
    #   <p>Information that is needed to make inbound client connections to the game server. This
    #               might include the IP address and port, DNS name, and other information.</p>
    # @option params [String] :game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data 
    #               is passed to a game client or service when it requests information on game servers. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #     instance_id: "GameServerInstanceId", # required
    #     connection_info: "GameServerConnectionInfo",
    #     game_server_data: "GameServerData"
    #   }
    #   options = {}
    #   response = client.register_game_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       game_server_id: "GameServerId",
    #       instance_id: "GameServerInstanceId",
    #       connection_info: "GameServerConnectionInfo",
    #       game_server_data: "GameServerData",
    #       claim_status: "CLAIMED" # One of: ["CLAIMED"],
    #       utilization_status: "AVAILABLE" # One of: ["AVAILABLE", "UTILIZED"],
    #       registration_time: Time.now,
    #       last_claim_time: Time.now,
    #       last_health_check_time: Time.now
    #     }
    #   }
    # @return [Types::RegisterGameServerOutput]
    def register_game_server(params = {}, options = {})
      request = build_request(:register_game_server, params)
      request.send_request(options)
    end

    # <p>Retrieves a fresh set of credentials for use when uploading a new set of game build
    #             files to Amazon GameLift Servers's Amazon S3. This is done as part of the build creation process; see
    #                 <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateBuild.html">CreateBuild</a>.</p>
    #          <p>To request new credentials, specify the build ID as returned with an initial
    #                 <code>CreateBuild</code> request. If successful, a new set of credentials are
    #             returned, along with the S3 storage location associated with the build ID.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build"> Create a Build with Files in S3</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::RequestUploadCredentialsInput] params
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to get credentials for. You can use either the build ID or ARN value. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     build_id: "BuildIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.request_upload_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upload_credentials: {
    #       access_key_id: "NonEmptyString",
    #       secret_access_key: "NonEmptyString",
    #       session_token: "NonEmptyString"
    #     },
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString"
    #     }
    #   }
    # @return [Types::RequestUploadCredentialsOutput]
    def request_upload_credentials(params = {}, options = {})
      request = build_request(:request_upload_credentials, params)
      request.send_request(options)
    end

    # <p>Attempts to retrieve a fleet ID that is associated with an alias. Specify a unique
    #             alias identifier.</p>
    #          <p>If the alias has a <code>SIMPLE</code> routing strategy, Amazon GameLift Servers returns a fleet ID.
    #             If the alias has a <code>TERMINAL</code> routing strategy, the result is a
    #                 <code>TerminalRoutingStrategyException</code>.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::ResolveAliasInput] params
    # @option params [String] :alias_id
    #   <p>The unique identifier of the alias that you want to retrieve a fleet ID for. You can
    #               use either the alias ID or ARN value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "AliasIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.resolve_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId",
    #     fleet_arn: "FleetArn"
    #   }
    # @return [Types::ResolveAliasOutput]
    def resolve_alias(params = {}, options = {})
      request = build_request(:resolve_alias, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Reinstates activity on a game
    #             server group after it has been suspended. A game server group might be suspended by the
    #                 <a href="gamelift/latest/apireference/API_SuspendGameServerGroup.html">SuspendGameServerGroup</a> operation, or it might be suspended involuntarily
    #             due to a configuration problem. In the second case, you can manually resume activity on
    #             the group once the configuration problem has been resolved. Refer to the game server
    #             group status and status reason for more information on why group activity is
    #             suspended.</p>
    #          <p>To resume activity, specify a game server group ARN and the type of activity to be
    #             resumed. If successful, a <code>GameServerGroup</code> object is returned showing that
    #             the resumed activity is no longer listed in <code>SuspendedActions</code>. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::ResumeGameServerGroupInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    # @option params [Array<String>] :resume_actions
    #   <p>The activity to resume for this game server group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     resume_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]], # required
    #   }
    #   options = {}
    #   response = client.resume_game_server_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server_group: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       role_arn: "IamRoleArn",
    #       instance_definitions: [
    #         {
    #           instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #           weighted_capacity: "WeightedCapacity"
    #         }
    #       ],
    #       balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"],
    #       game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #       auto_scaling_group_arn: "AutoScalingGroupArn",
    #       status: "NEW" # One of: ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"],
    #       status_reason: "NonZeroAndMaxString",
    #       suspended_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]],
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::ResumeGameServerGroupOutput]
    def resume_game_server_group(params = {}, options = {})
      request = build_request(:resume_game_server_group, params)
      request.send_request(options)
    end

    # <p>Retrieves all active game sessions that match a set of search criteria and sorts them
    #             into a specified order. </p>
    #          <p>This operation is not designed to continually track game session status because that practice can cause you to exceed your API limit and generate errors. Instead, configure an Amazon Simple Notification Service (Amazon SNS) topic to receive notifications from a matchmaker or a game session placement queue.</p>
    #          <p>When searching for game sessions, you specify exactly where you want to search and
    #             provide a search filter expression, a sort expression, or both. A search request can
    #             search only one fleet, but it can search all of a fleet's locations. </p>
    #          <p>This operation can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To search all game sessions that are currently running on all locations in a
    #                     fleet, provide a fleet or alias ID. This approach returns game sessions in the
    #                     fleet's home Region and all remote locations that fit the search
    #                     criteria.</p>
    #             </li>
    #             <li>
    #                <p>To search all game sessions that are currently running on a specific fleet
    #                     location, provide a fleet or alias ID and a location name. For location, you can
    #                     specify a fleet's home Region or any remote location.</p>
    #             </li>
    #          </ul>
    #          <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #          <p>If successful, a <code>GameSession</code> object is returned for each game session
    #             that matches the request. Search finds game sessions that are in <code>ACTIVE</code>
    #             status only. To retrieve information on game sessions in other statuses, use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessions.html">DescribeGameSessions</a>.</p>
    #          <p>To set search and sort criteria, create a filter expression using the following game session attributes. For game session search examples, see the Examples section of this topic.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>gameSessionId</b> -- A unique identifier for the game session. You can use either a
    #                         <code>GameSessionId</code> or <code>GameSessionArn</code> value. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>gameSessionName</b> -- Name assigned to a game
    #                     session. Game session names do not need to be unique to a game session.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>gameSessionProperties</b> -- A set of key-value pairs that can store custom data in a game session.
    #   For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.
    #                     The filter expression must specify the <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameProperty">https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameProperty</a> -- a <code>Key</code> and a string <code>Value</code> to search for the game sessions.</p>
    #                <p>For example, to search for the above key-value pair, specify the following search filter: <code>gameSessionProperties.difficulty = "novice"</code>.
    #                     All game property values are searched as strings.</p>
    #                <p>
    #                     For examples of searching game sessions, see the ones below, and also see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-search">Search game sessions by game property</a>.
    #                     </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>maximumSessions</b> -- Maximum number of player
    #                     sessions allowed for a game session.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>creationTimeMillis</b> -- Value indicating when a
    #                     game session was created. It is expressed in Unix time as milliseconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>playerSessionCount</b> -- Number of players
    #                     currently connected to a game session. This value changes rapidly as players
    #                     join the session or drop out.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>hasAvailablePlayerSessions</b> -- Boolean value
    #                     indicating whether a game session has reached its maximum number of players. It
    #                     is highly recommended that all search requests include this filter attribute to
    #                     optimize search performance and return only sessions that players can join.
    #                 </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>Returned values for <code>playerSessionCount</code> and
    #                     <code>hasAvailablePlayerSessions</code> change quickly as players join sessions
    #                 and others drop out. Results should be considered a snapshot in time. Be sure to
    #                 refresh search results often, and handle sessions that fill up before a player can
    #                 join. </p>
    #          </note>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::SearchGameSessionsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to search for active game sessions. You can use either the fleet ID or ARN
    #               value. Each request must reference either a fleet ID or alias ID, but not both.</p>
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias associated with the fleet to search for active game sessions. You can use either
    #               the alias ID or ARN value. Each request must reference either a fleet ID or alias ID,
    #               but not both.</p>
    # @option params [String] :location
    #   <p>A fleet location to search for game sessions. You can specify a fleet's home Region or
    #               a remote location. Use the Amazon Web Services Region code format, such as <code>us-west-2</code>.
    #           </p>
    # @option params [String] :filter_expression
    #   <p>String containing the search criteria for the session search. If no filter expression
    #               is included, the request returns results for all game sessions in the fleet that are in
    #                   <code>ACTIVE</code> status.</p>
    #            <p>A filter expression can contain one or multiple conditions. Each condition consists of
    #               the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Operand</b> -- Name of a game session attribute.
    #                       Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>,
    #                           <code>gameSessionProperties</code>, <code>maximumSessions</code>,
    #                           <code>creationTimeMillis</code>, <code>playerSessionCount</code>,
    #                           <code>hasAvailablePlayerSessions</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Comparator</b> -- Valid comparators are:
    #                           <code>=</code>, <code><></code>, <code><</code>, <code>></code>,
    #                           <code><=</code>, <code>>=</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Value</b> -- Value to be searched for. Values may
    #                       be numbers, boolean values (true/false) or strings depending on the operand.
    #                       String values are case sensitive and must be enclosed in single quotes. Special
    #                       characters must be escaped. Boolean and string values can only be used with the
    #                       comparators <code>=</code> and <code><></code>. For example, the following
    #                       filter expression searches on <code>gameSessionName</code>:
    #                           "<code>FilterExpression": "gameSessionName = 'Matt\\'s Awesome Game
    #                           1'"</code>. </p>
    #               </li>
    #            </ul>
    #            <p>To chain multiple conditions in a single expression, use the logical keywords
    #                   <code>AND</code>, <code>OR</code>, and <code>NOT</code> and parentheses as needed.
    #               For example: <code>x AND y AND NOT z</code>, <code>NOT (x OR y)</code>.</p>
    #            <p>Session search evaluates conditions from left to right using the following precedence
    #               rules:</p>
    #            <ol>
    #               <li>
    #                  <p>
    #                     <code>=</code>, <code><></code>, <code><</code>, <code>></code>,
    #                           <code><=</code>, <code>>=</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Parentheses</p>
    #               </li>
    #               <li>
    #                  <p>NOT</p>
    #               </li>
    #               <li>
    #                  <p>AND</p>
    #               </li>
    #               <li>
    #                  <p>OR</p>
    #               </li>
    #            </ol>
    #            <p>For example, this filter expression retrieves game sessions hosting at least ten
    #               players that have an open player slot: <code>"maximumSessions>=10 AND
    #                   hasAvailablePlayerSessions=true"</code>. </p>
    # @option params [String] :sort_expression
    #   <p>Instructions on how to sort the search results. If no sort expression is included, the
    #               request returns results in random order. A sort expression consists of the following
    #               elements:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Operand</b> -- Name of a game session attribute.
    #                       Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>,
    #                           <code>gameSessionProperties</code>, <code>maximumSessions</code>,
    #                           <code>creationTimeMillis</code>, <code>playerSessionCount</code>,
    #                           <code>hasAvailablePlayerSessions</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Order</b> -- Valid sort orders are <code>ASC</code>
    #                       (ascending) and <code>DESC</code> (descending).</p>
    #               </li>
    #            </ul>
    #            <p>For example, this sort expression returns the oldest active sessions first:
    #                   <code>"SortExpression": "creationTimeMillis ASC"</code>. Results with a null value
    #               for the sort operand are returned at the end of the list.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set or
    #               is set higher than 20. </p>
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     filter_expression: "NonZeroAndMaxString",
    #     sort_expression: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.search_game_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_sessions: [
    #       {
    #         game_session_id: "NonZeroAndMaxString",
    #         name: "NonZeroAndMaxString",
    #         fleet_id: "FleetId",
    #         fleet_arn: "FleetArn",
    #         creation_time: Time.now,
    #         termination_time: Time.now,
    #         current_player_session_count: 1,
    #         maximum_player_session_count: 1,
    #         status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"],
    #         status_reason: "INTERRUPTED" # One of: ["INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"],
    #         game_properties: [
    #           {
    #             key: "GamePropertyKey", # required
    #             value: "GamePropertyValue", # required
    #           }
    #         ],
    #         ip_address: "IpAddress",
    #         dns_name: "DnsName",
    #         port: 1,
    #         player_session_creation_policy: "ACCEPT_ALL" # One of: ["ACCEPT_ALL", "DENY_ALL"],
    #         creator_id: "NonZeroAndMaxString",
    #         game_session_data: "LargeGameSessionData",
    #         matchmaker_data: "MatchmakerData",
    #         location: "LocationStringModel"
    #       }
    #     ],
    #     next_token: "NonZeroAndMaxString"
    #   }
    # @return [Types::SearchGameSessionsOutput]
    def search_game_sessions(params = {}, options = {})
      request = build_request(:search_game_sessions, params)
      request.send_request(options)
    end

    # <p>Resumes certain types of activity on fleet instances that were suspended with <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html">StopFleetActions</a>. For multi-location fleets, fleet actions are managed
    #             separately for each location. Currently, this operation is used to restart a fleet's
    #             auto-scaling activity.</p>
    #          <p>This operation can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To restart actions on instances in the fleet's home Region, provide a fleet ID
    #                     and the type of actions to resume. </p>
    #             </li>
    #             <li>
    #                <p>To restart actions on instances in one of the fleet's remote locations,
    #                     provide a fleet ID, a location name, and the type of actions to resume. </p>
    #             </li>
    #          </ul>
    #          <p>If successful, Amazon GameLift Servers once again initiates scaling events as triggered by the fleet's
    #             scaling policies. If actions on the fleet location were never stopped, this operation
    #             will have no effect.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    # @param [Hash, Types::StartFleetActionsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to restart actions on. You can use either the fleet ID or ARN value.</p>
    # @option params [Array<String>] :actions
    #   <p>List of actions to restart on the fleet.</p>
    # @option params [String] :location
    #   <p>The fleet location to restart fleet actions for. Specify a location in the form of an
    #               Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     actions: ["AUTO_SCALING" # One of: ["AUTO_SCALING"]], # required
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.start_fleet_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId",
    #     fleet_arn: "FleetArn"
    #   }
    # @return [Types::StartFleetActionsOutput]
    def start_fleet_actions(params = {}, options = {})
      request = build_request(:start_fleet_actions, params)
      request.send_request(options)
    end

    # <p>Makes a request to start a new game session using a game session queue. When
    #             processing a placement request, Amazon GameLift Servers looks for the best possible available resource to
    #             host the game session, based on how the queue is configured to prioritize factors such
    #             as resource cost, latency, and location. After selecting an available resource, Amazon GameLift Servers
    #             prompts the resource to start a game session. A placement request can include a list of
    #             players to create a set of player sessions. The request can also include information to
    #             pass to the new game session, such as to specify a game map or other options.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <p>Use this operation to make the following types of requests. </p>
    #          <ul>
    #             <li>
    #                <p>Request a placement using the queue's default prioritization process (see the
    #                     default prioritization described in <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_PriorityConfiguration.html">PriorityConfiguration</a>). Include these required parameters:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>GameSessionQueueName</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>MaximumPlayerSessionCount</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>PlacementID</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Request a placement and prioritize based on latency. Include these
    #                     parameters:</p>
    #                <ul>
    #                   <li>
    #                      <p>Required parameters <code>GameSessionQueueName</code>,
    #                                 <code>MaximumPlayerSessionCount</code>,
    #                             <code>PlacementID</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>PlayerLatencies</code>. Include a set of latency values for
    #                             destinations in the queue. When a request includes latency data, Amazon GameLift Servers
    #                             automatically reorder the queue's locations priority list based on
    #                             lowest available latency values. If a request includes latency data for
    #                             multiple players, Amazon GameLift Servers calculates each location's average latency for
    #                             all players and reorders to find the lowest latency across all players.
    #                                 </p>
    #                   </li>
    #                   <li>
    #                      <p>Don't include <code>PriorityConfigurationOverride</code>.</p>
    #                   </li>
    #                </ul>
    #                <ul>
    #                   <li>
    #                      <p>Prioritize based on a custom list of locations. If you're using a
    #                             queue that's configured to prioritize location first (see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_PriorityConfiguration.html">PriorityConfiguration</a> for game session queues), you can
    #                             optionally use the <i>PriorityConfigurationOverride</i>
    #                             parameter to substitute a different location priority list for this
    #                             placement request. Amazon GameLift Servers searches each location on the priority
    #                             override list to find an available hosting resource for the new game
    #                             session. Specify a fallback strategy to use in the event that Amazon GameLift Servers
    #                             fails to place the game session in any of the locations on the override
    #                             list. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Request a placement and prioritized based on a custom list of locations.
    #                 </p>
    #             </li>
    #             <li>
    #                <p>You can request new player sessions for a group of players. Include the
    #                         <i>DesiredPlayerSessions</i> parameter and include at minimum
    #                     a unique player ID for each. You can also include player-specific data to pass
    #                     to the new game session. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Result</b>
    #          </p>
    #          <p>If successful, this operation generates a new game session placement request and adds
    #             it to the game session queue for processing. You can track the status of individual
    #             placement requests by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionPlacement.html">DescribeGameSessionPlacement</a> or by monitoring queue notifications. When the
    #             request status is <code>FULFILLED</code>, a new game session has started and the
    #             placement request is updated with connection information for the game session (IP
    #             address and port). If the request included player session data, Amazon GameLift Servers creates a player
    #             session for each player ID in the request.</p>
    #          <p>The request results in a <code>InvalidRequestException</code> in the following
    #             situations:</p>
    #          <ul>
    #             <li>
    #                <p>If the request includes both <i>PlayerLatencies</i> and
    #                         <i>PriorityConfigurationOverride</i> parameters.</p>
    #             </li>
    #             <li>
    #                <p>If the request includes the <i>PriorityConfigurationOverride</i>
    #                     parameter and specifies a queue that doesn't prioritize locations.</p>
    #             </li>
    #          </ul>
    #          <p>Amazon GameLift Servers continues to retry each placement request until it reaches the queue's timeout
    #             setting. If a request times out, you can resubmit the request to the same queue or try a
    #             different queue. </p>
    # @param [Hash, Types::StartGameSessionPlacementInput] params
    # @option params [String] :placement_id
    #   <p>A unique identifier to assign to the new game session placement. This value is
    #               developer-defined. The value must be unique across all Regions and cannot be
    #               reused.</p>
    # @option params [String] :game_session_queue_name
    #   <p>Name of the queue to use to place the new game session. You can use either the queue
    #               name or ARN value. </p>
    # @option params [Array<Types::GameProperty>] :game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.</p>
    # @option params [Integer] :maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    # @option params [String] :game_session_name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    # @option params [Array<Types::PlayerLatency>] :player_latencies
    #   <p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to Amazon Web Services Regions. This information is used to try to place the new game session where it
    #               can offer the best possible gameplay experience for the players. 
    #               </p>
    # @option params [Array<Types::DesiredPlayerSession>] :desired_player_sessions
    #   <p>Set of information on each player to create a player session for.</p>
    # @option params [String] :game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>.</p>
    # @option params [Types::PriorityConfigurationOverride] :priority_configuration_override
    #   <p>A prioritized list of locations to use for the game session placement and instructions
    #               on how to use it. This list overrides a queue's prioritized location list for this game
    #               session placement request only. You can include Amazon Web Services Regions, local zones, and custom
    #               locations (for Anywhere fleets). You can choose to limit placements to locations on the
    #               override list only, or you can prioritize locations on the override list first and then
    #               fall back to the queue's other locations if needed. Choose a fallback strategy to use in
    #               the event that Amazon GameLift Servers fails to place a game session in any of the locations on the
    #               priority override list. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     placement_id: "IdStringModel", # required
    #     game_session_queue_name: "GameSessionQueueNameOrArn", # required
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       }
    #     ],
    #     maximum_player_session_count: 1, # required
    #     game_session_name: "NonZeroAndMaxString",
    #     player_latencies: [
    #       {
    #         player_id: "PlayerId",
    #         region_identifier: "NonZeroAndMaxString",
    #         latency_in_milliseconds: 1.0
    #       }
    #     ],
    #     desired_player_sessions: [
    #       {
    #         player_id: "PlayerId",
    #         player_data: "PlayerData"
    #       }
    #     ],
    #     game_session_data: "LargeGameSessionData",
    #     priority_configuration_override: {
    #       placement_fallback_strategy: "DEFAULT_AFTER_SINGLE_PASS" # One of: ["DEFAULT_AFTER_SINGLE_PASS", "NONE"],
    #       location_order: ["LocationStringModel"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.start_game_session_placement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session_placement: {
    #       placement_id: "IdStringModel",
    #       game_session_queue_name: "GameSessionQueueName",
    #       status: "PENDING" # One of: ["PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"],
    #       game_properties: [
    #         {
    #           key: "GamePropertyKey", # required
    #           value: "GamePropertyValue", # required
    #         }
    #       ],
    #       maximum_player_session_count: 1,
    #       game_session_name: "NonZeroAndMaxString",
    #       game_session_id: "NonZeroAndMaxString",
    #       game_session_arn: "NonZeroAndMaxString",
    #       game_session_region: "NonZeroAndMaxString",
    #       player_latencies: [
    #         {
    #           player_id: "PlayerId",
    #           region_identifier: "NonZeroAndMaxString",
    #           latency_in_milliseconds: 1.0
    #         }
    #       ],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       port: 1,
    #       placed_player_sessions: [
    #         {
    #           player_id: "PlayerId",
    #           player_session_id: "PlayerSessionId"
    #         }
    #       ],
    #       game_session_data: "LargeGameSessionData",
    #       matchmaker_data: "MatchmakerData",
    #       priority_configuration_override: {
    #         placement_fallback_strategy: "DEFAULT_AFTER_SINGLE_PASS" # One of: ["DEFAULT_AFTER_SINGLE_PASS", "NONE"],
    #         location_order: ["LocationStringModel"], # required
    #       }
    #     }
    #   }
    # @return [Types::StartGameSessionPlacementOutput]
    def start_game_session_placement(params = {}, options = {})
      request = build_request(:start_game_session_placement, params)
      request.send_request(options)
    end

    # <p>Finds new players to fill open slots in currently running game sessions. The backfill
    #             match process is essentially identical to the process of forming new matches. Backfill
    #             requests use the same matchmaker that was used to make the original match, and they
    #             provide matchmaking data for all players currently in the game session. FlexMatch uses
    #             this information to select new players so that backfilled match continues to meet the
    #             original match requirements. </p>
    #          <p>When using FlexMatch with Amazon GameLift Servers managed hosting, you can request a backfill match from
    #             a client service by calling this operation with a <code>GameSessions</code> ID. You also
    #             have the option of making backfill requests directly from your game server. In response
    #             to a request, FlexMatch creates player sessions for the new players, updates the
    #                 <code>GameSession</code> resource, and sends updated matchmaking data to the game
    #             server. You can request a backfill match at any point after a game session is started.
    #             Each game session can have only one active backfill request at a time; a subsequent
    #             request automatically replaces the earlier request.</p>
    #          <p>When using FlexMatch as a standalone component, request a backfill match by calling this
    #             operation without a game session identifier. As with newly formed matches, matchmaking
    #             results are returned in a matchmaking event so that your game can update the game
    #             session that is being backfilled.</p>
    #          <p>To request a backfill match, specify a unique ticket ID, the original matchmaking
    #             configuration, and matchmaking data for all current players in the game session being
    #             backfilled. Optionally, specify the <code>GameSession</code> ARN. If successful, a match
    #             backfill ticket is created and returned with status set to QUEUED. Track the status of
    #             backfill tickets using the same method for tracking tickets for new matches.</p>
    #          <p>Only game sessions created by FlexMatch are supported for match backfill.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html">
    #                 Backfill existing games with FlexMatch</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html">
    #                 Matchmaking events</a> (reference)</p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html">
    #                 How Amazon GameLift Servers FlexMatch works</a>
    #          </p>
    # @param [Hash, Types::StartMatchBackfillInput] params
    # @option params [String] :ticket_id
    #   <p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift Servers will generate one in the form of a
    #               UUID. Use this identifier to track the match backfill ticket status and retrieve match
    #               results.</p>
    # @option params [String] :configuration_name
    #   <p>Name of the matchmaker to use for this request. You can use either the configuration
    #               name or ARN value. The ARN of the matchmaker that was used with the original game
    #               session is listed in the <code>GameSession</code> object, <code>MatchmakerData</code>
    #               property.</p>
    # @option params [String] :game_session_arn
    #   <p>A unique identifier for the game session. Use the game session ID. When using FlexMatch as a standalone matchmaking
    #               solution, this parameter is not needed. </p>
    # @option params [Array<Types::Player>] :players
    #   <p>Match information on all players that are currently assigned to the game session. This
    #               information is used by the matchmaker to find new players and add them to the existing
    #               game.</p>
    #            <p>You can include up to 199 <code>Players</code> in a <code>StartMatchBackfill</code>
    #               request.</p>
    #            <ul>
    #               <li>
    #                  <p>PlayerID, PlayerAttributes, Team -- This information is maintained in the
    #                           <code>GameSession</code> object, <code>MatchmakerData</code> property, for
    #                       all players who are currently assigned to the game session. The matchmaker data
    #                       is in JSON syntax, formatted as a string. For more details, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data">
    #                           Match Data</a>. </p>
    #                  <p>The backfill request must specify the team membership for every player. Do not
    #                       specify team if you are not using backfill.</p>
    #               </li>
    #               <li>
    #                  <p>LatencyInMs -- If the matchmaker uses player latency, include a latency value,
    #                       in milliseconds, for the Region that the game session is currently in. Do not
    #                       include latency values for any other Region.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     ticket_id: "MatchmakingIdStringModel",
    #     configuration_name: "MatchmakingConfigurationName", # required
    #     game_session_arn: "ArnStringModel",
    #     players: [ # required
    #       {
    #         player_id: "PlayerId",
    #         player_attributes: {
    #           "NonZeroAndMaxString" => {
    #             s: "PlayerAttributeString",
    #             n: 1.0,
    #             sl: ["PlayerAttributeString"],
    #             sdm: {
    #               "PlayerAttributeString" => 1.0
    #             }
    #           }
    #         },
    #         team: "NonZeroAndMaxString",
    #         latency_in_ms: {
    #           "NonEmptyString" => 1
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_match_backfill(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     matchmaking_ticket: {
    #       ticket_id: "MatchmakingIdStringModel",
    #       configuration_name: "MatchmakingIdStringModel",
    #       configuration_arn: "MatchmakingConfigurationArn",
    #       status: "CANCELLED" # One of: ["CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"],
    #       status_reason: "StringModel",
    #       status_message: "StringModel",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       players: [
    #         {
    #           player_id: "PlayerId",
    #           player_attributes: {
    #             "NonZeroAndMaxString" => {
    #               s: "PlayerAttributeString",
    #               n: 1.0,
    #               sl: ["PlayerAttributeString"],
    #               sdm: {
    #                 "PlayerAttributeString" => 1.0
    #               }
    #             }
    #           },
    #           team: "NonZeroAndMaxString",
    #           latency_in_ms: {
    #             "NonEmptyString" => 1
    #           }
    #         }
    #       ],
    #       game_session_connection_info: {
    #         game_session_arn: "ArnStringModel",
    #         ip_address: "IpAddress",
    #         dns_name: "DnsName",
    #         port: 1,
    #         matched_player_sessions: [
    #           {
    #             player_id: "PlayerId",
    #             player_session_id: "PlayerSessionId"
    #           }
    #         ]
    #       },
    #       estimated_wait_time: 1
    #     }
    #   }
    # @return [Types::StartMatchBackfillOutput]
    def start_match_backfill(params = {}, options = {})
      request = build_request(:start_match_backfill, params)
      request.send_request(options)
    end

    # <p>Uses FlexMatch to create a game match for a group of players based on custom matchmaking
    #             rules. With games that use Amazon GameLift Servers managed hosting, this operation also triggers Amazon GameLift Servers
    #             to find hosting resources and start a new game session for the new match. Each
    #             matchmaking request includes information on one or more players and specifies the
    #             FlexMatch matchmaker to use. When a request is for multiple players, FlexMatch attempts to
    #             build a match that includes all players in the request, placing them in the same team
    #             and finding additional players as needed to fill the match. </p>
    #          <p>To start matchmaking, provide a unique ticket ID, specify a matchmaking configuration,
    #             and include the players to be matched. You must also include any player attributes that
    #             are required by the matchmaking configuration's rule set. If successful, a matchmaking
    #             ticket is returned with status set to <code>QUEUED</code>. </p>
    #          <p>Track matchmaking events to respond as needed and acquire game session connection
    #             information for successfully completed matches. Ticket status updates are tracked using
    #             event notification through Amazon Simple Notification Service, which is defined in the matchmaking
    #             configuration.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html">
    #                 Add FlexMatch to a game client</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html"> Set Up FlexMatch event
    #                 notification</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html">
    #                 How Amazon GameLift Servers FlexMatch works</a>
    #          </p>
    # @param [Hash, Types::StartMatchmakingInput] params
    # @option params [String] :ticket_id
    #   <p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift Servers will generate one in the form of a
    #               UUID. Use this identifier to track the matchmaking ticket status and retrieve match
    #               results.</p>
    # @option params [String] :configuration_name
    #   <p>Name of the matchmaking configuration to use for this request. Matchmaking
    #               configurations must exist in the same Region as this request. You can use either the
    #               configuration name or ARN value.</p>
    # @option params [Array<Types::Player>] :players
    #   <p>Information on each player to be matched. This information must include a player ID,
    #               and may contain player attributes and latency data to be used in the matchmaking
    #               process. After a successful match, <code>Player</code> objects contain the name of the
    #               team the player is assigned to.</p>
    #            <p>You can include up to 10 <code>Players</code> in a <code>StartMatchmaking</code>
    #               request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ticket_id: "MatchmakingIdStringModel",
    #     configuration_name: "MatchmakingConfigurationName", # required
    #     players: [ # required
    #       {
    #         player_id: "PlayerId",
    #         player_attributes: {
    #           "NonZeroAndMaxString" => {
    #             s: "PlayerAttributeString",
    #             n: 1.0,
    #             sl: ["PlayerAttributeString"],
    #             sdm: {
    #               "PlayerAttributeString" => 1.0
    #             }
    #           }
    #         },
    #         team: "NonZeroAndMaxString",
    #         latency_in_ms: {
    #           "NonEmptyString" => 1
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_matchmaking(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     matchmaking_ticket: {
    #       ticket_id: "MatchmakingIdStringModel",
    #       configuration_name: "MatchmakingIdStringModel",
    #       configuration_arn: "MatchmakingConfigurationArn",
    #       status: "CANCELLED" # One of: ["CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"],
    #       status_reason: "StringModel",
    #       status_message: "StringModel",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       players: [
    #         {
    #           player_id: "PlayerId",
    #           player_attributes: {
    #             "NonZeroAndMaxString" => {
    #               s: "PlayerAttributeString",
    #               n: 1.0,
    #               sl: ["PlayerAttributeString"],
    #               sdm: {
    #                 "PlayerAttributeString" => 1.0
    #               }
    #             }
    #           },
    #           team: "NonZeroAndMaxString",
    #           latency_in_ms: {
    #             "NonEmptyString" => 1
    #           }
    #         }
    #       ],
    #       game_session_connection_info: {
    #         game_session_arn: "ArnStringModel",
    #         ip_address: "IpAddress",
    #         dns_name: "DnsName",
    #         port: 1,
    #         matched_player_sessions: [
    #           {
    #             player_id: "PlayerId",
    #             player_session_id: "PlayerSessionId"
    #           }
    #         ]
    #       },
    #       estimated_wait_time: 1
    #     }
    #   }
    # @return [Types::StartMatchmakingOutput]
    def start_matchmaking(params = {}, options = {})
      request = build_request(:start_matchmaking, params)
      request.send_request(options)
    end

    # <p>Suspends certain types of activity in a fleet location. Currently, this operation is
    #             used to stop auto-scaling activity. For multi-location fleets, fleet actions are managed
    #             separately for each location. </p>
    #          <p>Stopping fleet actions has several potential purposes. It allows you to temporarily
    #             stop auto-scaling activity but retain your scaling policies for use in the future. For
    #             multi-location fleets, you can set up fleet-wide auto-scaling, and then opt out of it
    #             for certain locations. </p>
    #          <p>This operation can be used in the following ways: </p>
    #          <ul>
    #             <li>
    #                <p>To stop actions on instances in the fleet's home Region, provide a fleet ID
    #                     and the type of actions to suspend. </p>
    #             </li>
    #             <li>
    #                <p>To stop actions on instances in one of the fleet's remote locations, provide a
    #                     fleet ID, a location name, and the type of actions to suspend. </p>
    #             </li>
    #          </ul>
    #          <p>If successful, Amazon GameLift Servers no longer initiates scaling events except in response to manual
    #             changes using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html">UpdateFleetCapacity</a>. To restart fleet actions again, call 
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartFleetActions.html">StartFleetActions</a>.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #             Fleets</a>
    #          </p>
    # @param [Hash, Types::StopFleetActionsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to stop actions on. You can use either the fleet ID or ARN value.</p>
    # @option params [Array<String>] :actions
    #   <p>List of actions to suspend on the fleet. </p>
    # @option params [String] :location
    #   <p>The fleet location to stop fleet actions for. Specify a location in the form of an
    #               Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     actions: ["AUTO_SCALING" # One of: ["AUTO_SCALING"]], # required
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.stop_fleet_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId",
    #     fleet_arn: "FleetArn"
    #   }
    # @return [Types::StopFleetActionsOutput]
    def stop_fleet_actions(params = {}, options = {})
      request = build_request(:stop_fleet_actions, params)
      request.send_request(options)
    end

    # <p>Cancels a game session placement that's in <code>PENDING</code> status. To stop a
    #             placement, provide the placement ID value. </p>
    #          <p>Results</p>
    #          <p>If successful, this operation removes the placement request from the queue and moves
    #             the <code>GameSessionPlacement</code> to <code>CANCELLED</code> status.</p>
    #          <p>This operation results in an <code>InvalidRequestExecption</code> (400) error if a
    #             game session has already been created for this placement. You can clean up an unneeded
    #             game session by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_TerminateGameSession">TerminateGameSession</a>.</p>
    # @param [Hash, Types::StopGameSessionPlacementInput] params
    # @option params [String] :placement_id
    #   <p>A unique identifier for a game session placement to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     placement_id: "IdStringModel", # required
    #   }
    #   options = {}
    #   response = client.stop_game_session_placement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session_placement: {
    #       placement_id: "IdStringModel",
    #       game_session_queue_name: "GameSessionQueueName",
    #       status: "PENDING" # One of: ["PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"],
    #       game_properties: [
    #         {
    #           key: "GamePropertyKey", # required
    #           value: "GamePropertyValue", # required
    #         }
    #       ],
    #       maximum_player_session_count: 1,
    #       game_session_name: "NonZeroAndMaxString",
    #       game_session_id: "NonZeroAndMaxString",
    #       game_session_arn: "NonZeroAndMaxString",
    #       game_session_region: "NonZeroAndMaxString",
    #       player_latencies: [
    #         {
    #           player_id: "PlayerId",
    #           region_identifier: "NonZeroAndMaxString",
    #           latency_in_milliseconds: 1.0
    #         }
    #       ],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       port: 1,
    #       placed_player_sessions: [
    #         {
    #           player_id: "PlayerId",
    #           player_session_id: "PlayerSessionId"
    #         }
    #       ],
    #       game_session_data: "LargeGameSessionData",
    #       matchmaker_data: "MatchmakerData",
    #       priority_configuration_override: {
    #         placement_fallback_strategy: "DEFAULT_AFTER_SINGLE_PASS" # One of: ["DEFAULT_AFTER_SINGLE_PASS", "NONE"],
    #         location_order: ["LocationStringModel"], # required
    #       }
    #     }
    #   }
    # @return [Types::StopGameSessionPlacementOutput]
    def stop_game_session_placement(params = {}, options = {})
      request = build_request(:stop_game_session_placement, params)
      request.send_request(options)
    end

    # <p>Cancels a matchmaking ticket or match backfill ticket that is currently being
    #             processed. To stop the matchmaking operation, specify the ticket ID. If successful, work
    #             on the ticket is stopped, and the ticket status is changed to
    #             <code>CANCELLED</code>.</p>
    #          <p>This call is also used to turn off automatic backfill for an individual game session.
    #             This is for game sessions that are created with a matchmaking configuration that has
    #             automatic backfill enabled. The ticket ID is included in the <code>MatchmakerData</code>
    #             of an updated game session object, which is provided to the game server.</p>
    #          <note>
    #             <p>If the operation is successful, the service sends back an empty JSON struct with
    #                 the HTTP 200 response (not an empty HTTP body).</p>
    #          </note>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html">
    #                 Add FlexMatch to a game client</a>
    #          </p>
    # @param [Hash, Types::StopMatchmakingInput] params
    # @option params [String] :ticket_id
    #   <p>A unique identifier for a matchmaking ticket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ticket_id: "MatchmakingIdStringModel", # required
    #   }
    #   options = {}
    #   response = client.stop_matchmaking(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopMatchmakingOutput]
    def stop_matchmaking(params = {}, options = {})
      request = build_request(:stop_matchmaking, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Temporarily stops activity on
    #             a game server group without terminating instances or the game server group. You can
    #             restart activity by calling <a href="gamelift/latest/apireference/API_ResumeGameServerGroup.html">ResumeGameServerGroup</a>. You can suspend the following activity:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Instance type replacement</b> - This activity
    #                     evaluates the current game hosting viability of all Spot instance types that are
    #                     defined for the game server group. It updates the Auto Scaling group to remove
    #                     nonviable Spot Instance types, which have a higher chance of game server
    #                     interruptions. It then balances capacity across the remaining viable Spot
    #                     Instance types. When this activity is suspended, the Auto Scaling group
    #                     continues with its current balance, regardless of viability. Instance
    #                     protection, utilization metrics, and capacity scaling activities continue to be
    #                     active. </p>
    #             </li>
    #          </ul>
    #          <p>To suspend activity, specify a game server group ARN and the type of activity to be
    #             suspended. If successful, a <code>GameServerGroup</code> object is returned showing that
    #             the activity is listed in <code>SuspendedActions</code>.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::SuspendGameServerGroupInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    # @option params [Array<String>] :suspend_actions
    #   <p>The activity to suspend for this game server group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     suspend_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]], # required
    #   }
    #   options = {}
    #   response = client.suspend_game_server_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server_group: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       role_arn: "IamRoleArn",
    #       instance_definitions: [
    #         {
    #           instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #           weighted_capacity: "WeightedCapacity"
    #         }
    #       ],
    #       balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"],
    #       game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #       auto_scaling_group_arn: "AutoScalingGroupArn",
    #       status: "NEW" # One of: ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"],
    #       status_reason: "NonZeroAndMaxString",
    #       suspended_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]],
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::SuspendGameServerGroupOutput]
    def suspend_game_server_group(params = {}, options = {})
      request = build_request(:suspend_game_server_group, params)
      request.send_request(options)
    end

    # <p>Assigns a tag to an Amazon GameLift Servers resource. You can use tags to organize resources, create
    #             IAM permissions policies to manage access to groups of resources, customize Amazon Web Services cost
    #             breakdowns, and more. This operation handles the permissions necessary to manage tags
    #             for Amazon GameLift Servers resources that support tagging.</p>
    #          <p>To add a tag to a resource, specify the unique ARN value for the resource and provide
    #             a tag list containing one or more tags. The operation succeeds even if the list includes
    #             tags that are already assigned to the resource. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #                 Resources</a> in the <i>Amazon Web Services General Reference</i>
    #          </p>
    #          <p>
    #             <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
    #                 Amazon Web Services Tagging Strategies</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that uniquely identifies
    #               the Amazon GameLift Servers resource that you want to assign tags to. Amazon GameLift Servers includes resource ARNs in
    #               the data object for the resource. You can retrieve the ARN by calling a
    #                   <code>List</code> or <code>Describe</code> operation for the resource type. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of one or more tags to assign to the specified Amazon GameLift Servers resource. Tags are
    #               developer-defined and structured as key-value pairs. The maximum tag limit may be lower
    #               than stated. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">
    #                   Tagging Amazon Web Services Resources</a> for tagging limits.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
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

    # <p>Ends a game session that's currently in progress. Use this action to terminate any
    #             game session that isn't in <code>ERROR</code> status. Terminating a game session is the
    #             most efficient way to free up a server process when it's hosting a game session that's
    #             in a bad state or not ending properly. You can use this action to terminate a game
    #             session that's being hosted on any type of Amazon GameLift Servers fleet compute, including computes for
    #             managed EC2, managed container, and Anywhere fleets. The game server must be integrated
    #             with Amazon GameLift Servers server SDK 5.x or greater.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <p>Request termination for a single game session. Provide the game session ID and the
    #             termination mode. There are two potential methods for terminating a game session:</p>
    #          <ul>
    #             <li>
    #                <p>Initiate a graceful termination using the normal game session shutdown
    #                     sequence. With this mode, the Amazon GameLift Servers service prompts the server process that's
    #                     hosting the game session by calling the server SDK callback method
    #                         <code>OnProcessTerminate()</code>. The callback implementation is part of
    #                     the custom game server code. It might involve a variety of actions to gracefully
    #                     end a game session, such as notifying players, before stopping the server
    #                     process.</p>
    #             </li>
    #             <li>
    #                <p>Force an immediate game session termination. With this mode, the Amazon GameLift Servers
    #                     service takes action to stop the server process, which ends the game session
    #                     without the normal game session shutdown sequence. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, game session termination is initiated. During this activity, the game
    #             session status is changed to <code>TERMINATING</code>. When completed, the server
    #             process that was hosting the game session has been stopped and replaced with a new
    #             server process that's ready to host a new game session. The old game session's status is
    #             changed to <code>TERMINATED</code> with a status reason that indicates the termination
    #             method used.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html">Add Amazon GameLift Servers to your game server</a>
    #          </p>
    #          <p>Amazon GameLift Servers server SDK 5 reference guide for <code>OnProcessTerminate()</code>
    #             (<a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-cpp-initsdk.html">C++</a>)
    #             (<a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-csharp-initsdk.html">C#</a>) 
    #             (<a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-unreal-initsdk.html">Unreal</a>) 
    #             (<a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk-go-initsdk.html">Go</a>)
    #         </p>
    # @param [Hash, Types::TerminateGameSessionInput] params
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to be terminated. A game session ARN has the following format: 
    #       <code>arn:aws:gamelift:<location>::gamesession/<fleet ID>/<custom ID string or idempotency token></code>.</p>
    # @option params [String] :termination_mode
    #   <p>The method to use to terminate the game session. Available methods include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TRIGGER_ON_PROCESS_TERMINATE</code> – Prompts the Amazon GameLift Servers service to
    #                       send an <code>OnProcessTerminate()</code> callback to the server process and
    #                       initiate the normal game session shutdown sequence. The
    #                           <code>OnProcessTerminate</code> method, which is implemented in the game
    #                       server code, must include a call to the server SDK action
    #                           <code>ProcessEnding()</code>, which is how the server process signals to
    #                       Amazon GameLift Servers that a game session is ending. If the server process doesn't call
    #                           <code>ProcessEnding()</code>, the game session termination won't conclude
    #                       successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_TERMINATE</code> – Prompts the Amazon GameLift Servers service to stop the server
    #                       process immediately. Amazon GameLift Servers takes action (depending on the type of fleet) to
    #                       shut down the server process without the normal game session shutdown sequence. </p>
    #                  <note>
    #                     <p>This method is not available for game sessions that are running on
    #                           Anywhere fleets unless the fleet is deployed with the Amazon GameLift Servers Agent. In this
    #                           scenario, a force terminate request results in an invalid or bad request
    #                           exception.</p>
    #                  </note>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_session_id: "ArnStringModel", # required
    #     termination_mode: "TRIGGER_ON_PROCESS_TERMINATE" # One of: ["TRIGGER_ON_PROCESS_TERMINATE", "FORCE_TERMINATE"], # required
    #   }
    #   options = {}
    #   response = client.terminate_game_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session: {
    #       game_session_id: "NonZeroAndMaxString",
    #       name: "NonZeroAndMaxString",
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       creation_time: Time.now,
    #       termination_time: Time.now,
    #       current_player_session_count: 1,
    #       maximum_player_session_count: 1,
    #       status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"],
    #       status_reason: "INTERRUPTED" # One of: ["INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"],
    #       game_properties: [
    #         {
    #           key: "GamePropertyKey", # required
    #           value: "GamePropertyValue", # required
    #         }
    #       ],
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       port: 1,
    #       player_session_creation_policy: "ACCEPT_ALL" # One of: ["ACCEPT_ALL", "DENY_ALL"],
    #       creator_id: "NonZeroAndMaxString",
    #       game_session_data: "LargeGameSessionData",
    #       matchmaker_data: "MatchmakerData",
    #       location: "LocationStringModel"
    #     }
    #   }
    # @return [Types::TerminateGameSessionOutput]
    def terminate_game_session(params = {}, options = {})
      request = build_request(:terminate_game_session, params)
      request.send_request(options)
    end

    # <p>Removes a tag assigned to a Amazon GameLift Servers resource. You can use resource tags to organize
    #             Amazon Web Services resources for a range of purposes. This operation handles the permissions
    #             necessary to manage tags for Amazon GameLift Servers resources that support tagging.</p>
    #          <p>To remove a tag from a resource, specify the unique ARN value for the resource and
    #             provide a string list containing one or more tags to remove. This operation succeeds
    #             even if the list includes tags that aren't assigned to the resource.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services
    #                 Resources</a> in the <i>Amazon Web Services General Reference</i>
    #          </p>
    #          <p>
    #             <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
    #                 Amazon Web Services Tagging Strategies</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that uniquely identifies
    #               the Amazon GameLift Servers resource that you want to remove tags from. Amazon GameLift Servers includes resource ARNs in
    #               the data object for the resource. You can retrieve the ARN by calling a
    #                   <code>List</code> or <code>Describe</code> operation for the resource type. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of one or more tag keys to remove from the specified Amazon GameLift Servers resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Updates properties for an alias. Specify the unique identifier of the alias to be
    #             updated and the new property values. When reassigning an alias to a new fleet, provide
    #             an updated routing strategy. If successful, the updated alias record is returned.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::UpdateAliasInput] params
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias that you want to update. You can use either the
    #               alias ID or ARN value.</p>
    # @option params [String] :name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    # @option params [String] :description
    #   <p>A human-readable description of the alias.</p>
    # @option params [Types::RoutingStrategy] :routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the
    #               alias.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias_id: "AliasIdOrArn", # required
    #     name: "NonBlankAndLengthConstraintString",
    #     description: "NonZeroAndMaxString",
    #     routing_strategy: {
    #       type: "SIMPLE" # One of: ["SIMPLE", "TERMINAL"],
    #       fleet_id: "FleetId",
    #       message: "FreeText"
    #     }
    #   }
    #   options = {}
    #   response = client.update_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alias: {
    #       alias_id: "AliasId",
    #       name: "NonBlankAndLengthConstraintString",
    #       alias_arn: "AliasArn",
    #       description: "FreeText",
    #       routing_strategy: {
    #         type: "SIMPLE" # One of: ["SIMPLE", "TERMINAL"],
    #         fleet_id: "FleetId",
    #         message: "FreeText"
    #       },
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateAliasOutput]
    def update_alias(params = {}, options = {})
      request = build_request(:update_alias, params)
      request.send_request(options)
    end

    # <p>Updates metadata in a build resource, including the build name and version. To update
    #             the metadata, specify the build ID to update and provide the new values. If successful,
    #             a build object containing the updated metadata is returned.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html"> Upload a Custom
    #                 Server Build</a>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::UpdateBuildInput] params
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to update. You can use either the build ID or ARN value. </p>
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. </p>
    # @option params [String] :version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     build_id: "BuildIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString"
    #   }
    #   options = {}
    #   response = client.update_build(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build: {
    #       build_id: "BuildId",
    #       build_arn: "BuildArn",
    #       name: "FreeText",
    #       version: "FreeText",
    #       status: "INITIALIZED" # One of: ["INITIALIZED", "READY", "FAILED"],
    #       size_on_disk: 1,
    #       operating_system: "WINDOWS_2012" # One of: ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"],
    #       creation_time: Time.now,
    #       server_sdk_version: "ServerSdkVersion"
    #     }
    #   }
    # @return [Types::UpdateBuildOutput]
    def update_build(params = {}, options = {})
      request = build_request(:update_build, params)
      request.send_request(options)
    end

    # <p>Updates the properties of a managed container fleet. Depending on the properties being
    #             updated, this operation might initiate a fleet deployment. You can track deployments for
    #             a fleet using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetDeployment.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetDeployment.html</a>.</p>
    #          <p>
    #             <b>Request options</b>
    #          </p>
    #          <p>As with CreateContainerFleet, many fleet properties use common defaults or are
    #             calculated based on the fleet's container group definitions. </p>
    #          <ul>
    #             <li>
    #                <p>Update fleet properties that result in a fleet deployment. Include only those
    #                     properties that you want to change. Specify deployment configuration
    #                     settings.</p>
    #             </li>
    #             <li>
    #                <p>Update fleet properties that don't result in a fleet deployment. Include only
    #                     those properties that you want to change.</p>
    #             </li>
    #          </ul>
    #          <p>Changes to the following properties initiate a fleet deployment: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>GameServerContainerGroupDefinition</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PerInstanceContainerGroupDefinition</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>GameServerContainerGroupsPerInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>InstanceInboundPermissions</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>InstanceConnectionPortRange</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LogConfiguration</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results</b>
    #          </p>
    #          <p>If successful, this operation updates the container fleet resource, and might initiate
    #             a new deployment of fleet resources using the deployment configuration provided. A
    #             deployment replaces existing fleet instances with new instances that are deployed with
    #             the updated fleet properties. The fleet is placed in <code>UPDATING</code> status until
    #             the deployment is complete, then return to <code>ACTIVE</code>. </p>
    #          <p>You can have only one update deployment active at a time for a fleet. If a second
    #             update request initiates a deployment while another deployment is in progress, the first
    #             deployment is cancelled.</p>
    # @param [Hash, Types::UpdateContainerFleetInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the container fleet to update. You can use either the fleet ID
    #               or ARN value.</p>
    # @option params [String] :game_server_container_group_definition_name
    #   <p>The name or ARN value of a new game server container group definition to deploy on the
    #               fleet. If you're updating the fleet to a specific version of a container group
    #               definition, use the ARN value and include the version number. If you're updating the
    #               fleet to the latest version of a container group definition, you can use the name value.
    #               You can't remove a fleet's game server container group definition, you can only update
    #               or replace it with another definition.</p>
    #            <p>Update a container group definition by calling 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>. 
    #               This operation creates a 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a> 
    #               resource with an incremented version. </p>
    # @option params [String] :per_instance_container_group_definition_name
    #   <p>The name or ARN value of a new per-instance container group definition to deploy on
    #               the fleet. If you're updating the fleet to a specific version of a container group
    #               definition, use the ARN value and include the version number. If you're updating the
    #               fleet to the latest version of a container group definition, you can use the name
    #               value.</p>
    #            <p>Update a container group definition by calling 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>. 
    #               This operation creates a 
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a> 
    #               resource with an incremented version. </p>
    #            <p>To remove a fleet's per-instance container group definition, leave this parameter empty
    #               and use the parameter <code>RemoveAttributes</code>.</p>
    # @option params [Integer] :game_server_container_groups_per_instance
    #   <p>The number of times to replicate the game server container group on each fleet
    #               instance. By default, Amazon GameLift Servers calculates the maximum number of game server container
    #               groups that can fit on each instance. You can remove this property value to use the
    #               calculated value, or set it manually. If you set this number manually, Amazon GameLift Servers uses your
    #               value as long as it's less than the calculated maximum.</p>
    # @option params [Types::ConnectionPortRange] :instance_connection_port_range
    #   <p>A revised set of port numbers to open on each fleet instance. By default, Amazon GameLift Servers
    #               calculates an optimal port range based on your fleet configuration. If you previously
    #               set this parameter manually, you can't reset this to use the calculated settings.</p>
    # @option params [Array<Types::IpPermission>] :instance_inbound_permission_authorizations
    #   <p>A set of ports to add to the container fleet's inbound permissions.</p>
    # @option params [Array<Types::IpPermission>] :instance_inbound_permission_revocations
    #   <p>A set of ports to remove from the container fleet's inbound permissions.</p>
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   <p>Instructions for how to deploy updates to a container fleet, if the fleet update
    #               initiates a deployment. The deployment configuration lets you determine how to replace
    #               fleet instances and what actions to take if the deployment fails.</p>
    # @option params [String] :description
    #   <p>A meaningful description of the container fleet.</p>
    # @option params [Array<String>] :metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to.  </p>
    # @option params [String] :new_game_session_protection_policy
    #   <p>The game session protection policy to apply to all new game sessions that are started
    #               in this fleet. Game sessions that already exist are not affected. </p>
    # @option params [Types::GameSessionCreationLimitPolicy] :game_session_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that each individual player can create
    #               on instances in this fleet. The limit applies for a specified span of time.</p>
    # @option params [Types::LogConfiguration] :log_configuration
    #   <p>The method for collecting container logs for the fleet. </p>
    # @option params [Array<String>] :remove_attributes
    #   <p>If set, this update removes a fleet's per-instance container group definition. You
    #               can't remove a fleet's game server container group definition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     game_server_container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     per_instance_container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     game_server_container_groups_per_instance: 1,
    #     instance_connection_port_range: {
    #       from_port: 1, # required
    #       to_port: 1, # required
    #     },
    #     instance_inbound_permission_authorizations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #       }
    #     ],
    #     instance_inbound_permission_revocations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #       }
    #     ],
    #     deployment_configuration: {
    #       protection_strategy: "WITH_PROTECTION" # One of: ["WITH_PROTECTION", "IGNORE_PROTECTION"],
    #       minimum_healthy_percentage: 1,
    #       impairment_strategy: "MAINTAIN" # One of: ["MAINTAIN", "ROLLBACK"]
    #     },
    #     description: "NonZeroAndMaxString",
    #     metric_groups: ["MetricGroup"],
    #     new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #     game_session_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1
    #     },
    #     log_configuration: {
    #       log_destination: "NONE" # One of: ["NONE", "CLOUDWATCH", "S3"],
    #       s3_bucket_name: "NonEmptyString",
    #       log_group_arn: "LogGroupArnStringModel"
    #     },
    #     remove_attributes: ["PER_INSTANCE_CONTAINER_GROUP_DEFINITION" # One of: ["PER_INSTANCE_CONTAINER_GROUP_DEFINITION"]]
    #   }
    #   options = {}
    #   response = client.update_container_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_fleet: {
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       fleet_role_arn: "IamRoleArn",
    #       game_server_container_group_definition_name: "ContainerGroupDefinitionName",
    #       game_server_container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       per_instance_container_group_definition_name: "ContainerGroupDefinitionName",
    #       per_instance_container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       instance_connection_port_range: {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #       },
    #       instance_inbound_permissions: [
    #         {
    #           from_port: 1, # required
    #           to_port: 1, # required
    #           ip_range: "IpRange", # required
    #           protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #         }
    #       ],
    #       game_server_container_groups_per_instance: 1,
    #       maximum_game_server_container_groups_per_instance: 1,
    #       instance_type: "NonZeroAndMaxString",
    #       billing_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #       description: "NonZeroAndMaxString",
    #       creation_time: Time.now,
    #       metric_groups: ["MetricGroup"],
    #       new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #       game_session_creation_limit_policy: {
    #         new_game_sessions_per_creator: 1,
    #         policy_period_in_minutes: 1
    #       },
    #       status: "PENDING" # One of: ["PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"],
    #       deployment_details: {
    #         latest_deployment_id: "DeploymentId"
    #       },
    #       log_configuration: {
    #         log_destination: "NONE" # One of: ["NONE", "CLOUDWATCH", "S3"],
    #         s3_bucket_name: "NonEmptyString",
    #         log_group_arn: "LogGroupArnStringModel"
    #       },
    #       location_attributes: [
    #         {
    #           location: "LocationStringModel",
    #           status: "PENDING" # One of: ["PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateContainerFleetOutput]
    def update_container_fleet(params = {}, options = {})
      request = build_request(:update_container_fleet, params)
      request.send_request(options)
    end

    # <p>Updates properties in an existing container group definition. This operation doesn't
    #       replace the definition. Instead, it creates a new version of the definition and saves it
    #       separately. You can access all versions that you choose to retain.</p>
    #          <p>The only property you can't update is the container group type.</p>
    #          <p>
    #             <b>Request options:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Update based on the latest version of the container group definition. Specify the
    #           container group definition name only, or use an ARN value without a version number.
    #           Provide updated values for the properties that you want to change only. All other values
    #           remain the same as the latest version.</p>
    #             </li>
    #             <li>
    #                <p>Update based on a specific version of the container group definition. Specify the
    #           container group definition name and a source version number, or use an ARN value with a
    #           version number. Provide updated values for the properties that you want to change only.
    #           All other values remain the same as the source version.</p>
    #             </li>
    #             <li>
    #                <p>Change a game server container definition. Provide the updated container
    #           definition.</p>
    #             </li>
    #             <li>
    #                <p>Add or change a support container definition. Provide a complete set of container
    #           definitions, including the updated definition.</p>
    #             </li>
    #             <li>
    #                <p>Remove a support container definition. Provide a complete set of container
    #           definitions, excluding the definition to remove. If the container group has only one
    #           support container definition, provide an empty set.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Results:</b>
    #          </p>
    #          <p>If successful, this operation returns the complete properties of the new container group
    #       definition version.</p>
    #          <p>If the container group definition version is used in an active fleets, the update
    #       automatically initiates a new fleet deployment of the new version. You can track a fleet's 
    #       deployments using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListFleetDeployments.html">ListFleetDeployments</a>.</p>
    # @param [Hash, Types::UpdateContainerGroupDefinitionInput] params
    # @option params [String] :name
    #   <p>A descriptive identifier for the container group definition. The name value must be unique in an Amazon Web Services Region.</p>
    # @option params [Types::GameServerContainerDefinitionInput] :game_server_container_definition
    #   <p>An updated definition for the game server container in this group. Define a game server
    #         container only when the container group type is <code>GAME_SERVER</code>. You can pass in your
    #         container definitions as a JSON file.</p>
    # @option params [Array<Types::SupportContainerDefinitionInput>] :support_container_definitions
    #   <p>One or more definitions for support containers in this group. You can define a support
    #         container in any type of container group. You can pass in your container definitions as a JSON
    #         file.</p>
    # @option params [Integer] :total_memory_limit_mebibytes
    #   <p>The maximum amount of memory (in MiB) to allocate to the container group. All containers in
    #         the group share this memory. If you specify memory limits for an individual container, the
    #         total value must be greater than any individual container's memory limit.</p>
    # @option params [Float] :total_vcpu_limit
    #   <p>The maximum amount of vCPU units to allocate to the container group (1 vCPU is equal to 1024
    #         CPU units). All containers in the group share this memory. If you specify vCPU limits for
    #         individual containers, the total value must be equal to or greater than the sum of the CPU
    #         limits for all containers in the group.</p>
    # @option params [String] :version_description
    #   <p>A description for this update to the container group definition. </p>
    # @option params [Integer] :source_version_number
    #   <p>The container group definition version to update. The new version starts with values from
    #         the source version, and then updates values included in this request. </p>
    # @option params [String] :operating_system
    #   <p>The platform that all containers in the group use. Containers in a group must run on the
    #         same operating system.</p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more details in the <a href="http://aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>. For game
    #         servers that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the game
    #           server build to server SDK 5.x, and then deploy to AL2023 instances. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html"> Migrate to
    #             server SDK version 5.</a>
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ContainerGroupDefinitionNameOrArn", # required
    #     game_server_container_definition: {
    #       container_name: "NonZeroAnd128MaxAsciiString", # required
    #       depends_on: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString", # required
    #           condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #         }
    #       ],
    #       mount_points: [
    #         {
    #           instance_path: "InstancePathString", # required
    #           container_path: "ContainerPathString",
    #           access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #         }
    #       ],
    #       environment_override: [
    #         {
    #           name: "NonZeroAnd255MaxString", # required
    #           value: "NonZeroAnd255MaxString", # required
    #         }
    #       ],
    #       image_uri: "ImageUriString", # required
    #       port_configuration: { # required
    #         container_port_ranges: [ # required
    #           {
    #             from_port: 1, # required
    #             to_port: 1, # required
    #             protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #           }
    #         ]
    #       },
    #       server_sdk_version: "ServerSdkVersion", # required
    #     },
    #     support_container_definitions: [
    #       {
    #         container_name: "NonZeroAnd128MaxAsciiString", # required
    #         depends_on: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString", # required
    #             condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #           }
    #         ],
    #         mount_points: [
    #           {
    #             instance_path: "InstancePathString", # required
    #             container_path: "ContainerPathString",
    #             access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #           }
    #         ],
    #         environment_override: [
    #           {
    #             name: "NonZeroAnd255MaxString", # required
    #             value: "NonZeroAnd255MaxString", # required
    #           }
    #         ],
    #         essential: false,
    #         health_check: {
    #           command: ["NonZeroAnd255MaxString"], # required
    #           interval: 1,
    #           retries: 1,
    #           start_period: 1,
    #           timeout: 1
    #         },
    #         image_uri: "ImageUriString", # required
    #         memory_hard_limit_mebibytes: 1,
    #         port_configuration: {
    #           container_port_ranges: [ # required
    #             {
    #               from_port: 1, # required
    #               to_port: 1, # required
    #               protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #             }
    #           ]
    #         },
    #         vcpu: 1.0
    #       }
    #     ],
    #     total_memory_limit_mebibytes: 1,
    #     total_vcpu_limit: 1.0,
    #     version_description: "NonZeroAndMaxString",
    #     source_version_number: 1,
    #     operating_system: "AMAZON_LINUX_2023" # One of: ["AMAZON_LINUX_2023"]
    #   }
    #   options = {}
    #   response = client.update_container_group_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_group_definition: {
    #       container_group_definition_arn: "ContainerGroupDefinitionArn",
    #       creation_time: Time.now,
    #       operating_system: "AMAZON_LINUX_2023" # One of: ["AMAZON_LINUX_2023"],
    #       name: "ContainerGroupDefinitionName", # required
    #       container_group_type: "GAME_SERVER" # One of: ["GAME_SERVER", "PER_INSTANCE"],
    #       total_memory_limit_mebibytes: 1,
    #       total_vcpu_limit: 1.0,
    #       game_server_container_definition: {
    #         container_name: "NonZeroAnd128MaxAsciiString",
    #         depends_on: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString", # required
    #             condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #           }
    #         ],
    #         mount_points: [
    #           {
    #             instance_path: "InstancePathString", # required
    #             container_path: "ContainerPathString",
    #             access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #           }
    #         ],
    #         environment_override: [
    #           {
    #             name: "NonZeroAnd255MaxString", # required
    #             value: "NonZeroAnd255MaxString", # required
    #           }
    #         ],
    #         image_uri: "ImageUriString",
    #         port_configuration: {
    #           container_port_ranges: [ # required
    #             {
    #               from_port: 1, # required
    #               to_port: 1, # required
    #               protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #             }
    #           ]
    #         },
    #         resolved_image_digest: "Sha256",
    #         server_sdk_version: "ServerSdkVersion"
    #       },
    #       support_container_definitions: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString",
    #           depends_on: [
    #             {
    #               container_name: "NonZeroAnd128MaxAsciiString", # required
    #               condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               instance_path: "InstancePathString", # required
    #               container_path: "ContainerPathString",
    #               access_level: "READ_ONLY" # One of: ["READ_ONLY", "READ_AND_WRITE"]
    #             }
    #           ],
    #           environment_override: [
    #             {
    #               name: "NonZeroAnd255MaxString", # required
    #               value: "NonZeroAnd255MaxString", # required
    #             }
    #           ],
    #           essential: false,
    #           health_check: {
    #             command: ["NonZeroAnd255MaxString"], # required
    #             interval: 1,
    #             retries: 1,
    #             start_period: 1,
    #             timeout: 1
    #           },
    #           image_uri: "ImageUriString",
    #           memory_hard_limit_mebibytes: 1,
    #           port_configuration: {
    #             container_port_ranges: [ # required
    #               {
    #                 from_port: 1, # required
    #                 to_port: 1, # required
    #                 protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #               }
    #             ]
    #           },
    #           resolved_image_digest: "Sha256",
    #           vcpu: 1.0
    #         }
    #       ],
    #       version_number: 1,
    #       version_description: "NonZeroAndMaxString",
    #       status: "READY" # One of: ["READY", "COPYING", "FAILED"],
    #       status_reason: "NonZeroAndMaxString"
    #     }
    #   }
    # @return [Types::UpdateContainerGroupDefinitionOutput]
    def update_container_group_definition(params = {}, options = {})
      request = build_request(:update_container_group_definition, params)
      request.send_request(options)
    end

    # <p>Updates a fleet's mutable attributes, such as game session protection and resource
    #             creation limits.</p>
    #          <p>To update fleet attributes, specify the fleet ID and the property values that you want
    #             to change. If successful, Amazon GameLift Servers returns the identifiers for the updated fleet.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    # @param [Hash, Types::UpdateFleetAttributesInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to update attribute metadata for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    # @option params [String] :description
    #   <p>A human-readable description of a fleet.</p>
    # @option params [String] :new_game_session_protection_policy
    #   <p>The game session protection policy to apply to all new game sessions created in this
    #               fleet. Game sessions that already exist are not affected. You can set protection for
    #               individual game sessions using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSession.html">UpdateGameSession</a> .</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>NoProtection</b> -- The game session can be
    #                       terminated during a scale-down event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FullProtection</b> -- If the game session is in an
    #                           <code>ACTIVE</code> status, it cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   <p>Policy settings that limit the number of game sessions an individual player can create
    #               over a span of time. </p>
    # @option params [Array<String>] :metric_groups
    #   <p>The name of a metric group to add this fleet to. Use a metric group in Amazon
    #               CloudWatch to aggregate the metrics from multiple fleets. Provide an existing metric
    #               group name, or create a new metric group by providing a new name. A fleet can only be in
    #               one metric group at a time.</p>
    # @option params [Types::AnywhereConfiguration] :anywhere_configuration
    #   <p>Amazon GameLift Servers Anywhere configuration options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     description: "NonZeroAndMaxString",
    #     new_game_session_protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1
    #     },
    #     metric_groups: ["MetricGroup"],
    #     anywhere_configuration: {
    #       cost: "NonNegativeLimitedLengthDouble", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_fleet_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId",
    #     fleet_arn: "FleetArn"
    #   }
    # @return [Types::UpdateFleetAttributesOutput]
    def update_fleet_attributes(params = {}, options = {})
      request = build_request(:update_fleet_attributes, params)
      request.send_request(options)
    end

    # <p>Updates capacity settings for a managed EC2 fleet or managed container fleet. For these
    #             fleets, you adjust capacity by changing the number of instances in the fleet. Fleet
    #             capacity determines the number of game sessions and players that the fleet can host
    #             based on its configuration. For fleets with multiple locations, use this operation to
    #             manage capacity settings in each location individually.</p>
    #          <p>Use this operation to set these fleet capacity properties: </p>
    #          <ul>
    #             <li>
    #                <p>Minimum/maximum size: Set hard limits on the number of Amazon EC2 instances allowed. If Amazon GameLift Servers receives a 
    #                     request--either through manual update or automatic scaling--it won't change the capacity 
    #                     to a value outside of this range.</p>
    #             </li>
    #             <li>
    #                <p>Desired capacity: As an alternative to automatic scaling, manually set the number of Amazon EC2 
    #                     instances to be maintained. 
    #                     Before changing a fleet's desired capacity, check the maximum capacity of the
    #                     fleet's Amazon EC2 instance type by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeEC2InstanceLimits.html">DescribeEC2InstanceLimits</a>.</p>
    #             </li>
    #          </ul>
    #          <p>To update capacity for a fleet's home Region, or if the fleet has no remote
    #             locations, omit the <code>Location</code> parameter. The fleet must be in
    #             <code>ACTIVE</code> status. </p>
    #          <p>To update capacity for a fleet's remote location, set the
    #             <code>Location</code> parameter to the location to update. The location must be in
    #             <code>ACTIVE</code> status.</p>
    #          <p>If successful, Amazon GameLift Servers updates the capacity settings and returns the identifiers for
    #             the updated fleet and/or location. If a requested change to desired capacity exceeds the
    #             instance type's limit, the <code>LimitExceeded</code> exception occurs. </p>
    #          <p>Updates often prompt an immediate change in fleet capacity, such as when current
    #             capacity is different than the new desired capacity or outside the new limits. In this
    #             scenario, Amazon GameLift Servers automatically initiates steps to add or remove instances in the fleet
    #             location. You can track a fleet's current capacity by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html">DescribeFleetCapacity</a> or <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html">DescribeFleetLocationCapacity</a>. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-manage-capacity.html">Scaling fleet
    #                         capacity</a>
    #          </p>
    # @param [Hash, Types::UpdateFleetCapacityInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to update capacity settings for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [Integer] :desired_instances
    #   <p>The number of Amazon EC2 instances you want to maintain in the specified fleet location.
    #               This value must fall between the minimum and maximum size limits. Changes in desired
    #               instance value can take up to 1 minute to be reflected when viewing the fleet's capacity
    #               settings.</p>
    # @option params [Integer] :min_size
    #   <p>The minimum number of instances that are allowed in the specified fleet location. If
    #               this parameter is not set, the default is 0.</p>
    # @option params [Integer] :max_size
    #   <p>The maximum number of instances that are allowed in the specified fleet location. If
    #               this parameter is not set, the default is 1.</p>
    # @option params [String] :location
    #   <p>The name of a remote location to update fleet capacity settings for, in the form of an
    #               Amazon Web Services Region code such as <code>us-west-2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     desired_instances: 1,
    #     min_size: 1,
    #     max_size: 1,
    #     location: "LocationStringModel"
    #   }
    #   options = {}
    #   response = client.update_fleet_capacity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId",
    #     fleet_arn: "FleetArn",
    #     location: "LocationStringModel"
    #   }
    # @return [Types::UpdateFleetCapacityOutput]
    def update_fleet_capacity(params = {}, options = {})
      request = build_request(:update_fleet_capacity, params)
      request.send_request(options)
    end

    # <p>Updates permissions that allow inbound traffic to connect to game sessions in the
    #             fleet. </p>
    #          <p>To update settings, specify the fleet ID to be updated and specify the changes to be
    #             made. List the permissions you want to add in
    #                 <code>InboundPermissionAuthorizations</code>, and permissions you want to remove in
    #                 <code>InboundPermissionRevocations</code>. Permissions to be removed must match
    #             existing fleet permissions. </p>
    #          <p>If successful, the fleet ID for the updated fleet is returned. For fleets with remote
    #             locations, port setting updates can take time to propagate across all locations. You can
    #             check the status of updates in each location by calling
    #                 <code>DescribeFleetPortSettings</code> with a location name.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    # @param [Hash, Types::UpdateFleetPortSettingsInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to update port settings for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [Array<Types::IpPermission>] :inbound_permission_authorizations
    #   <p>A collection of port settings to be added to the fleet resource.</p>
    # @option params [Array<Types::IpPermission>] :inbound_permission_revocations
    #   <p>A collection of port settings to be removed from the fleet resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     inbound_permission_authorizations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #       }
    #     ],
    #     inbound_permission_revocations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP" # One of: ["TCP", "UDP"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_fleet_port_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_id: "FleetId",
    #     fleet_arn: "FleetArn"
    #   }
    # @return [Types::UpdateFleetPortSettingsOutput]
    def update_fleet_port_settings(params = {}, options = {})
      request = build_request(:update_fleet_port_settings, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Updates information about a registered game server to help Amazon GameLift Servers FleetIQ track game server
    #             availability. This operation is called by a game server process that is running on an
    #             instance in a game server group. </p>
    #          <p>Use this operation to update the following types of game server information. You can
    #             make all three types of updates in the same request:</p>
    #          <ul>
    #             <li>
    #                <p>To update the game server's utilization status from <code>AVAILABLE</code>
    #                     (when the game server is available to be claimed) to <code>UTILIZED</code> (when
    #                     the game server is currently hosting games). Identify the game server and game
    #                     server group and specify the new utilization status. You can't change the status
    #                     from to <code>UTILIZED</code> to <code>AVAILABLE</code> .</p>
    #             </li>
    #             <li>
    #                <p>To report health status, identify the game server and game server group and
    #                     set health check to <code>HEALTHY</code>. If a game server does not report
    #                     health status for a certain length of time, the game server is no longer
    #                     considered healthy. As a result, it will be eventually deregistered from the
    #                     game server group to avoid affecting utilization metrics. The best practice is
    #                     to report health every 60 seconds.</p>
    #             </li>
    #             <li>
    #                <p>To change game server metadata, provide updated game server data.</p>
    #             </li>
    #          </ul>
    #          <p>Once a game server is successfully updated, the relevant statuses and timestamps are
    #             updated.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::UpdateGameServerInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server to update.</p>
    # @option params [String] :game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data 
    #               is passed to a game client or service when it requests information on game servers. </p>
    # @option params [String] :utilization_status
    #   <p>Indicates if the game server is available or is currently hosting gameplay. You can
    #               update a game server status from <code>AVAILABLE</code> to <code>UTILIZED</code>, but
    #               you can't change a the status from <code>UTILIZED</code> to
    #               <code>AVAILABLE</code>.</p>
    # @option params [String] :health_check
    #   <p>Indicates health status of the game server. A request that includes this parameter
    #               updates the game server's <i>LastHealthCheckTime</i> timestamp. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #     game_server_data: "GameServerData",
    #     utilization_status: "AVAILABLE" # One of: ["AVAILABLE", "UTILIZED"],
    #     health_check: "HEALTHY" # One of: ["HEALTHY"]
    #   }
    #   options = {}
    #   response = client.update_game_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       game_server_id: "GameServerId",
    #       instance_id: "GameServerInstanceId",
    #       connection_info: "GameServerConnectionInfo",
    #       game_server_data: "GameServerData",
    #       claim_status: "CLAIMED" # One of: ["CLAIMED"],
    #       utilization_status: "AVAILABLE" # One of: ["AVAILABLE", "UTILIZED"],
    #       registration_time: Time.now,
    #       last_claim_time: Time.now,
    #       last_health_check_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateGameServerOutput]
    def update_game_server(params = {}, options = {})
      request = build_request(:update_game_server, params)
      request.send_request(options)
    end

    # <p>
    #             <b>This operation is used with the Amazon GameLift Servers FleetIQ solution and game server groups.</b>
    #          </p>
    #          <p>Updates Amazon GameLift Servers FleetIQ-specific
    #             properties for a game server group. Many Auto Scaling group properties are updated on
    #             the Auto Scaling group directly, including the launch template, Auto Scaling policies,
    #             and maximum/minimum/desired instance counts.</p>
    #          <p>To update the game server group, specify the game server group ID and provide the
    #             updated values. Before applying the updates, the new values are validated to ensure that
    #             Amazon GameLift Servers FleetIQ can continue to perform instance balancing activity. If successful, a
    #                 <code>GameServerGroup</code> object is returned.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">Amazon GameLift Servers FleetIQ
    #                 Guide</a>
    #          </p>
    # @param [Hash, Types::UpdateGameServerGroupInput] params
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift Servers to access your Amazon EC2 Auto Scaling groups.</p>
    # @option params [Array<Types::InstanceDefinition>] :instance_definitions
    #   <p>An updated list of Amazon EC2 instance types to use in the Auto Scaling group. The instance
    #               definitions must specify at least two different instance types that are supported by
    #               Amazon GameLift Servers FleetIQ. This updated list replaces the entire current list of instance definitions for
    #               the game server group. For more information on instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">EC2 Instance
    #                   Types</a> in the <i>Amazon EC2 User Guide</i>. You can optionally
    #               specify capacity weighting for each instance type. If no weight value is specified for
    #               an instance type, it is set to the default value "1". For more information about
    #               capacity weighting, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html"> Instance Weighting for
    #                   Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>
    # @option params [String] :game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected 
    #               from early termination. Unprotected instances that have active game servers running might 
    #               be terminated during a scale-down event, causing players to be dropped from the game. 
    #               Protected instances cannot be terminated while there are active game servers running except 
    #               in the event of a forced game server group deletion (see ). An exception to this is with Spot 
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>
    # @option params [String] :balancing_strategy
    #   <p>Indicates how Amazon GameLift Servers FleetIQ balances the use of Spot Instances and On-Demand Instances in the
    #               game server group. Method options include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
    #                       Instances are unavailable or not viable for game hosting, the game server group
    #                       provides no hosting capacity until Spot Instances can again be used. Until then,
    #                       no new instances are started, and the existing nonviable Spot Instances are
    #                       terminated (after current gameplay ends) and are not replaced.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
    #                       the game server group. If Spot Instances are unavailable, the game server group
    #                       continues to provide hosting capacity by falling back to On-Demand Instances.
    #                       Existing nonviable Spot Instances are terminated (after current gameplay ends)
    #                       and are replaced with new On-Demand Instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
    #                       server group. No Spot Instances are used, even when available, while this
    #                       balancing strategy is in force.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     role_arn: "IamRoleArn",
    #     instance_definitions: [
    #       {
    #         instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #         weighted_capacity: "WeightedCapacity"
    #       }
    #     ],
    #     game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #     balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   }
    #   options = {}
    #   response = client.update_game_server_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_server_group: {
    #       game_server_group_name: "GameServerGroupName",
    #       game_server_group_arn: "GameServerGroupArn",
    #       role_arn: "IamRoleArn",
    #       instance_definitions: [
    #         {
    #           instance_type: "c4.large" # One of: ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"], # required
    #           weighted_capacity: "WeightedCapacity"
    #         }
    #       ],
    #       balancing_strategy: "SPOT_ONLY" # One of: ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"],
    #       game_server_protection_policy: "NO_PROTECTION" # One of: ["NO_PROTECTION", "FULL_PROTECTION"],
    #       auto_scaling_group_arn: "AutoScalingGroupArn",
    #       status: "NEW" # One of: ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"],
    #       status_reason: "NonZeroAndMaxString",
    #       suspended_actions: ["REPLACE_INSTANCE_TYPES" # One of: ["REPLACE_INSTANCE_TYPES"]],
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateGameServerGroupOutput]
    def update_game_server_group(params = {}, options = {})
      request = build_request(:update_game_server_group, params)
      request.send_request(options)
    end

    # <p>Updates the mutable properties of a game session. </p>
    #          <p>To update a game session, specify the game session ID and the values you want to
    #             change. </p>
    #          <p>If successful, the updated <code>GameSession</code> object is returned. </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::UpdateGameSessionInput] params
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to update. </p>
    # @option params [Integer] :maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    # @option params [String] :player_session_creation_policy
    #   <p>A policy that determines whether the game session is accepting new players.</p>
    # @option params [String] :protection_policy
    #   <p>Game session protection policy to apply to this game session only.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NoProtection</code> -- The game session can be terminated during a
    #                       scale-down event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FullProtection</code> -- If the game session is in an
    #                           <code>ACTIVE</code> status, it cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::GameProperty>] :game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.
    #           You can use this parameter to modify game properties in an active game session.
    #           This action adds new properties and modifies existing properties.
    #           There is no way to delete properties.
    #           For an example, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-update">Update the value of a game property</a>.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     game_session_id: "ArnStringModel", # required
    #     maximum_player_session_count: 1,
    #     name: "NonZeroAndMaxString",
    #     player_session_creation_policy: "ACCEPT_ALL" # One of: ["ACCEPT_ALL", "DENY_ALL"],
    #     protection_policy: "NoProtection" # One of: ["NoProtection", "FullProtection"],
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_game_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session: {
    #       game_session_id: "NonZeroAndMaxString",
    #       name: "NonZeroAndMaxString",
    #       fleet_id: "FleetId",
    #       fleet_arn: "FleetArn",
    #       creation_time: Time.now,
    #       termination_time: Time.now,
    #       current_player_session_count: 1,
    #       maximum_player_session_count: 1,
    #       status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"],
    #       status_reason: "INTERRUPTED" # One of: ["INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"],
    #       game_properties: [
    #         {
    #           key: "GamePropertyKey", # required
    #           value: "GamePropertyValue", # required
    #         }
    #       ],
    #       ip_address: "IpAddress",
    #       dns_name: "DnsName",
    #       port: 1,
    #       player_session_creation_policy: "ACCEPT_ALL" # One of: ["ACCEPT_ALL", "DENY_ALL"],
    #       creator_id: "NonZeroAndMaxString",
    #       game_session_data: "LargeGameSessionData",
    #       matchmaker_data: "MatchmakerData",
    #       location: "LocationStringModel"
    #     }
    #   }
    # @return [Types::UpdateGameSessionOutput]
    def update_game_session(params = {}, options = {})
      request = build_request(:update_game_session, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a game session queue, which determines how the queue
    #             processes new game session requests. To update settings, specify the queue name to be
    #             updated and provide the new settings. When updating destinations, provide a complete
    #             list of destinations. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html">
    #                 Using Multi-Region Queues</a>
    #          </p>
    # @param [Hash, Types::UpdateGameSessionQueueInput] params
    # @option params [String] :name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>
    # @option params [Integer] :timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>
    # @option params [Array<Types::PlayerLatencyPolicy>] :player_latency_policies
    #   <p>A set of policies that enforce a sliding cap on player latency when processing game sessions placement requests. 
    #   	Use multiple policies to gradually relax the cap over time if Amazon GameLift Servers can't make a placement.
    #   	    Policies are evaluated in order starting with the lowest maximum latency value. When updating policies, provide a complete collection of policies.</p>
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue. 
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference. When updating this list, provide a complete list of destinations.</p>
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations 
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is 
    #               not set, game sessions can be placed in any queue location. To remove an existing filter configuration, pass in an empty set.</p>
    # @option params [Types::PriorityConfiguration] :priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This 
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly 
    #               named will be automatically applied at the end of the prioritization process. To remove an existing priority configuration, pass in an empty set.</p>
    # @option params [String] :custom_event_data
    #   <p>Information to be added to all events that are related to this game session
    #               queue.</p>
    # @option params [String] :notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html"> Setting up
    #                   notifications for game session placement</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "GameSessionQueueNameOrArn", # required
    #     timeout_in_seconds: 1,
    #     player_latency_policies: [
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1
    #       }
    #     ],
    #     destinations: [
    #       {
    #         destination_arn: "ArnStringModel"
    #       }
    #     ],
    #     filter_configuration: {
    #       allowed_locations: ["LocationStringModel"]
    #     },
    #     priority_configuration: {
    #       priority_order: ["LATENCY" # One of: ["LATENCY", "COST", "DESTINATION", "LOCATION"]],
    #       location_order: ["LocationStringModel"]
    #     },
    #     custom_event_data: "QueueCustomEventData",
    #     notification_target: "QueueSnsArnStringModel"
    #   }
    #   options = {}
    #   response = client.update_game_session_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     game_session_queue: {
    #       name: "GameSessionQueueName",
    #       game_session_queue_arn: "GameSessionQueueArn",
    #       timeout_in_seconds: 1,
    #       player_latency_policies: [
    #         {
    #           maximum_individual_player_latency_milliseconds: 1,
    #           policy_duration_seconds: 1
    #         }
    #       ],
    #       destinations: [
    #         {
    #           destination_arn: "ArnStringModel"
    #         }
    #       ],
    #       filter_configuration: {
    #         allowed_locations: ["LocationStringModel"]
    #       },
    #       priority_configuration: {
    #         priority_order: ["LATENCY" # One of: ["LATENCY", "COST", "DESTINATION", "LOCATION"]],
    #         location_order: ["LocationStringModel"]
    #       },
    #       custom_event_data: "QueueCustomEventData",
    #       notification_target: "QueueSnsArnStringModel"
    #     }
    #   }
    # @return [Types::UpdateGameSessionQueueOutput]
    def update_game_session_queue(params = {}, options = {})
      request = build_request(:update_game_session_queue, params)
      request.send_request(options)
    end

    # <p>Updates settings for a FlexMatch matchmaking configuration. These changes affect all
    #             matches and game sessions that are created after the update. To update settings, specify
    #             the configuration name to be updated and provide the new settings. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html"> Design a FlexMatch
    #                 matchmaker</a>
    #          </p>
    # @param [Hash, Types::UpdateMatchmakingConfigurationInput] params
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking configuration to update. You can use either the configuration name or ARN value. </p>
    # @option params [String] :description
    #   <p>A description for the matchmaking configuration.</p>
    # @option params [Array<String>] :game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               Amazon GameLift Servers-hosted game sessions for matches that are created with this matchmaking
    #               configuration. If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not
    #               set this parameter.</p>
    # @option params [Integer] :request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    # @option params [Integer] :acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required.</p>
    # @option params [Boolean] :acceptance_required
    #   <p>A flag that indicates whether a match that was created with this configuration must be
    #               accepted by the matched players. To require acceptance, set to TRUE. With this option
    #               enabled, matchmaking tickets use the status <code>REQUIRES_ACCEPTANCE</code> to indicate
    #               when a completed potential match is waiting for player acceptance. </p>
    # @option params [String] :rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
    #               value. A matchmaking configuration can only use rule sets that are defined in the same
    #               Region.</p>
    # @option params [String] :notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #                   Setting up notifications for matchmaking</a> for more information.</p>
    # @option params [Integer] :additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies 
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
    #                   <code>STANDALONE</code>.</p>
    # @option params [String] :custom_event_data
    #   <p>Information to add to all events related to the matchmaking configuration. </p>
    # @option params [Array<Types::GameProperty>] :game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>. This information is added to the new <code>GameSession</code> object that is
    #               created for a successful match. This parameter is not used if <code>FlexMatchMode</code>
    #               is set to <code>STANDALONE</code>.</p>
    # @option params [String] :game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>. This information is added to the game session
    #               that is created for a successful match. This parameter is not used if
    #                   <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    # @option params [String] :backfill_mode
    #   <p>The method that is used to backfill game sessions created with this matchmaking
    #               configuration. Specify MANUAL when your game manages backfill requests manually or does
    #               not use the match backfill feature. Specify AUTOMATIC to have GameLift create a match backfill
    #               request whenever a game session has one or more open
    #               slots. Learn more about manual and automatic backfill in <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html">Backfill Existing Games
    #                   with FlexMatch</a>. Automatic backfill is not available when
    #                   <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    # @option params [String] :flex_match_mode
    #   <p>Indicates whether this matchmaking configuration is being used with Amazon GameLift Servers hosting or
    #               as a standalone matchmaking solution. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>STANDALONE</b> - FlexMatch forms matches and
    #                       returns match information, including players and team assignments, in a <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded"> MatchmakingSucceeded</a> event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>WITH_QUEUE</b> - FlexMatch forms matches and uses
    #                       the specified Amazon GameLift Servers queue to start a game session for the match. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
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
    #       }
    #     ],
    #     game_session_data: "GameSessionData",
    #     backfill_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #     flex_match_mode: "STANDALONE" # One of: ["STANDALONE", "WITH_QUEUE"]
    #   }
    #   options = {}
    #   response = client.update_matchmaking_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       name: "MatchmakingIdStringModel",
    #       configuration_arn: "MatchmakingConfigurationArn",
    #       description: "NonZeroAndMaxString",
    #       game_session_queue_arns: ["ArnStringModel"],
    #       request_timeout_seconds: 1,
    #       acceptance_timeout_seconds: 1,
    #       acceptance_required: false,
    #       rule_set_name: "MatchmakingIdStringModel",
    #       rule_set_arn: "MatchmakingRuleSetArn",
    #       notification_target: "SnsArnStringModel",
    #       additional_player_count: 1,
    #       custom_event_data: "CustomEventData",
    #       creation_time: Time.now,
    #       game_properties: [
    #         {
    #           key: "GamePropertyKey", # required
    #           value: "GamePropertyValue", # required
    #         }
    #       ],
    #       game_session_data: "GameSessionData",
    #       backfill_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "MANUAL"],
    #       flex_match_mode: "STANDALONE" # One of: ["STANDALONE", "WITH_QUEUE"]
    #     }
    #   }
    # @return [Types::UpdateMatchmakingConfigurationOutput]
    def update_matchmaking_configuration(params = {}, options = {})
      request = build_request(:update_matchmaking_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the runtime configuration for the specified fleet. The runtime configuration
    #             tells Amazon GameLift Servers how to launch server processes on computes in managed EC2 and Anywhere fleets. You
    #             can update a fleet's runtime configuration at any time after the fleet is created; it
    #             does not need to be in <code>ACTIVE</code> status.</p>
    #          <p>To update runtime configuration, specify the fleet ID and provide a
    #                 <code>RuntimeConfiguration</code> with an updated set of server process
    #             configurations.</p>
    #          <p>If successful, the fleet's runtime configuration settings are updated. Fleet computes
    #             that run game server processes regularly check for and receive updated runtime
    #             configurations. The computes immediately take action to comply with the new
    #             configuration by launching new server processes or by not replacing existing processes
    #             when they shut down. Updating a fleet's runtime configuration never affects existing
    #             server processes.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up Amazon GameLift Servers
    #                 fleets</a>
    #          </p>
    # @param [Hash, Types::UpdateRuntimeConfigurationInput] params
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to update runtime configuration for. You can use either the fleet ID or ARN
    #               value.</p>
    # @option params [Types::RuntimeConfiguration] :runtime_configuration
    #   <p>Instructions for launching server processes on fleet computes. Server processes run
    #               either a custom game build executable or a Amazon GameLift Servers Realtime script. The runtime configuration lists
    #               the types of server processes to run, how to launch them, and the number of processes to
    #               run concurrently.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet_id: "FleetIdOrArn", # required
    #     runtime_configuration: { # required
    #       server_processes: [
    #         {
    #           launch_path: "LaunchPathStringModel", # required
    #           parameters: "LaunchParametersStringModel",
    #           concurrent_executions: 1, # required
    #         }
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_runtime_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_configuration: {
    #       server_processes: [
    #         {
    #           launch_path: "LaunchPathStringModel", # required
    #           parameters: "LaunchParametersStringModel",
    #           concurrent_executions: 1, # required
    #         }
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1
    #     }
    #   }
    # @return [Types::UpdateRuntimeConfigurationOutput]
    def update_runtime_configuration(params = {}, options = {})
      request = build_request(:update_runtime_configuration, params)
      request.send_request(options)
    end

    # <p>Updates Realtime script metadata and content.</p>
    #          <p>To update script metadata, specify the script ID and provide updated name and/or
    #             version values. </p>
    #          <p>To update script content, provide an updated zip file by pointing to either a local
    #             file or an Amazon S3 bucket location. You can use either method regardless of how the
    #             original script was uploaded. Use the <i>Version</i> parameter to track
    #             updates to the script.</p>
    #          <p>If the call is successful, the updated metadata is stored in the script record and a
    #             revised script is uploaded to the Amazon GameLift Servers service. Once the script is updated and
    #             acquired by a fleet instance, the new version is used for all new game sessions. </p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Servers Amazon GameLift Servers Realtime</a>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @param [Hash, Types::UpdateScriptInput] params
    # @option params [String] :script_id
    #   <p>A unique identifier for the Realtime script to update. You can use either the script ID or ARN value.</p>
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>
    # @option params [String] :version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    # @option params [Types::S3Location] :storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift Servers to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift Servers uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    # @option params [String] :zip_file
    #   <p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
    #               file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
    #            <p>When using the Amazon Web Services CLI tool to create a script, this parameter is set to the zip
    #               file name. It must be prepended with the string "fileb://" to indicate that the file
    #               data is a binary object. For example: <code>--zip-file
    #                   fileb://myRealtimeScript.zip</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     script_id: "ScriptIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString"
    #     },
    #     zip_file: "data"
    #   }
    #   options = {}
    #   response = client.update_script(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     script: {
    #       script_id: "ScriptId",
    #       script_arn: "ScriptArn",
    #       name: "NonZeroAndMaxString",
    #       version: "NonZeroAndMaxString",
    #       size_on_disk: 1,
    #       creation_time: Time.now,
    #       storage_location: {
    #         bucket: "NonEmptyString",
    #         key: "NonEmptyString",
    #         role_arn: "NonEmptyString",
    #         object_version: "NonEmptyString"
    #       }
    #     }
    #   }
    # @return [Types::UpdateScriptOutput]
    def update_script(params = {}, options = {})
      request = build_request(:update_script, params)
      request.send_request(options)
    end

    # <p>Validates the syntax of a matchmaking rule or rule set. This operation checks that the
    #             rule set is using syntactically correct JSON and that it conforms to allowed property
    #             expressions. To validate syntax, provide a rule set JSON string.</p>
    #          <p>
    #             <b>Learn more</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a rule
    #                         set</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ValidateMatchmakingRuleSetInput] params
    # @option params [String] :rule_set_body
    #   <p>A collection of matchmaking rules to validate, formatted as a JSON string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_set_body: "RuleSetBody", # required
    #   }
    #   options = {}
    #   response = client.validate_matchmaking_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     valid: false
    #   }
    # @return [Types::ValidateMatchmakingRuleSetOutput]
    def validate_matchmaking_rule_set(params = {}, options = {})
      request = build_request(:validate_matchmaking_rule_set, params)
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
      context[:gem_name] = 'aws-sdk-gamelift'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
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
