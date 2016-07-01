# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module GameLift
    module Types

      # Properties describing a fleet alias.
      class Alias < Aws::Structure.new(
        :alias_id,
        :name,
        :description,
        :routing_strategy,
        :creation_time,
        :last_updated_time)

        # @!attribute [rw] alias_id
        #   Unique identifier for a fleet alias.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this alias. Alias names do not
        #   need to be unique.
        #   @return [String]

        # @!attribute [rw] description
        #   Human-readable description of the alias.
        #   @return [String]

        # @!attribute [rw] routing_strategy
        #   Routing configuration for a fleet alias.
        #   @return [Types::RoutingStrategy]

        # @!attribute [rw] creation_time
        #   Time stamp indicating when this object was created. Format is an
        #   integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

        # @!attribute [rw] last_updated_time
        #   Time stamp indicating when this object was last modified. Format is
        #   an integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

      end

      # AWS access credentials required to upload game build files to Amazon
      # GameLift. These credentials are generated with CreateBuild, and are
      # valid for a limited time. If they expire before you upload your game
      # build, get a new set by calling RequestUploadCredentials.
      class AwsCredentials < Aws::Structure.new(
        :access_key_id,
        :secret_access_key,
        :session_token)

        # @!attribute [rw] access_key_id
        #   Access key for an AWS account.
        #   @return [String]

        # @!attribute [rw] secret_access_key
        #   Secret key for an AWS account.
        #   @return [String]

        # @!attribute [rw] session_token
        #   Token specific to a build ID.
        #   @return [String]

      end

      # Properties describing a game build.
      class Build < Aws::Structure.new(
        :build_id,
        :name,
        :version,
        :status,
        :size_on_disk,
        :creation_time)

        # @!attribute [rw] build_id
        #   Unique identifier for a build.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this build. Build names do not
        #   need to be unique. It can be set using CreateBuild or UpdateBuild.
        #   @return [String]

        # @!attribute [rw] version
        #   Version associated with this build. Version strings do not need to
        #   be unique to a build. This value can be set using CreateBuild or
        #   UpdateBuild.
        #   @return [String]

        # @!attribute [rw] status
        #   Current status of the build. Possible build states include: *
        #   INITIALIZED: A new build has been defined, but no files have been
        #     uploaded. You cannot create fleets for builds that are in this
        #     state. When a build is successfully created, the build state is
        #     set to this value.
        #   * READY: The game build has been successfully uploaded. You can now
        #     create new fleets for this build.
        #   * FAILED: The game build upload failed. You cannot create new fleets
        #     for this build.
        #   @return [String]

        # @!attribute [rw] size_on_disk
        #   File size of the uploaded game build, expressed in bytes. When the
        #   build state is INITIALIZED, this value is 0.
        #   @return [Integer]

        # @!attribute [rw] creation_time
        #   Time stamp indicating when this object was created. Format is an
        #   integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass CreateAliasInput
      #   data as a hash:
      #
      #       {
      #         name: "NonZeroAndMaxString", # required
      #         description: "NonZeroAndMaxString",
      #         routing_strategy: { # required
      #           type: "SIMPLE", # accepts SIMPLE, TERMINAL
      #           fleet_id: "FleetId",
      #           message: "FreeText",
      #         },
      #       }
      class CreateAliasInput < Aws::Structure.new(
        :name,
        :description,
        :routing_strategy)

        # @!attribute [rw] name
        #   Descriptive label associated with this alias. Alias names do not
        #   need to be unique.
        #   @return [String]

        # @!attribute [rw] description
        #   Human-readable description of the alias.
        #   @return [String]

        # @!attribute [rw] routing_strategy
        #   Object specifying the fleet and routing type to use for the alias.
        #   @return [Types::RoutingStrategy]

      end

      # Represents the returned data in response to a request action.
      class CreateAliasOutput < Aws::Structure.new(
        :alias)

        # @!attribute [rw] alias
        #   Object containing the newly created alias record.
        #   @return [Types::Alias]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass CreateBuildInput
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
      #       }
      class CreateBuildInput < Aws::Structure.new(
        :name,
        :version,
        :storage_location)

        # @!attribute [rw] name
        #   Descriptive label associated with this build. Build names do not
        #   need to be unique. A build name can be changed later using
        #   UpdateBuild.
        #   @return [String]

        # @!attribute [rw] version
        #   Version associated with this build. Version strings do not need to
        #   be unique to a build. A build version can be changed later using
        #   UpdateBuild.
        #   @return [String]

        # @!attribute [rw] storage_location
        #   Location in Amazon Simple Storage Service (Amazon S3) where a
        #   build\'s files are stored. This location is assigned in response to
        #   a CreateBuild call, and is always in the same region as the service
        #   used to create the build. For more details see the [Amazon S3
        #   documentation][1].
        #
        #
        #
        #   [1]: http://aws.amazon.com/documentation/s3/
        #   @return [Types::S3Location]

      end

      # Represents the returned data in response to a request action.
      class CreateBuildOutput < Aws::Structure.new(
        :build,
        :upload_credentials,
        :storage_location)

        # @!attribute [rw] build
        #   Set of properties for the newly created build.
        #   @return [Types::Build]

        # @!attribute [rw] upload_credentials
        #   AWS credentials required when uploading a game build to the storage
        #   location. These credentials have a limited lifespan and are valid
        #   only for the build they were issued for. If you need to get fresh
        #   credentials, call RequestUploadCredentials.
        #   @return [Types::AwsCredentials]

        # @!attribute [rw] storage_location
        #   Amazon S3 path and key, identifying where the game build files are
        #   stored.
        #   @return [Types::S3Location]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass CreateFleetInput
      #   data as a hash:
      #
      #       {
      #         name: "NonZeroAndMaxString", # required
      #         description: "NonZeroAndMaxString",
      #         build_id: "BuildId", # required
      #         server_launch_path: "NonZeroAndMaxString", # required
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
      #       }
      class CreateFleetInput < Aws::Structure.new(
        :name,
        :description,
        :build_id,
        :server_launch_path,
        :server_launch_parameters,
        :log_paths,
        :ec2_instance_type,
        :ec2_inbound_permissions,
        :new_game_session_protection_policy)

        # @!attribute [rw] name
        #   Descriptive label associated with this fleet. Fleet names do not
        #   need to be unique.
        #   @return [String]

        # @!attribute [rw] description
        #   Human-readable description of the fleet.
        #   @return [String]

        # @!attribute [rw] build_id
        #   Unique identifier for the build you want the new fleet to use.
        #   @return [String]

        # @!attribute [rw] server_launch_path
        #   Path to the launch executable for the game server. A game server is
        #   built into a `C:\game` drive. This value must be expressed as
        #   `C:\game\[launchpath]`. Example: If, when built, your game server
        #   files are in a folder called \"MyGame\", your log path should be
        #   `C:\game\MyGame\server.exe`.
        #   @return [String]

        # @!attribute [rw] server_launch_parameters
        #   Parameters required to launch your game server. These parameters
        #   should be expressed as a string of command-line parameters. Example:
        #   \"+sv\_port 33435 +start\_lobby\".
        #   @return [String]

        # @!attribute [rw] log_paths
        #   Path to game-session log files generated by your game server. Once a
        #   game session has been terminated, Amazon GameLift captures and
        #   stores the logs on Amazon S3. Use the GameLift console to access the
        #   stored logs.
        #   @return [Array<String>]

        # @!attribute [rw] ec2_instance_type
        #   Type of EC2 instances used in the fleet. EC2 instance types define
        #   the CPU, memory, storage, and networking capacity of the fleetaposs
        #   hosts. Amazon GameLift supports the EC2 instance types listed below.
        #   See [Amazon EC2 Instance Types][1] for detailed descriptions of
        #   each.
        #
        #
        #
        #   [1]: https://aws.amazon.com/ec2/instance-types/
        #   @return [String]

        # @!attribute [rw] ec2_inbound_permissions
        #   Access limits for incoming traffic. Setting these values limits game
        #   server access to incoming traffic using specified IP ranges and port
        #   numbers. Some ports in a range may be restricted. You can provide
        #   one or more sets of permissions for the fleet.
        #   @return [Array<Types::IpPermission>]

        # @!attribute [rw] new_game_session_protection_policy
        #   Game session protection policy to apply to all instances created in
        #   this fleet. If this parameter is not set, new instances in this
        #   fleet will default to no protection. Protection can be set for
        #   individual instances using UpdateGameSession. * NoProtection: The
        #   game session can be terminated during a
        #     scale-down event.
        #   * FullProtection: If the game session is in an ACTIVE status, it
        #     cannot be terminated during a scale-down event.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class CreateFleetOutput < Aws::Structure.new(
        :fleet_attributes)

        # @!attribute [rw] fleet_attributes
        #   Properties for the newly created fleet.
        #   @return [Types::FleetAttributes]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass CreateGameSessionInput
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
      #       }
      class CreateGameSessionInput < Aws::Structure.new(
        :fleet_id,
        :alias_id,
        :maximum_player_session_count,
        :name,
        :game_properties)

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet. Each request must reference either a
        #   fleet ID or alias ID, but not both.
        #   @return [String]

        # @!attribute [rw] alias_id
        #   Unique identifier for a fleet alias. Each request must reference
        #   either a fleet ID or alias ID, but not both.
        #   @return [String]

        # @!attribute [rw] maximum_player_session_count
        #   Maximum number of players that can be connected simultaneously to
        #   the game session.
        #   @return [Integer]

        # @!attribute [rw] name
        #   Descriptive label associated with this game session. Session names
        #   do not need to be unique.
        #   @return [String]

        # @!attribute [rw] game_properties
        #   Set of properties used to administer a game session. These
        #   properties are passed to your game server.
        #   @return [Array<Types::GameProperty>]

      end

      # Represents the returned data in response to a request action.
      class CreateGameSessionOutput < Aws::Structure.new(
        :game_session)

        # @!attribute [rw] game_session
        #   Object containing the newly created game session record.
        #   @return [Types::GameSession]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass CreatePlayerSessionInput
      #   data as a hash:
      #
      #       {
      #         game_session_id: "GameSessionId", # required
      #         player_id: "NonZeroAndMaxString", # required
      #       }
      class CreatePlayerSessionInput < Aws::Structure.new(
        :game_session_id,
        :player_id)

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session. Specify the game session you
        #   want to add a player to.
        #   @return [String]

        # @!attribute [rw] player_id
        #   Unique identifier for the player to be added.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class CreatePlayerSessionOutput < Aws::Structure.new(
        :player_session)

        # @!attribute [rw] player_session
        #   Object containing the newly created player session record.
        #   @return [Types::PlayerSession]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass CreatePlayerSessionsInput
      #   data as a hash:
      #
      #       {
      #         game_session_id: "GameSessionId", # required
      #         player_ids: ["NonZeroAndMaxString"], # required
      #       }
      class CreatePlayerSessionsInput < Aws::Structure.new(
        :game_session_id,
        :player_ids)

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session.
        #   @return [String]

        # @!attribute [rw] player_ids
        #   List of unique identifiers for the players to be added.
        #   @return [Array<String>]

      end

      # Represents the returned data in response to a request action.
      class CreatePlayerSessionsOutput < Aws::Structure.new(
        :player_sessions)

        # @!attribute [rw] player_sessions
        #   Collection of player session objects created for the added players.
        #   @return [Array<Types::PlayerSession>]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DeleteAliasInput
      #   data as a hash:
      #
      #       {
      #         alias_id: "AliasId", # required
      #       }
      class DeleteAliasInput < Aws::Structure.new(
        :alias_id)

        # @!attribute [rw] alias_id
        #   Unique identifier for a fleet alias. Specify the alias you want to
        #   delete.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DeleteBuildInput
      #   data as a hash:
      #
      #       {
      #         build_id: "BuildId", # required
      #       }
      class DeleteBuildInput < Aws::Structure.new(
        :build_id)

        # @!attribute [rw] build_id
        #   Unique identifier for the build you want to delete.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DeleteFleetInput
      #   data as a hash:
      #
      #       {
      #         fleet_id: "FleetId", # required
      #       }
      class DeleteFleetInput < Aws::Structure.new(
        :fleet_id)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the fleet you want to delete.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DeleteScalingPolicyInput
      #   data as a hash:
      #
      #       {
      #         name: "NonZeroAndMaxString", # required
      #         fleet_id: "FleetId", # required
      #       }
      class DeleteScalingPolicyInput < Aws::Structure.new(
        :name,
        :fleet_id)

        # @!attribute [rw] name
        #   Descriptive label associated with this scaling policy. Policy names
        #   do not need to be unique.
        #   @return [String]

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeAliasInput
      #   data as a hash:
      #
      #       {
      #         alias_id: "AliasId", # required
      #       }
      class DescribeAliasInput < Aws::Structure.new(
        :alias_id)

        # @!attribute [rw] alias_id
        #   Unique identifier for a fleet alias. Specify the alias you want to
        #   retrieve.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeAliasOutput < Aws::Structure.new(
        :alias)

        # @!attribute [rw] alias
        #   Object containing the requested alias.
        #   @return [Types::Alias]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeBuildInput
      #   data as a hash:
      #
      #       {
      #         build_id: "BuildId", # required
      #       }
      class DescribeBuildInput < Aws::Structure.new(
        :build_id)

        # @!attribute [rw] build_id
        #   Unique identifier for the build you want to retrieve properties for.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeBuildOutput < Aws::Structure.new(
        :build)

        # @!attribute [rw] build
        #   Set of properties describing the requested build.
        #   @return [Types::Build]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeEC2InstanceLimitsInput
      #   data as a hash:
      #
      #       {
      #         ec2_instance_type: "t2.micro", # accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge
      #       }
      class DescribeEC2InstanceLimitsInput < Aws::Structure.new(
        :ec2_instance_type)

        # @!attribute [rw] ec2_instance_type
        #   Type of EC2 instances used in the fleet. EC2 instance types define
        #   the CPU, memory, storage, and networking capacity of the fleetaposs
        #   hosts. Amazon GameLift supports the EC2 instance types listed below.
        #   See [Amazon EC2 Instance Types][1] for detailed descriptions of
        #   each. Leave this parameter blank to retrieve limits for all types.
        #
        #
        #
        #   [1]: https://aws.amazon.com/ec2/instance-types/
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeEC2InstanceLimitsOutput < Aws::Structure.new(
        :ec2_instance_limits)

        # @!attribute [rw] ec2_instance_limits
        #   Object containing the maximum number of instances for the specified
        #   instance type.
        #   @return [Array<Types::EC2InstanceLimit>]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeFleetAttributesInput
      #   data as a hash:
      #
      #       {
      #         fleet_ids: ["FleetId"],
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class DescribeFleetAttributesInput < Aws::Structure.new(
        :fleet_ids,
        :limit,
        :next_token)

        # @!attribute [rw] fleet_ids
        #   Unique identifiers for the fleet(s) that you want to retrieve
        #   attributes for. Leave this parameter empty to retrieve attributes
        #   for all fleets.
        #   @return [Array<String>]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages. This
        #   parameter is ignored when the request specifies one or a list of
        #   fleet IDs.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value. This
        #   parameter is ignored when the request specifies one or a list of
        #   fleet IDs.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeFleetAttributesOutput < Aws::Structure.new(
        :fleet_attributes,
        :next_token)

        # @!attribute [rw] fleet_attributes
        #   Collection of objects containing attribute metadata for each
        #   requested fleet ID.
        #   @return [Array<Types::FleetAttributes>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeFleetCapacityInput
      #   data as a hash:
      #
      #       {
      #         fleet_ids: ["FleetId"],
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class DescribeFleetCapacityInput < Aws::Structure.new(
        :fleet_ids,
        :limit,
        :next_token)

        # @!attribute [rw] fleet_ids
        #   Unique identifier for the fleet(s) you want to retrieve capacity
        #   information for.
        #   @return [Array<String>]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages. This
        #   parameter is ignored when the request specifies one or a list of
        #   fleet IDs.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value. This
        #   parameter is ignored when the request specifies one or a list of
        #   fleet IDs.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeFleetCapacityOutput < Aws::Structure.new(
        :fleet_capacity,
        :next_token)

        # @!attribute [rw] fleet_capacity
        #   Collection of objects containing capacity information for each
        #   requested fleet ID. Leave this parameter empty to retrieve capacity
        #   information for all fleets.
        #   @return [Array<Types::FleetCapacity>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeFleetEventsInput
      #   data as a hash:
      #
      #       {
      #         fleet_id: "FleetId", # required
      #         start_time: Time.now,
      #         end_time: Time.now,
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class DescribeFleetEventsInput < Aws::Structure.new(
        :fleet_id,
        :start_time,
        :end_time,
        :limit,
        :next_token)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the fleet to get event logs for.
        #   @return [String]

        # @!attribute [rw] start_time
        #   Earliest date to retrieve event logs for. If no start time is
        #   specified, this call returns entries starting from when the fleet
        #   was created to the specified end time. Format is an integer
        #   representing the number of seconds since the Unix epoch (Unix time).
        #   @return [Time]

        # @!attribute [rw] end_time
        #   Most recent date to retrieve event logs for. If no end time is
        #   specified, this call returns entries from the specified start time
        #   up to the present. Format is an integer representing the number of
        #   seconds since the Unix epoch (Unix time).
        #   @return [Time]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeFleetEventsOutput < Aws::Structure.new(
        :events,
        :next_token)

        # @!attribute [rw] events
        #   Collection of objects containing event log entries for the specified
        #   fleet.
        #   @return [Array<Types::Event>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeFleetPortSettingsInput
      #   data as a hash:
      #
      #       {
      #         fleet_id: "FleetId", # required
      #       }
      class DescribeFleetPortSettingsInput < Aws::Structure.new(
        :fleet_id)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the fleet you want to retrieve port settings
        #   for.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeFleetPortSettingsOutput < Aws::Structure.new(
        :inbound_permissions)

        # @!attribute [rw] inbound_permissions
        #   Object containing port settings for the requested fleet ID.
        #   @return [Array<Types::IpPermission>]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeFleetUtilizationInput
      #   data as a hash:
      #
      #       {
      #         fleet_ids: ["FleetId"],
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class DescribeFleetUtilizationInput < Aws::Structure.new(
        :fleet_ids,
        :limit,
        :next_token)

        # @!attribute [rw] fleet_ids
        #   Unique identifier for the fleet(s) you want to retrieve utilization
        #   data for. Leave this parameter empty to retrieve utilization data
        #   for all fleets.
        #   @return [Array<String>]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages. This
        #   parameter is ignored when the request specifies one or a list of
        #   fleet IDs.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value. This
        #   parameter is ignored when the request specifies one or a list of
        #   fleet IDs.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeFleetUtilizationOutput < Aws::Structure.new(
        :fleet_utilization,
        :next_token)

        # @!attribute [rw] fleet_utilization
        #   Collection of objects containing utilization information for each
        #   requested fleet ID.
        #   @return [Array<Types::FleetUtilization>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeGameSessionDetailsInput
      #   data as a hash:
      #
      #       {
      #         fleet_id: "FleetId",
      #         game_session_id: "GameSessionId",
      #         alias_id: "AliasId",
      #         status_filter: "NonZeroAndMaxString",
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class DescribeGameSessionDetailsInput < Aws::Structure.new(
        :fleet_id,
        :game_session_id,
        :alias_id,
        :status_filter,
        :limit,
        :next_token)

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet. Specify a fleet to retrieve
        #   information on all game sessions active on the fleet.
        #   @return [String]

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session. Specify the game session to
        #   retrieve information on.
        #   @return [String]

        # @!attribute [rw] alias_id
        #   Unique identifier for a fleet alias. Specify an alias to retrieve
        #   information on all game sessions active on the fleet.
        #   @return [String]

        # @!attribute [rw] status_filter
        #   Game session status to filter results on. Possible game session
        #   states include ACTIVE, TERMINATED, ACTIVATING and TERMINATING (the
        #   last two are transitory).
        #   @return [String]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeGameSessionDetailsOutput < Aws::Structure.new(
        :game_session_details,
        :next_token)

        # @!attribute [rw] game_session_details
        #   Collection of objects containing game session properties and the
        #   protection policy currently in force for each session matching the
        #   request.
        #   @return [Array<Types::GameSessionDetail>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeGameSessionsInput
      #   data as a hash:
      #
      #       {
      #         fleet_id: "FleetId",
      #         game_session_id: "GameSessionId",
      #         alias_id: "AliasId",
      #         status_filter: "NonZeroAndMaxString",
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class DescribeGameSessionsInput < Aws::Structure.new(
        :fleet_id,
        :game_session_id,
        :alias_id,
        :status_filter,
        :limit,
        :next_token)

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet. Specify a fleet to retrieve
        #   information on all game sessions active on the fleet.
        #   @return [String]

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session. Specify the game session to
        #   retrieve information on.
        #   @return [String]

        # @!attribute [rw] alias_id
        #   Unique identifier for a fleet alias. Specify an alias to retrieve
        #   information on all game sessions active on the fleet.
        #   @return [String]

        # @!attribute [rw] status_filter
        #   Game session status to filter results on. Possible game session
        #   states include ACTIVE, TERMINATED, ACTIVATING and TERMINATING (the
        #   last two are transitory).
        #   @return [String]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeGameSessionsOutput < Aws::Structure.new(
        :game_sessions,
        :next_token)

        # @!attribute [rw] game_sessions
        #   Collection of objects containing game session properties for each
        #   session matching the request.
        #   @return [Array<Types::GameSession>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribePlayerSessionsInput
      #   data as a hash:
      #
      #       {
      #         game_session_id: "GameSessionId",
      #         player_id: "NonZeroAndMaxString",
      #         player_session_id: "PlayerSessionId",
      #         player_session_status_filter: "NonZeroAndMaxString",
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class DescribePlayerSessionsInput < Aws::Structure.new(
        :game_session_id,
        :player_id,
        :player_session_id,
        :player_session_status_filter,
        :limit,
        :next_token)

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session.
        #   @return [String]

        # @!attribute [rw] player_id
        #   Unique identifier for a player.
        #   @return [String]

        # @!attribute [rw] player_session_id
        #   Unique identifier for a player session.
        #   @return [String]

        # @!attribute [rw] player_session_status_filter
        #   Player session status to filter results on. Possible player session
        #   states include: * RESERVED: The player session request has been
        #   received, but the
        #     player has not yet connected to the game server and/or been
        #     validated.
        #   * ACTIVE: The player has been validated by the game server and is
        #     currently connected.
        #   * COMPLETED: The player connection has been dropped.
        #   * TIMEDOUT: A player session request was received, but the player
        #     did not connect and/or was not validated within the time-out limit
        #     (60 seconds).
        #   @return [String]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages. If a player
        #   session ID is specified, this parameter is ignored.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value. If a
        #   player session ID is specified, this parameter is ignored.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribePlayerSessionsOutput < Aws::Structure.new(
        :player_sessions,
        :next_token)

        # @!attribute [rw] player_sessions
        #   Collection of objects containing properties for each player session
        #   that matches the request.
        #   @return [Array<Types::PlayerSession>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass DescribeScalingPoliciesInput
      #   data as a hash:
      #
      #       {
      #         fleet_id: "FleetId", # required
      #         status_filter: "ACTIVE", # accepts ACTIVE, UPDATE_REQUESTED, UPDATING, DELETE_REQUESTED, DELETING, DELETED, ERROR
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class DescribeScalingPoliciesInput < Aws::Structure.new(
        :fleet_id,
        :status_filter,
        :limit,
        :next_token)

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet. Specify the fleet to retrieve scaling
        #   policies for.
        #   @return [String]

        # @!attribute [rw] status_filter
        #   Game session status to filter results on. A scaling policy is only
        #   in force when in an Active state. * ACTIVE: The scaling policy is
        #   currently in force.
        #   * UPDATEREQUESTED: A request to update the scaling policy has been
        #     received.
        #   * UPDATING: A change is being made to the scaling policy.
        #   * DELETEREQUESTED: A request to delete the scaling policy has been
        #     received.
        #   * DELETING: The scaling policy is being deleted.
        #   * DELETED: The scaling policy has been deleted.
        #   * ERROR: An error occurred in creating the policy. It should be
        #     removed and recreated.
        #   @return [String]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class DescribeScalingPoliciesOutput < Aws::Structure.new(
        :scaling_policies,
        :next_token)

        # @!attribute [rw] scaling_policies
        #   Collection of objects containing the scaling policies matching the
        #   request.
        #   @return [Array<Types::ScalingPolicy>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Current status of fleet capacity. The number of active instances
      # should match or be in the process of matching the number of desired
      # instances. Pending and terminating counts are non-zero only if fleet
      # capacity is adjusting to an UpdateFleetCapacity request, or if access
      # to resources is temporarily affected.
      class EC2InstanceCounts < Aws::Structure.new(
        :desired,
        :minimum,
        :maximum,
        :pending,
        :active,
        :idle,
        :terminating)

        # @!attribute [rw] desired
        #   Ideal number of active instances in the fleet.
        #   @return [Integer]

        # @!attribute [rw] minimum
        #   Minimum value allowed for the fleet\'s instance count.
        #   @return [Integer]

        # @!attribute [rw] maximum
        #   Maximum value allowed for the fleet\'s instance count.
        #   @return [Integer]

        # @!attribute [rw] pending
        #   Number of instances in the fleet that are starting but not yet
        #   active.
        #   @return [Integer]

        # @!attribute [rw] active
        #   Actual number of active instances in the fleet.
        #   @return [Integer]

        # @!attribute [rw] idle
        #   Number of active instances in the fleet that are not currently
        #   hosting a game session.
        #   @return [Integer]

        # @!attribute [rw] terminating
        #   Number of instances in the fleet that are no longer active but
        #   haven\'t yet been terminated.
        #   @return [Integer]

      end

      # Maximum number of instances allowed based on the Amazon Elastic
      # Compute Cloud (Amazon EC2) instance type. Instance limits can be
      # retrieved by calling DescribeEC2InstanceLimits.
      class EC2InstanceLimit < Aws::Structure.new(
        :ec2_instance_type,
        :current_instances,
        :instance_limit)

        # @!attribute [rw] ec2_instance_type
        #   Type of EC2 instances used in the fleet. EC2 instance types define
        #   the CPU, memory, storage, and networking capacity of the fleetaposs
        #   hosts. Amazon GameLift supports the EC2 instance types listed below.
        #   See [Amazon EC2 Instance Types][1] for detailed descriptions of
        #   each.
        #
        #
        #
        #   [1]: https://aws.amazon.com/ec2/instance-types/
        #   @return [String]

        # @!attribute [rw] current_instances
        #   Number of instances of the specified type that are currently in use
        #   by this AWS account.
        #   @return [Integer]

        # @!attribute [rw] instance_limit
        #   Number of instances allowed.
        #   @return [Integer]

      end

      # Log entry describing an event involving an Amazon GameLift resource
      # (such as a fleet).
      class Event < Aws::Structure.new(
        :event_id,
        :resource_id,
        :event_code,
        :message,
        :event_time)

        # @!attribute [rw] event_id
        #   Unique identifier for a fleet event.
        #   @return [String]

        # @!attribute [rw] resource_id
        #   Unique identifier for the resource, such as a fleet ID.
        #   @return [String]

        # @!attribute [rw] event_code
        #   Type of event being logged.
        #   @return [String]

        # @!attribute [rw] message
        #   Additional information related to the event.
        #   @return [String]

        # @!attribute [rw] event_time
        #   Time stamp indicating when this event occurred. Format is an integer
        #   representing the number of seconds since the Unix epoch (Unix time).
        #   @return [Time]

      end

      # General properties describing a fleet.
      class FleetAttributes < Aws::Structure.new(
        :fleet_id,
        :description,
        :name,
        :creation_time,
        :termination_time,
        :status,
        :build_id,
        :server_launch_path,
        :server_launch_parameters,
        :log_paths,
        :new_game_session_protection_policy)

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet.
        #   @return [String]

        # @!attribute [rw] description
        #   Human-readable description of the fleet.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this fleet. Fleet names do not
        #   need to be unique.
        #   @return [String]

        # @!attribute [rw] creation_time
        #   Time stamp indicating when this object was created. Format is an
        #   integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

        # @!attribute [rw] termination_time
        #   Time stamp indicating when this fleet was terminated. Format is an
        #   integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

        # @!attribute [rw] status
        #   Current status of the fleet. Possible fleet states include: * NEW: A
        #   new fleet has been defined and hosts allocated.
        #   * DOWNLOADING/VALIDATING/BUILDING/ACTIVATING: The new fleet is being
        #     set up with the game build, and new hosts are being started.
        #   * ACTIVE: Hosts can now accept game sessions.
        #   * ERROR: An error occurred when downloading, validating, building,
        #     or activating the fleet.
        #   * DELETING: Hosts are responding to a delete fleet request.
        #   * TERMINATED: The fleet no longer exists.
        #   @return [String]

        # @!attribute [rw] build_id
        #   Unique identifier for a build.
        #   @return [String]

        # @!attribute [rw] server_launch_path
        #   Path to the launch executable for the game server. A game server is
        #   built into a `C:\game` drive. This value must be expressed as
        #   `C:\game\[launchpath]`. Example: If, when built, your game server
        #   files are in a folder called \"MyGame\", your log path should be
        #   `C:\game\MyGame\server.exe`.
        #   @return [String]

        # @!attribute [rw] server_launch_parameters
        #   Parameters required to launch your game server. These parameters
        #   should be expressed as a string of command-line parameters. Example:
        #   \"+sv\_port 33435 +start\_lobby\".
        #   @return [String]

        # @!attribute [rw] log_paths
        #   Path to game-session log files generated by your game server. Once a
        #   game session has been terminated, Amazon GameLift captures and
        #   stores the logs on Amazon S3. Use the GameLift console to access the
        #   stored logs.
        #   @return [Array<String>]

        # @!attribute [rw] new_game_session_protection_policy
        #   Type of game session protection to set for all new instances started
        #   in the fleet. * NoProtection: The game session can be terminated
        #   during a
        #     scale-down event.
        #   * FullProtection: If the game session is in an ACTIVE status, it
        #     cannot be terminated during a scale-down event.
        #   @return [String]

      end

      # Information about the fleet\'s capacity. Fleet capacity is measured in
      # EC2 instances. By default, new fleets have a capacity of one instance,
      # but can be updated as needed. The maximum number of instances for a
      # fleet is determined by the fleet\'s instance type.
      class FleetCapacity < Aws::Structure.new(
        :fleet_id,
        :instance_type,
        :instance_counts)

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet.
        #   @return [String]

        # @!attribute [rw] instance_type
        #   Type of EC2 instances used in the fleet. EC2 instance types define
        #   the CPU, memory, storage, and networking capacity of the fleetaposs
        #   hosts. Amazon GameLift supports the EC2 instance types listed below.
        #   See [Amazon EC2 Instance Types][1] for detailed descriptions of
        #   each.
        #
        #
        #
        #   [1]: https://aws.amazon.com/ec2/instance-types/
        #   @return [String]

        # @!attribute [rw] instance_counts
        #   Current status of fleet capacity.
        #   @return [Types::EC2InstanceCounts]

      end

      # Current status of fleet utilization, including the number of game and
      # player sessions being hosted.
      class FleetUtilization < Aws::Structure.new(
        :fleet_id,
        :active_game_session_count,
        :current_player_session_count,
        :maximum_player_session_count)

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet.
        #   @return [String]

        # @!attribute [rw] active_game_session_count
        #   Number of active game sessions currently being hosted on fleet game
        #   servers.
        #   @return [Integer]

        # @!attribute [rw] current_player_session_count
        #   Number of active player sessions currently being hosted on fleet
        #   game servers.
        #   @return [Integer]

        # @!attribute [rw] maximum_player_session_count
        #   Maximum players allowed across all game sessions currently hosted in
        #   the fleet.
        #   @return [Integer]

      end

      # Set of key-value pairs containing information your game server
      # requires to set up sessions. This object allows you to pass in any set
      # of data needed for your game. For more information, see the [Amazon
      # GameLift Developer Guide][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/gamelift/latest/developerguide/
      # @note When making an API call, pass GameProperty
      #   data as a hash:
      #
      #       {
      #         key: "GamePropertyKey", # required
      #         value: "GamePropertyValue", # required
      #       }
      class GameProperty < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   @return [String]

        # @!attribute [rw] value
        #   @return [String]

      end

      # Properties describing a game session.
      class GameSession < Aws::Structure.new(
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
        :player_session_creation_policy)

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this game session. Session names
        #   do not need to be unique.
        #   @return [String]

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet.
        #   @return [String]

        # @!attribute [rw] creation_time
        #   Time stamp indicating when this object was created. Format is an
        #   integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

        # @!attribute [rw] termination_time
        #   Time stamp indicating when this fleet was terminated. Format is an
        #   integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

        # @!attribute [rw] current_player_session_count
        #   Number of players currently in the game session.
        #   @return [Integer]

        # @!attribute [rw] maximum_player_session_count
        #   Maximum number of players allowed in the game session.
        #   @return [Integer]

        # @!attribute [rw] status
        #   Current status of the game session. A game session must be in an
        #   ACTIVE state to have player sessions.
        #   @return [String]

        # @!attribute [rw] game_properties
        #   Set of custom properties for the game session.
        #   @return [Array<Types::GameProperty>]

        # @!attribute [rw] ip_address
        #   IP address of the game session.
        #   @return [String]

        # @!attribute [rw] player_session_creation_policy
        #   Indicates whether or not the game session is accepting new players.
        #   @return [String]

      end

      # A game session\'s properties and the protection policy currently in
      # force.
      class GameSessionDetail < Aws::Structure.new(
        :game_session,
        :protection_policy)

        # @!attribute [rw] game_session
        #   Properties describing a game session.
        #   @return [Types::GameSession]

        # @!attribute [rw] protection_policy
        #   Current status of protection for the game session. * NoProtection:
        #   The game session can be terminated during a
        #     scale-down event.
        #   * FullProtection: If the game session is in an ACTIVE status, it
        #     cannot be terminated during a scale-down event.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass GetGameSessionLogUrlInput
      #   data as a hash:
      #
      #       {
      #         game_session_id: "GameSessionId", # required
      #       }
      class GetGameSessionLogUrlInput < Aws::Structure.new(
        :game_session_id)

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session. Specify the game session you
        #   want to get logs for.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class GetGameSessionLogUrlOutput < Aws::Structure.new(
        :pre_signed_url)

        # @!attribute [rw] pre_signed_url
        #   Location of the requested game session logs, available for download.
        #   @return [String]

      end

      # IP addresses and port settings used to limit access by incoming
      # traffic (players) to a fleet. Permissions specify a range of IP
      # addresses and port settings that must be used to gain access to a game
      # server on a fleet machine.
      # @note When making an API call, pass IpPermission
      #   data as a hash:
      #
      #       {
      #         from_port: 1, # required
      #         to_port: 1, # required
      #         ip_range: "NonBlankString", # required
      #         protocol: "TCP", # required, accepts TCP, UDP
      #       }
      class IpPermission < Aws::Structure.new(
        :from_port,
        :to_port,
        :ip_range,
        :protocol)

        # @!attribute [rw] from_port
        #   Starting value for a range of allowed port numbers.
        #   @return [Integer]

        # @!attribute [rw] to_port
        #   Ending value for a range of allowed port numbers. Port numbers are
        #   end-inclusive. This value must be higher than *FromPort*.
        #   @return [Integer]

        # @!attribute [rw] ip_range
        #   Range of allowed IP addresses. This value must be expressed in [CIDR
        #   notation][1]. Example: \"`000.000.000.000/[subnet mask]`\" or
        #   optionally the shortened version \"`0.0.0.0/[subnet mask]`\".
        #
        #
        #
        #   [1]: https://tools.ietf.org/id/cidr
        #   @return [String]

        # @!attribute [rw] protocol
        #   Network communication protocol used by the fleet.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass ListAliasesInput
      #   data as a hash:
      #
      #       {
      #         routing_strategy_type: "SIMPLE", # accepts SIMPLE, TERMINAL
      #         name: "NonEmptyString",
      #         limit: 1,
      #         next_token: "NonEmptyString",
      #       }
      class ListAliasesInput < Aws::Structure.new(
        :routing_strategy_type,
        :name,
        :limit,
        :next_token)

        # @!attribute [rw] routing_strategy_type
        #   Type of routing to filter results on. Use this parameter to retrieve
        #   only aliases of a certain type. To retrieve all aliases, leave this
        #   parameter empty. Possible routing types include: * SIMPLE: The alias
        #   resolves to one specific fleet. Use this type
        #     when routing to active fleets.
        #   * TERMINAL: The alias does not resolve to a fleet but instead can be
        #     used to display a message to the user. A terminal alias throws a
        #     TerminalRoutingStrategyException with the RoutingStrategy message
        #     embedded.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this alias. Alias names do not
        #   need to be unique.
        #   @return [String]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class ListAliasesOutput < Aws::Structure.new(
        :aliases,
        :next_token)

        # @!attribute [rw] aliases
        #   Collection of alias records that match the list request.
        #   @return [Array<Types::Alias>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass ListBuildsInput
      #   data as a hash:
      #
      #       {
      #         status: "INITIALIZED", # accepts INITIALIZED, READY, FAILED
      #         limit: 1,
      #         next_token: "NonEmptyString",
      #       }
      class ListBuildsInput < Aws::Structure.new(
        :status,
        :limit,
        :next_token)

        # @!attribute [rw] status
        #   Build state to filter results on. Use this parameter to retrieve
        #   builds in a certain state. To retrieve all builds, leave this
        #   parameter empty. Possible build states include: * INITIALIZED: A new
        #   build has been defined, but no files have been
        #     uploaded. You cannot create fleets for builds that are in this
        #     state. When a build is successfully created, the build state is
        #     set to this value.
        #   * READY: The game build has been successfully uploaded. You can now
        #     create new fleets for this build.
        #   * FAILED: The game build upload failed. You cannot create new fleets
        #     for this build.
        #   @return [String]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class ListBuildsOutput < Aws::Structure.new(
        :builds,
        :next_token)

        # @!attribute [rw] builds
        #   Collection of build records that match the request.
        #   @return [Array<Types::Build>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass ListFleetsInput
      #   data as a hash:
      #
      #       {
      #         build_id: "BuildId",
      #         limit: 1,
      #         next_token: "NonZeroAndMaxString",
      #       }
      class ListFleetsInput < Aws::Structure.new(
        :build_id,
        :limit,
        :next_token)

        # @!attribute [rw] build_id
        #   Unique identifier of the build to return fleets for. Use this
        #   parameter to return only fleets using the specified build. To
        #   retrieve all fleets, leave this parameter empty.
        #   @return [String]

        # @!attribute [rw] limit
        #   Maximum number of results to return. You can use this parameter with
        #   *NextToken* to get results as a set of sequential pages.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   Token indicating the start of the next sequential page of results.
        #   Use the token that is returned with a previous call to this action.
        #   To specify the start of the result set, do not specify a value.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class ListFleetsOutput < Aws::Structure.new(
        :fleet_ids,
        :next_token)

        # @!attribute [rw] fleet_ids
        #   Set of fleet IDs matching the list request. You can retrieve
        #   additional information about all returned fleets by passing this
        #   result set to a call to DescribeFleetAttributes,
        #   DescribeFleetCapacity, and DescribeFleetUtilization.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   Token indicating where to resume retrieving results on the next call
        #   to this action. If no token is returned, these results represent the
        #   end of the list.
        #
        #   <note markdown="1">If a request has a limit that exactly matches the number of
        #   remaining results, a token is returned even though there are no more
        #   results to retrieve.
        #
        #   </note>
        #   @return [String]

      end

      # Properties describing a player session.
      class PlayerSession < Aws::Structure.new(
        :player_session_id,
        :player_id,
        :game_session_id,
        :fleet_id,
        :creation_time,
        :termination_time,
        :status,
        :ip_address)

        # @!attribute [rw] player_session_id
        #   Unique identifier for a player session.
        #   @return [String]

        # @!attribute [rw] player_id
        #   Unique identifier for a player.
        #   @return [String]

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session.
        #   @return [String]

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet.
        #   @return [String]

        # @!attribute [rw] creation_time
        #   Time stamp indicating when this object was created. Format is an
        #   integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

        # @!attribute [rw] termination_time
        #   Time stamp indicating when this fleet was terminated. Format is an
        #   integer representing the number of seconds since the Unix epoch
        #   (Unix time).
        #   @return [Time]

        # @!attribute [rw] status
        #   Current status of the player session. Possible player session states
        #   include: * RESERVED: The player session request has been received,
        #   but the
        #     player has not yet connected to the game server and/or been
        #     validated.
        #   * ACTIVE: The player has been validated by the game server and is
        #     currently connected.
        #   * COMPLETED: The player connection has been dropped.
        #   * TIMEDOUT: A player session request was received, but the player
        #     did not connect and/or was not validated within the time-out limit
        #     (60 seconds).
        #   @return [String]

        # @!attribute [rw] ip_address
        #   Game session IP address. All player sessions reference the game
        #   session location.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass PutScalingPolicyInput
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
      #         metric_name: "ActivatingGameSessions", # required, accepts ActivatingGameSessions, ActiveGameSessions, ActiveInstances, AvailablePlayerSessions, CurrentPlayerSessions, IdleInstances
      #       }
      class PutScalingPolicyInput < Aws::Structure.new(
        :name,
        :fleet_id,
        :scaling_adjustment,
        :scaling_adjustment_type,
        :threshold,
        :comparison_operator,
        :evaluation_periods,
        :metric_name)

        # @!attribute [rw] name
        #   Descriptive label associated with this scaling policy. Policy names
        #   do not need to be unique. A fleet can have only one scaling policy
        #   with the same name.
        #   @return [String]

        # @!attribute [rw] fleet_id
        #   Unique identity for the fleet to scale with this policy.
        #   @return [String]

        # @!attribute [rw] scaling_adjustment
        #   Amount of adjustment to make, based on the scaling adjustment type.
        #   @return [Integer]

        # @!attribute [rw] scaling_adjustment_type
        #   Type of adjustment to make to a fleet\'s instance count (see
        #   FleetCapacity): * ChangeInCapacity: add (or subtract) the scaling
        #   adjustment value
        #     from the current instance count. Positive values scale up while
        #     negative values scale down.
        #   * ExactCapacity: set the instance count to the scaling adjustment
        #     value.
        #   * PercentChangeInCapacity: increase or reduce the current instance
        #     count by the scaling adjustment, read as a percentage. Positive
        #     values scale up while negative values scale down; for example, a
        #     value of \"-10\" scales the fleet down by 10%.
        #   @return [String]

        # @!attribute [rw] threshold
        #   Metric value used to trigger a scaling event.
        #   @return [Float]

        # @!attribute [rw] comparison_operator
        #   Comparison operator to use when measuring the metric against the
        #   threshold value.
        #   @return [String]

        # @!attribute [rw] evaluation_periods
        #   Length of time (in minutes) the metric must be at or beyond the
        #   threshold before a scaling event is triggered.
        #   @return [Integer]

        # @!attribute [rw] metric_name
        #   Name of the Service-defined metric that is used to trigger an
        #   adjustment. * ActivatingGameSessions: number of game sessions in the
        #   process of
        #     being created (game session status = ACTIVATING).
        #   * ActiveGameSessions: number of game sessions currently running
        #     (game session status = ACTIVE).
        #   * CurrentPlayerSessions: number of active or reserved player
        #     sessions (player session status = ACTIVE or RESERVED).
        #   * AvailablePlayerSessions: number of player session slots currently
        #     available in active game sessions across the fleet, calculated by
        #     subtracting a game session\'s current player session count from
        #     its maximum player session count. This number includes game
        #     sessions that are not currently accepting players (game session
        #     PlayerSessionCreationPolicy = DENY\_ALL).
        #   * ActiveInstances: number of instances currently running a game
        #     session.
        #   * IdleInstances: number of instances not currently running a game
        #     session.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class PutScalingPolicyOutput < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   Descriptive label associated with this scaling policy. Policy names
        #   do not need to be unique.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass RequestUploadCredentialsInput
      #   data as a hash:
      #
      #       {
      #         build_id: "BuildId", # required
      #       }
      class RequestUploadCredentialsInput < Aws::Structure.new(
        :build_id)

        # @!attribute [rw] build_id
        #   Unique identifier for the build you want to get credentials for.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class RequestUploadCredentialsOutput < Aws::Structure.new(
        :upload_credentials,
        :storage_location)

        # @!attribute [rw] upload_credentials
        #   AWS credentials required when uploading a game build to the storage
        #   location. These credentials have a limited lifespan and are valid
        #   only for the build they were issued for.
        #   @return [Types::AwsCredentials]

        # @!attribute [rw] storage_location
        #   Amazon S3 path and key, identifying where the game build files are
        #   stored.
        #   @return [Types::S3Location]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass ResolveAliasInput
      #   data as a hash:
      #
      #       {
      #         alias_id: "AliasId", # required
      #       }
      class ResolveAliasInput < Aws::Structure.new(
        :alias_id)

        # @!attribute [rw] alias_id
        #   Unique identifier for the alias you want to resolve.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class ResolveAliasOutput < Aws::Structure.new(
        :fleet_id)

        # @!attribute [rw] fleet_id
        #   Fleet ID associated with the requested alias.
        #   @return [String]

      end

      # Routing configuration for a fleet alias.
      # @note When making an API call, pass RoutingStrategy
      #   data as a hash:
      #
      #       {
      #         type: "SIMPLE", # accepts SIMPLE, TERMINAL
      #         fleet_id: "FleetId",
      #         message: "FreeText",
      #       }
      class RoutingStrategy < Aws::Structure.new(
        :type,
        :fleet_id,
        :message)

        # @!attribute [rw] type
        #   Type of routing strategy. Possible routing types include: * SIMPLE:
        #   The alias resolves to one specific fleet. Use this type
        #     when routing to active fleets.
        #   * TERMINAL: The alias does not resolve to a fleet but instead can be
        #     used to display a message to the user. A terminal alias throws a
        #     TerminalRoutingStrategyException with the RoutingStrategy message
        #     embedded.
        #   @return [String]

        # @!attribute [rw] fleet_id
        #   Unique identifier for a fleet.
        #   @return [String]

        # @!attribute [rw] message
        #   Message text to be used with a terminal routing strategy.
        #   @return [String]

      end

      # Location in Amazon Simple Storage Service (Amazon S3) where a build\'s
      # files are stored. This location is assigned in response to a
      # CreateBuild call, and is always in the same region as the service used
      # to create the build. For more details see the [Amazon S3
      # documentation][1].
      #
      #
      #
      # [1]: http://aws.amazon.com/documentation/s3/
      # @note When making an API call, pass S3Location
      #   data as a hash:
      #
      #       {
      #         bucket: "NonEmptyString",
      #         key: "NonEmptyString",
      #         role_arn: "NonEmptyString",
      #       }
      class S3Location < Aws::Structure.new(
        :bucket,
        :key,
        :role_arn)

        # @!attribute [rw] bucket
        #   Amazon S3 bucket identifier.
        #   @return [String]

        # @!attribute [rw] key
        #   Amazon S3 bucket key.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   @return [String]

      end

      # Rule that controls how a fleet is scaled. Scaling policies are
      # uniquely identified by the combination of name and fleet ID.
      class ScalingPolicy < Aws::Structure.new(
        :fleet_id,
        :name,
        :status,
        :scaling_adjustment,
        :scaling_adjustment_type,
        :comparison_operator,
        :threshold,
        :evaluation_periods,
        :metric_name)

        # @!attribute [rw] fleet_id
        #   Unique identity for the fleet associated with this scaling policy.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this scaling policy. Policy names
        #   do not need to be unique.
        #   @return [String]

        # @!attribute [rw] status
        #   Current status of the scaling policy. The scaling policy is only in
        #   force when in an Active state. * ACTIVE: The scaling policy is
        #   currently in force.
        #   * UPDATEREQUESTED: A request to update the scaling policy has been
        #     received.
        #   * UPDATING: A change is being made to the scaling policy.
        #   * DELETEREQUESTED: A request to delete the scaling policy has been
        #     received.
        #   * DELETING: The scaling policy is being deleted.
        #   * DELETED: The scaling policy has been deleted.
        #   * ERROR: An error occurred in creating the policy. It should be
        #     removed and recreated.
        #   @return [String]

        # @!attribute [rw] scaling_adjustment
        #   Amount of adjustment to make, based on the scaling adjustment type.
        #   @return [Integer]

        # @!attribute [rw] scaling_adjustment_type
        #   Type of adjustment to make to a fleet\'s instance count (see
        #   FleetCapacity): * ChangeInCapacity: add (or subtract) the scaling
        #   adjustment value
        #     from the current instance count. Positive values scale up while
        #     negative values scale down.
        #   * ExactCapacity: set the instance count to the scaling adjustment
        #     value.
        #   * PercentChangeInCapacity: increase or reduce the current instance
        #     count by the scaling adjustment, read as a percentage. Positive
        #     values scale up while negative values scale down.
        #   @return [String]

        # @!attribute [rw] comparison_operator
        #   Comparison operator to use when measuring a metric against the
        #   threshold value.
        #   @return [String]

        # @!attribute [rw] threshold
        #   Metric value used to trigger a scaling event.
        #   @return [Float]

        # @!attribute [rw] evaluation_periods
        #   Length of time (in minutes) the metric must be at or beyond the
        #   threshold before a scaling event is triggered.
        #   @return [Integer]

        # @!attribute [rw] metric_name
        #   Name of the GameLift-defined metric that is used to trigger an
        #   adjustment. * ActivatingGameSessions: number of game sessions in the
        #   process of
        #     being created (game session status = ACTIVATING).
        #   * ActiveGameSessions: number of game sessions currently running
        #     (game session status = ACTIVE).
        #   * CurrentPlayerSessions: number of active or reserved player
        #     sessions (player session status = ACTIVE or RESERVED).
        #   * AvailablePlayerSessions: number of player session slots currently
        #     available in active game sessions across the fleet, calculated by
        #     subtracting a game session\'s current player session count from
        #     its maximum player session count. This number does include game
        #     sessions that are not currently accepting players (game session
        #     PlayerSessionCreationPolicy = DENY\_ALL).
        #   * ActiveInstances: number of instances currently running a game
        #     session.
        #   * IdleInstances: number of instances not currently running a game
        #     session.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass UpdateAliasInput
      #   data as a hash:
      #
      #       {
      #         alias_id: "AliasId", # required
      #         name: "NonZeroAndMaxString",
      #         description: "NonZeroAndMaxString",
      #         routing_strategy: {
      #           type: "SIMPLE", # accepts SIMPLE, TERMINAL
      #           fleet_id: "FleetId",
      #           message: "FreeText",
      #         },
      #       }
      class UpdateAliasInput < Aws::Structure.new(
        :alias_id,
        :name,
        :description,
        :routing_strategy)

        # @!attribute [rw] alias_id
        #   Unique identifier for a fleet alias. Specify the alias you want to
        #   update.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this alias. Alias names do not
        #   need to be unique.
        #   @return [String]

        # @!attribute [rw] description
        #   Human-readable description of the alias.
        #   @return [String]

        # @!attribute [rw] routing_strategy
        #   Object specifying the fleet and routing type to use for the alias.
        #   @return [Types::RoutingStrategy]

      end

      # Represents the returned data in response to a request action.
      class UpdateAliasOutput < Aws::Structure.new(
        :alias)

        # @!attribute [rw] alias
        #   Object containing the updated alias configuration.
        #   @return [Types::Alias]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass UpdateBuildInput
      #   data as a hash:
      #
      #       {
      #         build_id: "BuildId", # required
      #         name: "NonZeroAndMaxString",
      #         version: "NonZeroAndMaxString",
      #       }
      class UpdateBuildInput < Aws::Structure.new(
        :build_id,
        :name,
        :version)

        # @!attribute [rw] build_id
        #   Unique identifier for the build you want to update.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this build. Build names do not
        #   need to be unique.
        #   @return [String]

        # @!attribute [rw] version
        #   Version associated with this build. Version strings do not need to
        #   be unique to a build.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class UpdateBuildOutput < Aws::Structure.new(
        :build)

        # @!attribute [rw] build
        #   Object containing the updated build record.
        #   @return [Types::Build]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass UpdateFleetAttributesInput
      #   data as a hash:
      #
      #       {
      #         fleet_id: "FleetId", # required
      #         name: "NonZeroAndMaxString",
      #         description: "NonZeroAndMaxString",
      #         new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
      #       }
      class UpdateFleetAttributesInput < Aws::Structure.new(
        :fleet_id,
        :name,
        :description,
        :new_game_session_protection_policy)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the fleet you want to update attribute
        #   metadata for.
        #   @return [String]

        # @!attribute [rw] name
        #   Descriptive label associated with this fleet. Fleet names do not
        #   need to be unique.
        #   @return [String]

        # @!attribute [rw] description
        #   Human-readable description of the fleet.
        #   @return [String]

        # @!attribute [rw] new_game_session_protection_policy
        #   Game session protection policy to apply to all new instances created
        #   in this fleet. Instances that already exist will not be affected.
        #   You can set protection for individual instances using
        #   UpdateGameSession. * NoProtection: The game session can be
        #   terminated during a
        #     scale-down event.
        #   * FullProtection: If the game session is in an ACTIVE status, it
        #     cannot be terminated during a scale-down event.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class UpdateFleetAttributesOutput < Aws::Structure.new(
        :fleet_id)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the updated fleet.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass UpdateFleetCapacityInput
      #   data as a hash:
      #
      #       {
      #         fleet_id: "FleetId", # required
      #         desired_instances: 1,
      #         min_size: 1,
      #         max_size: 1,
      #       }
      class UpdateFleetCapacityInput < Aws::Structure.new(
        :fleet_id,
        :desired_instances,
        :min_size,
        :max_size)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the fleet you want to update capacity for.
        #   @return [String]

        # @!attribute [rw] desired_instances
        #   Number of EC2 instances you want this fleet to host.
        #   @return [Integer]

        # @!attribute [rw] min_size
        #   Minimum value allowed for the fleet\'s instance count. Default if
        #   not set is 0.
        #   @return [Integer]

        # @!attribute [rw] max_size
        #   Maximum value allowed for the fleet\'s instance count. Default if
        #   not set is 1.
        #   @return [Integer]

      end

      # Represents the returned data in response to a request action.
      class UpdateFleetCapacityOutput < Aws::Structure.new(
        :fleet_id)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the updated fleet.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass UpdateFleetPortSettingsInput
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
      class UpdateFleetPortSettingsInput < Aws::Structure.new(
        :fleet_id,
        :inbound_permission_authorizations,
        :inbound_permission_revocations)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the fleet you want to update port settings
        #   for.
        #   @return [String]

        # @!attribute [rw] inbound_permission_authorizations
        #   Collection of port settings to be added to the fleet record.
        #   @return [Array<Types::IpPermission>]

        # @!attribute [rw] inbound_permission_revocations
        #   Collection of port settings to be removed from the fleet record.
        #   @return [Array<Types::IpPermission>]

      end

      # Represents the returned data in response to a request action.
      class UpdateFleetPortSettingsOutput < Aws::Structure.new(
        :fleet_id)

        # @!attribute [rw] fleet_id
        #   Unique identifier for the updated fleet.
        #   @return [String]

      end

      # Represents the input for a request action.
      # @note When making an API call, pass UpdateGameSessionInput
      #   data as a hash:
      #
      #       {
      #         game_session_id: "GameSessionId", # required
      #         maximum_player_session_count: 1,
      #         name: "NonZeroAndMaxString",
      #         player_session_creation_policy: "ACCEPT_ALL", # accepts ACCEPT_ALL, DENY_ALL
      #         protection_policy: "NoProtection", # accepts NoProtection, FullProtection
      #       }
      class UpdateGameSessionInput < Aws::Structure.new(
        :game_session_id,
        :maximum_player_session_count,
        :name,
        :player_session_creation_policy,
        :protection_policy)

        # @!attribute [rw] game_session_id
        #   Unique identifier for a game session. Specify the game session you
        #   want to update.
        #   @return [String]

        # @!attribute [rw] maximum_player_session_count
        #   Maximum number of players that can be simultaneously connected to
        #   the game session.
        #   @return [Integer]

        # @!attribute [rw] name
        #   Descriptive label associated with this game session. Session names
        #   do not need to be unique.
        #   @return [String]

        # @!attribute [rw] player_session_creation_policy
        #   Policy determining whether or not the game session accepts new
        #   players.
        #   @return [String]

        # @!attribute [rw] protection_policy
        #   Game session protection policy to apply to this game session only. *
        #   NoProtection: The game session can be terminated during a
        #     scale-down event.
        #   * FullProtection: If the game session is in an ACTIVE status, it
        #     cannot be terminated during a scale-down event.
        #   @return [String]

      end

      # Represents the returned data in response to a request action.
      class UpdateGameSessionOutput < Aws::Structure.new(
        :game_session)

        # @!attribute [rw] game_session
        #   Object containing the updated game session metadata.
        #   @return [Types::GameSession]

      end

    end
  end
end
