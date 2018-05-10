# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GameLift
  module Types

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass AcceptMatchInput
    #   data as a hash:
    #
    #       {
    #         ticket_id: "MatchmakingIdStringModel", # required
    #         player_ids: ["NonZeroAndMaxString"], # required
    #         acceptance_type: "ACCEPT", # required, accepts ACCEPT, REJECT
    #       }
    #
    # @!attribute [rw] ticket_id
    #   Unique identifier for a matchmaking ticket. The ticket must be in
    #   status `REQUIRES_ACCEPTANCE`; otherwise this request will fail.
    #   @return [String]
    #
    # @!attribute [rw] player_ids
    #   Unique identifier for a player delivering the response. This
    #   parameter can include one or multiple player IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] acceptance_type
    #   Player response to the proposed match.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AcceptMatchInput AWS API Documentation
    #
    class AcceptMatchInput < Struct.new(
      :ticket_id,
      :player_ids,
      :acceptance_type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AcceptMatchOutput AWS API Documentation
    #
    class AcceptMatchOutput < Aws::EmptyStructure; end

    # Properties describing a fleet alias.
    #
    # Alias-related operations include:
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
    # @!attribute [rw] alias_id
    #   Unique identifier for an alias; alias IDs are unique within a
    #   region.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] alias_arn
    #   Unique identifier for an alias; alias ARNs are unique across all
    #   regions.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Human-readable description of an alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_strategy
    #   Alias configuration for the alias, including routing type and
    #   settings.
    #   @return [Types::RoutingStrategy]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this data object was created. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   Time stamp indicating when this data object was last modified.
    #   Format is a number expressed in Unix time as milliseconds (for
    #   example "1469498468.057").
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Alias AWS API Documentation
    #
    class Alias < Struct.new(
      :alias_id,
      :name,
      :alias_arn,
      :description,
      :routing_strategy,
      :creation_time,
      :last_updated_time)
      include Aws::Structure
    end

    # Values for use in Player attribute key:value pairs. This object lets
    # you specify an attribute value using any of the valid data types:
    # string, number, string array or data map. Each `AttributeValue` object
    # can use only one of the available properties.
    #
    # @note When making an API call, you may pass AttributeValue
    #   data as a hash:
    #
    #       {
    #         s: "NonZeroAndMaxString",
    #         n: 1.0,
    #         sl: ["NonZeroAndMaxString"],
    #         sdm: {
    #           "NonZeroAndMaxString" => 1.0,
    #         },
    #       }
    #
    # @!attribute [rw] s
    #   For single string values. Maximum string length is 100 characters.
    #   @return [String]
    #
    # @!attribute [rw] n
    #   For number values, expressed as double.
    #   @return [Float]
    #
    # @!attribute [rw] sl
    #   For a list of up to 10 strings. Maximum length for each string is
    #   100 characters. Duplicate values are not recognized; all occurrences
    #   of the repeated value after the first of a repeated value are
    #   ignored.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sdm
    #   For a map of up to 10 data type:value pairs. Maximum length for each
    #   string value is 100 characters.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AttributeValue AWS API Documentation
    #
    class AttributeValue < Struct.new(
      :s,
      :n,
      :sl,
      :sdm)
      include Aws::Structure
    end

    # Temporary access credentials used for uploading game build files to
    # Amazon GameLift. They are valid for a limited time. If they expire
    # before you upload your game build, get a new set by calling
    # RequestUploadCredentials.
    #
    # @!attribute [rw] access_key_id
    #   Temporary key allowing access to the Amazon GameLift S3 account.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   Temporary secret key allowing access to the Amazon GameLift S3
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   Token used to associate a specific build ID with the files uploaded
    #   using these credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AwsCredentials AWS API Documentation
    #
    class AwsCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token)
      include Aws::Structure
    end

    # Properties describing a game build.
    #
    # Build-related operations include:
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
    # @!attribute [rw] build_id
    #   Unique identifier for a build.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a build. Build names do
    #   not need to be unique. It can be set using CreateBuild or
    #   UpdateBuild.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version that is associated with this build. Version strings do not
    #   need to be unique. This value can be set using CreateBuild or
    #   UpdateBuild.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the build.
    #
    #   Possible build statuses include the following:
    #
    #   * **INITIALIZED** -- A new build has been defined, but no files have
    #     been uploaded. You cannot create fleets for builds that are in
    #     this status. When a build is successfully created, the build
    #     status is set to this value.
    #
    #   * **READY** -- The game build has been successfully uploaded. You
    #     can now create new fleets for this build.
    #
    #   * **FAILED** -- The game build upload failed. You cannot create new
    #     fleets for this build.
    #   @return [String]
    #
    # @!attribute [rw] size_on_disk
    #   File size of the uploaded game build, expressed in bytes. When the
    #   build status is `INITIALIZED`, this value is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] operating_system
    #   Operating system that the game server binaries are built to run on.
    #   This value determines the type of fleet resources that you can use
    #   for this build.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this data object was created. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Build AWS API Documentation
    #
    class Build < Struct.new(
      :build_id,
      :name,
      :version,
      :status,
      :size_on_disk,
      :operating_system,
      :creation_time)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateAliasInput
    #   data as a hash:
    #
    #       {
    #         name: "NonBlankAndLengthConstraintString", # required
    #         description: "NonZeroAndMaxString",
    #         routing_strategy: { # required
    #           type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #           fleet_id: "FleetId",
    #           message: "FreeText",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Human-readable description of an alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_strategy
    #   Object that specifies the fleet and routing type to use for the
    #   alias.
    #   @return [Types::RoutingStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateAliasInput AWS API Documentation
    #
    class CreateAliasInput < Struct.new(
      :name,
      :description,
      :routing_strategy)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] alias
    #   Object that describes the newly created alias record.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateAliasOutput AWS API Documentation
    #
    class CreateAliasOutput < Struct.new(
      :alias)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateBuildInput
    #   data as a hash:
    #
    #       {
    #         name: "NonZeroAndMaxString",
    #         version: "NonZeroAndMaxString",
    #         storage_location: {
    #           bucket: "NonEmptyString",
    #           key: "NonEmptyString",
    #           role_arn: "NonEmptyString",
    #         },
    #         operating_system: "WINDOWS_2012", # accepts WINDOWS_2012, AMAZON_LINUX
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a build. Build names do
    #   not need to be unique. You can use UpdateBuild to change this value
    #   later.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version that is associated with this build. Version strings do not
    #   need to be unique. You can use UpdateBuild to change this value
    #   later.
    #   @return [String]
    #
    # @!attribute [rw] storage_location
    #   Information indicating where your game build files are stored. Use
    #   this parameter only when creating a build with files stored in an
    #   Amazon S3 bucket that you own. The storage location must specify an
    #   Amazon S3 bucket name and key, as well as a role ARN that you set up
    #   to allow Amazon GameLift to access your Amazon S3 bucket. The S3
    #   bucket must be in the same region that you want to create a new
    #   build in.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] operating_system
    #   Operating system that the game server binaries are built to run on.
    #   This value determines the type of fleet resources that you can use
    #   for this build. If your game build contains multiple executables,
    #   they all must run on the same operating system. If an operating
    #   system is not specified when creating a build, Amazon GameLift uses
    #   the default value (WINDOWS\_2012). This value cannot be changed
    #   later.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateBuildInput AWS API Documentation
    #
    class CreateBuildInput < Struct.new(
      :name,
      :version,
      :storage_location,
      :operating_system)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] build
    #   The newly created build record, including a unique build ID and
    #   status.
    #   @return [Types::Build]
    #
    # @!attribute [rw] upload_credentials
    #   This element is returned only when the operation is called without a
    #   storage location. It contains credentials to use when you are
    #   uploading a build file to an Amazon S3 bucket that is owned by
    #   Amazon GameLift. Credentials have a limited life span. To refresh
    #   these credentials, call RequestUploadCredentials.
    #   @return [Types::AwsCredentials]
    #
    # @!attribute [rw] storage_location
    #   Amazon S3 location for your game build file, including bucket name
    #   and key.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateBuildOutput AWS API Documentation
    #
    class CreateBuildOutput < Struct.new(
      :build,
      :upload_credentials,
      :storage_location)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateFleetInput
    #   data as a hash:
    #
    #       {
    #         name: "NonZeroAndMaxString", # required
    #         description: "NonZeroAndMaxString",
    #         build_id: "BuildId", # required
    #         server_launch_path: "NonZeroAndMaxString",
    #         server_launch_parameters: "NonZeroAndMaxString",
    #         log_paths: ["NonZeroAndMaxString"],
    #         ec2_instance_type: "t2.micro", # required, accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge
    #         ec2_inbound_permissions: [
    #           {
    #             from_port: 1, # required
    #             to_port: 1, # required
    #             ip_range: "NonBlankString", # required
    #             protocol: "TCP", # required, accepts TCP, UDP
    #           },
    #         ],
    #         new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #         runtime_configuration: {
    #           server_processes: [
    #             {
    #               launch_path: "NonZeroAndMaxString", # required
    #               parameters: "NonZeroAndMaxString",
    #               concurrent_executions: 1, # required
    #             },
    #           ],
    #           max_concurrent_game_session_activations: 1,
    #           game_session_activation_timeout_seconds: 1,
    #         },
    #         resource_creation_limit_policy: {
    #           new_game_sessions_per_creator: 1,
    #           policy_period_in_minutes: 1,
    #         },
    #         metric_groups: ["MetricGroup"],
    #         peer_vpc_aws_account_id: "NonZeroAndMaxString",
    #         peer_vpc_id: "NonZeroAndMaxString",
    #         fleet_type: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Human-readable description of a fleet.
    #   @return [String]
    #
    # @!attribute [rw] build_id
    #   Unique identifier for a build to be deployed on the new fleet. The
    #   build must have been successfully uploaded to Amazon GameLift and be
    #   in a `READY` status. This fleet setting cannot be changed once the
    #   fleet is created.
    #   @return [String]
    #
    # @!attribute [rw] server_launch_path
    #   This parameter is no longer used. Instead, specify a server launch
    #   path using the `RuntimeConfiguration` parameter. (Requests that
    #   specify a server launch path and launch parameters instead of a
    #   run-time configuration will continue to work.)
    #   @return [String]
    #
    # @!attribute [rw] server_launch_parameters
    #   This parameter is no longer used. Instead, specify server launch
    #   parameters in the `RuntimeConfiguration` parameter. (Requests that
    #   specify a server launch path and launch parameters instead of a
    #   run-time configuration will continue to work.)
    #   @return [String]
    #
    # @!attribute [rw] log_paths
    #   This parameter is no longer used. Instead, to specify where Amazon
    #   GameLift should store log files once a server process shuts down,
    #   use the Amazon GameLift server API `ProcessReady()` and specify one
    #   or more directory paths in `logParameters`. See more information in
    #   the [Server API Reference][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_instance_type
    #   Name of an EC2 instance type that is supported in Amazon GameLift. A
    #   fleet instance type determines the computing resources of each
    #   instance in the fleet, including CPU, memory, storage, and
    #   networking capacity. Amazon GameLift supports the following EC2
    #   instance types. See [Amazon EC2 Instance Types][1] for detailed
    #   descriptions.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] ec2_inbound_permissions
    #   Range of IP addresses and port settings that permit inbound traffic
    #   to access server processes running on the fleet. If no inbound
    #   permissions are set, including both IP address range and port range,
    #   the server processes in the fleet cannot accept connections. You can
    #   specify one or more sets of permissions for a fleet.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   Game session protection policy to apply to all instances in this
    #   fleet. If this parameter is not set, instances in this fleet default
    #   to no protection. You can change a fleet's protection policy using
    #   UpdateFleetAttributes, but this change will only affect sessions
    #   created after the policy change. You can also set protection for
    #   individual instances using UpdateGameSession.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE`
    #     status, it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @!attribute [rw] runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. The run-time configuration for a fleet has a collection of
    #   server process configurations, one for each type of server process
    #   to run on an instance. A server process configuration specifies the
    #   location of the server executable, launch parameters, and the number
    #   of concurrent processes with that configuration to maintain on each
    #   instance. A CreateFleet request must include a run-time
    #   configuration with at least one server process configuration;
    #   otherwise the request fails with an invalid request exception. (This
    #   parameter replaces the parameters `ServerLaunchPath` and
    #   `ServerLaunchParameters`; requests that contain values for these
    #   parameters instead of a run-time configuration will continue to
    #   work.)
    #   @return [Types::RuntimeConfiguration]
    #
    # @!attribute [rw] resource_creation_limit_policy
    #   Policy that limits the number of game sessions an individual player
    #   can create over a span of time for this fleet.
    #   @return [Types::ResourceCreationLimitPolicy]
    #
    # @!attribute [rw] metric_groups
    #   Name of a metric group to add this fleet to. A metric group tracks
    #   metrics across all fleets in the group. Use an existing metric group
    #   name to add this fleet to the group, or use a new name to create a
    #   new metric group. A fleet can only be included in one metric group
    #   at a time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] peer_vpc_aws_account_id
    #   Unique identifier for the AWS account with the VPC that you want to
    #   peer your Amazon GameLift fleet with. You can find your Account ID
    #   in the AWS Management Console under account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   Unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same region where your
    #   fleet is deployed. To get VPC information, including IDs, use the
    #   Virtual Private Cloud service tools, including the VPC Dashboard in
    #   the AWS Management Console.
    #   @return [String]
    #
    # @!attribute [rw] fleet_type
    #   Indicates whether to use on-demand instances or spot instances for
    #   this fleet. If empty, the default is ON\_DEMAND. Both categories of
    #   instances use identical hardware and configurations, based on the
    #   instance type selected for this fleet. You can acquire on-demand
    #   instances at any time for a fixed price and keep them as long as you
    #   need them. Spot instances have lower prices, but spot pricing is
    #   variable, and while in use they can be interrupted (with a
    #   two-minute notification). Learn more about Amazon GameLift spot
    #   instances with at [ Choose Computing Resources][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleetInput AWS API Documentation
    #
    class CreateFleetInput < Struct.new(
      :name,
      :description,
      :build_id,
      :server_launch_path,
      :server_launch_parameters,
      :log_paths,
      :ec2_instance_type,
      :ec2_inbound_permissions,
      :new_game_session_protection_policy,
      :runtime_configuration,
      :resource_creation_limit_policy,
      :metric_groups,
      :peer_vpc_aws_account_id,
      :peer_vpc_id,
      :fleet_type)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_attributes
    #   Properties for the newly created fleet.
    #   @return [Types::FleetAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleetOutput AWS API Documentation
    #
    class CreateFleetOutput < Struct.new(
      :fleet_attributes)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateGameSessionInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId",
    #         alias_id: "AliasId",
    #         maximum_player_session_count: 1, # required
    #         name: "NonZeroAndMaxString",
    #         game_properties: [
    #           {
    #             key: "GamePropertyKey", # required
    #             value: "GamePropertyValue", # required
    #           },
    #         ],
    #         creator_id: "NonZeroAndMaxString",
    #         game_session_id: "IdStringModel",
    #         idempotency_token: "IdStringModel",
    #         game_session_data: "GameSessionData",
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to create a game session in. Each
    #   request must reference either a fleet ID or alias ID, but not both.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   Unique identifier for an alias associated with the fleet to create a
    #   game session in. Each request must reference either a fleet ID or
    #   alias ID, but not both.
    #   @return [String]
    #
    # @!attribute [rw] maximum_player_session_count
    #   Maximum number of players that can be connected simultaneously to
    #   the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   Set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] creator_id
    #   Unique identifier for a player or entity creating the game session.
    #   This ID is used to enforce a resource protection policy (if one
    #   exists) that limits the number of concurrent active game sessions
    #   one player can have.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   *This parameter is no longer preferred. Please use
    #   `IdempotencyToken` instead.* Custom string that uniquely identifies
    #   a request for a new game session. Maximum token length is 48
    #   characters. If provided, this string is included in the new game
    #   session's ID. (A game session ARN has the following format:
    #   `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`.)
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   Custom string that uniquely identifies a request for a new game
    #   session. Maximum token length is 48 characters. If provided, this
    #   string is included in the new game session's ID. (A game session
    #   ARN has the following format:
    #   `arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`.) Idempotency tokens remain in use for 30
    #   days after a game session has ended; game session objects are
    #   retained for this time period and then deleted.
    #   @return [String]
    #
    # @!attribute [rw] game_session_data
    #   Set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionInput AWS API Documentation
    #
    class CreateGameSessionInput < Struct.new(
      :fleet_id,
      :alias_id,
      :maximum_player_session_count,
      :name,
      :game_properties,
      :creator_id,
      :game_session_id,
      :idempotency_token,
      :game_session_data)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session
    #   Object that describes the newly created game session record.
    #   @return [Types::GameSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionOutput AWS API Documentation
    #
    class CreateGameSessionOutput < Struct.new(
      :game_session)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateGameSessionQueueInput
    #   data as a hash:
    #
    #       {
    #         name: "GameSessionQueueName", # required
    #         timeout_in_seconds: 1,
    #         player_latency_policies: [
    #           {
    #             maximum_individual_player_latency_milliseconds: 1,
    #             policy_duration_seconds: 1,
    #           },
    #         ],
    #         destinations: [
    #           {
    #             destination_arn: "ArnStringModel",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with game session queue. Queue
    #   names must be unique within each region.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   Maximum time, in seconds, that a new game session placement request
    #   remains in the queue. When a request exceeds this time, the game
    #   session placement changes to a `TIMED_OUT` status.
    #   @return [Integer]
    #
    # @!attribute [rw] player_latency_policies
    #   Collection of latency policies to apply when processing game
    #   sessions placement requests with player latency information.
    #   Multiple policies are evaluated in order of the maximum latency
    #   value, starting with the lowest latency values. With just one
    #   policy, it is enforced at the start of the game session placement
    #   for the duration period. With multiple policies, each policy is
    #   enforced consecutively for its duration period. For example, a queue
    #   might enforce a 60-second policy followed by a 120-second policy,
    #   and then no policy for the remainder of the placement. A player
    #   latency policy must set a value for
    #   MaximumIndividualPlayerLatencyMilliseconds; if none is set, this API
    #   requests will fail.
    #   @return [Array<Types::PlayerLatencyPolicy>]
    #
    # @!attribute [rw] destinations
    #   List of fleets that can be used to fulfill game session placement
    #   requests in the queue. Fleets are identified by either a fleet ARN
    #   or a fleet alias ARN. Destinations are listed in default preference
    #   order.
    #   @return [Array<Types::GameSessionQueueDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionQueueInput AWS API Documentation
    #
    class CreateGameSessionQueueInput < Struct.new(
      :name,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session_queue
    #   Object that describes the newly created game session queue.
    #   @return [Types::GameSessionQueue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionQueueOutput AWS API Documentation
    #
    class CreateGameSessionQueueOutput < Struct.new(
      :game_session_queue)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateMatchmakingConfigurationInput
    #   data as a hash:
    #
    #       {
    #         name: "MatchmakingIdStringModel", # required
    #         description: "NonZeroAndMaxString",
    #         game_session_queue_arns: ["ArnStringModel"], # required
    #         request_timeout_seconds: 1, # required
    #         acceptance_timeout_seconds: 1,
    #         acceptance_required: false, # required
    #         rule_set_name: "MatchmakingIdStringModel", # required
    #         notification_target: "SnsArnStringModel",
    #         additional_player_count: 1,
    #         custom_event_data: "CustomEventData",
    #         game_properties: [
    #           {
    #             key: "GamePropertyKey", # required
    #             value: "GamePropertyValue", # required
    #           },
    #         ],
    #         game_session_data: "GameSessionData",
    #       }
    #
    # @!attribute [rw] name
    #   Unique identifier for a matchmaking configuration. This name is used
    #   to identify the configuration associated with a matchmaking request
    #   or ticket.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Meaningful description of the matchmaking configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_arns
    #   Amazon Resource Name ([ARN][1]) that is assigned to a game session
    #   queue and uniquely identifies it. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #   These queues are used when placing game sessions for matches that
    #   are created with this matchmaking configuration. Queues can be
    #   located in any region.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] request_timeout_seconds
    #   Maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that time out can be
    #   resubmitted as needed.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_timeout_seconds
    #   Length of time (in seconds) to wait for players to accept a proposed
    #   match. If any player rejects the match or fails to accept before the
    #   timeout, the ticket continues to look for an acceptable match.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_required
    #   Flag that determines whether or not a match that was created with
    #   this configuration must be accepted by the matched players. To
    #   require acceptance, set to TRUE.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule_set_name
    #   Unique identifier for a matchmaking rule set to use with this
    #   configuration. A matchmaking configuration can only use rule sets
    #   that are defined in the same region.
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   SNS topic ARN that is set up to receive matchmaking notifications.
    #   @return [String]
    #
    # @!attribute [rw] additional_player_count
    #   Number of player slots in a match to keep open for future players.
    #   For example, if the configuration's rule set specifies a match for
    #   a single 12-person team, and the additional player count is set to
    #   2, only 10 players are selected for the match.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_event_data
    #   Information to attached to all events related to the matchmaking
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   Set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] game_session_data
    #   Set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingConfigurationInput AWS API Documentation
    #
    class CreateMatchmakingConfigurationInput < Struct.new(
      :name,
      :description,
      :game_session_queue_arns,
      :request_timeout_seconds,
      :acceptance_timeout_seconds,
      :acceptance_required,
      :rule_set_name,
      :notification_target,
      :additional_player_count,
      :custom_event_data,
      :game_properties,
      :game_session_data)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] configuration
    #   Object that describes the newly created matchmaking configuration.
    #   @return [Types::MatchmakingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingConfigurationOutput AWS API Documentation
    #
    class CreateMatchmakingConfigurationOutput < Struct.new(
      :configuration)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateMatchmakingRuleSetInput
    #   data as a hash:
    #
    #       {
    #         name: "MatchmakingIdStringModel", # required
    #         rule_set_body: "RuleSetBody", # required
    #       }
    #
    # @!attribute [rw] name
    #   Unique identifier for a matchmaking rule set. This name is used to
    #   identify the rule set associated with a matchmaking configuration.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_body
    #   Collection of matchmaking rules, formatted as a JSON string. (Note
    #   that comments are not allowed in JSON, but most elements support a
    #   description field.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingRuleSetInput AWS API Documentation
    #
    class CreateMatchmakingRuleSetInput < Struct.new(
      :name,
      :rule_set_body)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] rule_set
    #   Object that describes the newly created matchmaking rule set.
    #   @return [Types::MatchmakingRuleSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingRuleSetOutput AWS API Documentation
    #
    class CreateMatchmakingRuleSetOutput < Struct.new(
      :rule_set)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreatePlayerSessionInput
    #   data as a hash:
    #
    #       {
    #         game_session_id: "ArnStringModel", # required
    #         player_id: "NonZeroAndMaxString", # required
    #         player_data: "PlayerData",
    #       }
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session to add a player to.
    #   @return [String]
    #
    # @!attribute [rw] player_id
    #   Unique identifier for a player. Player IDs are developer-defined.
    #   @return [String]
    #
    # @!attribute [rw] player_data
    #   Developer-defined information related to a player. Amazon GameLift
    #   does not use this data, so it can be formatted as needed for use in
    #   the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessionInput AWS API Documentation
    #
    class CreatePlayerSessionInput < Struct.new(
      :game_session_id,
      :player_id,
      :player_data)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] player_session
    #   Object that describes the newly created player session record.
    #   @return [Types::PlayerSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessionOutput AWS API Documentation
    #
    class CreatePlayerSessionOutput < Struct.new(
      :player_session)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreatePlayerSessionsInput
    #   data as a hash:
    #
    #       {
    #         game_session_id: "ArnStringModel", # required
    #         player_ids: ["NonZeroAndMaxString"], # required
    #         player_data_map: {
    #           "NonZeroAndMaxString" => "PlayerData",
    #         },
    #       }
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session to add players to.
    #   @return [String]
    #
    # @!attribute [rw] player_ids
    #   List of unique identifiers for the players to be added.
    #   @return [Array<String>]
    #
    # @!attribute [rw] player_data_map
    #   Map of string pairs, each specifying a player ID and a set of
    #   developer-defined information related to the player. Amazon GameLift
    #   does not use this data, so it can be formatted as needed for use in
    #   the game. Player data strings for player IDs not included in the
    #   `PlayerIds` parameter are ignored.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessionsInput AWS API Documentation
    #
    class CreatePlayerSessionsInput < Struct.new(
      :game_session_id,
      :player_ids,
      :player_data_map)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] player_sessions
    #   Collection of player session objects created for the added players.
    #   @return [Array<Types::PlayerSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessionsOutput AWS API Documentation
    #
    class CreatePlayerSessionsOutput < Struct.new(
      :player_sessions)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateVpcPeeringAuthorizationInput
    #   data as a hash:
    #
    #       {
    #         game_lift_aws_account_id: "NonZeroAndMaxString", # required
    #         peer_vpc_id: "NonZeroAndMaxString", # required
    #       }
    #
    # @!attribute [rw] game_lift_aws_account_id
    #   Unique identifier for the AWS account that you use to manage your
    #   Amazon GameLift fleet. You can find your Account ID in the AWS
    #   Management Console under account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   Unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same region where your
    #   fleet is deployed. To get VPC information, including IDs, use the
    #   Virtual Private Cloud service tools, including the VPC Dashboard in
    #   the AWS Management Console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringAuthorizationInput AWS API Documentation
    #
    class CreateVpcPeeringAuthorizationInput < Struct.new(
      :game_lift_aws_account_id,
      :peer_vpc_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] vpc_peering_authorization
    #   Details on the requested VPC peering authorization, including
    #   expiration.
    #   @return [Types::VpcPeeringAuthorization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringAuthorizationOutput AWS API Documentation
    #
    class CreateVpcPeeringAuthorizationOutput < Struct.new(
      :vpc_peering_authorization)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass CreateVpcPeeringConnectionInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         peer_vpc_aws_account_id: "NonZeroAndMaxString", # required
    #         peer_vpc_id: "NonZeroAndMaxString", # required
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet. This tells Amazon GameLift which
    #   GameLift VPC to peer with.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_aws_account_id
    #   Unique identifier for the AWS account with the VPC that you want to
    #   peer your Amazon GameLift fleet with. You can find your Account ID
    #   in the AWS Management Console under account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   Unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same region where your
    #   fleet is deployed. To get VPC information, including IDs, use the
    #   Virtual Private Cloud service tools, including the VPC Dashboard in
    #   the AWS Management Console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringConnectionInput AWS API Documentation
    #
    class CreateVpcPeeringConnectionInput < Struct.new(
      :fleet_id,
      :peer_vpc_aws_account_id,
      :peer_vpc_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringConnectionOutput AWS API Documentation
    #
    class CreateVpcPeeringConnectionOutput < Aws::EmptyStructure; end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DeleteAliasInput
    #   data as a hash:
    #
    #       {
    #         alias_id: "AliasId", # required
    #       }
    #
    # @!attribute [rw] alias_id
    #   Unique identifier for a fleet alias. Specify the alias you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteAliasInput AWS API Documentation
    #
    class DeleteAliasInput < Struct.new(
      :alias_id)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DeleteBuildInput
    #   data as a hash:
    #
    #       {
    #         build_id: "BuildId", # required
    #       }
    #
    # @!attribute [rw] build_id
    #   Unique identifier for a build to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteBuildInput AWS API Documentation
    #
    class DeleteBuildInput < Struct.new(
      :build_id)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DeleteFleetInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleetInput AWS API Documentation
    #
    class DeleteFleetInput < Struct.new(
      :fleet_id)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DeleteGameSessionQueueInput
    #   data as a hash:
    #
    #       {
    #         name: "GameSessionQueueName", # required
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with game session queue. Queue
    #   names must be unique within each region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameSessionQueueInput AWS API Documentation
    #
    class DeleteGameSessionQueueInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameSessionQueueOutput AWS API Documentation
    #
    class DeleteGameSessionQueueOutput < Aws::EmptyStructure; end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DeleteMatchmakingConfigurationInput
    #   data as a hash:
    #
    #       {
    #         name: "MatchmakingIdStringModel", # required
    #       }
    #
    # @!attribute [rw] name
    #   Unique identifier for a matchmaking configuration
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingConfigurationInput AWS API Documentation
    #
    class DeleteMatchmakingConfigurationInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingConfigurationOutput AWS API Documentation
    #
    class DeleteMatchmakingConfigurationOutput < Aws::EmptyStructure; end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DeleteScalingPolicyInput
    #   data as a hash:
    #
    #       {
    #         name: "NonZeroAndMaxString", # required
    #         fleet_id: "FleetId", # required
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteScalingPolicyInput AWS API Documentation
    #
    class DeleteScalingPolicyInput < Struct.new(
      :name,
      :fleet_id)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DeleteVpcPeeringAuthorizationInput
    #   data as a hash:
    #
    #       {
    #         game_lift_aws_account_id: "NonZeroAndMaxString", # required
    #         peer_vpc_id: "NonZeroAndMaxString", # required
    #       }
    #
    # @!attribute [rw] game_lift_aws_account_id
    #   Unique identifier for the AWS account that you use to manage your
    #   Amazon GameLift fleet. You can find your Account ID in the AWS
    #   Management Console under account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   Unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same region where your
    #   fleet is deployed. To get VPC information, including IDs, use the
    #   Virtual Private Cloud service tools, including the VPC Dashboard in
    #   the AWS Management Console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringAuthorizationInput AWS API Documentation
    #
    class DeleteVpcPeeringAuthorizationInput < Struct.new(
      :game_lift_aws_account_id,
      :peer_vpc_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringAuthorizationOutput AWS API Documentation
    #
    class DeleteVpcPeeringAuthorizationOutput < Aws::EmptyStructure; end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DeleteVpcPeeringConnectionInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         vpc_peering_connection_id: "NonZeroAndMaxString", # required
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet. This value must match the fleet ID
    #   referenced in the VPC peering connection record.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   Unique identifier for a VPC peering connection. This value is
    #   included in the VpcPeeringConnection object, which can be retrieved
    #   by calling DescribeVpcPeeringConnections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringConnectionInput AWS API Documentation
    #
    class DeleteVpcPeeringConnectionInput < Struct.new(
      :fleet_id,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringConnectionOutput AWS API Documentation
    #
    class DeleteVpcPeeringConnectionOutput < Aws::EmptyStructure; end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeAliasInput
    #   data as a hash:
    #
    #       {
    #         alias_id: "AliasId", # required
    #       }
    #
    # @!attribute [rw] alias_id
    #   Unique identifier for a fleet alias. Specify the alias you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeAliasInput AWS API Documentation
    #
    class DescribeAliasInput < Struct.new(
      :alias_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] alias
    #   Object that contains the requested alias.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeAliasOutput AWS API Documentation
    #
    class DescribeAliasOutput < Struct.new(
      :alias)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeBuildInput
    #   data as a hash:
    #
    #       {
    #         build_id: "BuildId", # required
    #       }
    #
    # @!attribute [rw] build_id
    #   Unique identifier for a build to retrieve properties for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeBuildInput AWS API Documentation
    #
    class DescribeBuildInput < Struct.new(
      :build_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] build
    #   Set of properties describing the requested build.
    #   @return [Types::Build]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeBuildOutput AWS API Documentation
    #
    class DescribeBuildOutput < Struct.new(
      :build)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeEC2InstanceLimitsInput
    #   data as a hash:
    #
    #       {
    #         ec2_instance_type: "t2.micro", # accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge
    #       }
    #
    # @!attribute [rw] ec2_instance_type
    #   Name of an EC2 instance type that is supported in Amazon GameLift. A
    #   fleet instance type determines the computing resources of each
    #   instance in the fleet, including CPU, memory, storage, and
    #   networking capacity. Amazon GameLift supports the following EC2
    #   instance types. See [Amazon EC2 Instance Types][1] for detailed
    #   descriptions. Leave this parameter blank to retrieve limits for all
    #   types.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeEC2InstanceLimitsInput AWS API Documentation
    #
    class DescribeEC2InstanceLimitsInput < Struct.new(
      :ec2_instance_type)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] ec2_instance_limits
    #   Object that contains the maximum number of instances for the
    #   specified instance type.
    #   @return [Array<Types::EC2InstanceLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeEC2InstanceLimitsOutput AWS API Documentation
    #
    class DescribeEC2InstanceLimitsOutput < Struct.new(
      :ec2_instance_limits)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeFleetAttributesInput
    #   data as a hash:
    #
    #       {
    #         fleet_ids: ["FleetId"],
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_ids
    #   Unique identifier for a fleet(s) to retrieve attributes for. To
    #   request attributes for all fleets, leave this parameter empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of
    #   fleet IDs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or
    #   a list of fleet IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetAttributesInput AWS API Documentation
    #
    class DescribeFleetAttributesInput < Struct.new(
      :fleet_ids,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_attributes
    #   Collection of objects containing attribute metadata for each
    #   requested fleet ID.
    #   @return [Array<Types::FleetAttributes>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetAttributesOutput AWS API Documentation
    #
    class DescribeFleetAttributesOutput < Struct.new(
      :fleet_attributes,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeFleetCapacityInput
    #   data as a hash:
    #
    #       {
    #         fleet_ids: ["FleetId"],
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_ids
    #   Unique identifier for a fleet(s) to retrieve capacity information
    #   for. To request capacity information for all fleets, leave this
    #   parameter empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of
    #   fleet IDs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or
    #   a list of fleet IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetCapacityInput AWS API Documentation
    #
    class DescribeFleetCapacityInput < Struct.new(
      :fleet_ids,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_capacity
    #   Collection of objects containing capacity information for each
    #   requested fleet ID. Leave this parameter empty to retrieve capacity
    #   information for all fleets.
    #   @return [Array<Types::FleetCapacity>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetCapacityOutput AWS API Documentation
    #
    class DescribeFleetCapacityOutput < Struct.new(
      :fleet_capacity,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeFleetEventsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to get event logs for.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Earliest date to retrieve event logs for. If no start time is
    #   specified, this call returns entries starting from when the fleet
    #   was created to the specified end time. Format is a number expressed
    #   in Unix time as milliseconds (ex: "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Most recent date to retrieve event logs for. If no end time is
    #   specified, this call returns entries from the specified start time
    #   up to the present. Format is a number expressed in Unix time as
    #   milliseconds (ex: "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetEventsInput AWS API Documentation
    #
    class DescribeFleetEventsInput < Struct.new(
      :fleet_id,
      :start_time,
      :end_time,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] events
    #   Collection of objects containing event log entries for the specified
    #   fleet.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetEventsOutput AWS API Documentation
    #
    class DescribeFleetEventsOutput < Struct.new(
      :events,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeFleetPortSettingsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to retrieve port settings for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetPortSettingsInput AWS API Documentation
    #
    class DescribeFleetPortSettingsInput < Struct.new(
      :fleet_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] inbound_permissions
    #   Object that contains port settings for the requested fleet ID.
    #   @return [Array<Types::IpPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetPortSettingsOutput AWS API Documentation
    #
    class DescribeFleetPortSettingsOutput < Struct.new(
      :inbound_permissions)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeFleetUtilizationInput
    #   data as a hash:
    #
    #       {
    #         fleet_ids: ["FleetId"],
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_ids
    #   Unique identifier for a fleet(s) to retrieve utilization data for.
    #   To request utilization data for all fleets, leave this parameter
    #   empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of
    #   fleet IDs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or
    #   a list of fleet IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetUtilizationInput AWS API Documentation
    #
    class DescribeFleetUtilizationInput < Struct.new(
      :fleet_ids,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_utilization
    #   Collection of objects containing utilization information for each
    #   requested fleet ID.
    #   @return [Array<Types::FleetUtilization>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetUtilizationOutput AWS API Documentation
    #
    class DescribeFleetUtilizationOutput < Struct.new(
      :fleet_utilization,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeGameSessionDetailsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId",
    #         game_session_id: "ArnStringModel",
    #         alias_id: "AliasId",
    #         status_filter: "NonZeroAndMaxString",
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to retrieve all game sessions active
    #   on the fleet.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   Unique identifier for an alias associated with the fleet to retrieve
    #   all game sessions for.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   Game session status to filter results on. Possible game session
    #   statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING` and
    #   `TERMINATING` (the last two are transitory).
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionDetailsInput AWS API Documentation
    #
    class DescribeGameSessionDetailsInput < Struct.new(
      :fleet_id,
      :game_session_id,
      :alias_id,
      :status_filter,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session_details
    #   Collection of objects containing game session properties and the
    #   protection policy currently in force for each session matching the
    #   request.
    #   @return [Array<Types::GameSessionDetail>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionDetailsOutput AWS API Documentation
    #
    class DescribeGameSessionDetailsOutput < Struct.new(
      :game_session_details,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeGameSessionPlacementInput
    #   data as a hash:
    #
    #       {
    #         placement_id: "IdStringModel", # required
    #       }
    #
    # @!attribute [rw] placement_id
    #   Unique identifier for a game session placement to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionPlacementInput AWS API Documentation
    #
    class DescribeGameSessionPlacementInput < Struct.new(
      :placement_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session_placement
    #   Object that describes the requested game session placement.
    #   @return [Types::GameSessionPlacement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionPlacementOutput AWS API Documentation
    #
    class DescribeGameSessionPlacementOutput < Struct.new(
      :game_session_placement)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeGameSessionQueuesInput
    #   data as a hash:
    #
    #       {
    #         names: ["GameSessionQueueName"],
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] names
    #   List of queue names to retrieve information for. To request settings
    #   for all queues, leave this parameter empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionQueuesInput AWS API Documentation
    #
    class DescribeGameSessionQueuesInput < Struct.new(
      :names,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session_queues
    #   Collection of objects that describes the requested game session
    #   queues.
    #   @return [Array<Types::GameSessionQueue>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionQueuesOutput AWS API Documentation
    #
    class DescribeGameSessionQueuesOutput < Struct.new(
      :game_session_queues,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeGameSessionsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId",
    #         game_session_id: "ArnStringModel",
    #         alias_id: "AliasId",
    #         status_filter: "NonZeroAndMaxString",
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to retrieve all game sessions for.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session to retrieve. You can use
    #   either a `GameSessionId` or `GameSessionArn` value.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   Unique identifier for an alias associated with the fleet to retrieve
    #   all game sessions for.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   Game session status to filter results on. Possible game session
    #   statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING`, and
    #   `TERMINATING` (the last two are transitory).
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionsInput AWS API Documentation
    #
    class DescribeGameSessionsInput < Struct.new(
      :fleet_id,
      :game_session_id,
      :alias_id,
      :status_filter,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_sessions
    #   Collection of objects containing game session properties for each
    #   session matching the request.
    #   @return [Array<Types::GameSession>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionsOutput AWS API Documentation
    #
    class DescribeGameSessionsOutput < Struct.new(
      :game_sessions,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeInstancesInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         instance_id: "InstanceId",
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to retrieve instance information for.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   Unique identifier for an instance to retrieve. Specify an instance
    #   ID or leave blank to retrieve all instances in the fleet.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeInstancesInput AWS API Documentation
    #
    class DescribeInstancesInput < Struct.new(
      :fleet_id,
      :instance_id,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] instances
    #   Collection of objects containing properties for each instance
    #   returned.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeInstancesOutput AWS API Documentation
    #
    class DescribeInstancesOutput < Struct.new(
      :instances,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeMatchmakingConfigurationsInput
    #   data as a hash:
    #
    #       {
    #         names: ["MatchmakingIdStringModel"],
    #         rule_set_name: "MatchmakingIdStringModel",
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] names
    #   Unique identifier for a matchmaking configuration(s) to retrieve. To
    #   request all existing configurations, leave this parameter empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_set_name
    #   Unique identifier for a matchmaking rule set. Use this parameter to
    #   retrieve all matchmaking configurations that use this rule set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is limited to 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingConfigurationsInput AWS API Documentation
    #
    class DescribeMatchmakingConfigurationsInput < Struct.new(
      :names,
      :rule_set_name,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] configurations
    #   Collection of requested matchmaking configuration objects.
    #   @return [Array<Types::MatchmakingConfiguration>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingConfigurationsOutput AWS API Documentation
    #
    class DescribeMatchmakingConfigurationsOutput < Struct.new(
      :configurations,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeMatchmakingInput
    #   data as a hash:
    #
    #       {
    #         ticket_ids: ["MatchmakingIdStringModel"], # required
    #       }
    #
    # @!attribute [rw] ticket_ids
    #   Unique identifier for a matchmaking ticket. You can include up to 10
    #   ID values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingInput AWS API Documentation
    #
    class DescribeMatchmakingInput < Struct.new(
      :ticket_ids)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] ticket_list
    #   Collection of existing matchmaking ticket objects matching the
    #   request.
    #   @return [Array<Types::MatchmakingTicket>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingOutput AWS API Documentation
    #
    class DescribeMatchmakingOutput < Struct.new(
      :ticket_list)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeMatchmakingRuleSetsInput
    #   data as a hash:
    #
    #       {
    #         names: ["MatchmakingIdStringModel"],
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] names
    #   Unique identifier for a matchmaking rule set. This name is used to
    #   identify the rule set associated with a matchmaking configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingRuleSetsInput AWS API Documentation
    #
    class DescribeMatchmakingRuleSetsInput < Struct.new(
      :names,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] rule_sets
    #   Collection of requested matchmaking rule set objects.
    #   @return [Array<Types::MatchmakingRuleSet>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingRuleSetsOutput AWS API Documentation
    #
    class DescribeMatchmakingRuleSetsOutput < Struct.new(
      :rule_sets,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribePlayerSessionsInput
    #   data as a hash:
    #
    #       {
    #         game_session_id: "ArnStringModel",
    #         player_id: "NonZeroAndMaxString",
    #         player_session_id: "PlayerSessionId",
    #         player_session_status_filter: "NonZeroAndMaxString",
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session to retrieve player sessions
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] player_id
    #   Unique identifier for a player to retrieve player sessions for.
    #   @return [String]
    #
    # @!attribute [rw] player_session_id
    #   Unique identifier for a player session to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] player_session_status_filter
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
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. If a player
    #   session ID is specified, this parameter is ignored.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value. If a player session ID is specified, this parameter is
    #   ignored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribePlayerSessionsInput AWS API Documentation
    #
    class DescribePlayerSessionsInput < Struct.new(
      :game_session_id,
      :player_id,
      :player_session_id,
      :player_session_status_filter,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] player_sessions
    #   Collection of objects containing properties for each player session
    #   that matches the request.
    #   @return [Array<Types::PlayerSession>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribePlayerSessionsOutput AWS API Documentation
    #
    class DescribePlayerSessionsOutput < Struct.new(
      :player_sessions,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeRuntimeConfigurationInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to get the run-time configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeRuntimeConfigurationInput AWS API Documentation
    #
    class DescribeRuntimeConfigurationInput < Struct.new(
      :fleet_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] runtime_configuration
    #   Instructions describing how server processes should be launched and
    #   maintained on each instance in the fleet.
    #   @return [Types::RuntimeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeRuntimeConfigurationOutput AWS API Documentation
    #
    class DescribeRuntimeConfigurationOutput < Struct.new(
      :runtime_configuration)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeScalingPoliciesInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         status_filter: "ACTIVE", # accepts ACTIVE, UPDATE_REQUESTED, UPDATING, DELETE_REQUESTED, DELETING, DELETED, ERROR
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to retrieve scaling policies for.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
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
    #   * **ERROR** -- An error occurred in creating the policy. It should
    #     be removed and recreated.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScalingPoliciesInput AWS API Documentation
    #
    class DescribeScalingPoliciesInput < Struct.new(
      :fleet_id,
      :status_filter,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] scaling_policies
    #   Collection of objects containing the scaling policies matching the
    #   request.
    #   @return [Array<Types::ScalingPolicy>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScalingPoliciesOutput AWS API Documentation
    #
    class DescribeScalingPoliciesOutput < Struct.new(
      :scaling_policies,
      :next_token)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringAuthorizationsInput AWS API Documentation
    #
    class DescribeVpcPeeringAuthorizationsInput < Aws::EmptyStructure; end

    # @!attribute [rw] vpc_peering_authorizations
    #   Collection of objects that describe all valid VPC peering operations
    #   for the current AWS account.
    #   @return [Array<Types::VpcPeeringAuthorization>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringAuthorizationsOutput AWS API Documentation
    #
    class DescribeVpcPeeringAuthorizationsOutput < Struct.new(
      :vpc_peering_authorizations)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass DescribeVpcPeeringConnectionsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId",
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringConnectionsInput AWS API Documentation
    #
    class DescribeVpcPeeringConnectionsInput < Struct.new(
      :fleet_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] vpc_peering_connections
    #   Collection of VPC peering connection records that match the request.
    #   @return [Array<Types::VpcPeeringConnection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringConnectionsOutput AWS API Documentation
    #
    class DescribeVpcPeeringConnectionsOutput < Struct.new(
      :vpc_peering_connections)
      include Aws::Structure
    end

    # Player information for use when creating player sessions using a game
    # session placement request with StartGameSessionPlacement.
    #
    # @note When making an API call, you may pass DesiredPlayerSession
    #   data as a hash:
    #
    #       {
    #         player_id: "NonZeroAndMaxString",
    #         player_data: "PlayerData",
    #       }
    #
    # @!attribute [rw] player_id
    #   Unique identifier for a player to associate with the player session.
    #   @return [String]
    #
    # @!attribute [rw] player_data
    #   Developer-defined information related to a player. Amazon GameLift
    #   does not use this data, so it can be formatted as needed for use in
    #   the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DesiredPlayerSession AWS API Documentation
    #
    class DesiredPlayerSession < Struct.new(
      :player_id,
      :player_data)
      include Aws::Structure
    end

    # Current status of fleet capacity. The number of active instances
    # should match or be in the process of matching the number of desired
    # instances. Pending and terminating counts are non-zero only if fleet
    # capacity is adjusting to an UpdateFleetCapacity request, or if access
    # to resources is temporarily affected.
    #
    # Fleet-related operations include:
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
    # @!attribute [rw] desired
    #   Ideal number of active instances in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum
    #   Minimum value allowed for the fleet's instance count.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum
    #   Maximum value allowed for the fleet's instance count.
    #   @return [Integer]
    #
    # @!attribute [rw] pending
    #   Number of instances in the fleet that are starting but not yet
    #   active.
    #   @return [Integer]
    #
    # @!attribute [rw] active
    #   Actual number of active instances in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] idle
    #   Number of active instances in the fleet that are not currently
    #   hosting a game session.
    #   @return [Integer]
    #
    # @!attribute [rw] terminating
    #   Number of instances in the fleet that are no longer active but
    #   haven't yet been terminated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/EC2InstanceCounts AWS API Documentation
    #
    class EC2InstanceCounts < Struct.new(
      :desired,
      :minimum,
      :maximum,
      :pending,
      :active,
      :idle,
      :terminating)
      include Aws::Structure
    end

    # Maximum number of instances allowed based on the Amazon Elastic
    # Compute Cloud (Amazon EC2) instance type. Instance limits can be
    # retrieved by calling DescribeEC2InstanceLimits.
    #
    # @!attribute [rw] ec2_instance_type
    #   Name of an EC2 instance type that is supported in Amazon GameLift. A
    #   fleet instance type determines the computing resources of each
    #   instance in the fleet, including CPU, memory, storage, and
    #   networking capacity. Amazon GameLift supports the following EC2
    #   instance types. See [Amazon EC2 Instance Types][1] for detailed
    #   descriptions.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] current_instances
    #   Number of instances of the specified type that are currently in use
    #   by this AWS account.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_limit
    #   Number of instances allowed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/EC2InstanceLimit AWS API Documentation
    #
    class EC2InstanceLimit < Struct.new(
      :ec2_instance_type,
      :current_instances,
      :instance_limit)
      include Aws::Structure
    end

    # Log entry describing an event that involves Amazon GameLift resources
    # (such as a fleet). In addition to tracking activity, event codes and
    # messages can provide additional information for troubleshooting and
    # debugging problems.
    #
    # @!attribute [rw] event_id
    #   Unique identifier for a fleet event.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Unique identifier for an event resource, such as a fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] event_code
    #   Type of event being logged. The following events are currently in
    #   use:
    #
    #   **Fleet creation events:**
    #
    #   * FLEET\_CREATED -- A fleet record was successfully created with a
    #     status of `NEW`. Event messaging includes the fleet ID.
    #
    #   * FLEET\_STATE\_DOWNLOADING -- Fleet status changed from `NEW` to
    #     `DOWNLOADING`. The compressed build has started downloading to a
    #     fleet instance for installation.
    #
    #   * FLEET\_BINARY\_DOWNLOAD\_FAILED -- The build failed to download to
    #     the fleet instance.
    #
    #   * FLEET\_CREATION\_EXTRACTING\_BUILD – The game server build was
    #     successfully downloaded to an instance, and the build files are
    #     now being extracted from the uploaded build and saved to an
    #     instance. Failure at this stage prevents a fleet from moving to
    #     `ACTIVE` status. Logs for this stage display a list of the files
    #     that are extracted and saved on the instance. Access the logs by
    #     using the URL in *PreSignedLogUrl*.
    #
    #   * FLEET\_CREATION\_RUNNING\_INSTALLER – The game server build files
    #     were successfully extracted, and the Amazon GameLift is now
    #     running the build's install script (if one is included). Failure
    #     in this stage prevents a fleet from moving to `ACTIVE` status.
    #     Logs for this stage list the installation steps and whether or not
    #     the install completed successfully. Access the logs by using the
    #     URL in *PreSignedLogUrl*.
    #
    #   * FLEET\_CREATION\_VALIDATING\_RUNTIME\_CONFIG -- The build process
    #     was successful, and the Amazon GameLift is now verifying that the
    #     game server launch paths, which are specified in the fleet's
    #     run-time configuration, exist. If any listed launch path exists,
    #     Amazon GameLift tries to launch a game server process and waits
    #     for the process to report ready. Failures in this stage prevent a
    #     fleet from moving to `ACTIVE` status. Logs for this stage list the
    #     launch paths in the run-time configuration and indicate whether
    #     each is found. Access the logs by using the URL in
    #     *PreSignedLogUrl*.
    #
    #   * FLEET\_STATE\_VALIDATING -- Fleet status changed from
    #     `DOWNLOADING` to `VALIDATING`.
    #
    #   * FLEET\_VALIDATION\_LAUNCH\_PATH\_NOT\_FOUND -- Validation of the
    #     run-time configuration failed because the executable specified in
    #     a launch path does not exist on the instance.
    #
    #   * FLEET\_STATE\_BUILDING -- Fleet status changed from `VALIDATING`
    #     to `BUILDING`.
    #
    #   * FLEET\_VALIDATION\_EXECUTABLE\_RUNTIME\_FAILURE -- Validation of
    #     the run-time configuration failed because the executable specified
    #     in a launch path failed to run on the fleet instance.
    #
    #   * FLEET\_STATE\_ACTIVATING -- Fleet status changed from `BUILDING`
    #     to `ACTIVATING`.
    #
    #   * FLEET\_ACTIVATION\_FAILED - The fleet failed to successfully
    #     complete one of the steps in the fleet activation process. This
    #     event code indicates that the game build was successfully
    #     downloaded to a fleet instance, built, and validated, but was not
    #     able to start a server process. A possible reason for failure is
    #     that the game server is not reporting "process ready" to the
    #     Amazon GameLift service.
    #
    #   * FLEET\_STATE\_ACTIVE -- The fleet's status changed from
    #     `ACTIVATING` to `ACTIVE`. The fleet is now ready to host game
    #     sessions.
    #
    #   **VPC peering events:**
    #
    #   * FLEET\_VPC\_PEERING\_SUCCEEDED -- A VPC peering connection has
    #     been established between the VPC for an Amazon GameLift fleet and
    #     a VPC in your AWS account.
    #
    #   * FLEET\_VPC\_PEERING\_FAILED -- A requested VPC peering connection
    #     has failed. Event details and status information (see
    #     DescribeVpcPeeringConnections) provide additional detail. A common
    #     reason for peering failure is that the two VPCs have overlapping
    #     CIDR blocks of IPv4 addresses. To resolve this, change the CIDR
    #     block for the VPC in your AWS account. For more information on VPC
    #     peering failures, see
    #     [http://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html][1]
    #
    #   * FLEET\_VPC\_PEERING\_DELETED -- A VPC peering connection has been
    #     successfully deleted.
    #
    #   **Spot instance events:**
    #
    #   * INSTANCE\_INTERRUPTED -- A spot instance was interrupted by EC2
    #     with a two-minute notification.
    #
    #   ^
    #
    #   **Other fleet events:**
    #
    #   * FLEET\_SCALING\_EVENT -- A change was made to the fleet's
    #     capacity settings (desired instances, minimum/maximum scaling
    #     limits). Event messaging includes the new capacity settings.
    #
    #   * FLEET\_NEW\_GAME\_SESSION\_PROTECTION\_POLICY\_UPDATED -- A change
    #     was made to the fleet's game session protection policy setting.
    #     Event messaging includes both the old and new policy setting.
    #
    #   * FLEET\_DELETED -- A request to delete a fleet was initiated.
    #
    #   * GENERIC\_EVENT -- An unspecified event has occurred.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Additional information related to the event.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   Time stamp indicating when this event occurred. Format is a number
    #   expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] pre_signed_log_url
    #   Location of stored logs with additional detail that is related to
    #   the event. This is useful for debugging issues. The URL is valid for
    #   15 minutes. You can also access fleet creation logs through the
    #   Amazon GameLift console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :resource_id,
      :event_code,
      :message,
      :event_time,
      :pre_signed_log_url)
      include Aws::Structure
    end

    # General properties describing a fleet.
    #
    # Fleet-related operations include:
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
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   Identifier for a fleet that is unique across all regions.
    #   @return [String]
    #
    # @!attribute [rw] fleet_type
    #   Indicates whether the fleet uses on-demand or spot instances. A spot
    #   instance in use may be interrupted with a two-minute notification.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   EC2 instance type indicating the computing resources of each
    #   instance in the fleet, including CPU, memory, storage, and
    #   networking capacity. See [Amazon EC2 Instance Types][1] for detailed
    #   descriptions.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Human-readable description of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this data object was created. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] termination_time
    #   Time stamp indicating when this data object was terminated. Format
    #   is a number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Current status of the fleet.
    #
    #   Possible fleet statuses include the following:
    #
    #   * **NEW** -- A new fleet has been defined and desired instances is
    #     set to 1.
    #
    #   * **DOWNLOADING/VALIDATING/BUILDING/ACTIVATING** -- Amazon GameLift
    #     is setting up the new fleet, creating new instances with the game
    #     build and starting server processes.
    #
    #   * **ACTIVE** -- Hosts can now accept game sessions.
    #
    #   * **ERROR** -- An error occurred when downloading, validating,
    #     building, or activating the fleet.
    #
    #   * **DELETING** -- Hosts are responding to a delete fleet request.
    #
    #   * **TERMINATED** -- The fleet no longer exists.
    #   @return [String]
    #
    # @!attribute [rw] build_id
    #   Unique identifier for a build.
    #   @return [String]
    #
    # @!attribute [rw] server_launch_path
    #   Path to a game server executable in the fleet's build, specified
    #   for fleets created before 2016-08-04 (or AWS SDK v. 0.12.16). Server
    #   launch paths for fleets created after this date are specified in the
    #   fleet's RuntimeConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] server_launch_parameters
    #   Game server launch parameters specified for fleets created before
    #   2016-08-04 (or AWS SDK v. 0.12.16). Server launch parameters for
    #   fleets created after this date are specified in the fleet's
    #   RuntimeConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] log_paths
    #   Location of default log files. When a server process is shut down,
    #   Amazon GameLift captures and stores any log files in this location.
    #   These logs are in addition to game session logs; see more on game
    #   session logs in the [Amazon GameLift Developer Guide][1]. If no
    #   default log path for a fleet is specified, Amazon GameLift
    #   automatically uploads logs that are stored on each instance at
    #   `C:\game\logs` (for Windows) or `/local/game/logs` (for Linux). Use
    #   the Amazon GameLift console to access stored logs.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-api-server-code
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   Type of game session protection to set for all new instances started
    #   in the fleet.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE`
    #     status, it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   Operating system of the fleet's computing resources. A fleet's
    #   operating system depends on the OS specified for the build that is
    #   deployed on this fleet.
    #   @return [String]
    #
    # @!attribute [rw] resource_creation_limit_policy
    #   Fleet policy to limit the number of game sessions an individual
    #   player can create over a span of time.
    #   @return [Types::ResourceCreationLimitPolicy]
    #
    # @!attribute [rw] metric_groups
    #   Names of metric groups that this fleet is included in. In Amazon
    #   CloudWatch, you can view metrics for an individual fleet or
    #   aggregated metrics for fleets that are in a fleet metric group. A
    #   fleet can be included in only one metric group at a time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stopped_actions
    #   List of fleet actions that have been suspended using
    #   StopFleetActions. This includes auto-scaling.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FleetAttributes AWS API Documentation
    #
    class FleetAttributes < Struct.new(
      :fleet_id,
      :fleet_arn,
      :fleet_type,
      :instance_type,
      :description,
      :name,
      :creation_time,
      :termination_time,
      :status,
      :build_id,
      :server_launch_path,
      :server_launch_parameters,
      :log_paths,
      :new_game_session_protection_policy,
      :operating_system,
      :resource_creation_limit_policy,
      :metric_groups,
      :stopped_actions)
      include Aws::Structure
    end

    # Information about the fleet's capacity. Fleet capacity is measured in
    # EC2 instances. By default, new fleets have a capacity of one instance,
    # but can be updated as needed. The maximum number of instances for a
    # fleet is determined by the fleet's instance type.
    #
    # Fleet-related operations include:
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
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   Name of an EC2 instance type that is supported in Amazon GameLift. A
    #   fleet instance type determines the computing resources of each
    #   instance in the fleet, including CPU, memory, storage, and
    #   networking capacity. Amazon GameLift supports the following EC2
    #   instance types. See [Amazon EC2 Instance Types][1] for detailed
    #   descriptions.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] instance_counts
    #   Current status of fleet capacity.
    #   @return [Types::EC2InstanceCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FleetCapacity AWS API Documentation
    #
    class FleetCapacity < Struct.new(
      :fleet_id,
      :instance_type,
      :instance_counts)
      include Aws::Structure
    end

    # Current status of fleet utilization, including the number of game and
    # player sessions being hosted.
    #
    # Fleet-related operations include:
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
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet.
    #   @return [String]
    #
    # @!attribute [rw] active_server_process_count
    #   Number of server processes in an `ACTIVE` status currently running
    #   across all instances in the fleet
    #   @return [Integer]
    #
    # @!attribute [rw] active_game_session_count
    #   Number of active game sessions currently being hosted on all
    #   instances in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] current_player_session_count
    #   Number of active player sessions currently being hosted on all
    #   instances in the fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_player_session_count
    #   Maximum players allowed across all game sessions currently being
    #   hosted on all instances in the fleet.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FleetUtilization AWS API Documentation
    #
    class FleetUtilization < Struct.new(
      :fleet_id,
      :active_server_process_count,
      :active_game_session_count,
      :current_player_session_count,
      :maximum_player_session_count)
      include Aws::Structure
    end

    # Set of key-value pairs that contain information about a game session.
    # When included in a game session request, these properties communicate
    # details to be used when setting up the new game session, such as to
    # specify a game mode, level, or map. Game properties are passed to the
    # game server process when initiating a new game session; the server
    # process uses the properties as appropriate. For more information, see
    # the [ Amazon GameLift Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create
    #
    # @note When making an API call, you may pass GameProperty
    #   data as a hash:
    #
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   Game property identifier.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Game property value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameProperty AWS API Documentation
    #
    class GameProperty < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Properties describing a game session.
    #
    # A game session in ACTIVE status can host players. When a game session
    # ends, its status is set to `TERMINATED`.
    #
    # Once the session ends, the game session object is retained for 30
    # days. This means you can reuse idempotency token values after this
    # time. Game session logs are retained for 14 days.
    #
    # Game-session-related operations include:
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
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session. A game session ARN has the
    #   following format: `arn:aws:gamelift:<region>::gamesession/<fleet
    #   ID>/<custom ID string or idempotency token>`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that the game session is running on.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this data object was created. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] termination_time
    #   Time stamp indicating when this data object was terminated. Format
    #   is a number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] current_player_session_count
    #   Number of players currently in the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_player_session_count
    #   Maximum number of players that can be connected simultaneously to
    #   the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Current status of the game session. A game session must have an
    #   `ACTIVE` status to have player sessions.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Provides additional information about game session status.
    #   `INTERRUPTED` indicates that the game session was hosted on a spot
    #   instance that was reclaimed, causing the active game session to be
    #   terminated.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   Set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). You can search for active game sessions
    #   based on this custom data with SearchGameSessions.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] ip_address
    #   IP address of the game session. To connect to a Amazon GameLift game
    #   server, an app needs both the IP address and port number.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port number for the game session. To connect to a Amazon GameLift
    #   game server, an app needs both the IP address and port number.
    #   @return [Integer]
    #
    # @!attribute [rw] player_session_creation_policy
    #   Indicates whether or not the game session is accepting new players.
    #   @return [String]
    #
    # @!attribute [rw] creator_id
    #   Unique identifier for a player. This ID is used to enforce a
    #   resource protection policy (if one exists), that limits the number
    #   of game sessions a player can create.
    #   @return [String]
    #
    # @!attribute [rw] game_session_data
    #   Set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @!attribute [rw] matchmaker_data
    #   Information about the matchmaking process that was used to create
    #   the game session. It is in JSON syntax, formatted as a string. In
    #   addition the matchmaking configuration used, it contains data on all
    #   players assigned to the match, including player attributes and team
    #   assignments. For more details on matchmaker data, see [Match
    #   Data][1]. Matchmaker data is useful when requesting match backfills,
    #   and is updated whenever new players are added during a successful
    #   backfill (see StartMatchBackfill).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSession AWS API Documentation
    #
    class GameSession < Struct.new(
      :game_session_id,
      :name,
      :fleet_id,
      :creation_time,
      :termination_time,
      :current_player_session_count,
      :maximum_player_session_count,
      :status,
      :status_reason,
      :game_properties,
      :ip_address,
      :port,
      :player_session_creation_policy,
      :creator_id,
      :game_session_data,
      :matchmaker_data)
      include Aws::Structure
    end

    # Connection information for the new game session that is created with
    # matchmaking. (with StartMatchmaking). Once a match is set, the
    # FlexMatch engine places the match and creates a new game session for
    # it. This information, including the game session endpoint and player
    # sessions for each player in the original matchmaking request, is added
    # to the MatchmakingTicket, which can be retrieved by calling
    # DescribeMatchmaking.
    #
    # @!attribute [rw] game_session_arn
    #   Amazon Resource Name ([ARN][1]) that is assigned to a game session
    #   and uniquely identifies it.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   IP address of the game session. To connect to a Amazon GameLift game
    #   server, an app needs both the IP address and port number.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port number for the game session. To connect to a Amazon GameLift
    #   game server, an app needs both the IP address and port number.
    #   @return [Integer]
    #
    # @!attribute [rw] matched_player_sessions
    #   Collection of player session IDs, one for each player ID that was
    #   included in the original matchmaking request.
    #   @return [Array<Types::MatchedPlayerSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionConnectionInfo AWS API Documentation
    #
    class GameSessionConnectionInfo < Struct.new(
      :game_session_arn,
      :ip_address,
      :port,
      :matched_player_sessions)
      include Aws::Structure
    end

    # A game session's properties plus the protection policy currently in
    # force.
    #
    # @!attribute [rw] game_session
    #   Object that describes a game session.
    #   @return [Types::GameSession]
    #
    # @!attribute [rw] protection_policy
    #   Current status of protection for the game session.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE`
    #     status, it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionDetail AWS API Documentation
    #
    class GameSessionDetail < Struct.new(
      :game_session,
      :protection_policy)
      include Aws::Structure
    end

    # Object that describes a StartGameSessionPlacement request. This object
    # includes the full details of the original request plus the current
    # status and start/end time stamps.
    #
    # Game session placement-related operations include:
    #
    # * StartGameSessionPlacement
    #
    # * DescribeGameSessionPlacement
    #
    # * StopGameSessionPlacement
    #
    # @!attribute [rw] placement_id
    #   Unique identifier for a game session placement.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_name
    #   Descriptive label that is associated with game session queue. Queue
    #   names must be unique within each region.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the game session placement request.
    #
    #   * **PENDING** -- The placement request is currently in the queue
    #     waiting to be processed.
    #
    #   * **FULFILLED** -- A new game session and player sessions (if
    #     requested) have been successfully created. Values for
    #     *GameSessionArn* and *GameSessionRegion* are available.
    #
    #   * **CANCELLED** -- The placement request was canceled with a call to
    #     StopGameSessionPlacement.
    #
    #   * **TIMED\_OUT** -- A new game session was not successfully created
    #     before the time limit expired. You can resubmit the placement
    #     request as needed.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   Set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] maximum_player_session_count
    #   Maximum number of players that can be connected simultaneously to
    #   the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] game_session_name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session. This value is set once the
    #   new game session is placed (placement status is `FULFILLED`).
    #   @return [String]
    #
    # @!attribute [rw] game_session_arn
    #   Identifier for the game session created by this placement request.
    #   This value is set once the new game session is placed (placement
    #   status is `FULFILLED`). This identifier is unique across all
    #   regions. You can use this value as a `GameSessionId` value as
    #   needed.
    #   @return [String]
    #
    # @!attribute [rw] game_session_region
    #   Name of the region where the game session created by this placement
    #   request is running. This value is set once the new game session is
    #   placed (placement status is `FULFILLED`).
    #   @return [String]
    #
    # @!attribute [rw] player_latencies
    #   Set of values, expressed in milliseconds, indicating the amount of
    #   latency that a player experiences when connected to AWS regions.
    #   @return [Array<Types::PlayerLatency>]
    #
    # @!attribute [rw] start_time
    #   Time stamp indicating when this request was placed in the queue.
    #   Format is a number expressed in Unix time as milliseconds (for
    #   example "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time stamp indicating when this request was completed, canceled, or
    #   timed out.
    #   @return [Time]
    #
    # @!attribute [rw] ip_address
    #   IP address of the game session. To connect to a Amazon GameLift game
    #   server, an app needs both the IP address and port number. This value
    #   is set once the new game session is placed (placement status is
    #   `FULFILLED`).
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port number for the game session. To connect to a Amazon GameLift
    #   game server, an app needs both the IP address and port number. This
    #   value is set once the new game session is placed (placement status
    #   is `FULFILLED`).
    #   @return [Integer]
    #
    # @!attribute [rw] placed_player_sessions
    #   Collection of information on player sessions created in response to
    #   the game session placement request. These player sessions are
    #   created only once a new game session is successfully placed
    #   (placement status is `FULFILLED`). This information includes the
    #   player ID (as provided in the placement request) and the
    #   corresponding player session ID. Retrieve full player sessions by
    #   calling DescribePlayerSessions with the player session ID.
    #   @return [Array<Types::PlacedPlayerSession>]
    #
    # @!attribute [rw] game_session_data
    #   Set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @!attribute [rw] matchmaker_data
    #   Information on the matchmaking process for this game. Data is in
    #   JSON syntax, formatted as a string. It identifies the matchmaking
    #   configuration used to create the match, and contains data on all
    #   players assigned to the match, including player attributes and team
    #   assignments. For more details on matchmaker data, see [Match
    #   Data][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionPlacement AWS API Documentation
    #
    class GameSessionPlacement < Struct.new(
      :placement_id,
      :game_session_queue_name,
      :status,
      :game_properties,
      :maximum_player_session_count,
      :game_session_name,
      :game_session_id,
      :game_session_arn,
      :game_session_region,
      :player_latencies,
      :start_time,
      :end_time,
      :ip_address,
      :port,
      :placed_player_sessions,
      :game_session_data,
      :matchmaker_data)
      include Aws::Structure
    end

    # Configuration of a queue that is used to process game session
    # placement requests. The queue configuration identifies several game
    # features:
    #
    # * The destinations where a new game session can potentially be hosted.
    #   Amazon GameLift tries these destinations in an order based on either
    #   the queue's default order or player latency information, if
    #   provided in a placement request. With latency information, Amazon
    #   GameLift can place game sessions where the majority of players are
    #   reporting the lowest possible latency.
    #
    # * The length of time that placement requests can wait in the queue
    #   before timing out.
    #
    # * A set of optional latency policies that protect individual players
    #   from high latencies, preventing game sessions from being placed
    #   where any individual player is reporting latency higher than a
    #   policy's maximum.
    #
    # Queue-related operations include:
    #
    # * CreateGameSessionQueue
    #
    # * DescribeGameSessionQueues
    #
    # * UpdateGameSessionQueue
    #
    # * DeleteGameSessionQueue
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with game session queue. Queue
    #   names must be unique within each region.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_arn
    #   Amazon Resource Name ([ARN][1]) that is assigned to a game session
    #   queue and uniquely identifies it. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   Maximum time, in seconds, that a new game session placement request
    #   remains in the queue. When a request exceeds this time, the game
    #   session placement changes to a `TIMED_OUT` status.
    #   @return [Integer]
    #
    # @!attribute [rw] player_latency_policies
    #   Collection of latency policies to apply when processing game
    #   sessions placement requests with player latency information.
    #   Multiple policies are evaluated in order of the maximum latency
    #   value, starting with the lowest latency values. With just one
    #   policy, it is enforced at the start of the game session placement
    #   for the duration period. With multiple policies, each policy is
    #   enforced consecutively for its duration period. For example, a queue
    #   might enforce a 60-second policy followed by a 120-second policy,
    #   and then no policy for the remainder of the placement.
    #   @return [Array<Types::PlayerLatencyPolicy>]
    #
    # @!attribute [rw] destinations
    #   List of fleets that can be used to fulfill game session placement
    #   requests in the queue. Fleets are identified by either a fleet ARN
    #   or a fleet alias ARN. Destinations are listed in default preference
    #   order.
    #   @return [Array<Types::GameSessionQueueDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionQueue AWS API Documentation
    #
    class GameSessionQueue < Struct.new(
      :name,
      :game_session_queue_arn,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations)
      include Aws::Structure
    end

    # Fleet designated in a game session queue. Requests for new game
    # sessions in the queue are fulfilled by starting a new game session on
    # any destination configured for a queue.
    #
    # Queue-related operations include:
    #
    # * CreateGameSessionQueue
    #
    # * DescribeGameSessionQueues
    #
    # * UpdateGameSessionQueue
    #
    # * DeleteGameSessionQueue
    #
    # @note When making an API call, you may pass GameSessionQueueDestination
    #   data as a hash:
    #
    #       {
    #         destination_arn: "ArnStringModel",
    #       }
    #
    # @!attribute [rw] destination_arn
    #   Amazon Resource Name (ARN) assigned to fleet or fleet alias. ARNs,
    #   which include a fleet ID or alias ID and a region name, provide a
    #   unique identifier across all regions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionQueueDestination AWS API Documentation
    #
    class GameSessionQueueDestination < Struct.new(
      :destination_arn)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass GetGameSessionLogUrlInput
    #   data as a hash:
    #
    #       {
    #         game_session_id: "ArnStringModel", # required
    #       }
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session to get logs for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetGameSessionLogUrlInput AWS API Documentation
    #
    class GetGameSessionLogUrlInput < Struct.new(
      :game_session_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] pre_signed_url
    #   Location of the requested game session logs, available for download.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetGameSessionLogUrlOutput AWS API Documentation
    #
    class GetGameSessionLogUrlOutput < Struct.new(
      :pre_signed_url)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass GetInstanceAccessInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that contains the instance you want
    #   access to. The fleet can be in any of the following statuses:
    #   `ACTIVATING`, `ACTIVE`, or `ERROR`. Fleets with an `ERROR` status
    #   may be accessible for a short time before they are deleted.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   Unique identifier for an instance you want to get access to. You can
    #   access an instance in any status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetInstanceAccessInput AWS API Documentation
    #
    class GetInstanceAccessInput < Struct.new(
      :fleet_id,
      :instance_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] instance_access
    #   Object that contains connection information for a fleet instance,
    #   including IP address and access credentials.
    #   @return [Types::InstanceAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetInstanceAccessOutput AWS API Documentation
    #
    class GetInstanceAccessOutput < Struct.new(
      :instance_access)
      include Aws::Structure
    end

    # Properties that describe an instance of a virtual computing resource
    # that hosts one or more game servers. A fleet may contain zero or more
    # instances.
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that the instance is in.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   Unique identifier for an instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   IP address assigned to the instance.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   Operating system that is running on this instance.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   EC2 instance type that defines the computing resources of this
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the instance. Possible statuses include the
    #   following:
    #
    #   * **PENDING** -- The instance is in the process of being created and
    #     launching server processes as defined in the fleet's run-time
    #     configuration.
    #
    #   * **ACTIVE** -- The instance has been successfully created and at
    #     least one server process has successfully launched and reported
    #     back to Amazon GameLift that it is ready to host a game session.
    #     The instance is now considered ready to host game sessions.
    #
    #   * **TERMINATING** -- The instance is in the process of shutting
    #     down. This may happen to reduce capacity during a scaling down
    #     event or to recycle resources in the event of a problem.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this data object was created. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :fleet_id,
      :instance_id,
      :ip_address,
      :operating_system,
      :type,
      :status,
      :creation_time)
      include Aws::Structure
    end

    # Information required to remotely connect to a fleet instance. Access
    # is requested by calling GetInstanceAccess.
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet containing the instance being
    #   accessed.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   Unique identifier for an instance being accessed.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   IP address assigned to the instance.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   Operating system that is running on the instance.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   Credentials required to access the instance.
    #   @return [Types::InstanceCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/InstanceAccess AWS API Documentation
    #
    class InstanceAccess < Struct.new(
      :fleet_id,
      :instance_id,
      :ip_address,
      :operating_system,
      :credentials)
      include Aws::Structure
    end

    # Set of credentials required to remotely access a fleet instance.
    # Access credentials are requested by calling GetInstanceAccess and
    # returned in an InstanceAccess object.
    #
    # @!attribute [rw] user_name
    #   User login string.
    #   @return [String]
    #
    # @!attribute [rw] secret
    #   Secret string. For Windows instances, the secret is a password for
    #   use with Windows Remote Desktop. For Linux instances, it is a
    #   private key (which must be saved as a `.pem` file) for use with SSH.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/InstanceCredentials AWS API Documentation
    #
    class InstanceCredentials < Struct.new(
      :user_name,
      :secret)
      include Aws::Structure
    end

    # A range of IP addresses and port settings that allow inbound traffic
    # to connect to server processes on Amazon GameLift. Each game session
    # hosted on a fleet is assigned a unique combination of IP address and
    # port number, which must fall into the fleet's allowed ranges. This
    # combination is included in the GameSession object.
    #
    # @note When making an API call, you may pass IpPermission
    #   data as a hash:
    #
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "NonBlankString", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       }
    #
    # @!attribute [rw] from_port
    #   Starting value for a range of allowed port numbers.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   Ending value for a range of allowed port numbers. Port numbers are
    #   end-inclusive. This value must be higher than `FromPort`.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_range
    #   Range of allowed IP addresses. This value must be expressed in CIDR
    #   notation. Example: "`000.000.000.000/[subnet mask]`" or optionally
    #   the shortened version "`0.0.0.0/[subnet mask]`".
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   Network communication protocol used by the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/IpPermission AWS API Documentation
    #
    class IpPermission < Struct.new(
      :from_port,
      :to_port,
      :ip_range,
      :protocol)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass ListAliasesInput
    #   data as a hash:
    #
    #       {
    #         routing_strategy_type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #         name: "NonEmptyString",
    #         limit: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] routing_strategy_type
    #   Type of routing to filter results on. Use this parameter to retrieve
    #   only aliases of a certain type. To retrieve all aliases, leave this
    #   parameter empty.
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
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListAliasesInput AWS API Documentation
    #
    class ListAliasesInput < Struct.new(
      :routing_strategy_type,
      :name,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] aliases
    #   Collection of alias records that match the list request.
    #   @return [Array<Types::Alias>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListAliasesOutput AWS API Documentation
    #
    class ListAliasesOutput < Struct.new(
      :aliases,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass ListBuildsInput
    #   data as a hash:
    #
    #       {
    #         status: "INITIALIZED", # accepts INITIALIZED, READY, FAILED
    #         limit: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] status
    #   Build status to filter results by. To retrieve all builds, leave
    #   this parameter empty.
    #
    #   Possible build statuses include the following:
    #
    #   * **INITIALIZED** -- A new build has been defined, but no files have
    #     been uploaded. You cannot create fleets for builds that are in
    #     this status. When a build is successfully created, the build
    #     status is set to this value.
    #
    #   * **READY** -- The game build has been successfully uploaded. You
    #     can now create new fleets for this build.
    #
    #   * **FAILED** -- The game build upload failed. You cannot create new
    #     fleets for this build.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListBuildsInput AWS API Documentation
    #
    class ListBuildsInput < Struct.new(
      :status,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] builds
    #   Collection of build records that match the request.
    #   @return [Array<Types::Build>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListBuildsOutput AWS API Documentation
    #
    class ListBuildsOutput < Struct.new(
      :builds,
      :next_token)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass ListFleetsInput
    #   data as a hash:
    #
    #       {
    #         build_id: "BuildId",
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] build_id
    #   Unique identifier for a build to return fleets for. Use this
    #   parameter to return only fleets using the specified build. To
    #   retrieve all fleets, leave this parameter empty.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleetsInput AWS API Documentation
    #
    class ListFleetsInput < Struct.new(
      :build_id,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_ids
    #   Set of fleet IDs matching the list request. You can retrieve
    #   additional information about all returned fleets by passing this
    #   result set to a call to DescribeFleetAttributes,
    #   DescribeFleetCapacity, or DescribeFleetUtilization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleetsOutput AWS API Documentation
    #
    class ListFleetsOutput < Struct.new(
      :fleet_ids,
      :next_token)
      include Aws::Structure
    end

    # Represents a new player session that is created as a result of a
    # successful FlexMatch match. A successful match automatically creates
    # new player sessions for every player ID in the original matchmaking
    # request.
    #
    # When players connect to the match's game session, they must include
    # both player ID and player session ID in order to claim their assigned
    # player slot.
    #
    # @!attribute [rw] player_id
    #   Unique identifier for a player
    #   @return [String]
    #
    # @!attribute [rw] player_session_id
    #   Unique identifier for a player session
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/MatchedPlayerSession AWS API Documentation
    #
    class MatchedPlayerSession < Struct.new(
      :player_id,
      :player_session_id)
      include Aws::Structure
    end

    # Guidelines for use with FlexMatch to match players into games. All
    # matchmaking requests must specify a matchmaking configuration.
    #
    # @!attribute [rw] name
    #   Unique identifier for a matchmaking configuration. This name is used
    #   to identify the configuration associated with a matchmaking request
    #   or ticket.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Descriptive label that is associated with matchmaking configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_arns
    #   Amazon Resource Name ([ARN][1]) that is assigned to a game session
    #   queue and uniquely identifies it. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #   These queues are used when placing game sessions for matches that
    #   are created with this matchmaking configuration. Queues can be
    #   located in any region.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] request_timeout_seconds
    #   Maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that time out can be
    #   resubmitted as needed.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_timeout_seconds
    #   Length of time (in seconds) to wait for players to accept a proposed
    #   match. If any player rejects the match or fails to accept before the
    #   timeout, the ticket continues to look for an acceptable match.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_required
    #   Flag that determines whether or not a match that was created with
    #   this configuration must be accepted by the matched players. To
    #   require acceptance, set to TRUE.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule_set_name
    #   Unique identifier for a matchmaking rule set to use with this
    #   configuration. A matchmaking configuration can only use rule sets
    #   that are defined in the same region.
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   SNS topic ARN that is set up to receive matchmaking notifications.
    #   @return [String]
    #
    # @!attribute [rw] additional_player_count
    #   Number of player slots in a match to keep open for future players.
    #   For example, if the configuration's rule set specifies a match for
    #   a single 12-person team, and the additional player count is set to
    #   2, only 10 players are selected for the match.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_event_data
    #   Information to attached to all events related to the matchmaking
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this data object was created. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] game_properties
    #   Set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] game_session_data
    #   Set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/MatchmakingConfiguration AWS API Documentation
    #
    class MatchmakingConfiguration < Struct.new(
      :name,
      :description,
      :game_session_queue_arns,
      :request_timeout_seconds,
      :acceptance_timeout_seconds,
      :acceptance_required,
      :rule_set_name,
      :notification_target,
      :additional_player_count,
      :custom_event_data,
      :creation_time,
      :game_properties,
      :game_session_data)
      include Aws::Structure
    end

    # Set of rule statements, used with FlexMatch, that determine how to
    # build a certain kind of player match. Each rule set describes a type
    # of group to be created and defines the parameters for acceptable
    # player matches. Rule sets are used in MatchmakingConfiguration
    # objects.
    #
    # A rule set may define the following elements for a match. For detailed
    # information and examples showing how to construct a rule set, see
    # [Build a FlexMatch Rule Set][1].
    #
    # * Teams -- Required. A rule set must define one or multiple teams for
    #   the match and set minimum and maximum team sizes. For example, a
    #   rule set might describe a 4x4 match that requires all eight slots to
    #   be filled.
    #
    # * Player attributes -- Optional. These attributes specify a set of
    #   player characteristics to evaluate when looking for a match.
    #   Matchmaking requests that use a rule set with player attributes must
    #   provide the corresponding attribute values. For example, an
    #   attribute might specify a player's skill or level.
    #
    # * Rules -- Optional. Rules define how to evaluate potential players
    #   for a match based on player attributes. A rule might specify minimum
    #   requirements for individual players, teams, or entire matches. For
    #   example, a rule might require each player to meet a certain skill
    #   level, each team to have at least one player in a certain role, or
    #   the match to have a minimum average skill level. or may describe an
    #   entire group--such as all teams must be evenly matched or have at
    #   least one player in a certain role.
    #
    # * Expansions -- Optional. Expansions allow you to relax the rules
    #   after a period of time when no acceptable matches are found. This
    #   feature lets you balance getting players into games in a reasonable
    #   amount of time instead of making them wait indefinitely for the best
    #   possible match. For example, you might use an expansion to increase
    #   the maximum skill variance between players after 30 seconds.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html
    #
    # @!attribute [rw] rule_set_name
    #   Unique identifier for a matchmaking rule set
    #   @return [String]
    #
    # @!attribute [rw] rule_set_body
    #   Collection of matchmaking rules, formatted as a JSON string. (Note
    #   that comments14 are not allowed in JSON, but most elements support a
    #   description field.)
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this data object was created. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/MatchmakingRuleSet AWS API Documentation
    #
    class MatchmakingRuleSet < Struct.new(
      :rule_set_name,
      :rule_set_body,
      :creation_time)
      include Aws::Structure
    end

    # Ticket generated to track the progress of a matchmaking request. Each
    # ticket is uniquely identified by a ticket ID, supplied by the
    # requester, when creating a matchmaking request with StartMatchmaking.
    # Tickets can be retrieved by calling DescribeMatchmaking with the
    # ticket ID.
    #
    # @!attribute [rw] ticket_id
    #   Unique identifier for a matchmaking ticket.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   Name of the MatchmakingConfiguration that is used with this ticket.
    #   Matchmaking configurations determine how players are grouped into a
    #   match and how a new game session is created for the match.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the matchmaking request.
    #
    #   * **QUEUED** -- The matchmaking request has been received and is
    #     currently waiting to be processed.
    #
    #   * **SEARCHING** -- The matchmaking request is currently being
    #     processed.
    #
    #   * **REQUIRES\_ACCEPTANCE** -- A match has been proposed and the
    #     players must accept the match (see AcceptMatch). This status is
    #     used only with requests that use a matchmaking configuration with
    #     a player acceptance requirement.
    #
    #   * **PLACING** -- The FlexMatch engine has matched players and is in
    #     the process of placing a new game session for the match.
    #
    #   * **COMPLETED** -- Players have been matched and a game session is
    #     ready to host the players. A ticket in this state contains the
    #     necessary connection information for players.
    #
    #   * **FAILED** -- The matchmaking request was not completed. Tickets
    #     with players who fail to accept a proposed match are placed in
    #     `FAILED` status.
    #
    #   * **CANCELLED** -- The matchmaking request was canceled with a call
    #     to StopMatchmaking.
    #
    #   * **TIMED\_OUT** -- The matchmaking request was not successful
    #     within the duration specified in the matchmaking configuration.
    #
    #   <note markdown="1"> Matchmaking requests that fail to successfully complete (statuses
    #   FAILED, CANCELLED, TIMED\_OUT) can be resubmitted as new requests
    #   with new ticket IDs.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Code to explain the current status. For example, a status reason may
    #   indicate when a ticket has returned to `SEARCHING` status after a
    #   proposed match fails to receive player acceptances.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the current status.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Time stamp indicating when this matchmaking request was received.
    #   Format is a number expressed in Unix time as milliseconds (for
    #   example "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time stamp indicating when this matchmaking request stopped being
    #   processed due to success, failure, or cancellation. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] players
    #   A set of `Player` objects, each representing a player to find
    #   matches for. Players are identified by a unique player ID and may
    #   include latency data for use during matchmaking. If the ticket is in
    #   status `COMPLETED`, the `Player` objects include the team the
    #   players were assigned to in the resulting match.
    #   @return [Array<Types::Player>]
    #
    # @!attribute [rw] game_session_connection_info
    #   Identifier and connection information of the game session created
    #   for the match. This information is added to the ticket only after
    #   the matchmaking request has been successfully completed.
    #   @return [Types::GameSessionConnectionInfo]
    #
    # @!attribute [rw] estimated_wait_time
    #   Average amount of time (in seconds) that players are currently
    #   waiting for a match. If there is not enough recent data, this
    #   property may be empty.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/MatchmakingTicket AWS API Documentation
    #
    class MatchmakingTicket < Struct.new(
      :ticket_id,
      :configuration_name,
      :status,
      :status_reason,
      :status_message,
      :start_time,
      :end_time,
      :players,
      :game_session_connection_info,
      :estimated_wait_time)
      include Aws::Structure
    end

    # Information about a player session that was created as part of a
    # StartGameSessionPlacement request. This object contains only the
    # player ID and player session ID. To retrieve full details on a player
    # session, call DescribePlayerSessions with the player session ID.
    #
    # Player-session-related operations include:
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
    # @!attribute [rw] player_id
    #   Unique identifier for a player that is associated with this player
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] player_session_id
    #   Unique identifier for a player session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PlacedPlayerSession AWS API Documentation
    #
    class PlacedPlayerSession < Struct.new(
      :player_id,
      :player_session_id)
      include Aws::Structure
    end

    # Represents a player in matchmaking. When starting a matchmaking
    # request, a player has a player ID, attributes, and may have latency
    # data. Team information is added after a match has been successfully
    # completed.
    #
    # @note When making an API call, you may pass Player
    #   data as a hash:
    #
    #       {
    #         player_id: "NonZeroAndMaxString",
    #         player_attributes: {
    #           "NonZeroAndMaxString" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         team: "NonZeroAndMaxString",
    #         latency_in_ms: {
    #           "NonEmptyString" => 1,
    #         },
    #       }
    #
    # @!attribute [rw] player_id
    #   Unique identifier for a player
    #   @return [String]
    #
    # @!attribute [rw] player_attributes
    #   Collection of key:value pairs containing player information for use
    #   in matchmaking. Player attribute keys must match the
    #   *playerAttributes* used in a matchmaking rule set. Example:
    #   `"PlayerAttributes": \{"skill": \{"N": "23"\}, "gameMode": \{"S":
    #   "deathmatch"\}\}`.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] team
    #   Name of the team that the player is assigned to in a match. Team
    #   names are defined in a matchmaking rule set.
    #   @return [String]
    #
    # @!attribute [rw] latency_in_ms
    #   Set of values, expressed in milliseconds, indicating the amount of
    #   latency that a player experiences when connected to AWS regions. If
    #   this property is present, FlexMatch considers placing the match only
    #   in regions for which latency is reported.
    #
    #   If a matchmaker has a rule that evaluates player latency, players
    #   must report latency in order to be matched. If no latency is
    #   reported in this scenario, FlexMatch assumes that no regions are
    #   available to the player and the ticket is not matchable.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Player AWS API Documentation
    #
    class Player < Struct.new(
      :player_id,
      :player_attributes,
      :team,
      :latency_in_ms)
      include Aws::Structure
    end

    # Regional latency information for a player, used when requesting a new
    # game session with StartGameSessionPlacement. This value indicates the
    # amount of time lag that exists when the player is connected to a fleet
    # in the specified region. The relative difference between a player's
    # latency values for multiple regions are used to determine which fleets
    # are best suited to place a new game session for the player.
    #
    # @note When making an API call, you may pass PlayerLatency
    #   data as a hash:
    #
    #       {
    #         player_id: "NonZeroAndMaxString",
    #         region_identifier: "NonZeroAndMaxString",
    #         latency_in_milliseconds: 1.0,
    #       }
    #
    # @!attribute [rw] player_id
    #   Unique identifier for a player associated with the latency data.
    #   @return [String]
    #
    # @!attribute [rw] region_identifier
    #   Name of the region that is associated with the latency value.
    #   @return [String]
    #
    # @!attribute [rw] latency_in_milliseconds
    #   Amount of time that represents the time lag experienced by the
    #   player when connected to the specified region.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PlayerLatency AWS API Documentation
    #
    class PlayerLatency < Struct.new(
      :player_id,
      :region_identifier,
      :latency_in_milliseconds)
      include Aws::Structure
    end

    # Queue setting that determines the highest latency allowed for
    # individual players when placing a game session. When a latency policy
    # is in force, a game session cannot be placed at any destination in a
    # region where a player is reporting latency higher than the cap.
    # Latency policies are only enforced when the placement request contains
    # player latency information.
    #
    # Queue-related operations include:
    #
    # * CreateGameSessionQueue
    #
    # * DescribeGameSessionQueues
    #
    # * UpdateGameSessionQueue
    #
    # * DeleteGameSessionQueue
    #
    # @note When making an API call, you may pass PlayerLatencyPolicy
    #   data as a hash:
    #
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] maximum_individual_player_latency_milliseconds
    #   The maximum latency value that is allowed for any player, in
    #   milliseconds. All policies must have a value set for this property.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_duration_seconds
    #   The length of time, in seconds, that the policy is enforced while
    #   placing a new game session. A null value for this property means
    #   that the policy is enforced until the queue times out.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PlayerLatencyPolicy AWS API Documentation
    #
    class PlayerLatencyPolicy < Struct.new(
      :maximum_individual_player_latency_milliseconds,
      :policy_duration_seconds)
      include Aws::Structure
    end

    # Properties describing a player session. Player session objects are
    # created either by creating a player session for a specific game
    # session, or as part of a game session placement. A player session
    # represents either a player reservation for a game session (status
    # `RESERVED`) or actual player activity in a game session (status
    # `ACTIVE`). A player session object (including player data) is
    # automatically passed to a game session when the player connects to the
    # game session and is validated.
    #
    # When a player disconnects, the player session status changes to
    # `COMPLETED`. Once the session ends, the player session object is
    # retained for 30 days and then removed.
    #
    # Player-session-related operations include:
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
    # @!attribute [rw] player_session_id
    #   Unique identifier for a player session.
    #   @return [String]
    #
    # @!attribute [rw] player_id
    #   Unique identifier for a player that is associated with this player
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session that the player session is
    #   connected to.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that the player's game session is
    #   running on.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this data object was created. Format is a
    #   number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] termination_time
    #   Time stamp indicating when this data object was terminated. Format
    #   is a number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Current status of the player session.
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
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   IP address of the game session. To connect to a Amazon GameLift game
    #   server, an app needs both the IP address and port number.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port number for the game session. To connect to a Amazon GameLift
    #   server process, an app needs both the IP address and port number.
    #   @return [Integer]
    #
    # @!attribute [rw] player_data
    #   Developer-defined information related to a player. Amazon GameLift
    #   does not use this data, so it can be formatted as needed for use in
    #   the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PlayerSession AWS API Documentation
    #
    class PlayerSession < Struct.new(
      :player_session_id,
      :player_id,
      :game_session_id,
      :fleet_id,
      :creation_time,
      :termination_time,
      :status,
      :ip_address,
      :port,
      :player_data)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass PutScalingPolicyInput
    #   data as a hash:
    #
    #       {
    #         name: "NonZeroAndMaxString", # required
    #         fleet_id: "FleetId", # required
    #         scaling_adjustment: 1,
    #         scaling_adjustment_type: "ChangeInCapacity", # accepts ChangeInCapacity, ExactCapacity, PercentChangeInCapacity
    #         threshold: 1.0,
    #         comparison_operator: "GreaterThanOrEqualToThreshold", # accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #         evaluation_periods: 1,
    #         metric_name: "ActivatingGameSessions", # required, accepts ActivatingGameSessions, ActiveGameSessions, ActiveInstances, AvailableGameSessions, AvailablePlayerSessions, CurrentPlayerSessions, IdleInstances, PercentAvailableGameSessions, PercentIdleInstances, QueueDepth, WaitTime
    #         policy_type: "RuleBased", # accepts RuleBased, TargetBased
    #         target_configuration: {
    #           target_value: 1.0, # required
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique. A fleet can have only one scaling
    #   policy with the same name.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to apply this policy to. The fleet
    #   cannot be in any of the following statuses: ERROR or DELETING.
    #   @return [String]
    #
    # @!attribute [rw] scaling_adjustment
    #   Amount of adjustment to make, based on the scaling adjustment type.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_adjustment_type
    #   Type of adjustment to make to a fleet's instance count (see
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
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   Metric value used to trigger a scaling event.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   Comparison operator to use when measuring the metric against the
    #   threshold value.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   Length of time (in minutes) the metric must be at or beyond the
    #   threshold before a scaling event is triggered.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_name
    #   Name of the Amazon GameLift-defined metric that is used to trigger a
    #   scaling adjustment. For detailed descriptions of fleet metrics, see
    #   [Monitor Amazon GameLift with Amazon CloudWatch][1].
    #
    #   * **ActivatingGameSessions** -- Game sessions in the process of
    #     being created.
    #
    #   * **ActiveGameSessions** -- Game sessions that are currently
    #     running.
    #
    #   * **ActiveInstances** -- Fleet instances that are currently running
    #     at least one game session.
    #
    #   * **AvailableGameSessions** -- Additional game sessions that fleet
    #     could host simultaneously, given current capacity.
    #
    #   * **AvailablePlayerSessions** -- Empty player slots in currently
    #     active game sessions. This includes game sessions that are not
    #     currently accepting players. Reserved player slots are not
    #     included.
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
    #   * **PercentIdleInstances** -- Percentage of the total number of
    #     active instances that are hosting zero game sessions.
    #
    #   * **QueueDepth** -- Pending game session placement requests, in any
    #     queue, where the current fleet is the top-priority destination.
    #
    #   * **WaitTime** -- Current wait time for pending game session
    #     placement requests, in any queue, where the current fleet is the
    #     top-priority destination.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   Type of scaling policy to create. For a target-based policy, set the
    #   parameter *MetricName* to 'PercentAvailableGameSessions' and
    #   specify a *TargetConfiguration*. For a rule-based policy set the
    #   following parameters: *MetricName*, *ComparisonOperator*,
    #   *Threshold*, *EvaluationPeriods*, *ScalingAdjustmentType*, and
    #   *ScalingAdjustment*.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   Object that contains settings for a target-based scaling policy.
    #   @return [Types::TargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PutScalingPolicyInput AWS API Documentation
    #
    class PutScalingPolicyInput < Struct.new(
      :name,
      :fleet_id,
      :scaling_adjustment,
      :scaling_adjustment_type,
      :threshold,
      :comparison_operator,
      :evaluation_periods,
      :metric_name,
      :policy_type,
      :target_configuration)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PutScalingPolicyOutput AWS API Documentation
    #
    class PutScalingPolicyOutput < Struct.new(
      :name)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass RequestUploadCredentialsInput
    #   data as a hash:
    #
    #       {
    #         build_id: "BuildId", # required
    #       }
    #
    # @!attribute [rw] build_id
    #   Unique identifier for a build to get credentials for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RequestUploadCredentialsInput AWS API Documentation
    #
    class RequestUploadCredentialsInput < Struct.new(
      :build_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] upload_credentials
    #   AWS credentials required when uploading a game build to the storage
    #   location. These credentials have a limited lifespan and are valid
    #   only for the build they were issued for.
    #   @return [Types::AwsCredentials]
    #
    # @!attribute [rw] storage_location
    #   Amazon S3 path and key, identifying where the game build files are
    #   stored.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RequestUploadCredentialsOutput AWS API Documentation
    #
    class RequestUploadCredentialsOutput < Struct.new(
      :upload_credentials,
      :storage_location)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass ResolveAliasInput
    #   data as a hash:
    #
    #       {
    #         alias_id: "AliasId", # required
    #       }
    #
    # @!attribute [rw] alias_id
    #   Unique identifier for the alias you want to resolve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResolveAliasInput AWS API Documentation
    #
    class ResolveAliasInput < Struct.new(
      :alias_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_id
    #   Fleet identifier that is associated with the requested alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResolveAliasOutput AWS API Documentation
    #
    class ResolveAliasOutput < Struct.new(
      :fleet_id)
      include Aws::Structure
    end

    # Policy that limits the number of game sessions a player can create on
    # the same fleet. This optional policy gives game owners control over
    # how players can consume available game server resources. A resource
    # creation policy makes the following statement: "An individual player
    # can create a maximum number of new game sessions within a specified
    # time period".
    #
    # The policy is evaluated when a player tries to create a new game
    # session. For example, with a policy of 10 new game sessions and a time
    # period of 60 minutes, on receiving a `CreateGameSession` request,
    # Amazon GameLift checks that the player (identified by `CreatorId`) has
    # created fewer than 10 game sessions in the past 60 minutes.
    #
    # @note When making an API call, you may pass ResourceCreationLimitPolicy
    #   data as a hash:
    #
    #       {
    #         new_game_sessions_per_creator: 1,
    #         policy_period_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] new_game_sessions_per_creator
    #   Maximum number of game sessions that an individual can create during
    #   the policy period.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_period_in_minutes
    #   Time span used in evaluating the resource creation limit policy.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResourceCreationLimitPolicy AWS API Documentation
    #
    class ResourceCreationLimitPolicy < Struct.new(
      :new_game_sessions_per_creator,
      :policy_period_in_minutes)
      include Aws::Structure
    end

    # Routing configuration for a fleet alias.
    #
    # Fleet-related operations include:
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
    # @note When making an API call, you may pass RoutingStrategy
    #   data as a hash:
    #
    #       {
    #         type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #         fleet_id: "FleetId",
    #         message: "FreeText",
    #       }
    #
    # @!attribute [rw] type
    #   Type of routing strategy.
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
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that the alias points to.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message text to be used with a terminal routing strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RoutingStrategy AWS API Documentation
    #
    class RoutingStrategy < Struct.new(
      :type,
      :fleet_id,
      :message)
      include Aws::Structure
    end

    # A collection of server process configurations that describe what
    # processes to run on each instance in a fleet. All fleets must have a
    # run-time configuration. Each instance in the fleet launches the server
    # processes specified in the run-time configuration and launches new
    # ones as existing processes end. Each instance regularly checks for an
    # updated run-time configuration and follows the new instructions.
    #
    # The run-time configuration enables the instances in a fleet to run
    # multiple processes simultaneously. Potential scenarios are as follows:
    # (1) Run multiple processes of a single game server executable to
    # maximize usage of your hosting resources. (2) Run one or more
    # processes of different build executables, such as your game server
    # executable and a related program, or two or more different versions of
    # a game server. (3) Run multiple processes of a single game server but
    # with different launch parameters, for example to run one process on
    # each instance in debug mode.
    #
    # A Amazon GameLift instance is limited to 50 processes running
    # simultaneously. A run-time configuration must specify fewer than this
    # limit. To calculate the total number of processes specified in a
    # run-time configuration, add the values of the `ConcurrentExecutions`
    # parameter for each ` ServerProcess ` object in the run-time
    # configuration.
    #
    # Fleet-related operations include:
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
    # @note When making an API call, you may pass RuntimeConfiguration
    #   data as a hash:
    #
    #       {
    #         server_processes: [
    #           {
    #             launch_path: "NonZeroAndMaxString", # required
    #             parameters: "NonZeroAndMaxString",
    #             concurrent_executions: 1, # required
    #           },
    #         ],
    #         max_concurrent_game_session_activations: 1,
    #         game_session_activation_timeout_seconds: 1,
    #       }
    #
    # @!attribute [rw] server_processes
    #   Collection of server process configurations that describe which
    #   server processes to run on each instance in a fleet.
    #   @return [Array<Types::ServerProcess>]
    #
    # @!attribute [rw] max_concurrent_game_session_activations
    #   Maximum number of game sessions with status `ACTIVATING` to allow on
    #   an instance simultaneously. This setting limits the amount of
    #   instance resources that can be used for new game activations at any
    #   one time.
    #   @return [Integer]
    #
    # @!attribute [rw] game_session_activation_timeout_seconds
    #   Maximum amount of time (in seconds) that a game session can remain
    #   in status `ACTIVATING`. If the game session is not active before the
    #   timeout, activation is terminated and the game session status is
    #   changed to `TERMINATED`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RuntimeConfiguration AWS API Documentation
    #
    class RuntimeConfiguration < Struct.new(
      :server_processes,
      :max_concurrent_game_session_activations,
      :game_session_activation_timeout_seconds)
      include Aws::Structure
    end

    # Location in Amazon Simple Storage Service (Amazon S3) where build
    # files can be stored for access by Amazon GameLift. This location is
    # specified in a CreateBuild request. For more details, see the [Create
    # a Build with Files in Amazon S3][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         bucket: "NonEmptyString",
    #         key: "NonEmptyString",
    #         role_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] bucket
    #   Amazon S3 bucket identifier. This is the name of your S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Name of the zip file containing your build files.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Amazon Resource Name ([ARN][1]) for the access role that allows
    #   Amazon GameLift to access your S3 bucket.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key,
      :role_arn)
      include Aws::Structure
    end

    # Rule that controls how a fleet is scaled. Scaling policies are
    # uniquely identified by the combination of name and fleet ID.
    #
    # Operations related to fleet capacity scaling include:
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
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that is associated with this scaling
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the scaling policy. The scaling policy can be in
    #   force only when in an `ACTIVE` status. Scaling policies can be
    #   suspended for individual fleets (see StopFleetActions; if suspended
    #   for a fleet, the policy status does not change. View a fleet's
    #   stopped actions by calling DescribeFleetCapacity.
    #
    #   * **ACTIVE** -- The scaling policy can be used for auto-scaling a
    #     fleet.
    #
    #   * **UPDATE\_REQUESTED** -- A request to update the scaling policy
    #     has been received.
    #
    #   * **UPDATING** -- A change is being made to the scaling policy.
    #
    #   * **DELETE\_REQUESTED** -- A request to delete the scaling policy
    #     has been received.
    #
    #   * **DELETING** -- The scaling policy is being deleted.
    #
    #   * **DELETED** -- The scaling policy has been deleted.
    #
    #   * **ERROR** -- An error occurred in creating the policy. It should
    #     be removed and recreated.
    #   @return [String]
    #
    # @!attribute [rw] scaling_adjustment
    #   Amount of adjustment to make, based on the scaling adjustment type.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_adjustment_type
    #   Type of adjustment to make to a fleet's instance count (see
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
    #     Positive values scale up while negative values scale down.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   Comparison operator to use when measuring a metric against the
    #   threshold value.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   Metric value used to trigger a scaling event.
    #   @return [Float]
    #
    # @!attribute [rw] evaluation_periods
    #   Length of time (in minutes) the metric must be at or beyond the
    #   threshold before a scaling event is triggered.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_name
    #   Name of the Amazon GameLift-defined metric that is used to trigger a
    #   scaling adjustment. For detailed descriptions of fleet metrics, see
    #   [Monitor Amazon GameLift with Amazon CloudWatch][1].
    #
    #   * **ActivatingGameSessions** -- Game sessions in the process of
    #     being created.
    #
    #   * **ActiveGameSessions** -- Game sessions that are currently
    #     running.
    #
    #   * **ActiveInstances** -- Fleet instances that are currently running
    #     at least one game session.
    #
    #   * **AvailableGameSessions** -- Additional game sessions that fleet
    #     could host simultaneously, given current capacity.
    #
    #   * **AvailablePlayerSessions** -- Empty player slots in currently
    #     active game sessions. This includes game sessions that are not
    #     currently accepting players. Reserved player slots are not
    #     included.
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
    #   * **PercentIdleInstances** -- Percentage of the total number of
    #     active instances that are hosting zero game sessions.
    #
    #   * **QueueDepth** -- Pending game session placement requests, in any
    #     queue, where the current fleet is the top-priority destination.
    #
    #   * **WaitTime** -- Current wait time for pending game session
    #     placement requests, in any queue, where the current fleet is the
    #     top-priority destination.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   Type of scaling policy to create. For a target-based policy, set the
    #   parameter *MetricName* to 'PercentAvailableGameSessions' and
    #   specify a *TargetConfiguration*. For a rule-based policy set the
    #   following parameters: *MetricName*, *ComparisonOperator*,
    #   *Threshold*, *EvaluationPeriods*, *ScalingAdjustmentType*, and
    #   *ScalingAdjustment*.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   Object that contains settings for a target-based scaling policy.
    #   @return [Types::TargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ScalingPolicy AWS API Documentation
    #
    class ScalingPolicy < Struct.new(
      :fleet_id,
      :name,
      :status,
      :scaling_adjustment,
      :scaling_adjustment_type,
      :comparison_operator,
      :threshold,
      :evaluation_periods,
      :metric_name,
      :policy_type,
      :target_configuration)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass SearchGameSessionsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId",
    #         alias_id: "AliasId",
    #         filter_expression: "NonZeroAndMaxString",
    #         sort_expression: "NonZeroAndMaxString",
    #         limit: 1,
    #         next_token: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to search for active game sessions.
    #   Each request must reference either a fleet ID or alias ID, but not
    #   both.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   Unique identifier for an alias associated with the fleet to search
    #   for active game sessions. Each request must reference either a fleet
    #   ID or alias ID, but not both.
    #   @return [String]
    #
    # @!attribute [rw] filter_expression
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
    #   * **Comparator** -- Valid comparators are: `=`, `<>`, `<`, `>`,
    #     `<=`, `>=`.
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
    #   For example, this filter expression retrieves game sessions hosting
    #   at least ten players that have an open player slot:
    #   `"maximumSessions>=10 AND hasAvailablePlayerSessions=true"`.
    #   @return [String]
    #
    # @!attribute [rw] sort_expression
    #   Instructions on how to sort the search results. If no sort
    #   expression is included, the request returns results in random order.
    #   A sort expression consists of the following elements:
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
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. The maximum
    #   number of results returned is 20, even if this value is not set or
    #   is set higher than 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   action. To start at the beginning of the result set, do not specify
    #   a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SearchGameSessionsInput AWS API Documentation
    #
    class SearchGameSessionsInput < Struct.new(
      :fleet_id,
      :alias_id,
      :filter_expression,
      :sort_expression,
      :limit,
      :next_token)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_sessions
    #   Collection of objects containing game session properties for each
    #   session matching the request.
    #   @return [Array<Types::GameSession>]
    #
    # @!attribute [rw] next_token
    #   Token that indicates where to resume retrieving results on the next
    #   call to this action. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SearchGameSessionsOutput AWS API Documentation
    #
    class SearchGameSessionsOutput < Struct.new(
      :game_sessions,
      :next_token)
      include Aws::Structure
    end

    # A set of instructions for launching server processes on each instance
    # in a fleet. Each instruction set identifies the location of the server
    # executable, optional launch parameters, and the number of server
    # processes with this configuration to maintain concurrently on the
    # instance. Server process configurations make up a fleet's `
    # RuntimeConfiguration `.
    #
    # @note When making an API call, you may pass ServerProcess
    #   data as a hash:
    #
    #       {
    #         launch_path: "NonZeroAndMaxString", # required
    #         parameters: "NonZeroAndMaxString",
    #         concurrent_executions: 1, # required
    #       }
    #
    # @!attribute [rw] launch_path
    #   Location of the server executable in a game build. All game builds
    #   are installed on instances at the root : for Windows instances
    #   `C:\game`, and for Linux instances `/local/game`. A Windows game
    #   build with an executable file located at `MyGame\latest\server.exe`
    #   must have a launch path of "`C:\game\MyGame\latest\server.exe`". A
    #   Linux game build with an executable file located at
    #   `MyGame/latest/server.exe` must have a launch path of
    #   "`/local/game/MyGame/latest/server.exe`".
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Optional list of parameters to pass to the server executable on
    #   launch.
    #   @return [String]
    #
    # @!attribute [rw] concurrent_executions
    #   Number of server processes using this configuration to run
    #   concurrently on an instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ServerProcess AWS API Documentation
    #
    class ServerProcess < Struct.new(
      :launch_path,
      :parameters,
      :concurrent_executions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartFleetActionsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         actions: ["AUTO_SCALING"], # required, accepts AUTO_SCALING
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   List of actions to restart on the fleet.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartFleetActionsInput AWS API Documentation
    #
    class StartFleetActionsInput < Struct.new(
      :fleet_id,
      :actions)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartFleetActionsOutput AWS API Documentation
    #
    class StartFleetActionsOutput < Aws::EmptyStructure; end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass StartGameSessionPlacementInput
    #   data as a hash:
    #
    #       {
    #         placement_id: "IdStringModel", # required
    #         game_session_queue_name: "GameSessionQueueName", # required
    #         game_properties: [
    #           {
    #             key: "GamePropertyKey", # required
    #             value: "GamePropertyValue", # required
    #           },
    #         ],
    #         maximum_player_session_count: 1, # required
    #         game_session_name: "NonZeroAndMaxString",
    #         player_latencies: [
    #           {
    #             player_id: "NonZeroAndMaxString",
    #             region_identifier: "NonZeroAndMaxString",
    #             latency_in_milliseconds: 1.0,
    #           },
    #         ],
    #         desired_player_sessions: [
    #           {
    #             player_id: "NonZeroAndMaxString",
    #             player_data: "PlayerData",
    #           },
    #         ],
    #         game_session_data: "GameSessionData",
    #       }
    #
    # @!attribute [rw] placement_id
    #   Unique identifier to assign to the new game session placement. This
    #   value is developer-defined. The value must be unique across all
    #   regions and cannot be reused unless you are resubmitting a canceled
    #   or timed-out placement request.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_name
    #   Name of the queue to use to place the new game session.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   Set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] maximum_player_session_count
    #   Maximum number of players that can be connected simultaneously to
    #   the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] game_session_name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] player_latencies
    #   Set of values, expressed in milliseconds, indicating the amount of
    #   latency that a player experiences when connected to AWS regions.
    #   This information is used to try to place the new game session where
    #   it can offer the best possible gameplay experience for the players.
    #   @return [Array<Types::PlayerLatency>]
    #
    # @!attribute [rw] desired_player_sessions
    #   Set of information on each player to create a player session for.
    #   @return [Array<Types::DesiredPlayerSession>]
    #
    # @!attribute [rw] game_session_data
    #   Set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartGameSessionPlacementInput AWS API Documentation
    #
    class StartGameSessionPlacementInput < Struct.new(
      :placement_id,
      :game_session_queue_name,
      :game_properties,
      :maximum_player_session_count,
      :game_session_name,
      :player_latencies,
      :desired_player_sessions,
      :game_session_data)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session_placement
    #   Object that describes the newly created game session placement. This
    #   object includes all the information provided in the request, as well
    #   as start/end time stamps and placement status.
    #   @return [Types::GameSessionPlacement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartGameSessionPlacementOutput AWS API Documentation
    #
    class StartGameSessionPlacementOutput < Struct.new(
      :game_session_placement)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass StartMatchBackfillInput
    #   data as a hash:
    #
    #       {
    #         ticket_id: "MatchmakingIdStringModel",
    #         configuration_name: "MatchmakingIdStringModel", # required
    #         game_session_arn: "ArnStringModel", # required
    #         players: [ # required
    #           {
    #             player_id: "NonZeroAndMaxString",
    #             player_attributes: {
    #               "NonZeroAndMaxString" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             },
    #             team: "NonZeroAndMaxString",
    #             latency_in_ms: {
    #               "NonEmptyString" => 1,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] ticket_id
    #   Unique identifier for a matchmaking ticket. If no ticket ID is
    #   specified here, Amazon GameLift will generate one in the form of a
    #   UUID. Use this identifier to track the match backfill ticket status
    #   and retrieve match results.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   Name of the matchmaker to use for this request. The name of the
    #   matchmaker that was used with the original game session is listed in
    #   the GameSession object, `MatchmakerData` property. This property
    #   contains a matchmaking configuration ARN value, which includes the
    #   matchmaker name. (In the ARN value
    #   "arn:aws:gamelift:us-west-2:111122223333:matchmakingconfiguration/MM-4v4",
    #   the matchmaking configuration name is "MM-4v4".) Use only the name
    #   for this parameter.
    #   @return [String]
    #
    # @!attribute [rw] game_session_arn
    #   Amazon Resource Name ([ARN][1]) that is assigned to a game session
    #   and uniquely identifies it.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] players
    #   Match information on all players that are currently assigned to the
    #   game session. This information is used by the matchmaker to find new
    #   players and add them to the existing game.
    #
    #   * PlayerID, PlayerAttributes, Team -\\\\- This information is
    #     maintained in the GameSession object, `MatchmakerData` property,
    #     for all players who are currently assigned to the game session.
    #     The matchmaker data is in JSON syntax, formatted as a string. For
    #     more details, see [ Match Data][1].
    #
    #   * LatencyInMs -\\\\- If the matchmaker uses player latency, include
    #     a latency value, in milliseconds, for the region that the game
    #     session is currently in. Do not include latency values for any
    #     other region.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data
    #   @return [Array<Types::Player>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchBackfillInput AWS API Documentation
    #
    class StartMatchBackfillInput < Struct.new(
      :ticket_id,
      :configuration_name,
      :game_session_arn,
      :players)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] matchmaking_ticket
    #   Ticket representing the backfill matchmaking request. This object
    #   includes the information in the request, ticket status, and match
    #   results as generated during the matchmaking process.
    #   @return [Types::MatchmakingTicket]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchBackfillOutput AWS API Documentation
    #
    class StartMatchBackfillOutput < Struct.new(
      :matchmaking_ticket)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass StartMatchmakingInput
    #   data as a hash:
    #
    #       {
    #         ticket_id: "MatchmakingIdStringModel",
    #         configuration_name: "MatchmakingIdStringModel", # required
    #         players: [ # required
    #           {
    #             player_id: "NonZeroAndMaxString",
    #             player_attributes: {
    #               "NonZeroAndMaxString" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             },
    #             team: "NonZeroAndMaxString",
    #             latency_in_ms: {
    #               "NonEmptyString" => 1,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] ticket_id
    #   Unique identifier for a matchmaking ticket. If no ticket ID is
    #   specified here, Amazon GameLift will generate one in the form of a
    #   UUID. Use this identifier to track the matchmaking ticket status and
    #   retrieve match results.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   Name of the matchmaking configuration to use for this request.
    #   Matchmaking configurations must exist in the same region as this
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] players
    #   Information on each player to be matched. This information must
    #   include a player ID, and may contain player attributes and latency
    #   data to be used in the matchmaking process. After a successful
    #   match, `Player` objects contain the name of the team the player is
    #   assigned to.
    #   @return [Array<Types::Player>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchmakingInput AWS API Documentation
    #
    class StartMatchmakingInput < Struct.new(
      :ticket_id,
      :configuration_name,
      :players)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] matchmaking_ticket
    #   Ticket representing the matchmaking request. This object include the
    #   information included in the request, ticket status, and match
    #   results as generated during the matchmaking process.
    #   @return [Types::MatchmakingTicket]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchmakingOutput AWS API Documentation
    #
    class StartMatchmakingOutput < Struct.new(
      :matchmaking_ticket)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopFleetActionsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         actions: ["AUTO_SCALING"], # required, accepts AUTO_SCALING
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   List of actions to suspend on the fleet.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopFleetActionsInput AWS API Documentation
    #
    class StopFleetActionsInput < Struct.new(
      :fleet_id,
      :actions)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopFleetActionsOutput AWS API Documentation
    #
    class StopFleetActionsOutput < Aws::EmptyStructure; end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass StopGameSessionPlacementInput
    #   data as a hash:
    #
    #       {
    #         placement_id: "IdStringModel", # required
    #       }
    #
    # @!attribute [rw] placement_id
    #   Unique identifier for a game session placement to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopGameSessionPlacementInput AWS API Documentation
    #
    class StopGameSessionPlacementInput < Struct.new(
      :placement_id)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session_placement
    #   Object that describes the canceled game session placement, with
    #   `CANCELLED` status and an end time stamp.
    #   @return [Types::GameSessionPlacement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopGameSessionPlacementOutput AWS API Documentation
    #
    class StopGameSessionPlacementOutput < Struct.new(
      :game_session_placement)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass StopMatchmakingInput
    #   data as a hash:
    #
    #       {
    #         ticket_id: "MatchmakingIdStringModel", # required
    #       }
    #
    # @!attribute [rw] ticket_id
    #   Unique identifier for a matchmaking ticket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopMatchmakingInput AWS API Documentation
    #
    class StopMatchmakingInput < Struct.new(
      :ticket_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopMatchmakingOutput AWS API Documentation
    #
    class StopMatchmakingOutput < Aws::EmptyStructure; end

    # Settings for a target-based scaling policy (see ScalingPolicy. A
    # target-based policy tracks a particular fleet metric specifies a
    # target value for the metric. As player usage changes, the policy
    # triggers Amazon GameLift to adjust capacity so that the metric returns
    # to the target value. The target configuration specifies settings as
    # needed for the target based policy, including the target value.
    #
    # Operations related to fleet capacity scaling include:
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
    # @note When making an API call, you may pass TargetConfiguration
    #   data as a hash:
    #
    #       {
    #         target_value: 1.0, # required
    #       }
    #
    # @!attribute [rw] target_value
    #   Desired value to use with a target-based scaling policy. The value
    #   must be relevant for whatever metric the scaling policy is using.
    #   For example, in a policy using the metric
    #   PercentAvailableGameSessions, the target value should be the
    #   preferred size of the fleet's buffer (the percent of capacity that
    #   should be idle and ready for new game sessions).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TargetConfiguration AWS API Documentation
    #
    class TargetConfiguration < Struct.new(
      :target_value)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateAliasInput
    #   data as a hash:
    #
    #       {
    #         alias_id: "AliasId", # required
    #         name: "NonBlankAndLengthConstraintString",
    #         description: "NonZeroAndMaxString",
    #         routing_strategy: {
    #           type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #           fleet_id: "FleetId",
    #           message: "FreeText",
    #         },
    #       }
    #
    # @!attribute [rw] alias_id
    #   Unique identifier for a fleet alias. Specify the alias you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Human-readable description of an alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_strategy
    #   Object that specifies the fleet and routing type to use for the
    #   alias.
    #   @return [Types::RoutingStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateAliasInput AWS API Documentation
    #
    class UpdateAliasInput < Struct.new(
      :alias_id,
      :name,
      :description,
      :routing_strategy)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] alias
    #   Object that contains the updated alias configuration.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateAliasOutput AWS API Documentation
    #
    class UpdateAliasOutput < Struct.new(
      :alias)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateBuildInput
    #   data as a hash:
    #
    #       {
    #         build_id: "BuildId", # required
    #         name: "NonZeroAndMaxString",
    #         version: "NonZeroAndMaxString",
    #       }
    #
    # @!attribute [rw] build_id
    #   Unique identifier for a build to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a build. Build names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version that is associated with this build. Version strings do not
    #   need to be unique.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateBuildInput AWS API Documentation
    #
    class UpdateBuildInput < Struct.new(
      :build_id,
      :name,
      :version)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] build
    #   Object that contains the updated build record.
    #   @return [Types::Build]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateBuildOutput AWS API Documentation
    #
    class UpdateBuildOutput < Struct.new(
      :build)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateFleetAttributesInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         name: "NonZeroAndMaxString",
    #         description: "NonZeroAndMaxString",
    #         new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #         resource_creation_limit_policy: {
    #           new_game_sessions_per_creator: 1,
    #           policy_period_in_minutes: 1,
    #         },
    #         metric_groups: ["MetricGroup"],
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to update attribute metadata for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Human-readable description of a fleet.
    #   @return [String]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   Game session protection policy to apply to all new instances created
    #   in this fleet. Instances that already exist are not affected. You
    #   can set protection for individual instances using UpdateGameSession.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE`
    #     status, it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @!attribute [rw] resource_creation_limit_policy
    #   Policy that limits the number of game sessions an individual player
    #   can create over a span of time.
    #   @return [Types::ResourceCreationLimitPolicy]
    #
    # @!attribute [rw] metric_groups
    #   Names of metric groups to include this fleet in. Amazon CloudWatch
    #   uses a fleet metric group is to aggregate metrics from multiple
    #   fleets. Use an existing metric group name to add this fleet to the
    #   group. Or use a new name to create a new metric group. A fleet can
    #   only be included in one metric group at a time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetAttributesInput AWS API Documentation
    #
    class UpdateFleetAttributesInput < Struct.new(
      :fleet_id,
      :name,
      :description,
      :new_game_session_protection_policy,
      :resource_creation_limit_policy,
      :metric_groups)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetAttributesOutput AWS API Documentation
    #
    class UpdateFleetAttributesOutput < Struct.new(
      :fleet_id)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateFleetCapacityInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         desired_instances: 1,
    #         min_size: 1,
    #         max_size: 1,
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to update capacity for.
    #   @return [String]
    #
    # @!attribute [rw] desired_instances
    #   Number of EC2 instances you want this fleet to host.
    #   @return [Integer]
    #
    # @!attribute [rw] min_size
    #   Minimum value allowed for the fleet's instance count. Default if
    #   not set is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   Maximum value allowed for the fleet's instance count. Default if
    #   not set is 1.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetCapacityInput AWS API Documentation
    #
    class UpdateFleetCapacityInput < Struct.new(
      :fleet_id,
      :desired_instances,
      :min_size,
      :max_size)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetCapacityOutput AWS API Documentation
    #
    class UpdateFleetCapacityOutput < Struct.new(
      :fleet_id)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateFleetPortSettingsInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         inbound_permission_authorizations: [
    #           {
    #             from_port: 1, # required
    #             to_port: 1, # required
    #             ip_range: "NonBlankString", # required
    #             protocol: "TCP", # required, accepts TCP, UDP
    #           },
    #         ],
    #         inbound_permission_revocations: [
    #           {
    #             from_port: 1, # required
    #             to_port: 1, # required
    #             ip_range: "NonBlankString", # required
    #             protocol: "TCP", # required, accepts TCP, UDP
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to update port settings for.
    #   @return [String]
    #
    # @!attribute [rw] inbound_permission_authorizations
    #   Collection of port settings to be added to the fleet record.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] inbound_permission_revocations
    #   Collection of port settings to be removed from the fleet record.
    #   @return [Array<Types::IpPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetPortSettingsInput AWS API Documentation
    #
    class UpdateFleetPortSettingsInput < Struct.new(
      :fleet_id,
      :inbound_permission_authorizations,
      :inbound_permission_revocations)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetPortSettingsOutput AWS API Documentation
    #
    class UpdateFleetPortSettingsOutput < Struct.new(
      :fleet_id)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateGameSessionInput
    #   data as a hash:
    #
    #       {
    #         game_session_id: "ArnStringModel", # required
    #         maximum_player_session_count: 1,
    #         name: "NonZeroAndMaxString",
    #         player_session_creation_policy: "ACCEPT_ALL", # accepts ACCEPT_ALL, DENY_ALL
    #         protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #       }
    #
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session to update.
    #   @return [String]
    #
    # @!attribute [rw] maximum_player_session_count
    #   Maximum number of players that can be connected simultaneously to
    #   the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] player_session_creation_policy
    #   Policy determining whether or not the game session accepts new
    #   players.
    #   @return [String]
    #
    # @!attribute [rw] protection_policy
    #   Game session protection policy to apply to this game session only.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE`
    #     status, it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionInput AWS API Documentation
    #
    class UpdateGameSessionInput < Struct.new(
      :game_session_id,
      :maximum_player_session_count,
      :name,
      :player_session_creation_policy,
      :protection_policy)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session
    #   Object that contains the updated game session metadata.
    #   @return [Types::GameSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionOutput AWS API Documentation
    #
    class UpdateGameSessionOutput < Struct.new(
      :game_session)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateGameSessionQueueInput
    #   data as a hash:
    #
    #       {
    #         name: "GameSessionQueueName", # required
    #         timeout_in_seconds: 1,
    #         player_latency_policies: [
    #           {
    #             maximum_individual_player_latency_milliseconds: 1,
    #             policy_duration_seconds: 1,
    #           },
    #         ],
    #         destinations: [
    #           {
    #             destination_arn: "ArnStringModel",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with game session queue. Queue
    #   names must be unique within each region.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   Maximum time, in seconds, that a new game session placement request
    #   remains in the queue. When a request exceeds this time, the game
    #   session placement changes to a `TIMED_OUT` status.
    #   @return [Integer]
    #
    # @!attribute [rw] player_latency_policies
    #   Collection of latency policies to apply when processing game
    #   sessions placement requests with player latency information.
    #   Multiple policies are evaluated in order of the maximum latency
    #   value, starting with the lowest latency values. With just one
    #   policy, it is enforced at the start of the game session placement
    #   for the duration period. With multiple policies, each policy is
    #   enforced consecutively for its duration period. For example, a queue
    #   might enforce a 60-second policy followed by a 120-second policy,
    #   and then no policy for the remainder of the placement. When updating
    #   policies, provide a complete collection of policies.
    #   @return [Array<Types::PlayerLatencyPolicy>]
    #
    # @!attribute [rw] destinations
    #   List of fleets that can be used to fulfill game session placement
    #   requests in the queue. Fleets are identified by either a fleet ARN
    #   or a fleet alias ARN. Destinations are listed in default preference
    #   order. When updating this list, provide a complete list of
    #   destinations.
    #   @return [Array<Types::GameSessionQueueDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionQueueInput AWS API Documentation
    #
    class UpdateGameSessionQueueInput < Struct.new(
      :name,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] game_session_queue
    #   Object that describes the newly updated game session queue.
    #   @return [Types::GameSessionQueue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionQueueOutput AWS API Documentation
    #
    class UpdateGameSessionQueueOutput < Struct.new(
      :game_session_queue)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateMatchmakingConfigurationInput
    #   data as a hash:
    #
    #       {
    #         name: "MatchmakingIdStringModel", # required
    #         description: "NonZeroAndMaxString",
    #         game_session_queue_arns: ["ArnStringModel"],
    #         request_timeout_seconds: 1,
    #         acceptance_timeout_seconds: 1,
    #         acceptance_required: false,
    #         rule_set_name: "MatchmakingIdStringModel",
    #         notification_target: "SnsArnStringModel",
    #         additional_player_count: 1,
    #         custom_event_data: "CustomEventData",
    #         game_properties: [
    #           {
    #             key: "GamePropertyKey", # required
    #             value: "GamePropertyValue", # required
    #           },
    #         ],
    #         game_session_data: "GameSessionData",
    #       }
    #
    # @!attribute [rw] name
    #   Unique identifier for a matchmaking configuration to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Descriptive label that is associated with matchmaking configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_arns
    #   Amazon Resource Name ([ARN][1]) that is assigned to a game session
    #   queue and uniquely identifies it. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #   These queues are used when placing game sessions for matches that
    #   are created with this matchmaking configuration. Queues can be
    #   located in any region.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] request_timeout_seconds
    #   Maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that time out can be
    #   resubmitted as needed.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_timeout_seconds
    #   Length of time (in seconds) to wait for players to accept a proposed
    #   match. If any player rejects the match or fails to accept before the
    #   timeout, the ticket continues to look for an acceptable match.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_required
    #   Flag that determines whether or not a match that was created with
    #   this configuration must be accepted by the matched players. To
    #   require acceptance, set to TRUE.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule_set_name
    #   Unique identifier for a matchmaking rule set to use with this
    #   configuration. A matchmaking configuration can only use rule sets
    #   that are defined in the same region.
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   SNS topic ARN that is set up to receive matchmaking notifications.
    #   See [ Setting up Notifications for Matchmaking][1] for more
    #   information.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html
    #   @return [String]
    #
    # @!attribute [rw] additional_player_count
    #   Number of player slots in a match to keep open for future players.
    #   For example, if the configuration's rule set specifies a match for
    #   a single 12-person team, and the additional player count is set to
    #   2, only 10 players are selected for the match.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_event_data
    #   Information to attached to all events related to the matchmaking
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   Set of custom properties for a game session, formatted as key:value
    #   pairs. These properties are passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] game_session_data
    #   Set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process in the
    #   GameSession object with a request to start a new game session (see
    #   [Start a Game Session][1]). This information is added to the new
    #   GameSession object that is created for a successful match.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateMatchmakingConfigurationInput AWS API Documentation
    #
    class UpdateMatchmakingConfigurationInput < Struct.new(
      :name,
      :description,
      :game_session_queue_arns,
      :request_timeout_seconds,
      :acceptance_timeout_seconds,
      :acceptance_required,
      :rule_set_name,
      :notification_target,
      :additional_player_count,
      :custom_event_data,
      :game_properties,
      :game_session_data)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] configuration
    #   Object that describes the updated matchmaking configuration.
    #   @return [Types::MatchmakingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateMatchmakingConfigurationOutput AWS API Documentation
    #
    class UpdateMatchmakingConfigurationOutput < Struct.new(
      :configuration)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass UpdateRuntimeConfigurationInput
    #   data as a hash:
    #
    #       {
    #         fleet_id: "FleetId", # required
    #         runtime_configuration: { # required
    #           server_processes: [
    #             {
    #               launch_path: "NonZeroAndMaxString", # required
    #               parameters: "NonZeroAndMaxString",
    #               concurrent_executions: 1, # required
    #             },
    #           ],
    #           max_concurrent_game_session_activations: 1,
    #           game_session_activation_timeout_seconds: 1,
    #         },
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to update run-time configuration for.
    #   @return [String]
    #
    # @!attribute [rw] runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. The run-time configuration for a fleet has a collection of
    #   server process configurations, one for each type of server process
    #   to run on an instance. A server process configuration specifies the
    #   location of the server executable, launch parameters, and the number
    #   of concurrent processes with that configuration to maintain on each
    #   instance.
    #   @return [Types::RuntimeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfigurationInput AWS API Documentation
    #
    class UpdateRuntimeConfigurationInput < Struct.new(
      :fleet_id,
      :runtime_configuration)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] runtime_configuration
    #   The run-time configuration currently in force. If the update was
    #   successful, this object matches the one in the request.
    #   @return [Types::RuntimeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfigurationOutput AWS API Documentation
    #
    class UpdateRuntimeConfigurationOutput < Struct.new(
      :runtime_configuration)
      include Aws::Structure
    end

    # Represents the input for a request action.
    #
    # @note When making an API call, you may pass ValidateMatchmakingRuleSetInput
    #   data as a hash:
    #
    #       {
    #         rule_set_body: "RuleSetBody", # required
    #       }
    #
    # @!attribute [rw] rule_set_body
    #   Collection of matchmaking rules to validate, formatted as a JSON
    #   string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ValidateMatchmakingRuleSetInput AWS API Documentation
    #
    class ValidateMatchmakingRuleSetInput < Struct.new(
      :rule_set_body)
      include Aws::Structure
    end

    # Represents the returned data in response to a request action.
    #
    # @!attribute [rw] valid
    #   Response indicating whether or not the rule set is valid.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ValidateMatchmakingRuleSetOutput AWS API Documentation
    #
    class ValidateMatchmakingRuleSetOutput < Struct.new(
      :valid)
      include Aws::Structure
    end

    # Represents an authorization for a VPC peering connection between the
    # VPC for an Amazon GameLift fleet and another VPC on an account you
    # have access to. This authorization must exist and be valid for the
    # peering connection to be established. Authorizations are valid for 24
    # hours after they are issued.
    #
    # VPC peering connection operations include:
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
    # @!attribute [rw] game_lift_aws_account_id
    #   Unique identifier for the AWS account that you use to manage your
    #   Amazon GameLift fleet. You can find your Account ID in the AWS
    #   Management Console under account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_aws_account_id
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   Unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same region where your
    #   fleet is deployed. To get VPC information, including IDs, use the
    #   Virtual Private Cloud service tools, including the VPC Dashboard in
    #   the AWS Management Console.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this authorization was issued. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   Time stamp indicating when this authorization expires (24 hours
    #   after issuance). Format is a number expressed in Unix time as
    #   milliseconds (for example "1469498468.057").
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/VpcPeeringAuthorization AWS API Documentation
    #
    class VpcPeeringAuthorization < Struct.new(
      :game_lift_aws_account_id,
      :peer_vpc_aws_account_id,
      :peer_vpc_id,
      :creation_time,
      :expiration_time)
      include Aws::Structure
    end

    # Represents a peering connection between a VPC on one of your AWS
    # accounts and the VPC for your Amazon GameLift fleets. This record may
    # be for an active peering connection or a pending connection that has
    # not yet been established.
    #
    # VPC peering connection operations include:
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
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet. This ID determines the ID of the
    #   Amazon GameLift VPC for your fleet.
    #   @return [String]
    #
    # @!attribute [rw] ip_v4_cidr_block
    #   CIDR block of IPv4 addresses assigned to the VPC peering connection
    #   for the GameLift VPC. The peered VPC also has an IPv4 CIDR block
    #   associated with it; these blocks cannot overlap or the peering
    #   connection cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   Unique identifier that is automatically assigned to the connection
    #   record. This ID is referenced in VPC peering connection events, and
    #   is used when deleting a connection with DeleteVpcPeeringConnection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Object that contains status information about the connection. Status
    #   indicates if a connection is pending, successful, or failed.
    #   @return [Types::VpcPeeringConnectionStatus]
    #
    # @!attribute [rw] peer_vpc_id
    #   Unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift fleet. The VPC must be in the same region where your
    #   fleet is deployed. To get VPC information, including IDs, use the
    #   Virtual Private Cloud service tools, including the VPC Dashboard in
    #   the AWS Management Console.
    #   @return [String]
    #
    # @!attribute [rw] game_lift_vpc_id
    #   Unique identifier for the VPC that contains the Amazon GameLift
    #   fleet for this connection. This VPC is managed by Amazon GameLift
    #   and does not appear in your AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/VpcPeeringConnection AWS API Documentation
    #
    class VpcPeeringConnection < Struct.new(
      :fleet_id,
      :ip_v4_cidr_block,
      :vpc_peering_connection_id,
      :status,
      :peer_vpc_id,
      :game_lift_vpc_id)
      include Aws::Structure
    end

    # Represents status information for a VPC peering connection. Status is
    # associated with a VpcPeeringConnection object. Status codes and
    # messages are provided from EC2 (see
    # [VpcPeeringConnectionStateReason][1]). Connection status information
    # is also communicated as a fleet Event.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html
    #
    # @!attribute [rw] code
    #   Code indicating the status of a VPC peering connection.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Additional messaging associated with the connection status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/VpcPeeringConnectionStatus AWS API Documentation
    #
    class VpcPeeringConnectionStatus < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

  end
end
