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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates an alias and sets a target fleet. A fleet alias can be used in
    # place of a fleet ID, such as when calling `CreateGameSession` from a
    # game client or game service or adding destinations to a game session
    # queue. By changing an alias's target fleet, you can switch your
    # players to the new fleet without changing any other component. In
    # production, this feature is particularly useful to redirect your
    # player base seamlessly to the latest game server update.
    #
    # Amazon GameLift supports two types of routing strategies for aliases:
    # simple and terminal. Use a simple alias to point to an active fleet.
    # Use a terminal alias to display a message to incoming traffic instead
    # of routing players to an active fleet. This option is useful when a
    # game server is no longer supported but you want to provide better
    # messaging than a standard 404 error.
    #
    # To create a fleet alias, specify an alias name, routing strategy, and
    # optional description. If successful, a new alias record is returned,
    # including an alias ID, which you can reference when creating a game
    # session. To reassign the alias to another fleet ID, call UpdateAlias.
    #
    # @option params [required, String] :name
    #   Descriptive label that is associated with an alias. Alias names do not
    #   need to be unique.
    #
    # @option params [String] :description
    #   Human-readable description of an alias.
    #
    # @option params [required, Types::RoutingStrategy] :routing_strategy
    #   Object that specifies the fleet and routing type to use for the alias.
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

    # Creates a new Amazon GameLift build from a set of game server binary
    # files stored in an Amazon Simple Storage Service (Amazon S3) location.
    # When using this API call, you must create a `.zip` file containing all
    # of the build files and store it in an Amazon S3 bucket under your AWS
    # account. For help on packaging your build files and creating a build,
    # see [Uploading Your Game to Amazon GameLift][1].
    #
    # Use this API action ONLY if you are storing your game build files in
    # an Amazon S3 bucket in your AWS account. To create a build using files
    # stored in a directory, use the CLI command [ `upload-build` ][2],
    # which uploads the build files from a file location you specify and
    # creates a build.
    #
    # To create a new build using `CreateBuild`, identify the storage
    # location and operating system of your game build. You also have the
    # option of specifying a build name and version. If successful, this
    # action creates a new build record with an unique build ID and in
    # `INITIALIZED` status. Use the API call DescribeBuild to check the
    # status of your build. A build must be in `READY` status before it can
    # be used to create fleets to host your game.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: http://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html
    #
    # @option params [String] :name
    #   Descriptive label that is associated with a build. Build names do not
    #   need to be unique. You can use UpdateBuild to change this value later.
    #
    # @option params [String] :version
    #   Version that is associated with this build. Version strings do not
    #   need to be unique. You can use UpdateBuild to change this value later.
    #
    # @option params [Types::S3Location] :storage_location
    #   Amazon S3 location of the game build files to be uploaded. The S3
    #   bucket must be owned by the same AWS account that you're using to
    #   manage Amazon GameLift. It also must in the same region that you want
    #   to create a new build in. Before calling `CreateBuild` with this
    #   location, you must allow Amazon GameLift to access your Amazon S3
    #   bucket (see [Create a Build with Files in Amazon S3][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build
    #
    # @option params [String] :operating_system
    #   Operating system that the game server binaries are built to run on.
    #   This value determines the type of fleet resources that you can use for
    #   this build. If your game build contains multiple executables, they all
    #   must run on the same operating system.
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
    #     },
    #     operating_system: "WINDOWS_2012", # accepts WINDOWS_2012, AMAZON_LINUX
    #   })
    #
    # @example Response structure
    #
    #   resp.build.build_id #=> String
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX"
    #   resp.build.creation_time #=> Time
    #   resp.upload_credentials.access_key_id #=> String
    #   resp.upload_credentials.secret_access_key #=> String
    #   resp.upload_credentials.session_token #=> String
    #   resp.storage_location.bucket #=> String
    #   resp.storage_location.key #=> String
    #   resp.storage_location.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateBuild AWS API Documentation
    #
    # @overload create_build(params = {})
    # @param [Hash] params ({})
    def create_build(params = {}, options = {})
      req = build_request(:create_build, params)
      req.send_request(options)
    end

    # Creates a new fleet to run your game servers. A fleet is a set of
    # Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can
    # run multiple server processes to host game sessions. You configure a
    # fleet to create instances with certain hardware specifications (see
    # [Amazon EC2 Instance Types][1] for more information), and deploy a
    # specified game build to each instance. A newly created fleet passes
    # through several statuses; once it reaches the `ACTIVE` status, it can
    # begin hosting game sessions.
    #
    # To create a new fleet, provide a fleet name, an EC2 instance type, and
    # a build ID of the game build to deploy. You can also configure the new
    # fleet with the following settings: (1) a runtime configuration
    # describing what server processes to run on each instance in the fleet
    # (required to create fleet), (2) access permissions for inbound
    # traffic, (3) fleet-wide game session protection, and (4) the location
    # of default log files for Amazon GameLift to upload and store.
    #
    # If the CreateFleet call is successful, Amazon GameLift performs the
    # following tasks:
    #
    # * Creates a fleet record and sets the status to `NEW` (followed by
    #   other statuses as the fleet is activated).
    #
    # * Sets the fleet's capacity to 1 "desired", which causes Amazon
    #   GameLift to start one new EC2 instance.
    #
    # * Starts launching server processes on the instance. If the fleet is
    #   configured to run multiple server processes per instance, Amazon
    #   GameLift staggers each launch by a few seconds.
    #
    # * Begins writing events to the fleet event log, which can be accessed
    #   in the Amazon GameLift console.
    #
    # * Sets the fleet's status to `ACTIVE` once one server process in the
    #   fleet is ready to host a game session.
    #
    # After a fleet is created, use the following actions to change fleet
    # properties and configuration:
    #
    # * UpdateFleetAttributes -- Update fleet metadata, including name and
    #   description.
    #
    # * UpdateFleetCapacity -- Increase or decrease the number of instances
    #   you want the fleet to maintain.
    #
    # * UpdateFleetPortSettings -- Change the IP address and port ranges
    #   that allow access to incoming traffic.
    #
    # * UpdateRuntimeConfiguration -- Change how server processes are
    #   launched in the fleet, including launch path, launch parameters, and
    #   the number of concurrent processes.
    #
    # * PutScalingPolicy -- Create or update rules that are used to set the
    #   fleet's capacity (autoscaling).
    #
    #
    #
    # [1]: http://aws.amazon.com/ec2/instance-types/
    #
    # @option params [required, String] :name
    #   Descriptive label that is associated with a fleet. Fleet names do not
    #   need to be unique.
    #
    # @option params [String] :description
    #   Human-readable description of a fleet.
    #
    # @option params [required, String] :build_id
    #   Unique identifier for a build to be deployed on the new fleet. The
    #   build must have been successfully uploaded to Amazon GameLift and be
    #   in a `READY` status. This fleet setting cannot be changed once the
    #   fleet is created.
    #
    # @option params [String] :server_launch_path
    #   This parameter is no longer used. Instead, specify a server launch
    #   path using the `RuntimeConfiguration` parameter. (Requests that
    #   specify a server launch path and launch parameters instead of a
    #   runtime configuration will continue to work.)
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
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process
    #
    # @option params [required, String] :ec2_instance_type
    #   Name of an EC2 instance type that is supported in Amazon GameLift. A
    #   fleet instance type determines the computing resources of each
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
    #   access server processes running on the fleet. If no inbound
    #   permissions are set, including both IP address range and port range,
    #   the server processes in the fleet cannot accept connections. You can
    #   specify one or more sets of permissions for a fleet.
    #
    # @option params [String] :new_game_session_protection_policy
    #   Game session protection policy to apply to all instances in this
    #   fleet. If this parameter is not set, instances in this fleet default
    #   to no protection. You can change a fleet's protection policy using
    #   UpdateFleetAttributes, but this change will only affect sessions
    #   created after the policy change. You can also set protection for
    #   individual instances using UpdateGameSession.
    #
    #   * **NoProtection** – The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** – If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #
    # @option params [Types::RuntimeConfiguration] :runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. The runtime configuration for a fleet has a collection of
    #   server process configurations, one for each type of server process to
    #   run on an instance. A server process configuration specifies the
    #   location of the server executable, launch parameters, and the number
    #   of concurrent processes with that configuration to maintain on each
    #   instance. A CreateFleet request must include a runtime configuration
    #   with at least one server process configuration; otherwise the request
    #   will fail with an invalid request exception. (This parameter replaces
    #   the parameters `ServerLaunchPath` and `ServerLaunchParameters`;
    #   requests that contain values for these parameters instead of a runtime
    #   configuration will continue to work.)
    #
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   Policy that limits the number of game sessions an individual player
    #   can create over a span of time for this fleet.
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
    #     build_id: "BuildId", # required
    #     server_launch_path: "NonZeroAndMaxString",
    #     server_launch_parameters: "NonZeroAndMaxString",
    #     log_paths: ["NonZeroAndMaxString"],
    #     ec2_instance_type: "t2.micro", # required, accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge
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
    #     },
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_attributes.fleet_id #=> String
    #   resp.fleet_attributes.fleet_arn #=> String
    #   resp.fleet_attributes.description #=> String
    #   resp.fleet_attributes.name #=> String
    #   resp.fleet_attributes.creation_time #=> Time
    #   resp.fleet_attributes.termination_time #=> Time
    #   resp.fleet_attributes.status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"
    #   resp.fleet_attributes.build_id #=> String
    #   resp.fleet_attributes.server_launch_path #=> String
    #   resp.fleet_attributes.server_launch_parameters #=> String
    #   resp.fleet_attributes.log_paths #=> Array
    #   resp.fleet_attributes.log_paths[0] #=> String
    #   resp.fleet_attributes.new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.fleet_attributes.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX"
    #   resp.fleet_attributes.resource_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.fleet_attributes.resource_creation_limit_policy.policy_period_in_minutes #=> Integer
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
    # game session properties, including a game session ID with the custom
    # string you provided.
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
    # By default, newly created game sessions allow new players to join. Use
    # UpdateGameSession to change the game session's player session
    # creation policy.
    #
    # *Available in Amazon GameLift Local.*
    #
    # @option params [String] :fleet_id
    #   Unique identifier for a fleet to create a game session in. Each
    #   request must reference either a fleet ID or alias ID, but not both.
    #
    # @option params [String] :alias_id
    #   Unique identifier for an alias associated with the fleet to create a
    #   game session in. Each request must reference either a fleet ID or
    #   alias ID, but not both.
    #
    # @option params [required, Integer] :maximum_player_session_count
    #   Maximum number of players that can be connected simultaneously to the
    #   game session.
    #
    # @option params [String] :name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   Set of developer-defined properties for a game session. These
    #   properties are passed to the server process hosting the game session.
    #
    # @option params [String] :creator_id
    #   Unique identifier for a player or entity creating the game session.
    #   This ID is used to enforce a resource protection policy (if one
    #   exists) that limits the number of concurrent active game sessions one
    #   player can have.
    #
    # @option params [String] :game_session_id
    #   *This parameter is no longer preferred. Please use `IdempotencyToken`
    #   instead.* Custom string that uniquely identifies a request for a new
    #   game session. Maximum token length is 48 characters. If provided, this
    #   string is included in the new game session's ID. (A game session ID
    #   has the following format:
    #   `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`.)
    #
    # @option params [String] :idempotency_token
    #   Custom string that uniquely identifies a request for a new game
    #   session. Maximum token length is 48 characters. If provided, this
    #   string is included in the new game session's ID. (A game session ID
    #   has the following format:
    #   `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`.)
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
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session.game_session_id #=> String
    #   resp.game_session.name #=> String
    #   resp.game_session.fleet_id #=> String
    #   resp.game_session.creation_time #=> Time
    #   resp.game_session.termination_time #=> Time
    #   resp.game_session.current_player_session_count #=> Integer
    #   resp.game_session.maximum_player_session_count #=> Integer
    #   resp.game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session.game_properties #=> Array
    #   resp.game_session.game_properties[0].key #=> String
    #   resp.game_session.game_properties[0].value #=> String
    #   resp.game_session.ip_address #=> String
    #   resp.game_session.port #=> Integer
    #   resp.game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session.creator_id #=> String
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
    # a queue to try to place game sessions on fleets in multiple regions.
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
    # @option params [required, String] :name
    #   Descriptive label that is associated with queue. Queue names must be
    #   unique within each region.
    #
    # @option params [Integer] :timeout_in_seconds
    #   Maximum time, in seconds, that a new game session placement request
    #   remains in the queue. When a request exceeds this time, the game
    #   session placement changes to a TIMED\_OUT status.
    #
    # @option params [Array<Types::PlayerLatencyPolicy>] :player_latency_policies
    #   Collection of latency policies to apply when processing game sessions
    #   placement requests with player latency information. Multiple policies
    #   are evaluated in order of the maximum latency value, starting with the
    #   lowest latency values. With just one policy, it is enforced at the
    #   start of the game session placement for the duration period. With
    #   multiple policies, each policy is enforced consecutively for its
    #   duration period. For example, a queue might enforce a 60-second policy
    #   followed by a 120-second policy, and then no policy for the remainder
    #   of the placement. A player latency policy must set a value for
    #   MaximumIndividualPlayerLatencyMilliseconds; if none is set, this API
    #   requests will fail.
    #
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   List of fleets that can be used to fulfill game session placement
    #   requests in the queue. Fleets are identified by either a fleet ARN or
    #   a fleet alias ARN. Destinations are listed in default preference
    #   order.
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

    # Adds a player to a game session and creates a player session record.
    # Before a player can be added, a game session must have an `ACTIVE`
    # status, have a creation policy of `ALLOW_ALL`, and have an open player
    # slot. To add a group of players to a game session, use
    # CreatePlayerSessions.
    #
    # To create a player session, specify a game session ID, player ID, and
    # optionally a string of player data. If successful, the player is added
    # to the game session and a new PlayerSession object is returned. Player
    # sessions cannot be updated.
    #
    # *Available in Amazon GameLift Local.*
    #
    # @option params [required, String] :game_session_id
    #   Unique identifier for the game session to add a player to.
    #
    # @option params [required, String] :player_id
    #   Unique identifier for a player. Player IDs are developer-defined.
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
    #   resp.player_session.creation_time #=> Time
    #   resp.player_session.termination_time #=> Time
    #   resp.player_session.status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_session.ip_address #=> String
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

    # Adds a group of players to a game session. This action is useful with
    # a team matching feature. Before players can be added, a game session
    # must have an `ACTIVE` status, have a creation policy of `ALLOW_ALL`,
    # and have an open player slot. To add a single player to a game
    # session, use CreatePlayerSession.
    #
    # To create player sessions, specify a game session ID, a list of player
    # IDs, and optionally a set of player data strings. If successful, the
    # players are added to the game session and a set of new PlayerSession
    # objects is returned. Player sessions cannot be updated.
    #
    # *Available in Amazon GameLift Local.*
    #
    # @option params [required, String] :game_session_id
    #   Unique identifier for the game session to add players to.
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
    #   resp.player_sessions[0].creation_time #=> Time
    #   resp.player_sessions[0].termination_time #=> Time
    #   resp.player_sessions[0].status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_sessions[0].ip_address #=> String
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

    # Deletes a fleet alias. This action removes all record of the alias.
    # Game clients attempting to access a server process using the deleted
    # alias receive an error. To delete an alias, specify the alias ID to be
    # deleted.
    #
    # @option params [required, String] :alias_id
    #   Unique identifier for a fleet alias. Specify the alias you want to
    #   delete.
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
    # @option params [required, String] :build_id
    #   Unique identifier for a build to delete.
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
    # This action removes the fleet's resources and the fleet record. Once
    # a fleet is deleted, you can no longer use that fleet.
    #
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to be deleted.
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
    # @option params [required, String] :name
    #   Descriptive label that is associated with queue. Queue names must be
    #   unique within each region.
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

    # Deletes a fleet scaling policy. This action means that the policy is
    # no longer in force and removes all record of it. To delete a scaling
    # policy, specify both the scaling policy name and the fleet ID it is
    # associated with.
    #
    # @option params [required, String] :name
    #   Descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique.
    #
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to be deleted.
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

    # Retrieves properties for a fleet alias. This operation returns all
    # alias metadata and settings. To get just the fleet ID an alias is
    # currently pointing to, use ResolveAlias.
    #
    # To get alias properties, specify the alias ID. If successful, an Alias
    # object is returned.
    #
    # @option params [required, String] :alias_id
    #   Unique identifier for a fleet alias. Specify the alias you want to
    #   retrieve.
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

    # Retrieves properties for a build. To get a build record, specify a
    # build ID. If successful, an object containing the build properties is
    # returned.
    #
    # @option params [required, String] :build_id
    #   Unique identifier for a build to retrieve properties for.
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
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX"
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
    # Service limits vary depending on region. Available regions for Amazon
    # GameLift can be found in the AWS Management Console for Amazon
    # GameLift (see the drop-down list in the upper right corner).
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
    #     ec2_instance_type: "t2.micro", # accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge
    #   })
    #
    # @example Response structure
    #
    #   resp.ec2_instance_limits #=> Array
    #   resp.ec2_instance_limits[0].ec2_instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge"
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
    # @option params [Array<String>] :fleet_ids
    #   Unique identifier for a fleet(s) to retrieve attributes for. To
    #   request attributes for all fleets, leave this parameter empty.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value. This
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
    #   resp.fleet_attributes[0].description #=> String
    #   resp.fleet_attributes[0].name #=> String
    #   resp.fleet_attributes[0].creation_time #=> Time
    #   resp.fleet_attributes[0].termination_time #=> Time
    #   resp.fleet_attributes[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"
    #   resp.fleet_attributes[0].build_id #=> String
    #   resp.fleet_attributes[0].server_launch_path #=> String
    #   resp.fleet_attributes[0].server_launch_parameters #=> String
    #   resp.fleet_attributes[0].log_paths #=> Array
    #   resp.fleet_attributes[0].log_paths[0] #=> String
    #   resp.fleet_attributes[0].new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.fleet_attributes[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX"
    #   resp.fleet_attributes[0].resource_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.fleet_attributes[0].resource_creation_limit_policy.policy_period_in_minutes #=> Integer
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
    # @option params [Array<String>] :fleet_ids
    #   Unique identifier for a fleet(s) to retrieve capacity information for.
    #   To request capacity information for all fleets, leave this parameter
    #   empty.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value. This
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
    #   resp.fleet_capacity[0].instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge"
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
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to get event logs for.
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
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    #   resp.events[0].event_code #=> String, one of "GENERIC_EVENT", "FLEET_CREATED", "FLEET_DELETED", "FLEET_SCALING_EVENT", "FLEET_STATE_DOWNLOADING", "FLEET_STATE_VALIDATING", "FLEET_STATE_BUILDING", "FLEET_STATE_ACTIVATING", "FLEET_STATE_ACTIVE", "FLEET_STATE_ERROR", "FLEET_INITIALIZATION_FAILED", "FLEET_BINARY_DOWNLOAD_FAILED", "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND", "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE", "FLEET_VALIDATION_TIMED_OUT", "FLEET_ACTIVATION_FAILED", "FLEET_ACTIVATION_FAILED_NO_INSTANCES", "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED", "SERVER_PROCESS_INVALID_PATH", "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT", "SERVER_PROCESS_PROCESS_READY_TIMEOUT", "SERVER_PROCESS_CRASHED", "SERVER_PROCESS_TERMINATED_UNHEALTHY", "SERVER_PROCESS_FORCE_TERMINATED", "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT", "GAME_SESSION_ACTIVATION_TIMEOUT"
    #   resp.events[0].message #=> String
    #   resp.events[0].event_time #=> Time
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
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to retrieve port settings for.
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
    # @option params [Array<String>] :fleet_ids
    #   Unique identifier for a fleet(s) to retrieve utilization data for. To
    #   request utilization data for all fleets, leave this parameter empty.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value. This
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
    # @option params [String] :fleet_id
    #   Unique identifier for a fleet to retrieve all game sessions active on
    #   the fleet.
    #
    # @option params [String] :game_session_id
    #   Unique identifier for the game session to retrieve.
    #
    # @option params [String] :alias_id
    #   Unique identifier for an alias associated with the fleet to retrieve
    #   all game sessions for.
    #
    # @option params [String] :status_filter
    #   Game session status to filter results on. Possible game session
    #   statuses include ACTIVE, `TERMINATED`, `ACTIVATING` and `TERMINATING`
    #   (the last two are transitory).
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    #   resp.game_session_details[0].game_session.creation_time #=> Time
    #   resp.game_session_details[0].game_session.termination_time #=> Time
    #   resp.game_session_details[0].game_session.current_player_session_count #=> Integer
    #   resp.game_session_details[0].game_session.maximum_player_session_count #=> Integer
    #   resp.game_session_details[0].game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session_details[0].game_session.game_properties #=> Array
    #   resp.game_session_details[0].game_session.game_properties[0].key #=> String
    #   resp.game_session_details[0].game_session.game_properties[0].value #=> String
    #   resp.game_session_details[0].game_session.ip_address #=> String
    #   resp.game_session_details[0].game_session.port #=> Integer
    #   resp.game_session_details[0].game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session_details[0].game_session.creator_id #=> String
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
    # @option params [required, String] :placement_id
    #   Unique identifier for a game session placement to retrieve.
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
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT"
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
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
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
    # currently exist in the region.
    #
    # @option params [Array<String>] :names
    #   List of queue names to retrieve information for. To request settings
    #   for all queues, leave this parameter empty.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    # @option params [String] :fleet_id
    #   Unique identifier for a fleet to retrieve all game sessions for.
    #
    # @option params [String] :game_session_id
    #   Unique identifier for the game session to retrieve. You can use either
    #   a `GameSessionId` or `GameSessionArn` value.
    #
    # @option params [String] :alias_id
    #   Unique identifier for an alias associated with the fleet to retrieve
    #   all game sessions for.
    #
    # @option params [String] :status_filter
    #   Game session status to filter results on. Possible game session
    #   statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING`, and
    #   `TERMINATING` (the last two are transitory).
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    #   resp.game_sessions[0].creation_time #=> Time
    #   resp.game_sessions[0].termination_time #=> Time
    #   resp.game_sessions[0].current_player_session_count #=> Integer
    #   resp.game_sessions[0].maximum_player_session_count #=> Integer
    #   resp.game_sessions[0].status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_sessions[0].game_properties #=> Array
    #   resp.game_sessions[0].game_properties[0].key #=> String
    #   resp.game_sessions[0].game_properties[0].value #=> String
    #   resp.game_sessions[0].ip_address #=> String
    #   resp.game_sessions[0].port #=> Integer
    #   resp.game_sessions[0].player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_sessions[0].creator_id #=> String
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
    #   Unique identifier for a fleet to retrieve instance information for.
    #
    # @option params [String] :instance_id
    #   Unique identifier for an instance to retrieve. Specify an instance ID
    #   or leave blank to retrieve all instances in the fleet.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    #   resp.instances[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX"
    #   resp.instances[0].type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge"
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
    # @option params [String] :game_session_id
    #   Unique identifier for the game session to retrieve player sessions
    #   for.
    #
    # @option params [String] :player_id
    #   Unique identifier for a player to retrieve player sessions for.
    #
    # @option params [String] :player_session_id
    #   Unique identifier for a player session to retrieve.
    #
    # @option params [String] :player_session_status_filter
    #   Player session status to filter results on.
    #
    #   Possible player session statuses include the following:
    #
    #   * **RESERVED** – The player session request has been received, but the
    #     player has not yet connected to the server process and/or been
    #     validated.
    #
    #   * **ACTIVE** – The player has been validated by the server process and
    #     is currently connected.
    #
    #   * **COMPLETED** – The player connection has been dropped.
    #
    #   * **TIMEDOUT** – A player session request was received, but the player
    #     did not connect and/or was not validated within the time-out limit
    #     (60 seconds).
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. If a player
    #   session ID is specified, this parameter is ignored.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value. If a
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
    #   resp.player_sessions[0].creation_time #=> Time
    #   resp.player_sessions[0].termination_time #=> Time
    #   resp.player_sessions[0].status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_sessions[0].ip_address #=> String
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
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to get the runtime configuration for.
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
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to retrieve scaling policies for.
    #
    # @option params [String] :status_filter
    #   Scaling policy status to filter results on. A scaling policy is only
    #   in force when in an `ACTIVE` status.
    #
    #   * **ACTIVE** – The scaling policy is currently in force.
    #
    #   * **UPDATEREQUESTED** – A request to update the scaling policy has
    #     been received.
    #
    #   * **UPDATING** – A change is being made to the scaling policy.
    #
    #   * **DELETEREQUESTED** – A request to delete the scaling policy has
    #     been received.
    #
    #   * **DELETING** – The scaling policy is being deleted.
    #
    #   * **DELETED** – The scaling policy has been deleted.
    #
    #   * **ERROR** – An error occurred in creating the policy. It should be
    #     removed and recreated.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    #   resp.scaling_policies[0].metric_name #=> String, one of "ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "QueueDepth", "WaitTime"
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

    # Retrieves the location of stored game session logs for a specified
    # game session. When a game session is terminated, Amazon GameLift
    # automatically stores the logs in Amazon S3. Use this URL to download
    # the logs.
    #
    # <note markdown="1"> See the [AWS Service Limits][1] page for maximum log file sizes. Log
    # files that exceed this limit are not saved.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift
    #
    # @option params [required, String] :game_session_id
    #   Unique identifier for the game session to get logs for.
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
    # To request access to a specific instance, specify the IDs of the
    # instance and the fleet it belongs to. If successful, an InstanceAccess
    # object is returned containing the instance's IP address and a set of
    # credentials.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html
    #
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet that contains the instance you want
    #   access to. The fleet can be in any of the following statuses:
    #   `ACTIVATING`, `ACTIVE`, or `ERROR`. Fleets with an `ERROR` status may
    #   be accessible for a short time before they are deleted.
    #
    # @option params [required, String] :instance_id
    #   Unique identifier for an instance you want to get access to. You can
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
    #   resp.instance_access.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX"
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

    # Retrieves a collection of alias records for this AWS account. You can
    # filter the result set by alias name and/or routing strategy type. Use
    # the pagination parameters to retrieve results in sequential pages.
    #
    # <note markdown="1"> Aliases are not listed in any particular order.
    #
    #  </note>
    #
    # @option params [String] :routing_strategy_type
    #   Type of routing to filter results on. Use this parameter to retrieve
    #   only aliases of a certain type. To retrieve all aliases, leave this
    #   parameter empty.
    #
    #   Possible routing types include the following:
    #
    #   * **SIMPLE** – The alias resolves to one specific fleet. Use this type
    #     when routing to active fleets.
    #
    #   * **TERMINAL** – The alias does not resolve to a fleet but instead can
    #     be used to display a message to the user. A terminal alias throws a
    #     TerminalRoutingStrategyException with the RoutingStrategy message
    #     embedded.
    #
    # @option params [String] :name
    #   Descriptive label that is associated with an alias. Alias names do not
    #   need to be unique.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    # @option params [String] :status
    #   Build status to filter results by. To retrieve all builds, leave this
    #   parameter empty.
    #
    #   Possible build statuses include the following:
    #
    #   * **INITIALIZED** – A new build has been defined, but no files have
    #     been uploaded. You cannot create fleets for builds that are in this
    #     status. When a build is successfully created, the build status is
    #     set to this value.
    #
    #   * **READY** – The game build has been successfully uploaded. You can
    #     now create new fleets for this build.
    #
    #   * **FAILED** – The game build upload failed. You cannot create new
    #     fleets for this build.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    #   resp.builds[0].name #=> String
    #   resp.builds[0].version #=> String
    #   resp.builds[0].status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.builds[0].size_on_disk #=> Integer
    #   resp.builds[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX"
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
    # filter the result set by build ID. Use the pagination parameters to
    # retrieve results in sequential pages.
    #
    # <note markdown="1"> Fleet records are not listed in any particular order.
    #
    #  </note>
    #
    # @option params [String] :build_id
    #   Unique identifier for a build to return fleets for. Use this parameter
    #   to return only fleets using the specified build. To retrieve all
    #   fleets, leave this parameter empty.
    #
    # @option params [Integer] :limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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

    # Creates or updates a scaling policy for a fleet. An active scaling
    # policy prompts Amazon GameLift to track a certain metric for a fleet
    # and automatically change the fleet's capacity in specific
    # circumstances. Each scaling policy contains one rule statement. Fleets
    # can have multiple scaling policies in force simultaneously.
    #
    # A scaling policy rule statement has the following structure:
    #
    # If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for
    # `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by
    # `[ScalingAdjustment]`.
    #
    # For example, this policy: "If the number of idle instances exceeds 20
    # for more than 15 minutes, then reduce the fleet capacity by 10
    # instances" could be implemented as the following rule statement:
    #
    # If \[IdleInstances\] is \[GreaterThanOrEqualToThreshold\] \[20\] for
    # \[15\] minutes, then \[ChangeInCapacity\] by \[-10\].
    #
    # To create or update a scaling policy, specify a unique combination of
    # name and fleet ID, and set the rule values. All parameters for this
    # action are required. If successful, the policy name is returned.
    # Scaling policies cannot be suspended or made inactive. To stop
    # enforcing a scaling policy, call DeleteScalingPolicy.
    #
    # @option params [required, String] :name
    #   Descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique. A fleet can have only one scaling
    #   policy with the same name.
    #
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to apply this policy to.
    #
    # @option params [required, Integer] :scaling_adjustment
    #   Amount of adjustment to make, based on the scaling adjustment type.
    #
    # @option params [required, String] :scaling_adjustment_type
    #   Type of adjustment to make to a fleet's instance count (see
    #   FleetCapacity):
    #
    #   * **ChangeInCapacity** – add (or subtract) the scaling adjustment
    #     value from the current instance count. Positive values scale up
    #     while negative values scale down.
    #
    #   * **ExactCapacity** – set the instance count to the scaling adjustment
    #     value.
    #
    #   * **PercentChangeInCapacity** – increase or reduce the current
    #     instance count by the scaling adjustment, read as a percentage.
    #     Positive values scale up while negative values scale down; for
    #     example, a value of "-10" scales the fleet down by 10%.
    #
    # @option params [required, Float] :threshold
    #   Metric value used to trigger a scaling event.
    #
    # @option params [required, String] :comparison_operator
    #   Comparison operator to use when measuring the metric against the
    #   threshold value.
    #
    # @option params [required, Integer] :evaluation_periods
    #   Length of time (in minutes) the metric must be at or beyond the
    #   threshold before a scaling event is triggered.
    #
    # @option params [required, String] :metric_name
    #   Name of the Amazon GameLift-defined metric that is used to trigger an
    #   adjustment.
    #
    #   * **ActivatingGameSessions** – number of game sessions in the process
    #     of being created (game session status = `ACTIVATING`).
    #
    #   * **ActiveGameSessions** – number of game sessions currently running
    #     (game session status = `ACTIVE`).
    #
    #   * **CurrentPlayerSessions** – number of active or reserved player
    #     sessions (player session status = `ACTIVE` or `RESERVED`).
    #
    #   * **AvailablePlayerSessions** – number of player session slots
    #     currently available in active game sessions across the fleet,
    #     calculated by subtracting a game session's current player session
    #     count from its maximum player session count. This number includes
    #     game sessions that are not currently accepting players (game session
    #     `PlayerSessionCreationPolicy` = `DENY_ALL`).
    #
    #   * **ActiveInstances** – number of instances currently running a game
    #     session.
    #
    #   * **IdleInstances** – number of instances not currently running a game
    #     session.
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
    #     scaling_adjustment: 1, # required
    #     scaling_adjustment_type: "ChangeInCapacity", # required, accepts ChangeInCapacity, ExactCapacity, PercentChangeInCapacity
    #     threshold: 1.0, # required
    #     comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #     evaluation_periods: 1, # required
    #     metric_name: "ActivatingGameSessions", # required, accepts ActivatingGameSessions, ActiveGameSessions, ActiveInstances, AvailablePlayerSessions, CurrentPlayerSessions, IdleInstances, QueueDepth, WaitTime
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

    # <i>This API call is not currently in use. </i> Retrieves a fresh set
    # of upload credentials and the assigned Amazon S3 storage location for
    # a specific build. Valid credentials are required to upload your game
    # build files to Amazon S3.
    #
    # @option params [required, String] :build_id
    #   Unique identifier for a build to get credentials for.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RequestUploadCredentials AWS API Documentation
    #
    # @overload request_upload_credentials(params = {})
    # @param [Hash] params ({})
    def request_upload_credentials(params = {}, options = {})
      req = build_request(:request_upload_credentials, params)
      req.send_request(options)
    end

    # Retrieves the fleet ID that a specified alias is currently pointing
    # to.
    #
    # @option params [required, String] :alias_id
    #   Unique identifier for the alias you want to resolve.
    #
    # @return [Types::ResolveAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveAliasOutput#fleet_id #fleet_id} => String
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResolveAlias AWS API Documentation
    #
    # @overload resolve_alias(params = {})
    # @param [Hash] params ({})
    def resolve_alias(params = {}, options = {})
      req = build_request(:resolve_alias, params)
      req.send_request(options)
    end

    # Retrieves a set of game sessions that match a set of search criteria
    # and sorts them in a specified order. Currently a game session search
    # is limited to a single fleet. Search results include only game
    # sessions that are in `ACTIVE` status. If you need to retrieve game
    # sessions with a status other than active, use DescribeGameSessions. If
    # you need to retrieve the protection policy for each game session, use
    # DescribeGameSessionDetails.
    #
    # You can search or sort by the following game session attributes:
    #
    # * **gameSessionId** -- Unique identifier for the game session. You can
    #   use either a `GameSessionId` or `GameSessionArn` value.
    #
    # * **gameSessionName** -- Name assigned to a game session. This value
    #   is set when requesting a new game session with CreateGameSession or
    #   updating with UpdateGameSession. Game session names do not need to
    #   be unique to a game session.
    #
    # * **creationTimeMillis** -- Value indicating when a game session was
    #   created. It is expressed in Unix time as milliseconds.
    #
    # * **playerSessionCount** -- Number of players currently connected to a
    #   game session. This value changes rapidly as players join the session
    #   or drop out.
    #
    # * **maximumSessions** -- Maximum number of player sessions allowed for
    #   a game session. This value is set when requesting a new game session
    #   with CreateGameSession or updating with UpdateGameSession.
    #
    # * **hasAvailablePlayerSessions** -- Boolean value indicating whether
    #   or not a game session has reached its maximum number of players.
    #   When searching with this attribute, the search value must be `true`
    #   or `false`. It is highly recommended that all search requests
    #   include this filter attribute to optimize search performance and
    #   return only sessions that players can join.
    #
    # To search or sort, specify either a fleet ID or an alias ID, and
    # provide a search filter expression, a sort expression, or both. Use
    # the pagination parameters to retrieve results as a set of sequential
    # pages. If successful, a collection of GameSession objects matching the
    # request is returned.
    #
    # <note markdown="1"> Returned values for `playerSessionCount` and
    # `hasAvailablePlayerSessions` change quickly as players join sessions
    # and others drop out. Results should be considered a snapshot in time.
    # Be sure to refresh search results often, and handle sessions that fill
    # up before a player can join.
    #
    #  </note>
    #
    # *Available in Amazon GameLift Local.*
    #
    # @option params [String] :fleet_id
    #   Unique identifier for a fleet to search for active game sessions. Each
    #   request must reference either a fleet ID or alias ID, but not both.
    #
    # @option params [String] :alias_id
    #   Unique identifier for an alias associated with the fleet to search for
    #   active game sessions. Each request must reference either a fleet ID or
    #   alias ID, but not both.
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
    #     `gameSessionName`, `gameSessionId`, `creationTimeMillis`,
    #     `playerSessionCount`, `maximumSessions`,
    #     `hasAvailablePlayerSessions`.
    #
    #   * **Comparator** -- Valid comparators are: `=`, `<>`, `<`, `>`, `<=`,
    #     `>=`.
    #
    #   * **Value** -- Value to be searched for. Values can be numbers,
    #     boolean values (true/false) or strings. String values are case
    #     sensitive, enclosed in single quotes. Special characters must be
    #     escaped. Boolean and string values can only be used with the
    #     comparators `=` and `<>`. For example, the following filter
    #     expression searches on `gameSessionName`\: "`FilterExpression":
    #     "gameSessionName = 'Matt\'s Awesome Game 1'"`.
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
    #     `gameSessionName`, `gameSessionId`, `creationTimeMillis`,
    #     `playerSessionCount`, `maximumSessions`,
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
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. The maximum
    #   number of results returned is 20, even if this value is not set or is
    #   set higher than 20.
    #
    # @option params [String] :next_token
    #   Token that indicates the start of the next sequential page of results.
    #   Use the token that is returned with a previous call to this action. To
    #   specify the start of the result set, do not specify a value.
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
    #   resp.game_sessions[0].creation_time #=> Time
    #   resp.game_sessions[0].termination_time #=> Time
    #   resp.game_sessions[0].current_player_session_count #=> Integer
    #   resp.game_sessions[0].maximum_player_session_count #=> Integer
    #   resp.game_sessions[0].status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_sessions[0].game_properties #=> Array
    #   resp.game_sessions[0].game_properties[0].key #=> String
    #   resp.game_sessions[0].game_properties[0].value #=> String
    #   resp.game_sessions[0].ip_address #=> String
    #   resp.game_sessions[0].port #=> Integer
    #   resp.game_sessions[0].player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_sessions[0].creator_id #=> String
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

    # Places a request for a new game session in a queue (see
    # CreateGameSessionQueue). When processing a placement request, Amazon
    # GameLift searches for available resources on the queue's
    # destinations, scanning each until it finds resources or the placement
    # request times out. A game session placement request can also request
    # player sessions. When a new game session is successfully created,
    # Amazon GameLift creates a player session for each player included in
    # the request.
    #
    # When placing a game session, by default Amazon GameLift tries each
    # fleet in the order they are listed in the queue configuration.
    # Ideally, a queue's destinations are listed in preference order.
    # Alternatively, when requesting a game session with players, you can
    # also provide latency data for each player in relevant regions. Latency
    # data indicates the performance lag a player experiences when connected
    # to a fleet in the region. Amazon GameLift uses latency data to reorder
    # the list of destinations to place the game session in a region with
    # minimal lag. If latency data is provided for multiple players, Amazon
    # GameLift calculates each region's average lag for all players and
    # reorders to get the best game play across all players.
    #
    # To place a new game session request, specify the queue name and a set
    # of game session properties and settings. Also provide a unique ID
    # (such as a UUID) for the placement. You'll use this ID to track the
    # status of the placement request. Optionally, provide a set of IDs and
    # player data for each player you want to join to the new game session.
    # To optimize game play for the players, also provide latency data for
    # all players. If successful, a new game session placement is created.
    # To track the status of a placement request, call
    # DescribeGameSessionPlacement and check the request's status. If the
    # status is Fulfilled, a new game session has been created and a game
    # session ARN and region are referenced. If the placement request times
    # out, you have the option of resubmitting the request or retrying it
    # with a different queue.
    #
    # @option params [required, String] :placement_id
    #   Unique identifier to assign to the new game session placement. This
    #   value is developer-defined. The value must be unique across all
    #   regions and cannot be reused unless you are resubmitting a canceled or
    #   timed-out placement request.
    #
    # @option params [required, String] :game_session_queue_name
    #   Name of the queue to use to place the new game session.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   Set of developer-defined properties for a game session. These
    #   properties are passed to the server process hosting the game session.
    #
    # @option params [required, Integer] :maximum_player_session_count
    #   Maximum number of players that can be connected simultaneously to the
    #   game session.
    #
    # @option params [String] :game_session_name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [Array<Types::PlayerLatency>] :player_latencies
    #   Set of values, expressed in milliseconds, indicating the amount of
    #   latency that players are experiencing when connected to AWS regions.
    #   This information is used to try to place the new game session where it
    #   can offer the best possible gameplay experience for the players.
    #
    # @option params [Array<Types::DesiredPlayerSession>] :desired_player_sessions
    #   Set of information on each player to create a player session for.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_placement.placement_id #=> String
    #   resp.game_session_placement.game_session_queue_name #=> String
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT"
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
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartGameSessionPlacement AWS API Documentation
    #
    # @overload start_game_session_placement(params = {})
    # @param [Hash] params ({})
    def start_game_session_placement(params = {}, options = {})
      req = build_request(:start_game_session_placement, params)
      req.send_request(options)
    end

    # Cancels a game session placement that is in Pending status. To stop a
    # placement, provide the placement ID values. If successful, the
    # placement is moved to Cancelled status.
    #
    # @option params [required, String] :placement_id
    #   Unique identifier for a game session placement to cancel.
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
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT"
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
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopGameSessionPlacement AWS API Documentation
    #
    # @overload stop_game_session_placement(params = {})
    # @param [Hash] params ({})
    def stop_game_session_placement(params = {}, options = {})
      req = build_request(:stop_game_session_placement, params)
      req.send_request(options)
    end

    # Updates properties for a fleet alias. To update properties, specify
    # the alias ID to be updated and provide the information to be changed.
    # To reassign an alias to another fleet, provide an updated routing
    # strategy. If successful, the updated alias record is returned.
    #
    # @option params [required, String] :alias_id
    #   Unique identifier for a fleet alias. Specify the alias you want to
    #   update.
    #
    # @option params [String] :name
    #   Descriptive label that is associated with an alias. Alias names do not
    #   need to be unique.
    #
    # @option params [String] :description
    #   Human-readable description of an alias.
    #
    # @option params [Types::RoutingStrategy] :routing_strategy
    #   Object that specifies the fleet and routing type to use for the alias.
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
    # @option params [required, String] :build_id
    #   Unique identifier for a build to update.
    #
    # @option params [String] :name
    #   Descriptive label that is associated with a build. Build names do not
    #   need to be unique.
    #
    # @option params [String] :version
    #   Version that is associated with this build. Version strings do not
    #   need to be unique.
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
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX"
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
    # To update metadata, specify the fleet ID and the property values you
    # want to change. If successful, the fleet ID for the updated fleet is
    # returned.
    #
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to update attribute metadata for.
    #
    # @option params [String] :name
    #   Descriptive label that is associated with a fleet. Fleet names do not
    #   need to be unique.
    #
    # @option params [String] :description
    #   Human-readable description of a fleet.
    #
    # @option params [String] :new_game_session_protection_policy
    #   Game session protection policy to apply to all new instances created
    #   in this fleet. Instances that already exist are not affected. You can
    #   set protection for individual instances using UpdateGameSession.
    #
    #   * **NoProtection** – The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** – If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   Policy that limits the number of game sessions an individual player
    #   can create over a span of time.
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
    # If you're using autoscaling (see PutScalingPolicy), you may want to
    # specify a minimum and/or maximum capacity. If you don't provide
    # these, autoscaling can set capacity anywhere between zero and the
    # [service limits][1].
    #
    # To update fleet capacity, specify the fleet ID and the number of
    # instances you want the fleet to host. If successful, Amazon GameLift
    # starts or terminates instances so that the fleet's active instance
    # count matches the desired instance count. You can view a fleet's
    # current capacity information by calling DescribeFleetCapacity. If the
    # desired instance count is higher than the instance type's limit, the
    # "Limit Exceeded" exception occurs.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift
    #
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to update capacity for.
    #
    # @option params [Integer] :desired_instances
    #   Number of EC2 instances you want this fleet to host.
    #
    # @option params [Integer] :min_size
    #   Minimum value allowed for the fleet's instance count. Default if not
    #   set is 0.
    #
    # @option params [Integer] :max_size
    #   Maximum value allowed for the fleet's instance count. Default if not
    #   set is 1.
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
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to update port settings for.
    #
    # @option params [Array<Types::IpPermission>] :inbound_permission_authorizations
    #   Collection of port settings to be added to the fleet record.
    #
    # @option params [Array<Types::IpPermission>] :inbound_permission_revocations
    #   Collection of port settings to be removed from the fleet record.
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
    # @option params [required, String] :game_session_id
    #   Unique identifier for the game session to update.
    #
    # @option params [Integer] :maximum_player_session_count
    #   Maximum number of players that can be connected simultaneously to the
    #   game session.
    #
    # @option params [String] :name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [String] :player_session_creation_policy
    #   Policy determining whether or not the game session accepts new
    #   players.
    #
    # @option params [String] :protection_policy
    #   Game session protection policy to apply to this game session only.
    #
    #   * **NoProtection** – The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** – If the game session is in an `ACTIVE` status,
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
    #   resp.game_session.creation_time #=> Time
    #   resp.game_session.termination_time #=> Time
    #   resp.game_session.current_player_session_count #=> Integer
    #   resp.game_session.maximum_player_session_count #=> Integer
    #   resp.game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session.game_properties #=> Array
    #   resp.game_session.game_properties[0].key #=> String
    #   resp.game_session.game_properties[0].value #=> String
    #   resp.game_session.ip_address #=> String
    #   resp.game_session.port #=> Integer
    #   resp.game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session.creator_id #=> String
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
    # @option params [required, String] :name
    #   Descriptive label that is associated with queue. Queue names must be
    #   unique within each region.
    #
    # @option params [Integer] :timeout_in_seconds
    #   Maximum time, in seconds, that a new game session placement request
    #   remains in the queue. When a request exceeds this time, the game
    #   session placement changes to a TIMED\_OUT status.
    #
    # @option params [Array<Types::PlayerLatencyPolicy>] :player_latency_policies
    #   Collection of latency policies to apply when processing game sessions
    #   placement requests with player latency information. Multiple policies
    #   are evaluated in order of the maximum latency value, starting with the
    #   lowest latency values. With just one policy, it is enforced at the
    #   start of the game session placement for the duration period. With
    #   multiple policies, each policy is enforced consecutively for its
    #   duration period. For example, a queue might enforce a 60-second policy
    #   followed by a 120-second policy, and then no policy for the remainder
    #   of the placement. When updating policies, provide a complete
    #   collection of policies.
    #
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   List of fleets that can be used to fulfill game session placement
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

    # Updates the current runtime configuration for the specified fleet,
    # which tells Amazon GameLift how to launch server processes on
    # instances in the fleet. You can update a fleet's runtime
    # configuration at any time after the fleet is created; it does not need
    # to be in an `ACTIVE` status.
    #
    # To update runtime configuration, specify the fleet ID and provide a
    # `RuntimeConfiguration` object with the updated collection of server
    # process configurations.
    #
    # Each instance in a Amazon GameLift fleet checks regularly for an
    # updated runtime configuration and changes how it launches server
    # processes to comply with the latest version. Existing server processes
    # are not affected by the update; they continue to run until they end,
    # while Amazon GameLift simply adds new server processes to fit the
    # current runtime configuration. As a result, the runtime configuration
    # changes are applied gradually as existing processes shut down and new
    # processes are launched in Amazon GameLift's normal process recycling
    # activity.
    #
    # @option params [required, String] :fleet_id
    #   Unique identifier for a fleet to update runtime configuration for.
    #
    # @option params [required, Types::RuntimeConfiguration] :runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. The runtime configuration for a fleet has a collection of
    #   server process configurations, one for each type of server process to
    #   run on an instance. A server process configuration specifies the
    #   location of the server executable, launch parameters, and the number
    #   of concurrent processes with that configuration to maintain on each
    #   instance.
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
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_configuration.server_processes #=> Array
    #   resp.runtime_configuration.server_processes[0].launch_path #=> String
    #   resp.runtime_configuration.server_processes[0].parameters #=> String
    #   resp.runtime_configuration.server_processes[0].concurrent_executions #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfiguration AWS API Documentation
    #
    # @overload update_runtime_configuration(params = {})
    # @param [Hash] params ({})
    def update_runtime_configuration(params = {}, options = {})
      req = build_request(:update_runtime_configuration, params)
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
      context[:gem_version] = '1.0.0.rc5'
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
