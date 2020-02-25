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
require 'aws-sdk-core/plugins/client_metrics.rb'
require 'aws-sdk-core/plugins/client_metrics_sender.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:gamelift)

module Aws::GameLift
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
    add_plugin(Aws::Plugins::ClientMetrics)
    add_plugin(Aws::Plugins::ClientMetricsSender)
    add_plugin(Aws::Plugins::TransferEncoding)
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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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
    # [ Add FlexMatch to a Game Client][1]
    #
    # [ FlexMatch Events Reference][2]
    #
    # **Related operations**
    #
    # * StartMatchmaking
    #
    # * DescribeMatchmaking
    #
    # * StopMatchmaking
    #
    # * AcceptMatch
    #
    # * StartMatchBackfill
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-events.html
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
    # * CreateAlias
    #
    # * ListAliases
    #
    # * DescribeAlias
    #
    # * UpdateAlias
    #
    # * DeleteAlias
    #
    # * ResolveAlias
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

    # Creates a new Amazon GameLift build record for your game server binary
    # files and points to the location of your game server build files in an
    # Amazon Simple Storage Service (Amazon S3) location.
    #
    # Game server binaries must be combined into a zip file for use with
    # Amazon GameLift.
    #
    # To create new builds directly from a file directory, use the AWS CLI
    # command <b> <a
    # href="https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html">upload-build</a>
    # </b>. This helper command uploads build files and creates a new build
    # record in one step, and automatically handles the necessary
    # permissions.
    #
    # The `CreateBuild` operation should be used only in the following
    # scenarios:
    #
    # * To create a new game build with build files that are in an Amazon S3
    #   bucket under your own AWS account. To use this option, you must
    #   first give Amazon GameLift access to that Amazon S3 bucket. Then
    #   call `CreateBuild` and specify a build name, operating system, and
    #   the Amazon S3 storage location of your game build.
    #
    # * To upload build files directly to Amazon GameLift's Amazon S3
    #   account. To use this option, first call `CreateBuild` and specify a
    #   build name and operating system. This action creates a new build
    #   record and returns an Amazon S3 storage location (bucket and key
    #   only) and temporary access credentials. Use the credentials to
    #   manually upload your build file to the provided storage location
    #   (see the Amazon S3 topic [Uploading Objects][1]). You can upload
    #   build files to the GameLift Amazon S3 location only once.
    #
    # If successful, this operation creates a new build record with a unique
    # build ID and places it in `INITIALIZED` status. You can use
    # DescribeBuild to check the status of your build. A build must be in
    # `READY` status before it can be used to create fleets.
    #
    # **Learn more**
    #
    # [Uploading Your Game][2]
    # [https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html][3]
    #
    # [ Create a Build with Files in Amazon S3][4]
    #
    # **Related operations**
    #
    # * CreateBuild
    #
    # * ListBuilds
    #
    # * DescribeBuild
    #
    # * UpdateBuild
    #
    # * DeleteBuild
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [3]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build
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

    # Creates a new fleet to run your game servers. whether they are custom
    # game builds or Realtime Servers with game-specific script. A fleet is
    # a set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of
    # which can host multiple game sessions. When creating a fleet, you
    # choose the hardware specifications, set some configuration options,
    # and specify the game server to deploy on the new fleet.
    #
    # To create a new fleet, you must provide the following: (1) a fleet
    # name, (2) an EC2 instance type and fleet type (spot or on-demand), (3)
    # the build ID for your game build or script ID if using Realtime
    # Servers, and (4) a runtime configuration, which determines how game
    # servers will run on each instance in the fleet.
    #
    # If the `CreateFleet` call is successful, Amazon GameLift performs the
    # following tasks. You can track the process of a fleet by checking the
    # fleet status or by monitoring fleet creation events:
    #
    # * Creates a fleet record. Status: `NEW`.
    #
    # * Begins writing events to the fleet event log, which can be accessed
    #   in the Amazon GameLift console.
    #
    # * Sets the fleet's target capacity to 1 (desired instances), which
    #   triggers Amazon GameLift to start one new EC2 instance.
    #
    # * Downloads the game build or Realtime script to the new instance and
    #   installs it. Statuses: `DOWNLOADING`, `VALIDATING`, `BUILDING`.
    #
    # * Starts launching server processes on the instance. If the fleet is
    #   configured to run multiple server processes per instance, Amazon
    #   GameLift staggers each process launch by a few seconds. Status:
    #   `ACTIVATING`.
    #
    # * Sets the fleet's status to `ACTIVE` as soon as one server process
    #   is ready to host a game session.
    #
    # **Learn more**
    #
    # [ Setting Up Fleets][1]
    #
    # [ Debug Fleet Creation Issues][2]
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * DescribeFleetAttributes
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A human-readable description of a fleet.
    #
    # @option params [String] :build_id
    #   A unique identifier for a build to be deployed on the new fleet. You
    #   can use either the build ID or ARN value. The custom game server build
    #   must have been successfully uploaded to Amazon GameLift and be in a
    #   `READY` status. This fleet setting cannot be changed once the fleet is
    #   created.
    #
    # @option params [String] :script_id
    #   A unique identifier for a Realtime script to be deployed on the new
    #   fleet. You can use either the script ID or ARN value. The Realtime
    #   script must have been successfully uploaded to Amazon GameLift. This
    #   fleet setting cannot be changed once the fleet is created.
    #
    # @option params [String] :server_launch_path
    #   This parameter is no longer used. Instead, specify a server launch
    #   path using the `RuntimeConfiguration` parameter. Requests that specify
    #   a server launch path and launch parameters instead of a runtime
    #   configuration will continue to work.
    #
    # @option params [String] :server_launch_parameters
    #   This parameter is no longer used. Instead, specify server launch
    #   parameters in the `RuntimeConfiguration` parameter. (Requests that
    #   specify a server launch path and launch parameters instead of a
    #   runtime configuration will continue to work.)
    #
    # @option params [Array<String>] :log_paths
    #   This parameter is no longer used. Instead, to specify where Amazon
    #   GameLift should store log files once a server process shuts down, use
    #   the Amazon GameLift server API `ProcessReady()` and specify one or
    #   more directory paths in `logParameters`. See more information in the
    #   [Server API Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process
    #
    # @option params [required, String] :ec2_instance_type
    #   The name of an EC2 instance type that is supported in Amazon GameLift.
    #   A fleet instance type determines the computing resources of each
    #   instance in the fleet, including CPU, memory, storage, and networking
    #   capacity. Amazon GameLift supports the following EC2 instance types.
    #   See [Amazon EC2 Instance Types][1] for detailed descriptions.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #
    # @option params [Array<Types::IpPermission>] :ec2_inbound_permissions
    #   Range of IP addresses and port settings that permit inbound traffic to
    #   access game sessions that are running on the fleet. For fleets using a
    #   custom game build, this parameter is required before game sessions
    #   running on the fleet can accept connections. For Realtime Servers
    #   fleets, Amazon GameLift automatically sets TCP and UDP ranges for use
    #   by the Realtime servers. You can specify multiple permission settings
    #   or add more by updating the fleet.
    #
    # @option params [String] :new_game_session_protection_policy
    #   A game session protection policy to apply to all instances in this
    #   fleet. If this parameter is not set, instances in this fleet default
    #   to no protection. You can change a fleet's protection policy using
    #   UpdateFleetAttributes, but this change will only affect sessions
    #   created after the policy change. You can also set protection for
    #   individual instances using UpdateGameSession.
    #
    #   * **NoProtection** - The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** - If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #
    # @option params [Types::RuntimeConfiguration] :runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. Server processes run either a custom game build executable or a
    #   Realtime script. The runtime configuration defines the server
    #   executables or launch script file, launch parameters, and the number
    #   of processes to run concurrently on each instance. When creating a
    #   fleet, the runtime configuration must have at least one server process
    #   configuration; otherwise the request fails with an invalid request
    #   exception. (This parameter replaces the parameters `ServerLaunchPath`
    #   and `ServerLaunchParameters`, although requests that contain values
    #   for these parameters instead of a runtime configuration will continue
    #   to work.) This parameter is required unless the parameters
    #   `ServerLaunchPath` and `ServerLaunchParameters` are defined. Runtime
    #   configuration replaced these parameters, but fleets that use them will
    #   continue to work.
    #
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   A policy that limits the number of game sessions an individual player
    #   can create over a span of time for this fleet.
    #
    # @option params [Array<String>] :metric_groups
    #   The name of an Amazon CloudWatch metric group to add this fleet to. A
    #   metric group aggregates the metrics for all fleets in the group.
    #   Specify an existing metric group name, or provide a new name to create
    #   a new metric group. A fleet can only be included in one metric group
    #   at a time.
    #
    # @option params [String] :peer_vpc_aws_account_id
    #   A unique identifier for the AWS account with the VPC that you want to
    #   peer your Amazon GameLift fleet with. You can find your account ID in
    #   the AWS Management Console under account settings.
    #
    # @option params [String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same Region as your
    #   fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the AWS
    #   Management Console. Learn more about VPC peering in [VPC Peering with
    #   Amazon GameLift Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @option params [String] :fleet_type
    #   Indicates whether to use On-Demand instances or Spot instances for
    #   this fleet. If empty, the default is `ON_DEMAND`. Both categories of
    #   instances use identical hardware and configurations based on the
    #   instance type selected for this fleet. Learn more about [ On-Demand
    #   versus Spot Instances][1].
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
    #   a role or look up a role's ARN from the [IAM dashboard][1] in the AWS
    #   Management Console. Learn more about using on-box credentials for your
    #   game servers at [ Access external resources from a game server][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html
    #
    # @option params [Types::CertificateConfiguration] :certificate_configuration
    #   Indicates whether to generate a TLS/SSL certificate for the new fleet.
    #   TLS certificates are used for encrypting traffic between game clients
    #   and game servers running on GameLift. If this parameter is not
    #   specified, the default value, DISABLED, is used. This fleet setting
    #   cannot be changed once the fleet is created. Learn more at [Securing
    #   Client/Server Communication][1].
    #
    #   Note: This feature requires the AWS Certificate Manager (ACM) service,
    #   which is available in the AWS global partition but not in all other
    #   partitions. When working in a partition that does not support this
    #   feature, a request for a new fleet with certificate generation results
    #   fails with a 4xx unsupported Region error.
    #
    #   Valid values include:
    #
    #   * **GENERATED** - Generate a TLS/SSL certificate for this fleet.
    #
    #   * **DISABLED** - (default) Do not generate a TLS/SSL certificate for
    #     this fleet.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-howitworks.html#gamelift-howitworks-security
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new fleet resource. Tags are
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
    # @return [Types::CreateFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetOutput#fleet_attributes #fleet_attributes} => Types::FleetAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     name: "NonZeroAndMaxString", # required
    #     description: "NonZeroAndMaxString",
    #     build_id: "BuildId",
    #     script_id: "ScriptId",
    #     server_launch_path: "NonZeroAndMaxString",
    #     server_launch_parameters: "NonZeroAndMaxString",
    #     log_paths: ["NonZeroAndMaxString"],
    #     ec2_instance_type: "t2.micro", # required, accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge
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
    #           launch_path: "NonZeroAndMaxString", # required
    #           parameters: "NonZeroAndMaxString",
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
    #   resp.fleet_attributes.instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge"
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Creates a multiplayer game session for players. This action creates a
    # game session record and assigns an available server process in the
    # specified fleet to host the game session. A fleet must have an
    # `ACTIVE` status before a game session can be created in it.
    #
    # To create a game session, specify either fleet ID or alias ID and
    # indicate a maximum number of players to allow in the game session. You
    # can also provide a name and game-specific properties for this game
    # session. If successful, a GameSession object is returned containing
    # the game session properties and other settings you specified.
    #
    # **Idempotency tokens.** You can add a token that uniquely identifies
    # game session requests. This is useful for ensuring that game session
    # requests are idempotent. Multiple requests with the same idempotency
    # token are processed only once; subsequent requests return the original
    # result. All response values are the same with the exception of game
    # session status, which may change.
    #
    # **Resource creation limits.** If you are creating a game session on a
    # fleet with a resource creation limit policy in force, then you must
    # specify a creator ID. Without this ID, Amazon GameLift has no way to
    # evaluate the policy for this new game session request.
    #
    # **Player acceptance policy.** By default, newly created game sessions
    # are open to new players. You can restrict new player access by using
    # UpdateGameSession to change the game session's player session
    # creation policy.
    #
    # **Game session logs.** Logs are retained for all active game sessions
    # for 14 days. To access the logs, call GetGameSessionLogUrl to download
    # the log files.
    #
    # *Available in Amazon GameLift Local.*
    #
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
    #
    # @option params [String] :fleet_id
    #   A unique identifier for a fleet to create a game session in. You can
    #   use either the fleet ID or ARN value. Each request must reference
    #   either a fleet ID or alias ID, but not both.
    #
    # @option params [String] :alias_id
    #   A unique identifier for an alias associated with the fleet to create a
    #   game session in. You can use either the alias ID or ARN value. Each
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
    #   Set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [String] :creator_id
    #   A unique identifier for a player or entity creating the game session.
    #   This ID is used to enforce a resource protection policy (if one
    #   exists) that limits the number of concurrent active game sessions one
    #   player can have.
    #
    # @option params [String] :game_session_id
    #   *This parameter is no longer preferred. Please use `IdempotencyToken`
    #   instead.* Custom string that uniquely identifies a request for a new
    #   game session. Maximum token length is 48 characters. If provided, this
    #   string is included in the new game session's ID. (A game session ARN
    #   has the following format:
    #   `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`.)
    #
    # @option params [String] :idempotency_token
    #   Custom string that uniquely identifies a request for a new game
    #   session. Maximum token length is 48 characters. If provided, this
    #   string is included in the new game session's ID. (A game session ARN
    #   has the following format:
    #   `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`.) Idempotency tokens remain in use for 30 days
    #   after a game session has ended; game session objects are retained for
    #   this time period and then deleted.
    #
    # @option params [String] :game_session_data
    #   Set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the GameSession
    #   object with a request to start a new game session (see [Start a Game
    #   Session][1]).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @return [Types::CreateGameSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGameSessionOutput#game_session #game_session} => Types::GameSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_session({
    #     fleet_id: "FleetId",
    #     alias_id: "AliasId",
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
    #     game_session_data: "GameSessionData",
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSession AWS API Documentation
    #
    # @overload create_game_session(params = {})
    # @param [Hash] params ({})
    def create_game_session(params = {}, options = {})
      req = build_request(:create_game_session, params)
      req.send_request(options)
    end

    # Establishes a new queue for processing requests to place new game
    # sessions. A queue identifies where new game sessions can be hosted --
    # by specifying a list of destinations (fleets or aliases) -- and how
    # long requests can wait in the queue before timing out. You can set up
    # a queue to try to place game sessions on fleets in multiple Regions.
    # To add placement requests to a queue, call StartGameSessionPlacement
    # and reference the queue name.
    #
    # **Destination order.** When processing a request for a game session,
    # Amazon GameLift tries each destination in order until it finds one
    # with available resources to host the new game session. A queue's
    # default order is determined by how destinations are listed. The
    # default order is overridden when a game session placement request
    # provides player latency information. Player latency information
    # enables Amazon GameLift to prioritize destinations where players
    # report the lowest average latency, as a result placing the new game
    # session where the majority of players will have the best possible
    # gameplay experience.
    #
    # **Player latency policies.** For placement requests containing player
    # latency information, use player latency policies to protect individual
    # players from very high latencies. With a latency cap, even when a
    # destination can deliver a low latency for most players, the game is
    # not placed where any individual player is reporting latency higher
    # than a policy's maximum. A queue can have multiple latency policies,
    # which are enforced consecutively starting with the policy with the
    # lowest latency cap. Use multiple policies to gradually relax latency
    # controls; for example, you might set a policy with a low latency cap
    # for the first 60 seconds, a second policy with a higher cap for the
    # next 60 seconds, etc.
    #
    # To create a new queue, provide a name, timeout value, a list of
    # destinations and, if desired, a set of latency policies. If
    # successful, a new queue object is returned.
    #
    # * CreateGameSessionQueue
    #
    # * DescribeGameSessionQueues
    #
    # * UpdateGameSessionQueue
    #
    # * DeleteGameSessionQueue
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
    #   A collection of latency policies to apply when processing game
    #   sessions placement requests with player latency information. Multiple
    #   policies are evaluated in order of the maximum latency value, starting
    #   with the lowest latency values. With just one policy, the policy is
    #   enforced at the start of the game session placement for the duration
    #   period. With multiple policies, each policy is enforced consecutively
    #   for its duration period. For example, a queue might enforce a
    #   60-second policy followed by a 120-second policy, and then no policy
    #   for the remainder of the placement. A player latency policy must set a
    #   value for `MaximumIndividualPlayerLatencyMilliseconds`. If none is
    #   set, this API request fails.
    #
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   A list of fleets that can be used to fulfill game session placement
    #   requests in the queue. Fleets are identified by either a fleet ARN or
    #   a fleet alias ARN. Destinations are listed in default preference
    #   order.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionQueue AWS API Documentation
    #
    # @overload create_game_session_queue(params = {})
    # @param [Hash] params ({})
    def create_game_session_queue(params = {}, options = {})
      req = build_request(:create_game_session_queue, params)
      req.send_request(options)
    end

    # Defines a new matchmaking configuration for use with FlexMatch. A
    # matchmaking configuration sets out guidelines for matching players and
    # getting the matches into games. You can set up multiple matchmaking
    # configurations to handle the scenarios needed for your game. Each
    # matchmaking ticket (StartMatchmaking or StartMatchBackfill) specifies
    # a configuration for the match and provides player attributes to
    # support the configuration being used.
    #
    # To create a matchmaking configuration, at a minimum you must specify
    # the following: configuration name; a rule set that governs how to
    # evaluate players and find acceptable matches; a game session queue to
    # use when placing a new game session for the match; and the maximum
    # time allowed for a matchmaking attempt.
    #
    # There are two ways to track the progress of matchmaking tickets: (1)
    # polling ticket status with DescribeMatchmaking; or (2) receiving
    # notifications with Amazon Simple Notification Service (SNS). To use
    # notifications, you first need to set up an SNS topic to receive the
    # notifications, and provide the topic ARN in the matchmaking
    # configuration. Since notifications promise only "best effort"
    # delivery, we recommend calling `DescribeMatchmaking` if no
    # notifications are received within 30 seconds.
    #
    # **Learn more**
    #
    # [ Design a FlexMatch Matchmaker][1]
    #
    # [ Setting up Notifications for Matchmaking][2]
    #
    # **Related operations**
    #
    # * CreateMatchmakingConfiguration
    #
    # * DescribeMatchmakingConfigurations
    #
    # * UpdateMatchmakingConfiguration
    #
    # * DeleteMatchmakingConfiguration
    #
    # * CreateMatchmakingRuleSet
    #
    # * DescribeMatchmakingRuleSets
    #
    # * ValidateMatchmakingRuleSet
    #
    # * DeleteMatchmakingRuleSet
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html
    #
    # @option params [required, String] :name
    #   A unique identifier for a matchmaking configuration. This name is used
    #   to identify the configuration associated with a matchmaking request or
    #   ticket.
    #
    # @option params [String] :description
    #   A human-readable description of the matchmaking configuration.
    #
    # @option params [required, Array<String>] :game_session_queue_arns
    #   Amazon Resource Name ([ARN][1]) that is assigned to a GameLift game
    #   session queue resource and uniquely identifies it. ARNs are unique
    #   across all Regions. These queues are used when placing game sessions
    #   for matches that are created with this matchmaking configuration.
    #   Queues can be located in any Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Integer] :request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that fail due to timing out can
    #   be resubmitted as needed.
    #
    # @option params [Integer] :acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match. If any player rejects the match or fails to accept
    #   before the timeout, the ticket continues to look for an acceptable
    #   match.
    #
    # @option params [required, Boolean] :acceptance_required
    #   A flag that determines whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to `TRUE`.
    #
    # @option params [required, String] :rule_set_name
    #   A unique identifier for a matchmaking rule set to use with this
    #   configuration. You can use either the rule set name or ARN value. A
    #   matchmaking configuration can only use rule sets that are defined in
    #   the same Region.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive matchmaking notifications.
    #
    # @option params [Integer] :additional_player_count
    #   The number of player slots in a match to keep open for future players.
    #   For example, assume that the configuration's rule set specifies a
    #   match for a single 12-person team. If the additional player count is
    #   set to 2, only 10 players are initially selected for the match.
    #
    # @option params [String] :custom_event_data
    #   Information to be added to all events related to this matchmaking
    #   configuration.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of custom properties for a game session, formatted as key-value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match.
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
    #   that is created for a successful match.
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
    #   FlexMatch][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html
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
    #     game_session_queue_arns: ["ArnStringModel"], # required
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
    # * [Build a Rule Set][1]
    #
    # * [Design a Matchmaker][2]
    #
    # * [Matchmaking with FlexMatch][3]
    #
    # **Related operations**
    #
    # * CreateMatchmakingConfiguration
    #
    # * DescribeMatchmakingConfigurations
    #
    # * UpdateMatchmakingConfiguration
    #
    # * DeleteMatchmakingConfiguration
    #
    # * CreateMatchmakingRuleSet
    #
    # * DescribeMatchmakingRuleSets
    #
    # * ValidateMatchmakingRuleSet
    #
    # * DeleteMatchmakingRuleSet
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html
    #
    # @option params [required, String] :name
    #   A unique identifier for a matchmaking rule set. A matchmaking
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

    # Reserves an open player slot in an active game session. Before a
    # player can be added, a game session must have an `ACTIVE` status, have
    # a creation policy of `ALLOW_ALL`, and have an open player slot. To add
    # a group of players to a game session, use CreatePlayerSessions. When
    # the player connects to the game server and references a player session
    # ID, the game server contacts the Amazon GameLift service to validate
    # the player reservation and accept the player.
    #
    # To create a player session, specify a game session ID, player ID, and
    # optionally a string of player data. If successful, a slot is reserved
    # in the game session for the player and a new PlayerSession object is
    # returned. Player sessions cannot be updated.
    #
    # *Available in Amazon GameLift Local.*
    #
    # * CreatePlayerSession
    #
    # * CreatePlayerSessions
    #
    # * DescribePlayerSessions
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to add a player to.
    #
    # @option params [required, String] :player_id
    #   A unique identifier for a player. Player IDs are developer-defined.
    #
    # @option params [String] :player_data
    #   Developer-defined information related to a player. Amazon GameLift
    #   does not use this data, so it can be formatted as needed for use in
    #   the game.
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

    # Reserves open slots in a game session for a group of players. Before
    # players can be added, a game session must have an `ACTIVE` status,
    # have a creation policy of `ALLOW_ALL`, and have an open player slot.
    # To add a single player to a game session, use CreatePlayerSession.
    # When a player connects to the game server and references a player
    # session ID, the game server contacts the Amazon GameLift service to
    # validate the player reservation and accept the player.
    #
    # To create player sessions, specify a game session ID, a list of player
    # IDs, and optionally a set of player data strings. If successful, a
    # slot is reserved in the game session for each player and a set of new
    # PlayerSession objects is returned. Player sessions cannot be updated.
    #
    # *Available in Amazon GameLift Local.*
    #
    # * CreatePlayerSession
    #
    # * CreatePlayerSessions
    #
    # * DescribePlayerSessions
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
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
    #   the game. Player data strings for player IDs not included in the
    #   `PlayerIds` parameter are ignored.
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
    # **Related operations**
    #
    # * CreateScript
    #
    # * ListScripts
    #
    # * DescribeScript
    #
    # * UpdateScript
    #
    # * DeleteScript
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a script. Script names do
    #   not need to be unique. You can use UpdateScript to change this value
    #   later.
    #
    # @option params [String] :version
    #   The version that is associated with a build or script. Version strings
    #   do not need to be unique. You can use UpdateScript to change this
    #   value later.
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
    # @option params [String, IO] :zip_file
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
    # * CreateVpcPeeringAuthorization
    #
    # * DescribeVpcPeeringAuthorizations
    #
    # * DeleteVpcPeeringAuthorization
    #
    # * CreateVpcPeeringConnection
    #
    # * DescribeVpcPeeringConnections
    #
    # * DeleteVpcPeeringConnection
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @option params [required, String] :game_lift_aws_account_id
    #   A unique identifier for the AWS account that you use to manage your
    #   Amazon GameLift fleet. You can find your Account ID in the AWS
    #   Management Console under account settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same Region where your
    #   fleet is deployed. Look up a VPC ID using the [VPC Dashboard][1] in
    #   the AWS Management Console. Learn more about VPC peering in [VPC
    #   Peering with Amazon GameLift Fleets][2].
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
    # * CreateVpcPeeringAuthorization
    #
    # * DescribeVpcPeeringAuthorizations
    #
    # * DeleteVpcPeeringAuthorization
    #
    # * CreateVpcPeeringConnection
    #
    # * DescribeVpcPeeringConnections
    #
    # * DeleteVpcPeeringConnection
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet. You can use either the fleet ID or
    #   ARN value. This tells Amazon GameLift which GameLift VPC to peer with.
    #
    # @option params [required, String] :peer_vpc_aws_account_id
    #   A unique identifier for the AWS account with the VPC that you want to
    #   peer your Amazon GameLift fleet with. You can find your Account ID in
    #   the AWS Management Console under account settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same Region where your
    #   fleet is deployed. Look up a VPC ID using the [VPC Dashboard][1] in
    #   the AWS Management Console. Learn more about VPC peering in [VPC
    #   Peering with Amazon GameLift Fleets][2].
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

    # Deletes an alias. This action removes all record of the alias. Game
    # clients attempting to access a server process using the deleted alias
    # receive an error. To delete an alias, specify the alias ID to be
    # deleted.
    #
    # * CreateAlias
    #
    # * ListAliases
    #
    # * DescribeAlias
    #
    # * UpdateAlias
    #
    # * DeleteAlias
    #
    # * ResolveAlias
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
    #     alias_id: "AliasId", # required
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

    # Deletes a build. This action permanently deletes the build record and
    # any uploaded build files.
    #
    # To delete a build, specify its ID. Deleting a build does not affect
    # the status of any active fleets using the build, but you can no longer
    # create new fleets with the deleted build.
    #
    # **Learn more**
    #
    # [ Working with Builds][1]
    #
    # **Related operations**
    #
    # * CreateBuild
    #
    # * ListBuilds
    #
    # * DescribeBuild
    #
    # * UpdateBuild
    #
    # * DeleteBuild
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html
    #
    # @option params [required, String] :build_id
    #   A unique identifier for a build to delete. You can use either the
    #   build ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_build({
    #     build_id: "BuildId", # required
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

    # Deletes everything related to a fleet. Before deleting a fleet, you
    # must set the fleet's desired capacity to zero. See
    # UpdateFleetCapacity.
    #
    # If the fleet being deleted has a VPC peering connection, you first
    # need to get a valid authorization (good for 24 hours) by calling
    # CreateVpcPeeringAuthorization. You do not need to explicitly delete
    # the VPC peering connection--this is done as part of the delete fleet
    # process.
    #
    # This action removes the fleet's resources and the fleet record. Once
    # a fleet is deleted, you can no longer use that fleet.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * DescribeFleetAttributes
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to be deleted. You can use either the
    #   fleet ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     fleet_id: "FleetId", # required
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

    # Deletes a game session queue. This action means that any
    # StartGameSessionPlacement requests that reference this queue will
    # fail. To delete a queue, specify the queue name.
    #
    # * CreateGameSessionQueue
    #
    # * DescribeGameSessionQueues
    #
    # * UpdateGameSessionQueue
    #
    # * DeleteGameSessionQueue
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
    #     name: "GameSessionQueueName", # required
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
    # **Related operations**
    #
    # * CreateMatchmakingConfiguration
    #
    # * DescribeMatchmakingConfigurations
    #
    # * UpdateMatchmakingConfiguration
    #
    # * DeleteMatchmakingConfiguration
    #
    # * CreateMatchmakingRuleSet
    #
    # * DescribeMatchmakingRuleSets
    #
    # * ValidateMatchmakingRuleSet
    #
    # * DeleteMatchmakingRuleSet
    #
    # @option params [required, String] :name
    #   A unique identifier for a matchmaking configuration. You can use
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
    # * [Build a Rule Set][1]
    #
    # ^
    #
    # **Related operations**
    #
    # * CreateMatchmakingConfiguration
    #
    # * DescribeMatchmakingConfigurations
    #
    # * UpdateMatchmakingConfiguration
    #
    # * DeleteMatchmakingConfiguration
    #
    # * CreateMatchmakingRuleSet
    #
    # * DescribeMatchmakingRuleSets
    #
    # * ValidateMatchmakingRuleSet
    #
    # * DeleteMatchmakingRuleSet
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html
    #
    # @option params [required, String] :name
    #   A unique identifier for a matchmaking rule set to be deleted. (Note:
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

    # Deletes a fleet scaling policy. This action means that the policy is
    # no longer in force and removes all record of it. To delete a scaling
    # policy, specify both the scaling policy name and the fleet ID it is
    # associated with.
    #
    # To temporarily suspend scaling policies, call StopFleetActions. This
    # operation suspends all policies for the fleet.
    #
    # * DescribeFleetCapacity
    #
    # * UpdateFleetCapacity
    #
    # * DescribeEC2InstanceLimits
    #
    # * Manage scaling policies:
    #
    #   * PutScalingPolicy (auto-scaling)
    #
    #   * DescribeScalingPolicies (auto-scaling)
    #
    #   * DeleteScalingPolicy (auto-scaling)
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to be deleted. You can use either the
    #   fleet ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_policy({
    #     name: "NonZeroAndMaxString", # required
    #     fleet_id: "FleetId", # required
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

    # Deletes a Realtime script. This action permanently deletes the script
    # record. If script files were uploaded, they are also deleted (files
    # stored in an S3 bucket are not deleted).
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
    # **Related operations**
    #
    # * CreateScript
    #
    # * ListScripts
    #
    # * DescribeScript
    #
    # * UpdateScript
    #
    # * DeleteScript
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    #
    # @option params [required, String] :script_id
    #   A unique identifier for a Realtime script to delete. You can use
    #   either the script ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_script({
    #     script_id: "ScriptId", # required
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
    # * CreateVpcPeeringAuthorization
    #
    # * DescribeVpcPeeringAuthorizations
    #
    # * DeleteVpcPeeringAuthorization
    #
    # * CreateVpcPeeringConnection
    #
    # * DescribeVpcPeeringConnections
    #
    # * DeleteVpcPeeringConnection
    #
    # @option params [required, String] :game_lift_aws_account_id
    #   A unique identifier for the AWS account that you use to manage your
    #   Amazon GameLift fleet. You can find your Account ID in the AWS
    #   Management Console under account settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same Region where your
    #   fleet is deployed. Look up a VPC ID using the [VPC Dashboard][1] in
    #   the AWS Management Console. Learn more about VPC peering in [VPC
    #   Peering with Amazon GameLift Fleets][2].
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
    # * CreateVpcPeeringAuthorization
    #
    # * DescribeVpcPeeringAuthorizations
    #
    # * DeleteVpcPeeringAuthorization
    #
    # * CreateVpcPeeringConnection
    #
    # * DescribeVpcPeeringConnections
    #
    # * DeleteVpcPeeringConnection
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet. This fleet specified must match the
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

    # Retrieves properties for an alias. This operation returns all alias
    # metadata and settings. To get an alias's target fleet ID only, use
    # `ResolveAlias`.
    #
    # To get alias properties, specify the alias ID. If successful, the
    # requested alias record is returned.
    #
    # * CreateAlias
    #
    # * ListAliases
    #
    # * DescribeAlias
    #
    # * UpdateAlias
    #
    # * DeleteAlias
    #
    # * ResolveAlias
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
    #     alias_id: "AliasId", # required
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

    # Retrieves properties for a build. To request a build record, specify a
    # build ID. If successful, an object containing the build properties is
    # returned.
    #
    # **Learn more**
    #
    # [ Working with Builds][1]
    #
    # **Related operations**
    #
    # * CreateBuild
    #
    # * ListBuilds
    #
    # * DescribeBuild
    #
    # * UpdateBuild
    #
    # * DeleteBuild
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html
    #
    # @option params [required, String] :build_id
    #   A unique identifier for a build to retrieve properties for. You can
    #   use either the build ID or ARN value.
    #
    # @return [Types::DescribeBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_build({
    #     build_id: "BuildId", # required
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

    # Retrieves the following information for the specified EC2 instance
    # type:
    #
    # * maximum number of instances allowed per AWS account (service limit)
    #
    # * current usage level for the AWS account
    #
    # Service limits vary depending on Region. Available Regions for Amazon
    # GameLift can be found in the AWS Management Console for Amazon
    # GameLift (see the drop-down list in the upper right corner).
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * Update fleets:
    #
    #   * UpdateFleetAttributes
    #
    #   * UpdateFleetCapacity
    #
    #   * UpdateFleetPortSettings
    #
    #   * UpdateRuntimeConfiguration
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [String] :ec2_instance_type
    #   Name of an EC2 instance type that is supported in Amazon GameLift. A
    #   fleet instance type determines the computing resources of each
    #   instance in the fleet, including CPU, memory, storage, and networking
    #   capacity. Amazon GameLift supports the following EC2 instance types.
    #   See [Amazon EC2 Instance Types][1] for detailed descriptions. Leave
    #   this parameter blank to retrieve limits for all types.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #
    # @return [Types::DescribeEC2InstanceLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEC2InstanceLimitsOutput#ec2_instance_limits #ec2_instance_limits} => Array&lt;Types::EC2InstanceLimit&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ec2_instance_limits({
    #     ec2_instance_type: "t2.micro", # accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge
    #   })
    #
    # @example Response structure
    #
    #   resp.ec2_instance_limits #=> Array
    #   resp.ec2_instance_limits[0].ec2_instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge"
    #   resp.ec2_instance_limits[0].current_instances #=> Integer
    #   resp.ec2_instance_limits[0].instance_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeEC2InstanceLimits AWS API Documentation
    #
    # @overload describe_ec2_instance_limits(params = {})
    # @param [Hash] params ({})
    def describe_ec2_instance_limits(params = {}, options = {})
      req = build_request(:describe_ec2_instance_limits, params)
      req.send_request(options)
    end

    # Retrieves fleet properties, including metadata, status, and
    # configuration, for one or more fleets. You can request attributes for
    # all fleets, or specify a list of one or more fleet IDs. When
    # requesting multiple fleets, use the pagination parameters to retrieve
    # results as a set of sequential pages. If successful, a FleetAttributes
    # object is returned for each requested fleet ID. When specifying a list
    # of fleet IDs, attribute objects are returned only for fleets that
    # currently exist.
    #
    # <note markdown="1"> Some API actions may limit the number of fleet IDs allowed in one
    # request. If a request exceeds this limit, the request fails and the
    # error message includes the maximum allowed.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [Array<String>] :fleet_ids
    #   A unique identifier for a fleet(s) to retrieve attributes for. You can
    #   use either the fleet ID or ARN value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @return [Types::DescribeFleetAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetAttributesOutput#fleet_attributes #fleet_attributes} => Array&lt;Types::FleetAttributes&gt;
    #   * {Types::DescribeFleetAttributesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_attributes({
    #     fleet_ids: ["FleetId"],
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
    #   resp.fleet_attributes[0].instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge"
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

    # Retrieves the current status of fleet capacity for one or more fleets.
    # This information includes the number of instances that have been
    # requested for the fleet and the number currently active. You can
    # request capacity for all fleets, or specify a list of one or more
    # fleet IDs. When requesting multiple fleets, use the pagination
    # parameters to retrieve results as a set of sequential pages. If
    # successful, a FleetCapacity object is returned for each requested
    # fleet ID. When specifying a list of fleet IDs, attribute objects are
    # returned only for fleets that currently exist.
    #
    # <note markdown="1"> Some API actions may limit the number of fleet IDs allowed in one
    # request. If a request exceeds this limit, the request fails and the
    # error message includes the maximum allowed.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [Array<String>] :fleet_ids
    #   A unique identifier for a fleet(s) to retrieve capacity information
    #   for. You can use either the fleet ID or ARN value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @return [Types::DescribeFleetCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetCapacityOutput#fleet_capacity #fleet_capacity} => Array&lt;Types::FleetCapacity&gt;
    #   * {Types::DescribeFleetCapacityOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_capacity({
    #     fleet_ids: ["FleetId"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_capacity #=> Array
    #   resp.fleet_capacity[0].fleet_id #=> String
    #   resp.fleet_capacity[0].instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge"
    #   resp.fleet_capacity[0].instance_counts.desired #=> Integer
    #   resp.fleet_capacity[0].instance_counts.minimum #=> Integer
    #   resp.fleet_capacity[0].instance_counts.maximum #=> Integer
    #   resp.fleet_capacity[0].instance_counts.pending #=> Integer
    #   resp.fleet_capacity[0].instance_counts.active #=> Integer
    #   resp.fleet_capacity[0].instance_counts.idle #=> Integer
    #   resp.fleet_capacity[0].instance_counts.terminating #=> Integer
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

    # Retrieves entries from the specified fleet's event log. You can
    # specify a time range to limit the result set. Use the pagination
    # parameters to retrieve results as a set of sequential pages. If
    # successful, a collection of event log entries matching the request are
    # returned.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to get event logs for. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Earliest date to retrieve event logs for. If no start time is
    #   specified, this call returns entries starting from when the fleet was
    #   created to the specified end time. Format is a number expressed in
    #   Unix time as milliseconds (ex: "1469498468.057").
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Most recent date to retrieve event logs for. If no end time is
    #   specified, this call returns entries from the specified start time up
    #   to the present. Format is a number expressed in Unix time as
    #   milliseconds (ex: "1469498468.057").
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::DescribeFleetEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetEventsOutput#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::DescribeFleetEventsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_events({
    #     fleet_id: "FleetId", # required
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

    # Retrieves the inbound connection permissions for a fleet. Connection
    # permissions include a range of IP addresses and port settings that
    # incoming traffic can use to access server processes in the fleet. To
    # get a fleet's inbound connection permissions, specify a fleet ID. If
    # successful, a collection of IpPermission objects is returned for the
    # requested fleet ID. If the requested fleet has been deleted, the
    # result set is empty.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to retrieve port settings for. You can
    #   use either the fleet ID or ARN value.
    #
    # @return [Types::DescribeFleetPortSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetPortSettingsOutput#inbound_permissions #inbound_permissions} => Array&lt;Types::IpPermission&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_port_settings({
    #     fleet_id: "FleetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.inbound_permissions #=> Array
    #   resp.inbound_permissions[0].from_port #=> Integer
    #   resp.inbound_permissions[0].to_port #=> Integer
    #   resp.inbound_permissions[0].ip_range #=> String
    #   resp.inbound_permissions[0].protocol #=> String, one of "TCP", "UDP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetPortSettings AWS API Documentation
    #
    # @overload describe_fleet_port_settings(params = {})
    # @param [Hash] params ({})
    def describe_fleet_port_settings(params = {}, options = {})
      req = build_request(:describe_fleet_port_settings, params)
      req.send_request(options)
    end

    # Retrieves utilization statistics for one or more fleets. You can
    # request utilization data for all fleets, or specify a list of one or
    # more fleet IDs. When requesting multiple fleets, use the pagination
    # parameters to retrieve results as a set of sequential pages. If
    # successful, a FleetUtilization object is returned for each requested
    # fleet ID. When specifying a list of fleet IDs, utilization objects are
    # returned only for fleets that currently exist.
    #
    # <note markdown="1"> Some API actions may limit the number of fleet IDs allowed in one
    # request. If a request exceeds this limit, the request fails and the
    # error message includes the maximum allowed.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [Array<String>] :fleet_ids
    #   A unique identifier for a fleet(s) to retrieve utilization data for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @return [Types::DescribeFleetUtilizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetUtilizationOutput#fleet_utilization #fleet_utilization} => Array&lt;Types::FleetUtilization&gt;
    #   * {Types::DescribeFleetUtilizationOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_utilization({
    #     fleet_ids: ["FleetId"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_utilization #=> Array
    #   resp.fleet_utilization[0].fleet_id #=> String
    #   resp.fleet_utilization[0].active_server_process_count #=> Integer
    #   resp.fleet_utilization[0].active_game_session_count #=> Integer
    #   resp.fleet_utilization[0].current_player_session_count #=> Integer
    #   resp.fleet_utilization[0].maximum_player_session_count #=> Integer
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

    # Retrieves properties, including the protection policy in force, for
    # one or more game sessions. This action can be used in several ways:
    # (1) provide a `GameSessionId` or `GameSessionArn` to request details
    # for a specific game session; (2) provide either a `FleetId` or an
    # `AliasId` to request properties for all game sessions running on a
    # fleet.
    #
    # To get game session record(s), specify just one of the following: game
    # session ID, fleet ID, or alias ID. You can filter this request by game
    # session status. Use the pagination parameters to retrieve results as a
    # set of sequential pages. If successful, a GameSessionDetail object is
    # returned for each session matching the request.
    #
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
    #
    # @option params [String] :fleet_id
    #   A unique identifier for a fleet to retrieve all game sessions active
    #   on the fleet. You can use either the fleet ID or ARN value.
    #
    # @option params [String] :game_session_id
    #   A unique identifier for the game session to retrieve.
    #
    # @option params [String] :alias_id
    #   A unique identifier for an alias associated with the fleet to retrieve
    #   all game sessions for. You can use either the alias ID or ARN value.
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
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::DescribeGameSessionDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionDetailsOutput#game_session_details #game_session_details} => Array&lt;Types::GameSessionDetail&gt;
    #   * {Types::DescribeGameSessionDetailsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_details({
    #     fleet_id: "FleetId",
    #     game_session_id: "ArnStringModel",
    #     alias_id: "AliasId",
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

    # Retrieves properties and current status of a game session placement
    # request. To get game session placement details, specify the placement
    # ID. If successful, a GameSessionPlacement object is returned.
    #
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
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
    # * CreateGameSessionQueue
    #
    # * DescribeGameSessionQueues
    #
    # * UpdateGameSessionQueue
    #
    # * DeleteGameSessionQueue
    #
    # @option params [Array<String>] :names
    #   A list of queue names to retrieve information for. You can use either
    #   the queue ID or ARN value. To request settings for all queues, leave
    #   this parameter empty.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify a
    #   value.
    #
    # @return [Types::DescribeGameSessionQueuesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionQueuesOutput#game_session_queues #game_session_queues} => Array&lt;Types::GameSessionQueue&gt;
    #   * {Types::DescribeGameSessionQueuesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_queues({
    #     names: ["GameSessionQueueName"],
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

    # Retrieves a set of one or more game sessions. Request a specific game
    # session or request all game sessions on a fleet. Alternatively, use
    # SearchGameSessions to request a set of active game sessions that are
    # filtered by certain criteria. To retrieve protection policy settings
    # for game sessions, use DescribeGameSessionDetails.
    #
    # To get game sessions, specify one of the following: game session ID,
    # fleet ID, or alias ID. You can filter this request by game session
    # status. Use the pagination parameters to retrieve results as a set of
    # sequential pages. If successful, a GameSession object is returned for
    # each game session matching the request.
    #
    # *Available in Amazon GameLift Local.*
    #
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
    #
    # @option params [String] :fleet_id
    #   A unique identifier for a fleet to retrieve all game sessions for. You
    #   can use either the fleet ID or ARN value.
    #
    # @option params [String] :game_session_id
    #   A unique identifier for the game session to retrieve.
    #
    # @option params [String] :alias_id
    #   A unique identifier for an alias associated with the fleet to retrieve
    #   all game sessions for. You can use either the alias ID or ARN value.
    #
    # @option params [String] :status_filter
    #   Game session status to filter results on. Possible game session
    #   statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING`, and
    #   `TERMINATING` (the last two are transitory).
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::DescribeGameSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionsOutput#game_sessions #game_sessions} => Array&lt;Types::GameSession&gt;
    #   * {Types::DescribeGameSessionsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_sessions({
    #     fleet_id: "FleetId",
    #     game_session_id: "ArnStringModel",
    #     alias_id: "AliasId",
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
    # IDs. Use this action to get details on all instances in the fleet or
    # get details on one specific instance.
    #
    # To get a specific instance, specify fleet ID and instance ID. To get
    # all instances in a fleet, specify a fleet ID only. Use the pagination
    # parameters to retrieve results as a set of sequential pages. If
    # successful, an Instance object is returned for each result.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to retrieve instance information for.
    #   You can use either the fleet ID or ARN value.
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
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::DescribeInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancesOutput#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::DescribeInstancesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances({
    #     fleet_id: "FleetId", # required
    #     instance_id: "InstanceId",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].fleet_id #=> String
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].ip_address #=> String
    #   resp.instances[0].dns_name #=> String
    #   resp.instances[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"
    #   resp.instances[0].type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge"
    #   resp.instances[0].status #=> String, one of "PENDING", "ACTIVE", "TERMINATING"
    #   resp.instances[0].creation_time #=> Time
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
    # retrieve ticket information, including status and--once a successful
    # match is made--acquire connection information for the resulting new
    # game session.
    #
    # You can use this operation to track the progress of matchmaking
    # requests (through polling) as an alternative to using event
    # notifications. See more details on tracking matchmaking requests
    # through polling or notifications in StartMatchmaking.
    #
    # To request matchmaking tickets, provide a list of up to 10 ticket IDs.
    # If the request is successful, a ticket object is returned for each
    # requested ID that currently exists.
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a Game Client][1]
    #
    # [ Set Up FlexMatch Event Notification][2]
    #
    # **Related operations**
    #
    # * StartMatchmaking
    #
    # * DescribeMatchmaking
    #
    # * StopMatchmaking
    #
    # * AcceptMatch
    #
    # * StartMatchBackfill
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html
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

    # Retrieves the details of FlexMatch matchmaking configurations. With
    # this operation, you have the following options: (1) retrieve all
    # existing configurations, (2) provide the names of one or more
    # configurations to retrieve, or (3) retrieve all configurations that
    # use a specified rule set name. When requesting multiple items, use the
    # pagination parameters to retrieve results as a set of sequential
    # pages. If successful, a configuration is returned for each requested
    # name. When specifying a list of names, only configurations that
    # currently exist are returned.
    #
    # **Learn more**
    #
    # [ Setting Up FlexMatch Matchmakers][1]
    #
    # **Related operations**
    #
    # * CreateMatchmakingConfiguration
    #
    # * DescribeMatchmakingConfigurations
    #
    # * UpdateMatchmakingConfiguration
    #
    # * DeleteMatchmakingConfiguration
    #
    # * CreateMatchmakingRuleSet
    #
    # * DescribeMatchmakingRuleSets
    #
    # * ValidateMatchmakingRuleSet
    #
    # * DeleteMatchmakingRuleSet
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/matchmaker-build.html
    #
    # @option params [Array<String>] :names
    #   A unique identifier for a matchmaking configuration(s) to retrieve.
    #   You can use either the configuration name or ARN value. To request all
    #   existing configurations, leave this parameter empty.
    #
    # @option params [String] :rule_set_name
    #   A unique identifier for a matchmaking rule set. You can use either the
    #   rule set name or ARN value. Use this parameter to retrieve all
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
    #   action. To start at the beginning of the result set, do not specify a
    #   value.
    #
    # @return [Types::DescribeMatchmakingConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMatchmakingConfigurationsOutput#configurations #configurations} => Array&lt;Types::MatchmakingConfiguration&gt;
    #   * {Types::DescribeMatchmakingConfigurationsOutput#next_token #next_token} => String
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
    # * [Build a Rule Set][1]
    #
    # ^
    #
    # **Related operations**
    #
    # * CreateMatchmakingConfiguration
    #
    # * DescribeMatchmakingConfigurations
    #
    # * UpdateMatchmakingConfiguration
    #
    # * DeleteMatchmakingConfiguration
    #
    # * CreateMatchmakingRuleSet
    #
    # * DescribeMatchmakingRuleSets
    #
    # * ValidateMatchmakingRuleSet
    #
    # * DeleteMatchmakingRuleSet
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html
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
    #   action. To start at the beginning of the result set, do not specify a
    #   value.
    #
    # @return [Types::DescribeMatchmakingRuleSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMatchmakingRuleSetsOutput#rule_sets #rule_sets} => Array&lt;Types::MatchmakingRuleSet&gt;
    #   * {Types::DescribeMatchmakingRuleSetsOutput#next_token #next_token} => String
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

    # Retrieves properties for one or more player sessions. This action can
    # be used in several ways: (1) provide a `PlayerSessionId` to request
    # properties for a specific player session; (2) provide a
    # `GameSessionId` to request properties for all player sessions in the
    # specified game session; (3) provide a `PlayerId` to request properties
    # for all player sessions of a specified player.
    #
    # To get game session record(s), specify only one of the following: a
    # player session ID, a game session ID, or a player ID. You can filter
    # this request by player session status. Use the pagination parameters
    # to retrieve results as a set of sequential pages. If successful, a
    # PlayerSession object is returned for each session matching the
    # request.
    #
    # *Available in Amazon GameLift Local.*
    #
    # * CreatePlayerSession
    #
    # * CreatePlayerSessions
    #
    # * DescribePlayerSessions
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
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
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value. If a
    #   player session ID is specified, this parameter is ignored.
    #
    # @return [Types::DescribePlayerSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePlayerSessionsOutput#player_sessions #player_sessions} => Array&lt;Types::PlayerSession&gt;
    #   * {Types::DescribePlayerSessionsOutput#next_token #next_token} => String
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

    # Retrieves the current runtime configuration for the specified fleet.
    # The runtime configuration tells Amazon GameLift how to launch server
    # processes on instances in the fleet.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to get the runtime configuration for.
    #   You can use either the fleet ID or ARN value.
    #
    # @return [Types::DescribeRuntimeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuntimeConfigurationOutput#runtime_configuration #runtime_configuration} => Types::RuntimeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_runtime_configuration({
    #     fleet_id: "FleetId", # required
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
    # (StopFleetActions). This action does not affect the status of the
    # scaling policies, which remains ACTIVE. To see whether a fleet's
    # scaling policies are in force or suspended, call
    # DescribeFleetAttributes and check the stopped actions.
    #
    # * DescribeFleetCapacity
    #
    # * UpdateFleetCapacity
    #
    # * DescribeEC2InstanceLimits
    #
    # * Manage scaling policies:
    #
    #   * PutScalingPolicy (auto-scaling)
    #
    #   * DescribeScalingPolicies (auto-scaling)
    #
    #   * DeleteScalingPolicy (auto-scaling)
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to retrieve scaling policies for. You
    #   can use either the fleet ID or ARN value.
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
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::DescribeScalingPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingPoliciesOutput#scaling_policies #scaling_policies} => Array&lt;Types::ScalingPolicy&gt;
    #   * {Types::DescribeScalingPoliciesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_policies({
    #     fleet_id: "FleetId", # required
    #     status_filter: "ACTIVE", # accepts ACTIVE, UPDATE_REQUESTED, UPDATING, DELETE_REQUESTED, DELETING, DELETED, ERROR
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_policies #=> Array
    #   resp.scaling_policies[0].fleet_id #=> String
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
    # **Related operations**
    #
    # * CreateScript
    #
    # * ListScripts
    #
    # * DescribeScript
    #
    # * UpdateScript
    #
    # * DeleteScript
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    #
    # @option params [required, String] :script_id
    #   A unique identifier for a Realtime script to retrieve properties for.
    #   You can use either the script ID or ARN value.
    #
    # @return [Types::DescribeScriptOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScriptOutput#script #script} => Types::Script
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_script({
    #     script_id: "ScriptId", # required
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
    # * CreateVpcPeeringAuthorization
    #
    # * DescribeVpcPeeringAuthorizations
    #
    # * DeleteVpcPeeringAuthorization
    #
    # * CreateVpcPeeringConnection
    #
    # * DescribeVpcPeeringConnections
    #
    # * DeleteVpcPeeringConnection
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
    # * CreateVpcPeeringAuthorization
    #
    # * DescribeVpcPeeringAuthorizations
    #
    # * DeleteVpcPeeringAuthorization
    #
    # * CreateVpcPeeringConnection
    #
    # * DescribeVpcPeeringConnections
    #
    # * DeleteVpcPeeringConnection
    #
    # @option params [String] :fleet_id
    #   A unique identifier for a fleet. You can use either the fleet ID or
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
    # game session. When a game session is terminated, Amazon GameLift
    # automatically stores the logs in Amazon S3 and retains them for 14
    # days. Use this URL to download the logs.
    #
    # <note markdown="1"> See the [AWS Service Limits][1] page for maximum log file sizes. Log
    # files that exceed this limit are not saved.
    #
    #  </note>
    #
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift
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
    # for debugging, gathering benchmarking data, or watching activity in
    # real time.
    #
    # Access requires credentials that match the operating system of the
    # instance. For a Windows instance, Amazon GameLift returns a user name
    # and password as strings for use with a Windows Remote Desktop client.
    # For a Linux instance, Amazon GameLift returns a user name and RSA
    # private key, also as strings, for use with an SSH client. The private
    # key must be saved in the proper format to a `.pem` file before using.
    # If you're making this request using the AWS CLI, saving the secret
    # can be handled as part of the GetInstanceAccess request. (See the
    # example later in this topic). For more information on remote access,
    # see [Remotely Accessing an Instance][1].
    #
    # To request access to a specific instance, specify the IDs of both the
    # instance and the fleet it belongs to. You can retrieve a fleet's
    # instance IDs by calling DescribeInstances. If successful, an
    # InstanceAccess object is returned containing the instance's IP
    # address and a set of credentials.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet that contains the instance you want
    #   access to. You can use either the fleet ID or ARN value. The fleet can
    #   be in any of the following statuses: `ACTIVATING`, `ACTIVE`, or
    #   `ERROR`. Fleets with an `ERROR` status may be accessible for a short
    #   time before they are deleted.
    #
    # @option params [required, String] :instance_id
    #   A unique identifier for an instance you want to get access to. You can
    #   access an instance in any status.
    #
    # @return [Types::GetInstanceAccessOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceAccessOutput#instance_access #instance_access} => Types::InstanceAccess
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_access({
    #     fleet_id: "FleetId", # required
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
    # * CreateAlias
    #
    # * ListAliases
    #
    # * DescribeAlias
    #
    # * UpdateAlias
    #
    # * DeleteAlias
    #
    # * ResolveAlias
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
    #   action. To start at the beginning of the result set, do not specify a
    #   value.
    #
    # @return [Types::ListAliasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesOutput#aliases #aliases} => Array&lt;Types::Alias&gt;
    #   * {Types::ListAliasesOutput#next_token #next_token} => String
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

    # Retrieves build records for all builds associated with the AWS account
    # in use. You can limit results to builds that are in a specific status
    # by using the `Status` parameter. Use the pagination parameters to
    # retrieve results in a set of sequential pages.
    #
    # <note markdown="1"> Build records are not listed in any particular order.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Working with Builds][1]
    #
    # **Related operations**
    #
    # * CreateBuild
    #
    # * ListBuilds
    #
    # * DescribeBuild
    #
    # * UpdateBuild
    #
    # * DeleteBuild
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html
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
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::ListBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsOutput#builds #builds} => Array&lt;Types::Build&gt;
    #   * {Types::ListBuildsOutput#next_token #next_token} => String
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

    # Retrieves a collection of fleet records for this AWS account. You can
    # filter the result set to find only those fleets that are deployed with
    # a specific build or script. Use the pagination parameters to retrieve
    # results in sequential pages.
    #
    # <note markdown="1"> Fleet records are not listed in a particular order.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Set Up Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * DescribeFleetAttributes
    #
    # * UpdateFleetAttributes
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [String] :build_id
    #   A unique identifier for a build to return fleets for. Use this
    #   parameter to return only fleets using the specified build. Use either
    #   the build ID or ARN value.To retrieve all fleets, leave this parameter
    #   empty.
    #
    # @option params [String] :script_id
    #   A unique identifier for a Realtime script to return fleets for. Use
    #   this parameter to return only fleets using the specified script. Use
    #   either the script ID or ARN value.To retrieve all fleets, leave this
    #   parameter empty.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::ListFleetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsOutput#fleet_ids #fleet_ids} => Array&lt;String&gt;
    #   * {Types::ListFleetsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets({
    #     build_id: "BuildId",
    #     script_id: "ScriptId",
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

    # Retrieves script records for all Realtime scripts that are associated
    # with the AWS account in use.
    #
    # **Learn more**
    #
    # [Amazon GameLift Realtime Servers][1]
    #
    # **Related operations**
    #
    # * CreateScript
    #
    # * ListScripts
    #
    # * DescribeScript
    #
    # * UpdateScript
    #
    # * DeleteScript
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify a
    #   value.
    #
    # @return [Types::ListScriptsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScriptsOutput#scripts #scripts} => Array&lt;Types::Script&gt;
    #   * {Types::ListScriptsOutput#next_token #next_token} => String
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
    # action handles the permissions necessary to manage tags for the
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
    # **Related operations**
    #
    # * TagResource
    #
    # * UntagResource
    #
    # * ListTagsForResource
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to and uniquely
    #   identifies the GameLift resource that you want to retrieve tags for.
    #   GameLift resource ARNs are included in the data object for the
    #   resource, which can be retrieved by calling a List or Describe action
    #   for the resource type.
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
    # * DescribeFleetCapacity
    #
    # * UpdateFleetCapacity
    #
    # * DescribeEC2InstanceLimits
    #
    # * Manage scaling policies:
    #
    #   * PutScalingPolicy (auto-scaling)
    #
    #   * DescribeScalingPolicies (auto-scaling)
    #
    #   * DeleteScalingPolicy (auto-scaling)
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique. A fleet can have only one scaling
    #   policy with the same name.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to apply this policy to. You can use
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
    #   The settings for a target-based scaling policy.
    #
    # @return [Types::PutScalingPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutScalingPolicyOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy({
    #     name: "NonZeroAndMaxString", # required
    #     fleet_id: "FleetId", # required
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
    # [Uploading Your Game][1]
    #
    # **Related operations**
    #
    # * CreateBuild
    #
    # * ListBuilds
    #
    # * DescribeBuild
    #
    # * UpdateBuild
    #
    # * DeleteBuild
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    #
    # @option params [required, String] :build_id
    #   A unique identifier for a build to get credentials for. You can use
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
    #     build_id: "BuildId", # required
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
    # * CreateAlias
    #
    # * ListAliases
    #
    # * DescribeAlias
    #
    # * UpdateAlias
    #
    # * DeleteAlias
    #
    # * ResolveAlias
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
    #     alias_id: "AliasId", # required
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

    # Retrieves all active game sessions that match a set of search criteria
    # and sorts them in a specified order. You can search or sort by the
    # following game session attributes:
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
    # To search or sort, specify either a fleet ID or an alias ID, and
    # provide a search filter expression, a sort expression, or both. If
    # successful, a collection of GameSession objects matching the request
    # is returned. Use the pagination parameters to retrieve results as a
    # set of sequential pages.
    #
    # You can search for game sessions one fleet at a time only. To find
    # game sessions across multiple fleets, you must search each fleet
    # separately and combine the results. This search feature finds only
    # game sessions that are in `ACTIVE` status. To locate games in statuses
    # other than active, use DescribeGameSessionDetails.
    #
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
    #
    # @option params [String] :fleet_id
    #   A unique identifier for a fleet to search for active game sessions.
    #   You can use either the fleet ID or ARN value. Each request must
    #   reference either a fleet ID or alias ID, but not both.
    #
    # @option params [String] :alias_id
    #   A unique identifier for an alias associated with the fleet to search
    #   for active game sessions. You can use either the alias ID or ARN
    #   value. Each request must reference either a fleet ID or alias ID, but
    #   not both.
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
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   start at the beginning of the result set, do not specify a value.
    #
    # @return [Types::SearchGameSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchGameSessionsOutput#game_sessions #game_sessions} => Array&lt;Types::GameSession&gt;
    #   * {Types::SearchGameSessionsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_game_sessions({
    #     fleet_id: "FleetId",
    #     alias_id: "AliasId",
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

    # Resumes activity on a fleet that was suspended with StopFleetActions.
    # Currently, this operation is used to restart a fleet's auto-scaling
    # activity.
    #
    # To start fleet actions, specify the fleet ID and the type of actions
    # to restart. When auto-scaling fleet actions are restarted, Amazon
    # GameLift once again initiates scaling events as triggered by the
    # fleet's scaling policies. If actions on the fleet were never stopped,
    # this operation will have no effect. You can view a fleet's stopped
    # actions using DescribeFleetAttributes.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * Update fleets:
    #
    #   * UpdateFleetAttributes
    #
    #   * UpdateFleetCapacity
    #
    #   * UpdateFleetPortSettings
    #
    #   * UpdateRuntimeConfiguration
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to start actions on. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<String>] :actions
    #   List of actions to restart on the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fleet_actions({
    #     fleet_id: "FleetId", # required
    #     actions: ["AUTO_SCALING"], # required, accepts AUTO_SCALING
    #   })
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
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
    #
    # @option params [required, String] :placement_id
    #   A unique identifier to assign to the new game session placement. This
    #   value is developer-defined. The value must be unique across all
    #   Regions and cannot be reused unless you are resubmitting a canceled or
    #   timed-out placement request.
    #
    # @option params [required, String] :game_session_queue_name
    #   Name of the queue to use to place the new game session. You can use
    #   either the qieue name or ARN value.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   Set of custom properties for a game session, formatted as key:value
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
    #   Set of values, expressed in milliseconds, indicating the amount of
    #   latency that a player experiences when connected to AWS Regions. This
    #   information is used to try to place the new game session where it can
    #   offer the best possible gameplay experience for the players.
    #
    # @option params [Array<Types::DesiredPlayerSession>] :desired_player_sessions
    #   Set of information on each player to create a player session for.
    #
    # @option params [String] :game_session_data
    #   Set of custom game session properties, formatted as a single string
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
    #     game_session_queue_name: "GameSessionQueueName", # required
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
    #     game_session_data: "GameSessionData",
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

    # Finds new players to fill open slots in an existing game session. This
    # operation can be used to add players to matched games that start with
    # fewer than the maximum number of players or to replace players when
    # they drop out. By backfilling with the same matchmaker used to create
    # the original match, you ensure that new players meet the match
    # criteria and maintain a consistent experience throughout the game
    # session. You can backfill a match anytime after a game session has
    # been created.
    #
    # To request a match backfill, specify a unique ticket ID, the existing
    # game session's ARN, a matchmaking configuration, and a set of data
    # that describes all current players in the game session. If successful,
    # a match backfill ticket is created and returned with status set to
    # QUEUED. The ticket is placed in the matchmaker's ticket pool and
    # processed. Track the status of the ticket to respond as needed.
    #
    # The process of finding backfill matches is essentially identical to
    # the initial matchmaking process. The matchmaker searches the pool and
    # groups tickets together to form potential matches, allowing only one
    # backfill ticket per potential match. Once the a match is formed, the
    # matchmaker creates player sessions for the new players. All tickets in
    # the match are updated with the game session's connection information,
    # and the GameSession object is updated to include matchmaker data on
    # the new players. For more detail on how match backfill requests are
    # processed, see [ How Amazon GameLift FlexMatch Works][1].
    #
    # **Learn more**
    #
    # [ Backfill Existing Games with FlexMatch][2]
    #
    # [ How GameLift FlexMatch Works][1]
    #
    # **Related operations**
    #
    # * StartMatchmaking
    #
    # * DescribeMatchmaking
    #
    # * StopMatchmaking
    #
    # * AcceptMatch
    #
    # * StartMatchBackfill
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html
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
    # @option params [required, String] :game_session_arn
    #   Amazon Resource Name ([ARN][1]) that is assigned to a game session and
    #   uniquely identifies it. This is the same as the game session ID.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<Types::Player>] :players
    #   Match information on all players that are currently assigned to the
    #   game session. This information is used by the matchmaker to find new
    #   players and add them to the existing game.
    #
    #   * PlayerID, PlayerAttributes, Team -\\\\- This information is
    #     maintained in the GameSession object, `MatchmakerData` property, for
    #     all players who are currently assigned to the game session. The
    #     matchmaker data is in JSON syntax, formatted as a string. For more
    #     details, see [ Match Data][1].
    #
    #   * LatencyInMs -\\\\- If the matchmaker uses player latency, include a
    #     latency value, in milliseconds, for the Region that the game session
    #     is currently in. Do not include latency values for any other Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data
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
    #     game_session_arn: "ArnStringModel", # required
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
    # custom matchmaking rules, and starts a new game for the matched
    # players. Each matchmaking request specifies the type of match to build
    # (team configuration, rules for an acceptable match, etc.). The request
    # also specifies the players to find a match for and where to host the
    # new game session for optimal performance. A matchmaking request might
    # start with a single player or a group of players who want to play
    # together. FlexMatch finds additional players as needed to fill the
    # match. Match type, rules, and the queue used to place a new game
    # session are defined in a `MatchmakingConfiguration`.
    #
    # To start matchmaking, provide a unique ticket ID, specify a
    # matchmaking configuration, and include the players to be matched. You
    # must also include a set of player attributes relevant for the
    # matchmaking configuration. If successful, a matchmaking ticket is
    # returned with status set to `QUEUED`. Track the status of the ticket
    # to respond as needed and acquire game session connection information
    # for successfully completed matches.
    #
    # **Tracking ticket status** -- A couple of options are available for
    # tracking the status of matchmaking requests:
    #
    # * Polling -- Call `DescribeMatchmaking`. This operation returns the
    #   full ticket object, including current status and (for completed
    #   tickets) game session connection info. We recommend polling no more
    #   than once every 10 seconds.
    #
    # * Notifications -- Get event notifications for changes in ticket
    #   status using Amazon Simple Notification Service (SNS). Notifications
    #   are easy to set up (see CreateMatchmakingConfiguration) and
    #   typically deliver match status changes faster and more efficiently
    #   than polling. We recommend that you use polling to back up to
    #   notifications (since delivery is not guaranteed) and call
    #   `DescribeMatchmaking` only when notifications are not received
    #   within 30 seconds.
    #
    # **Processing a matchmaking request** -- FlexMatch handles a
    # matchmaking request as follows:
    #
    # 1.  Your client code submits a `StartMatchmaking` request for one or
    #     more players and tracks the status of the request ticket.
    #
    # 2.  FlexMatch uses this ticket and others in process to build an
    #     acceptable match. When a potential match is identified, all
    #     tickets in the proposed match are advanced to the next status.
    #
    # 3.  If the match requires player acceptance (set in the matchmaking
    #     configuration), the tickets move into status
    #     `REQUIRES_ACCEPTANCE`. This status triggers your client code to
    #     solicit acceptance from all players in every ticket involved in
    #     the match, and then call AcceptMatch for each player. If any
    #     player rejects or fails to accept the match before a specified
    #     timeout, the proposed match is dropped (see `AcceptMatch` for more
    #     details).
    #
    # 4.  Once a match is proposed and accepted, the matchmaking tickets
    #     move into status `PLACING`. FlexMatch locates resources for a new
    #     game session using the game session queue (set in the matchmaking
    #     configuration) and creates the game session based on the match
    #     data.
    #
    # 5.  When the match is successfully placed, the matchmaking tickets
    #     move into `COMPLETED` status. Connection information (including
    #     game session endpoint and player session) is added to the
    #     matchmaking tickets. Matched players can use the connection
    #     information to join the game.
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a Game Client][1]
    #
    # [ Set Up FlexMatch Event Notification][2]
    #
    # [ FlexMatch Integration Roadmap][3]
    #
    # [ How GameLift FlexMatch Works][4]
    #
    # **Related operations**
    #
    # * StartMatchmaking
    #
    # * DescribeMatchmaking
    #
    # * StopMatchmaking
    #
    # * AcceptMatch
    #
    # * StartMatchBackfill
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-tasks.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html
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

    # Suspends activity on a fleet. Currently, this operation is used to
    # stop a fleet's auto-scaling activity. It is used to temporarily stop
    # scaling events triggered by the fleet's scaling policies. The
    # policies can be retained and auto-scaling activity can be restarted
    # using StartFleetActions. You can view a fleet's stopped actions using
    # DescribeFleetAttributes.
    #
    # To stop fleet actions, specify the fleet ID and the type of actions to
    # suspend. When auto-scaling fleet actions are stopped, Amazon GameLift
    # no longer initiates scaling events except to maintain the fleet's
    # desired instances setting (FleetCapacity. Changes to the fleet's
    # capacity must be done manually using UpdateFleetCapacity.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * Describe fleets:
    #
    #   * DescribeFleetAttributes
    #
    #   * DescribeFleetCapacity
    #
    #   * DescribeFleetPortSettings
    #
    #   * DescribeFleetUtilization
    #
    #   * DescribeRuntimeConfiguration
    #
    #   * DescribeEC2InstanceLimits
    #
    #   * DescribeFleetEvents
    #
    # * Update fleets:
    #
    #   * UpdateFleetAttributes
    #
    #   * UpdateFleetCapacity
    #
    #   * UpdateFleetPortSettings
    #
    #   * UpdateRuntimeConfiguration
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to stop actions on. You can use either
    #   the fleet ID or ARN value.
    #
    # @option params [required, Array<String>] :actions
    #   List of actions to suspend on the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_fleet_actions({
    #     fleet_id: "FleetId", # required
    #     actions: ["AUTO_SCALING"], # required, accepts AUTO_SCALING
    #   })
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
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
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
    # <note markdown="1"> If the action is successful, the service sends back an empty JSON
    # struct with the HTTP 200 response (not an empty HTTP body).
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a Game Client][1]
    #
    # **Related operations**
    #
    # * StartMatchmaking
    #
    # * DescribeMatchmaking
    #
    # * StopMatchmaking
    #
    # * AcceptMatch
    #
    # * StartMatchBackfill
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html
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

    # Assigns a tag to a GameLift resource. AWS resource tags provide an
    # additional management tool set. You can use tags to organize
    # resources, create IAM permissions policies to manage access to groups
    # of resources, customize AWS cost breakdowns, etc. This action handles
    # the permissions necessary to manage tags for the following GameLift
    # resource types:
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
    # resource and provide a trig list containing one or more tags. The
    # operation succeeds even if the list includes tags that are already
    # assigned to the specified resource.
    #
    # **Learn more**
    #
    # [Tagging AWS Resources][1] in the *AWS General Reference*
    #
    # [ AWS Tagging Strategies][2]
    #
    # **Related operations**
    #
    # * TagResource
    #
    # * UntagResource
    #
    # * ListTagsForResource
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to and uniquely
    #   identifies the GameLift resource that you want to assign tags to.
    #   GameLift resource ARNs are included in the data object for the
    #   resource, which can be retrieved by calling a List or Describe action
    #   for the resource type.
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
    # action handles the permissions necessary to manage tags for the
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
    # removed. This action succeeds even if the list includes tags that are
    # not currently assigned to the specified resource.
    #
    # **Learn more**
    #
    # [Tagging AWS Resources][1] in the *AWS General Reference*
    #
    # [ AWS Tagging Strategies][2]
    #
    # **Related operations**
    #
    # * TagResource
    #
    # * UntagResource
    #
    # * ListTagsForResource
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to and uniquely
    #   identifies the GameLift resource that you want to remove tags from.
    #   GameLift resource ARNs are included in the data object for the
    #   resource, which can be retrieved by calling a List or Describe action
    #   for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of one or more tags to remove from the specified GameLift
    #   resource. Tags are developer-defined and structured as key-value
    #   pairs.
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
    # * CreateAlias
    #
    # * ListAliases
    #
    # * DescribeAlias
    #
    # * UpdateAlias
    #
    # * DeleteAlias
    #
    # * ResolveAlias
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
    #     alias_id: "AliasId", # required
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

    # Updates metadata in a build record, including the build name and
    # version. To update the metadata, specify the build ID to update and
    # provide the new values. If successful, a build object containing the
    # updated metadata is returned.
    #
    # **Learn more**
    #
    # [ Working with Builds][1]
    #
    # **Related operations**
    #
    # * CreateBuild
    #
    # * ListBuilds
    #
    # * DescribeBuild
    #
    # * UpdateBuild
    #
    # * DeleteBuild
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html
    #
    # @option params [required, String] :build_id
    #   A unique identifier for a build to update. You can use either the
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
    #     build_id: "BuildId", # required
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

    # Updates fleet properties, including name and description, for a fleet.
    # To update metadata, specify the fleet ID and the property values that
    # you want to change. If successful, the fleet ID for the updated fleet
    # is returned.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * DescribeFleetAttributes
    #
    # * Update fleets:
    #
    #   * UpdateFleetAttributes
    #
    #   * UpdateFleetCapacity
    #
    #   * UpdateFleetPortSettings
    #
    #   * UpdateRuntimeConfiguration
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to update attribute metadata for. You
    #   can use either the fleet ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   Human-readable description of a fleet.
    #
    # @option params [String] :new_game_session_protection_policy
    #   Game session protection policy to apply to all new instances created
    #   in this fleet. Instances that already exist are not affected. You can
    #   set protection for individual instances using UpdateGameSession.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   Policy that limits the number of game sessions an individual player
    #   can create over a span of time.
    #
    # @option params [Array<String>] :metric_groups
    #   Names of metric groups to include this fleet in. Amazon CloudWatch
    #   uses a fleet metric group is to aggregate metrics from multiple
    #   fleets. Use an existing metric group name to add this fleet to the
    #   group. Or use a new name to create a new metric group. A fleet can
    #   only be included in one metric group at a time.
    #
    # @return [Types::UpdateFleetAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetAttributesOutput#fleet_id #fleet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_attributes({
    #     fleet_id: "FleetId", # required
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

    # Updates capacity settings for a fleet. Use this action to specify the
    # number of EC2 instances (hosts) that you want this fleet to contain.
    # Before calling this action, you may want to call
    # DescribeEC2InstanceLimits to get the maximum capacity based on the
    # fleet's EC2 instance type.
    #
    # Specify minimum and maximum number of instances. Amazon GameLift will
    # not change fleet capacity to values fall outside of this range. This
    # is particularly important when using auto-scaling (see
    # PutScalingPolicy) to allow capacity to adjust based on player demand
    # while imposing limits on automatic adjustments.
    #
    # To update fleet capacity, specify the fleet ID and the number of
    # instances you want the fleet to host. If successful, Amazon GameLift
    # starts or terminates instances so that the fleet's active instance
    # count matches the desired instance count. You can view a fleet's
    # current capacity information by calling DescribeFleetCapacity. If the
    # desired instance count is higher than the instance type's limit, the
    # "Limit Exceeded" exception occurs.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * DescribeFleetAttributes
    #
    # * Update fleets:
    #
    #   * UpdateFleetAttributes
    #
    #   * UpdateFleetCapacity
    #
    #   * UpdateFleetPortSettings
    #
    #   * UpdateRuntimeConfiguration
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to update capacity for. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [Integer] :desired_instances
    #   Number of EC2 instances you want this fleet to host.
    #
    # @option params [Integer] :min_size
    #   The minimum value allowed for the fleet's instance count. Default if
    #   not set is 0.
    #
    # @option params [Integer] :max_size
    #   The maximum value allowed for the fleet's instance count. Default if
    #   not set is 1.
    #
    # @return [Types::UpdateFleetCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetCapacityOutput#fleet_id #fleet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_capacity({
    #     fleet_id: "FleetId", # required
    #     desired_instances: 1,
    #     min_size: 1,
    #     max_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetCapacity AWS API Documentation
    #
    # @overload update_fleet_capacity(params = {})
    # @param [Hash] params ({})
    def update_fleet_capacity(params = {}, options = {})
      req = build_request(:update_fleet_capacity, params)
      req.send_request(options)
    end

    # Updates port settings for a fleet. To update settings, specify the
    # fleet ID to be updated and list the permissions you want to update.
    # List the permissions you want to add in
    # `InboundPermissionAuthorizations`, and permissions you want to remove
    # in `InboundPermissionRevocations`. Permissions to be removed must
    # match existing fleet permissions. If successful, the fleet ID for the
    # updated fleet is returned.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * DescribeFleetAttributes
    #
    # * Update fleets:
    #
    #   * UpdateFleetAttributes
    #
    #   * UpdateFleetCapacity
    #
    #   * UpdateFleetPortSettings
    #
    #   * UpdateRuntimeConfiguration
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to update port settings for. You can
    #   use either the fleet ID or ARN value.
    #
    # @option params [Array<Types::IpPermission>] :inbound_permission_authorizations
    #   A collection of port settings to be added to the fleet record.
    #
    # @option params [Array<Types::IpPermission>] :inbound_permission_revocations
    #   A collection of port settings to be removed from the fleet record.
    #
    # @return [Types::UpdateFleetPortSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetPortSettingsOutput#fleet_id #fleet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_port_settings({
    #     fleet_id: "FleetId", # required
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

    # Updates game session properties. This includes the session name,
    # maximum player count, protection policy, which controls whether or not
    # an active game session can be terminated during a scale-down event,
    # and the player session creation policy, which controls whether or not
    # new players can join the session. To update a game session, specify
    # the game session ID and the values you want to change. If successful,
    # an updated GameSession object is returned.
    #
    # * CreateGameSession
    #
    # * DescribeGameSessions
    #
    # * DescribeGameSessionDetails
    #
    # * SearchGameSessions
    #
    # * UpdateGameSession
    #
    # * GetGameSessionLogUrl
    #
    # * Game session placements
    #
    #   * StartGameSessionPlacement
    #
    #   * DescribeGameSessionPlacement
    #
    #   * StopGameSessionPlacement
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
    #   Policy determining whether or not the game session accepts new
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSession AWS API Documentation
    #
    # @overload update_game_session(params = {})
    # @param [Hash] params ({})
    def update_game_session(params = {}, options = {})
      req = build_request(:update_game_session, params)
      req.send_request(options)
    end

    # Updates settings for a game session queue, which determines how new
    # game session requests in the queue are processed. To update settings,
    # specify the queue name to be updated and provide the new settings.
    # When updating destinations, provide a complete list of destinations.
    #
    # * CreateGameSessionQueue
    #
    # * DescribeGameSessionQueues
    #
    # * UpdateGameSessionQueue
    #
    # * DeleteGameSessionQueue
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
    #   A collection of latency policies to apply when processing game
    #   sessions placement requests with player latency information. Multiple
    #   policies are evaluated in order of the maximum latency value, starting
    #   with the lowest latency values. With just one policy, the policy is
    #   enforced at the start of the game session placement for the duration
    #   period. With multiple policies, each policy is enforced consecutively
    #   for its duration period. For example, a queue might enforce a
    #   60-second policy followed by a 120-second policy, and then no policy
    #   for the remainder of the placement. When updating policies, provide a
    #   complete collection of policies.
    #
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   A list of fleets that can be used to fulfill game session placement
    #   requests in the queue. Fleets are identified by either a fleet ARN or
    #   a fleet alias ARN. Destinations are listed in default preference
    #   order. When updating this list, provide a complete list of
    #   destinations.
    #
    # @return [Types::UpdateGameSessionQueueOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameSessionQueueOutput#game_session_queue #game_session_queue} => Types::GameSessionQueue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_session_queue({
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
    # [ Design a FlexMatch Matchmaker][1]
    #
    # **Related operations**
    #
    # * CreateMatchmakingConfiguration
    #
    # * DescribeMatchmakingConfigurations
    #
    # * UpdateMatchmakingConfiguration
    #
    # * DeleteMatchmakingConfiguration
    #
    # * CreateMatchmakingRuleSet
    #
    # * DescribeMatchmakingRuleSets
    #
    # * ValidateMatchmakingRuleSet
    #
    # * DeleteMatchmakingRuleSet
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html
    #
    # @option params [required, String] :name
    #   A unique identifier for a matchmaking configuration to update. You can
    #   use either the configuration name or ARN value.
    #
    # @option params [String] :description
    #   A descriptive label that is associated with matchmaking configuration.
    #
    # @option params [Array<String>] :game_session_queue_arns
    #   Amazon Resource Name ([ARN][1]) that is assigned to a GameLift game
    #   session queue resource and uniquely identifies it. ARNs are unique
    #   across all Regions. These queues are used when placing game sessions
    #   for matches that are created with this matchmaking configuration.
    #   Queues can be located in any Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Integer] :request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that fail due to timing out can
    #   be resubmitted as needed.
    #
    # @option params [Integer] :acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match. If any player rejects the match or fails to accept
    #   before the timeout, the ticket continues to look for an acceptable
    #   match.
    #
    # @option params [Boolean] :acceptance_required
    #   A flag that indicates whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to TRUE.
    #
    # @option params [String] :rule_set_name
    #   A unique identifier for a matchmaking rule set to use with this
    #   configuration. You can use either the rule set name or ARN value. A
    #   matchmaking configuration can only use rule sets that are defined in
    #   the same Region.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive matchmaking notifications.
    #   See [ Setting up Notifications for Matchmaking][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html
    #
    # @option params [Integer] :additional_player_count
    #   The number of player slots in a match to keep open for future players.
    #   For example, assume that the configuration's rule set specifies a
    #   match for a single 12-person team. If the additional player count is
    #   set to 2, only 10 players are initially selected for the match.
    #
    # @option params [String] :custom_event_data
    #   Information to add to all events related to the matchmaking
    #   configuration.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of custom properties for a game session, formatted as key-value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match.
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
    #   that is created for a successful match.
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
    #   FlexMatch][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html
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
    # which tells Amazon GameLift how to launch server processes on
    # instances in the fleet. You can update a fleet's runtime
    # configuration at any time after the fleet is created; it does not need
    # to be in an `ACTIVE` status.
    #
    # To update runtime configuration, specify the fleet ID and provide a
    # `RuntimeConfiguration` object with an updated set of server process
    # configurations.
    #
    # Each instance in a Amazon GameLift fleet checks regularly for an
    # updated runtime configuration and changes how it launches server
    # processes to comply with the latest version. Existing server processes
    # are not affected by the update; runtime configuration changes are
    # applied gradually as existing processes shut down and new processes
    # are launched during Amazon GameLift's normal process recycling
    # activity.
    #
    # **Learn more**
    #
    # [ Working with Fleets][1].
    #
    # **Related operations**
    #
    # * CreateFleet
    #
    # * ListFleets
    #
    # * DeleteFleet
    #
    # * DescribeFleetAttributes
    #
    # * Update fleets:
    #
    #   * UpdateFleetAttributes
    #
    #   * UpdateFleetCapacity
    #
    #   * UpdateFleetPortSettings
    #
    #   * UpdateRuntimeConfiguration
    #
    # * Manage fleet actions:
    #
    #   * StartFleetActions
    #
    #   * StopFleetActions
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for a fleet to update runtime configuration for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [required, Types::RuntimeConfiguration] :runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. Server processes run either a custom game build executable or a
    #   Realtime Servers script. The runtime configuration lists the types of
    #   server processes to run on an instance and includes the following
    #   configuration settings: the server executable or launch script file,
    #   launch parameters, and the number of processes to run concurrently on
    #   each instance. A CreateFleet request must include a runtime
    #   configuration with at least one server process configuration.
    #
    # @return [Types::UpdateRuntimeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuntimeConfigurationOutput#runtime_configuration #runtime_configuration} => Types::RuntimeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_runtime_configuration({
    #     fleet_id: "FleetId", # required
    #     runtime_configuration: { # required
    #       server_processes: [
    #         {
    #           launch_path: "NonZeroAndMaxString", # required
    #           parameters: "NonZeroAndMaxString",
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
    # **Related operations**
    #
    # * CreateScript
    #
    # * ListScripts
    #
    # * DescribeScript
    #
    # * UpdateScript
    #
    # * DeleteScript
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    #
    # @option params [required, String] :script_id
    #   A unique identifier for a Realtime script to update. You can use
    #   either the script ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a script. Script names do
    #   not need to be unique.
    #
    # @option params [String] :version
    #   The version that is associated with a build or script. Version strings
    #   do not need to be unique.
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
    # @option params [String, IO] :zip_file
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
    #     script_id: "ScriptId", # required
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
    # * [Build a Rule Set][1]
    #
    # ^
    #
    # **Related operations**
    #
    # * CreateMatchmakingConfiguration
    #
    # * DescribeMatchmakingConfigurations
    #
    # * UpdateMatchmakingConfiguration
    #
    # * DeleteMatchmakingConfiguration
    #
    # * CreateMatchmakingRuleSet
    #
    # * DescribeMatchmakingRuleSets
    #
    # * ValidateMatchmakingRuleSet
    #
    # * DeleteMatchmakingRuleSet
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html
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
      context[:gem_version] = '1.27.0'
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
