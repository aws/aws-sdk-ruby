# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GameLift
  module Types

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

    # AWS access credentials sometimes used for uploading game build files
    # to Amazon GameLift. They are valid for a limited time. If they expire
    # before you upload your game build, get a new set by calling
    # RequestUploadCredentials.
    #
    # @!attribute [rw] access_key_id
    #   Access key for an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   Secret key for an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   Token specific to a build ID.
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
    #   * **INITIALIZED** – A new build has been defined, but no files have
    #     been uploaded. You cannot create fleets for builds that are in
    #     this status. When a build is successfully created, the build
    #     status is set to this value.
    #
    #   * **READY** – The game build has been successfully uploaded. You can
    #     now create new fleets for this build.
    #
    #   * **FAILED** – The game build upload failed. You cannot create new
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
    #   Amazon S3 location of the game build files to be uploaded. The S3
    #   bucket must be owned by the same AWS account that you're using to
    #   manage Amazon GameLift. It also must in the same region that you
    #   want to create a new build in. Before calling `CreateBuild` with
    #   this location, you must allow Amazon GameLift to access your Amazon
    #   S3 bucket (see [Create a Build with Files in Amazon S3][1]).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] operating_system
    #   Operating system that the game server binaries are built to run on.
    #   This value determines the type of fleet resources that you can use
    #   for this build. If your game build contains multiple executables,
    #   they all must run on the same operating system.
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
    #   This element is not currently in use.
    #   @return [Types::AwsCredentials]
    #
    # @!attribute [rw] storage_location
    #   Amazon S3 location specified in the request.
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
    #         ec2_instance_type: "t2.micro", # required, accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge
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
    #         },
    #         resource_creation_limit_policy: {
    #           new_game_sessions_per_creator: 1,
    #           policy_period_in_minutes: 1,
    #         },
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
    #   runtime configuration will continue to work.)
    #   @return [String]
    #
    # @!attribute [rw] server_launch_parameters
    #   This parameter is no longer used. Instead, specify server launch
    #   parameters in the `RuntimeConfiguration` parameter. (Requests that
    #   specify a server launch path and launch parameters instead of a
    #   runtime configuration will continue to work.)
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
    #   * **NoProtection** – The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** – If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @!attribute [rw] runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. The runtime configuration for a fleet has a collection of
    #   server process configurations, one for each type of server process
    #   to run on an instance. A server process configuration specifies the
    #   location of the server executable, launch parameters, and the number
    #   of concurrent processes with that configuration to maintain on each
    #   instance. A CreateFleet request must include a runtime configuration
    #   with at least one server process configuration; otherwise the
    #   request will fail with an invalid request exception. (This parameter
    #   replaces the parameters `ServerLaunchPath` and
    #   `ServerLaunchParameters`; requests that contain values for these
    #   parameters instead of a runtime configuration will continue to
    #   work.)
    #   @return [Types::RuntimeConfiguration]
    #
    # @!attribute [rw] resource_creation_limit_policy
    #   Policy that limits the number of game sessions an individual player
    #   can create over a span of time for this fleet.
    #   @return [Types::ResourceCreationLimitPolicy]
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
      :resource_creation_limit_policy)
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
    #   Set of developer-defined properties for a game session. These
    #   properties are passed to the server process hosting the game
    #   session.
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] creator_id
    #   $player-id; or entity creating the game session. This ID is used to
    #   enforce a resource protection policy (if one exists) that limits the
    #   number of concurrent active game sessions one player can have.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   Custom string to include in the game session ID, with a maximum
    #   length of 48 characters. A game session ID has the following format:
    #   "arn:aws:gamelift:&lt;region&gt;\::gamesession/&lt;fleet
    #   ID&gt;/&lt;game session ID&gt;". If provided, the custom string is
    #   used for the game session ID string. This value cannot be updated
    #   once a game session is created.
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
      :game_session_id)
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

    # @note When making an API call, you may pass CreateGameSessionQueueInput
    #   data as a hash:
    #
    #       {
    #         name: "GameSessionQueueName", # required
    #         timeout_in_seconds: 1,
    #         destinations: [
    #           {
    #             destination_arn: "ArnStringModel",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with queue. Queue names must be
    #   unique within each region.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   Maximum time, in seconds, that a new game session placement request
    #   remains in the queue. When a request exceeds this time, the game
    #   session placement changes to a TIMED\_OUT status.
    #   @return [Integer]
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
      :destinations)
      include Aws::Structure
    end

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

    # @note When making an API call, you may pass DeleteGameSessionQueueInput
    #   data as a hash:
    #
    #       {
    #         name: "GameSessionQueueName", # required
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with queue. Queue names must be
    #   unique within each region.
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
    #         ec2_instance_type: "t2.micro", # accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge
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
    #   action. To specify the start of the result set, do not specify a
    #   value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
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
    #   action. To specify the start of the result set, do not specify a
    #   value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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
    #   action. To specify the start of the result set, do not specify a
    #   value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
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
    #   statuses include ACTIVE, `TERMINATED`, `ACTIVATING` and
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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
    #   * **RESERVED** – The player session request has been received, but
    #     the player has not yet connected to the server process and/or been
    #     validated.
    #
    #   * **ACTIVE** – The player has been validated by the server process
    #     and is currently connected.
    #
    #   * **COMPLETED** – The player connection has been dropped.
    #
    #   * **TIMEDOUT** – A player session request was received, but the
    #     player did not connect and/or was not validated within the
    #     time-out limit (60 seconds).
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
    #   action. To specify the start of the result set, do not specify a
    #   value. If a player session ID is specified, this parameter is
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
    #   Unique identifier for a fleet to get the runtime configuration for.
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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

    # Log entry describing an event involving Amazon GameLift resources
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
    #   Type of event being logged.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :resource_id,
      :event_code,
      :message,
      :event_time)
      include Aws::Structure
    end

    # General properties describing a fleet.
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   Identifier for a fleet that is unique across all regions.
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
    #   * **NEW** – A new fleet has been defined and desired instances is
    #     set to 1.
    #
    #   * **DOWNLOADING/VALIDATING/BUILDING/ACTIVATING** – Amazon GameLift
    #     is setting up the new fleet, creating new instances with the game
    #     build and starting server processes.
    #
    #   * **ACTIVE** – Hosts can now accept game sessions.
    #
    #   * **ERROR** – An error occurred when downloading, validating,
    #     building, or activating the fleet.
    #
    #   * **DELETING** – Hosts are responding to a delete fleet request.
    #
    #   * **TERMINATED** – The fleet no longer exists.
    #   @return [String]
    #
    # @!attribute [rw] build_id
    #   Unique identifier for a build.
    #   @return [String]
    #
    # @!attribute [rw] server_launch_path
    #   Path to a game server executable in the fleet's build, specified
    #   for fleets created prior to 2016-08-04 (or AWS SDK v. 0.12.16).
    #   Server launch paths for fleets created after this date are specified
    #   in the fleet's RuntimeConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] server_launch_parameters
    #   Game server launch parameters specified for fleets created prior to
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
    #   default log path for a fleet is specified, Amazon GameLift will
    #   automatically upload logs that are stored on each instance at
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
    #   * **NoProtection** – The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** – If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FleetAttributes AWS API Documentation
    #
    class FleetAttributes < Struct.new(
      :fleet_id,
      :fleet_arn,
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
      :resource_creation_limit_policy)
      include Aws::Structure
    end

    # Information about the fleet's capacity. Fleet capacity is measured in
    # EC2 instances. By default, new fleets have a capacity of one instance,
    # but can be updated as needed. The maximum number of instances for a
    # fleet is determined by the fleet's instance type.
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

    # Set of key-value pairs containing information a server process
    # requires to set up a game session. This object allows you to pass in
    # any set of data needed for your game. For more information, see the
    # [Amazon GameLift Developer Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/
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
    #   TBD
    #   @return [String]
    #
    # @!attribute [rw] value
    #   TBD
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
    # @!attribute [rw] game_session_id
    #   Unique identifier for the game session. A game session ID has the
    #   following format:
    #   "arn:aws:gamelift:&lt;region&gt;\::gamesession/&lt;fleet
    #   ID&gt;/&lt;game session ID&gt;".
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet the game session is running on.
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
    # @!attribute [rw] game_properties
    #   Set of developer-defined properties for a game session. These
    #   properties are passed to the server process hosting the game
    #   session.
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] ip_address
    #   IP address of the game session. To connect to a Amazon GameLift
    #   server process, an app needs both the IP address and port number.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port number for the game session. To connect to a Amazon GameLift
    #   server process, an app needs both the IP address and port number.
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
      :game_properties,
      :ip_address,
      :port,
      :player_session_creation_policy,
      :creator_id)
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
    #   * **NoProtection** – The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** – If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
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
    #   Descriptive label that is associated with queue. Queue names must be
    #   unique within each region.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the game session placement request.
    #
    #   * **PENDING** – The placement request is currently in the queue
    #     waiting to be processed.
    #
    #   * **FULFILLED** – A new game session and player sessions (if
    #     requested) have been successfully created. Values for
    #     *GameSessionArn* and *GameSessionRegion* are available.
    #
    #   * **CANCELLED** – The placement request was cancelled with a call to
    #     StopGameSessionPlacement.
    #
    #   * **TIMED\_OUT** – A new game session was not successfully created
    #     before the time limit expired. You can resubmit the placement
    #     request as needed.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   Set of developer-defined properties for a game session. These
    #   properties are passed to the server process hosting the game
    #   session.
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
    # @!attribute [rw] game_session_arn
    #   Identifier for the game session created by this placement request.
    #   This value exists only if the game session placement status is
    #   Completed. This identifier is unique across all regions.
    #   @return [String]
    #
    # @!attribute [rw] game_session_region
    #   Name of the region where the game session created by this placement
    #   request is running. This value exists only if the game session
    #   placement status is Completed.
    #   @return [String]
    #
    # @!attribute [rw] player_latencies
    #   Set of values, expressed in milliseconds, indicating the amount of
    #   latency that players experience when connected to AWS regions.
    #   @return [Array<Types::PlayerLatency>]
    #
    # @!attribute [rw] start_time
    #   Time stamp indicating when this request was placed in the queue.
    #   Format is a number expressed in Unix time as milliseconds (for
    #   example "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time stamp indicating when this request was completed, cancelled, or
    #   timed out.
    #   @return [Time]
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
      :game_session_arn,
      :game_session_region,
      :player_latencies,
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # Configuration of a queue used to process game session placement
    # requests. The queue configuration identifies the fleets that new game
    # session can be placed on, given available resources, and the length of
    # time a request can remain in the queue waiting for placement.
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
    #   Descriptive label that is associated with queue. Queue names must be
    #   unique within each region.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   Maximum time, in seconds, that a new game session placement request
    #   remains in the queue. When a request exceeds this time, the game
    #   session placement changes to a TIMED\_OUT status.
    #   @return [Integer]
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
      :timeout_in_seconds,
      :destinations)
      include Aws::Structure
    end

    # Fleet designated in a game session queue. Requests for new game
    # sessions in the queue are fulfilled by starting a new game session on
    # any destination listed for a queue.
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
    # that hosts one or more game servers. A fleet contains zero or more
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
    #   * **PENDING** – The instance is in the process of being created and
    #     launching server processes as defined in the fleet's runtime
    #     configuration.
    #
    #   * **ACTIVE** – The instance has been successfully created and at
    #     least one server process has successfully launched and reported
    #     back to Amazon GameLift that it is ready to host a game session.
    #     The instance is now considered ready to host game sessions.
    #
    #   * **TERMINATING** – The instance is in the process of shutting down.
    #     This may happen to reduce capacity during a scaling down event or
    #     to recycle resources in the event of a problem.
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
    #   * **SIMPLE** – The alias resolves to one specific fleet. Use this
    #     type when routing to active fleets.
    #
    #   * **TERMINAL** – The alias does not resolve to a fleet but instead
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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
    #   * **INITIALIZED** – A new build has been defined, but no files have
    #     been uploaded. You cannot create fleets for builds that are in
    #     this status. When a build is successfully created, the build
    #     status is set to this value.
    #
    #   * **READY** – The game build has been successfully uploaded. You can
    #     now create new fleets for this build.
    #
    #   * **FAILED** – The game build upload failed. You cannot create new
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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

    # Properties describing a player session. A player session represents
    # either a player reservation for a game session or actual player
    # activity in a game session. A player session object (including player
    # data) is automatically passed to a game session when the player
    # connects to the game session and is validated.
    #
    # Player session-related operations include:
    #
    # * CreatePlayerSession
    #
    # * CreatePlayerSessions
    #
    # * DescribePlayerSessions
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
    #   * **RESERVED** – The player session request has been received, but
    #     the player has not yet connected to the server process and/or been
    #     validated.
    #
    #   * **ACTIVE** – The player has been validated by the server process
    #     and is currently connected.
    #
    #   * **COMPLETED** – The player connection has been dropped.
    #
    #   * **TIMEDOUT** – A player session request was received, but the
    #     player did not connect and/or was not validated within the
    #     time-out limit (60 seconds).
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   Game session IP address. All player sessions reference the game
    #   session location.
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
    #         scaling_adjustment: 1, # required
    #         scaling_adjustment_type: "ChangeInCapacity", # required, accepts ChangeInCapacity, ExactCapacity, PercentChangeInCapacity
    #         threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #         evaluation_periods: 1, # required
    #         metric_name: "ActivatingGameSessions", # required, accepts ActivatingGameSessions, ActiveGameSessions, ActiveInstances, AvailablePlayerSessions, CurrentPlayerSessions, IdleInstances, QueueDepth, WaitTime
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with a scaling policy. Policy
    #   names do not need to be unique. A fleet can have only one scaling
    #   policy with the same name.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to apply this policy to.
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
    #   * **ChangeInCapacity** – add (or subtract) the scaling adjustment
    #     value from the current instance count. Positive values scale up
    #     while negative values scale down.
    #
    #   * **ExactCapacity** – set the instance count to the scaling
    #     adjustment value.
    #
    #   * **PercentChangeInCapacity** – increase or reduce the current
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
    #   Name of the Amazon GameLift-defined metric that is used to trigger
    #   an adjustment.
    #
    #   * **ActivatingGameSessions** – number of game sessions in the
    #     process of being created (game session status = `ACTIVATING`).
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
    #     game sessions that are not currently accepting players (game
    #     session `PlayerSessionCreationPolicy` = `DENY_ALL`).
    #
    #   * **ActiveInstances** – number of instances currently running a game
    #     session.
    #
    #   * **IdleInstances** – number of instances not currently running a
    #     game session.
    #   @return [String]
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
      :metric_name)
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
    #   * **SIMPLE** – The alias resolves to one specific fleet. Use this
    #     type when routing to active fleets.
    #
    #   * **TERMINAL** – The alias does not resolve to a fleet but instead
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

    # Collection of server process configurations that describe what
    # processes should be run on each instance in a fleet. An instance can
    # launch and maintain multiple server processes based on the runtime
    # configuration; it regularly checks for an updated runtime
    # configuration and starts new server processes to match the latest
    # version.
    #
    # The key purpose of a runtime configuration with multiple server
    # process configurations is to be able to run more than one kind of game
    # server in a single fleet. You can include configurations for more than
    # one server executable in order to run two or more different programs
    # to run on the same instance. This option might be useful, for example,
    # to run more than one version of your game server on the same fleet.
    # Another option is to specify configurations for the same server
    # executable but with different launch parameters.
    #
    # A Amazon GameLift instance is limited to 50 processes running
    # simultaneously. To calculate the total number of processes specified
    # in a runtime configuration, add the values of the
    # `ConcurrentExecutions` parameter for each ` ServerProcess ` object in
    # the runtime configuration.
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
    #       }
    #
    # @!attribute [rw] server_processes
    #   Collection of server process configurations describing what server
    #   processes to run on each instance in a fleet
    #   @return [Array<Types::ServerProcess>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RuntimeConfiguration AWS API Documentation
    #
    class RuntimeConfiguration < Struct.new(
      :server_processes)
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
    #   Current status of the scaling policy. The scaling policy is only in
    #   force when in an `ACTIVE` status.
    #
    #   * **ACTIVE** – The scaling policy is currently in force.
    #
    #   * **UPDATE\_REQUESTED** – A request to update the scaling policy has
    #     been received.
    #
    #   * **UPDATING** – A change is being made to the scaling policy.
    #
    #   * **DELETE\_REQUESTED** – A request to delete the scaling policy has
    #     been received.
    #
    #   * **DELETING** – The scaling policy is being deleted.
    #
    #   * **DELETED** – The scaling policy has been deleted.
    #
    #   * **ERROR** – An error occurred in creating the policy. It should be
    #     removed and recreated.
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
    #   * **ChangeInCapacity** – add (or subtract) the scaling adjustment
    #     value from the current instance count. Positive values scale up
    #     while negative values scale down.
    #
    #   * **ExactCapacity** – set the instance count to the scaling
    #     adjustment value.
    #
    #   * **PercentChangeInCapacity** – increase or reduce the current
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
    #   Name of the Amazon GameLift-defined metric that is used to trigger
    #   an adjustment.
    #
    #   * **ActivatingGameSessions** – number of game sessions in the
    #     process of being created (game session status = `ACTIVATING`).
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
    #     count from its maximum player session count. This number does
    #     include game sessions that are not currently accepting players
    #     (game session `PlayerSessionCreationPolicy` = `DENY_ALL`).
    #
    #   * **ActiveInstances** – number of instances currently running a game
    #     session.
    #
    #   * **IdleInstances** – number of instances not currently running a
    #     game session.
    #   @return [String]
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
      :metric_name)
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
    #     `gameSessionName`, `gameSessionId`, `creationTimeMillis`,
    #     `playerSessionCount`, `maximumSessions`,
    #     `hasAvailablePlayerSessions`.
    #
    #   * **Comparator** -- Valid comparators are: `=`, `<>`, `<`, `>`,
    #     `<=`, `>=`.
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
    #   action. To specify the start of the result set, do not specify a
    #   value.
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
    #       }
    #
    # @!attribute [rw] placement_id
    #   Unique identifier to assign to the new game session placement. This
    #   value is developer-defined. The value must be unique across all
    #   regions and cannot be reused unless you are resubmitting a cancelled
    #   or timed-out placement request.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_name
    #   Name of the queue to use to place the new game session.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   Set of developer-defined properties for a game session. These
    #   properties are passed to the server process hosting the game
    #   session.
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
    #   latency that players experience when connected to AWS regions. This
    #   information is relevant when requesting player sessions. Latency
    #   information provided for player IDs not included in
    #   *DesiredPlayerSessions* are ignored.
    #   @return [Array<Types::PlayerLatency>]
    #
    # @!attribute [rw] desired_player_sessions
    #   Set of information on each player to create a player session for.
    #   @return [Array<Types::DesiredPlayerSession>]
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
      :desired_player_sessions)
      include Aws::Structure
    end

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

    # @!attribute [rw] game_session_placement
    #   Object that describes the cancelled game session placement, with
    #   cancelled status and an end time stamp.
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
    #   * **NoProtection** – The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** – If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @!attribute [rw] resource_creation_limit_policy
    #   Policy that limits the number of game sessions an individual player
    #   can create over a span of time.
    #   @return [Types::ResourceCreationLimitPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetAttributesInput AWS API Documentation
    #
    class UpdateFleetAttributesInput < Struct.new(
      :fleet_id,
      :name,
      :description,
      :new_game_session_protection_policy,
      :resource_creation_limit_policy)
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
    #   * **NoProtection** – The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** – If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
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

    # @note When making an API call, you may pass UpdateGameSessionQueueInput
    #   data as a hash:
    #
    #       {
    #         name: "GameSessionQueueName", # required
    #         timeout_in_seconds: 1,
    #         destinations: [
    #           {
    #             destination_arn: "ArnStringModel",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   Descriptive label that is associated with queue. Queue names must be
    #   unique within each region.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   Maximum time, in seconds, that a new game session placement request
    #   remains in the queue. When a request exceeds this time, the game
    #   session placement changes to a TIMED\_OUT status.
    #   @return [Integer]
    #
    # @!attribute [rw] destinations
    #   List of fleets that can be used to fulfill game session placement
    #   requests in the queue. Fleets are identified by either a fleet ARN
    #   or a fleet alias ARN. Destinations are listed in default preference
    #   order.
    #   @return [Array<Types::GameSessionQueueDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionQueueInput AWS API Documentation
    #
    class UpdateGameSessionQueueInput < Struct.new(
      :name,
      :timeout_in_seconds,
      :destinations)
      include Aws::Structure
    end

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
    #         },
    #       }
    #
    # @!attribute [rw] fleet_id
    #   Unique identifier for a fleet to update runtime configuration for.
    #   @return [String]
    #
    # @!attribute [rw] runtime_configuration
    #   Instructions for launching server processes on each instance in the
    #   fleet. The runtime configuration for a fleet has a collection of
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
    #   The runtime configuration currently in force. If the update was
    #   successful, this object matches the one in the request.
    #   @return [Types::RuntimeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfigurationOutput AWS API Documentation
    #
    class UpdateRuntimeConfigurationOutput < Struct.new(
      :runtime_configuration)
      include Aws::Structure
    end

  end
end
