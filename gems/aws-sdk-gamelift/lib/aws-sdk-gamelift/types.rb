# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GameLift
  module Types

    # @!attribute [rw] ticket_id
    #   A unique identifier for a matchmaking ticket. The ticket must be in
    #   status `REQUIRES_ACCEPTANCE`; otherwise this request will fail.
    #   @return [String]
    #
    # @!attribute [rw] player_ids
    #   A unique identifier for a player delivering the response. This
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
      SENSITIVE = [:player_ids]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AcceptMatchOutput AWS API Documentation
    #
    class AcceptMatchOutput < Aws::EmptyStructure; end

    # Properties that describe an alias resource.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] alias_id
    #   A unique identifier for the alias. Alias IDs are unique within a
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] alias_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers alias resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::alias/alias-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #   In a GameLift alias ARN, the resource ID matches the alias ID value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of an alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_strategy
    #   The routing configuration, including routing type and fleet target,
    #   for the alias.
    #   @return [Types::RoutingStrategy]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that this data object was last modified. Format is a number
    #   expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon GameLift Servers configuration options for your Anywhere
    # fleets.
    #
    # @!attribute [rw] cost
    #   The cost to run your fleet per hour. Amazon GameLift Servers uses
    #   the provided cost of your fleet to balance usage in queues. For more
    #   information about queues, see [Setting up queues][1] in the *Amazon
    #   GameLift Servers Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AnywhereConfiguration AWS API Documentation
    #
    class AnywhereConfiguration < Struct.new(
      :cost)
      SENSITIVE = []
      include Aws::Structure
    end

    # Values for use in player attribute key-value pairs. This object lets
    # you specify an attribute value using any of the valid data types:
    # string, number, string array, or data map. Each `AttributeValue`
    # object can use only one of the available properties.
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
    #   For a list of up to 100 strings. Maximum length for each string is
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Web Services account security credentials that allow
    # interactions with Amazon GameLift Servers resources. The credentials
    # are temporary and valid for a limited time span. You can request fresh
    # credentials at any time.
    #
    # Amazon Web Services security credentials consist of three parts: an
    # access key ID, a secret access key, and a session token. You must use
    # all three parts together to authenticate your access requests.
    #
    # You need Amazon Web Services credentials for the following tasks:
    #
    # * To upload a game server build directly to Amazon GameLift Servers S3
    #   storage using `CreateBuild`. To get access for this task, call
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_RequestUploadCredentials.html][1].
    #
    # * To remotely connect to an active Amazon GameLift Servers fleet
    #   instances. To get remote access, call
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_GetComputeAccess.html][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_RequestUploadCredentials.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess.html
    #
    # @!attribute [rw] access_key_id
    #   The access key ID that identifies the temporary security
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret access key that can be used to sign requests.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The token that users must pass to the service API to use the
    #   temporary credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AwsCredentials AWS API Documentation
    #
    class AwsCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties describing a custom game build.
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] build_id
    #   A unique identifier for the build.
    #   @return [String]
    #
    # @!attribute [rw] build_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers build resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::build/build-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #   In a GameLift build ARN, the resource ID matches the *BuildId*
    #   value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a build. Build names do
    #   not need to be unique. It can be set using [CreateBuild][1] or
    #   [UpdateBuild][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateBuild.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/UpdateBuild
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version information that is associated with a build or script.
    #   Version strings do not need to be unique.
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
    #   build status is `INITIALIZED` or when using a custom Amazon S3
    #   storage location, this value is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] operating_system
    #   Operating system that the game server binaries are built to run on.
    #   This value determines the type of fleet resources that you can use
    #   for this build.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See
    #   more details in the [Amazon Linux 2 FAQs][1]. For game servers that
    #   are hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] server_sdk_version
    #   The Amazon GameLift Servers Server SDK version used to develop your
    #   game server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Build AWS API Documentation
    #
    class Build < Struct.new(
      :build_id,
      :build_arn,
      :name,
      :version,
      :status,
      :size_on_disk,
      :operating_system,
      :creation_time,
      :server_sdk_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether a TLS/SSL certificate is generated for a fleet.
    # This feature must be enabled when creating the fleet. All instances in
    # a fleet share the same certificate. The certificate can be retrieved
    # by calling the [Amazon GameLift Servers Server SDK][1] operation
    # `GetInstanceCertificate`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html
    #
    # @!attribute [rw] certificate_type
    #   Indicates whether a TLS/SSL certificate is generated for a fleet.
    #
    #   Valid values include:
    #
    #   * **GENERATED** - Generate a TLS/SSL certificate for this fleet.
    #
    #   * **DISABLED** - (default) Do not generate a TLS/SSL certificate for
    #     this fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CertificateConfiguration AWS API Documentation
    #
    class CertificateConfiguration < Struct.new(
      :certificate_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters which game servers may be claimed when calling
    # `ClaimGameServer`.
    #
    # @!attribute [rw] instance_statuses
    #   List of instance statuses that game servers may be claimed on. If
    #   provided, the list must contain the `ACTIVE` status.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ClaimFilterOption AWS API Documentation
    #
    class ClaimFilterOption < Struct.new(
      :instance_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group where the game server
    #   is running. If you are not specifying a game server to claim, this
    #   value identifies where you want Amazon GameLift Servers FleetIQ to
    #   look for an available game server to claim.
    #   @return [String]
    #
    # @!attribute [rw] game_server_id
    #   A custom string that uniquely identifies the game server to claim.
    #   If this parameter is left empty, Amazon GameLift Servers FleetIQ
    #   searches for an available game server in the specified game server
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers.
    #   @return [String]
    #
    # @!attribute [rw] filter_option
    #   Object that restricts how a claimed game server is chosen.
    #   @return [Types::ClaimFilterOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ClaimGameServerInput AWS API Documentation
    #
    class ClaimGameServerInput < Struct.new(
      :game_server_group_name,
      :game_server_id,
      :game_server_data,
      :filter_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server
    #   Object that describes the newly claimed game server.
    #   @return [Types::GameServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ClaimGameServerOutput AWS API Documentation
    #
    class ClaimGameServerOutput < Struct.new(
      :game_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon GameLift Servers compute resource for hosting your game
    # servers. Computes in an Amazon GameLift Servers fleet differs
    # depending on the fleet's compute type property as follows:
    #
    # * For managed EC2 fleets, a compute is an EC2 instance.
    #
    # * For Anywhere fleets, a compute is a computing resource that you
    #   provide and is registered to the fleet.
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that the compute belongs to.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet that the compute belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] compute_name
    #   A descriptive label for the compute resource. For instances in a
    #   managed EC2 fleet, the compute name is the same value as the
    #   `InstanceId` ID.
    #   @return [String]
    #
    # @!attribute [rw] compute_arn
    #   The ARN that is assigned to a compute resource and uniquely
    #   identifies it. ARNs are unique across locations. Instances in
    #   managed EC2 fleets are not assigned a Compute ARN.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of a compute resource. Amazon GameLift Servers
    #   requires a DNS name or IP address for a compute.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of a compute resource. Amazon GameLift Servers requires
    #   a DNS name or IP address for a compute.
    #   @return [String]
    #
    # @!attribute [rw] compute_status
    #   Current status of the compute. A compute must have an `ACTIVE`
    #   status to host game sessions. Valid values include `PENDING`,
    #   `ACTIVE`, `TERMINATING`, and `IMPAIRED`.
    #
    #   <note markdown="1"> While the ComputeStatus enum type is valid for Container based
    #   servers, the result may also include other non-enumerated string
    #   values such as "Active" for fleets which are not Container-based.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The name of the custom location you added to the fleet that this
    #   compute resource resides in.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] operating_system
    #   The type of operating system on the compute resource.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See
    #   more details in the [Amazon Linux 2 FAQs][1]. For game servers that
    #   are hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The Amazon EC2 instance type that the fleet uses. For registered
    #   computes in an Amazon GameLift Servers Anywhere fleet, this property
    #   is empty.
    #   @return [String]
    #
    # @!attribute [rw] game_lift_service_sdk_endpoint
    #   The Amazon GameLift Servers SDK endpoint connection for a registered
    #   compute resource in an Anywhere fleet. The game servers on the
    #   compute use this endpoint to connect to the Amazon GameLift Servers
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] game_lift_agent_endpoint
    #   The endpoint of the Amazon GameLift Servers Agent.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The `InstanceID` of the EC2 instance that is hosting the compute.
    #   @return [String]
    #
    # @!attribute [rw] container_attributes
    #   A set of attributes for each container in the compute.
    #   @return [Array<Types::ContainerAttribute>]
    #
    # @!attribute [rw] game_server_container_group_definition_arn
    #   The game server container group definition for the compute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Compute AWS API Documentation
    #
    class Compute < Struct.new(
      :fleet_id,
      :fleet_arn,
      :compute_name,
      :compute_arn,
      :ip_address,
      :dns_name,
      :compute_status,
      :location,
      :creation_time,
      :operating_system,
      :type,
      :game_lift_service_sdk_endpoint,
      :game_lift_agent_endpoint,
      :instance_id,
      :container_attributes,
      :game_server_container_group_definition_arn)
      SENSITIVE = [:ip_address]
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of port numbers to open on each instance in a container fleet.
    # Connection ports are used by inbound traffic to connect with processes
    # that are running in containers on the fleet.
    #
    # @!attribute [rw] from_port
    #   Starting value for the port range.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   Ending value for the port. Port numbers are end-inclusive. This
    #   value must be equal to or greater than `FromPort`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ConnectionPortRange AWS API Documentation
    #
    class ConnectionPortRange < Struct.new(
      :from_port,
      :to_port)
      SENSITIVE = [:from_port, :to_port]
      include Aws::Structure
    end

    # A unique identifier for a container in a container fleet compute.
    #
    # **Returned by:** [DescribeCompute][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute.html
    #
    # @!attribute [rw] container_name
    #   The identifier for a container that's running in a compute.
    #   @return [String]
    #
    # @!attribute [rw] container_runtime_id
    #   The runtime ID for the container that's running in a compute. This
    #   value is unique within the compute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerAttribute AWS API Documentation
    #
    class ContainerAttribute < Struct.new(
      :container_name,
      :container_runtime_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container's dependency on another container in the same container
    # group. The dependency impacts how the dependent container is able to
    # start or shut down based the status of the other container.
    #
    # For example, *ContainerA* is configured with the following dependency:
    # a `START` dependency on *ContainerB*. This means that *ContainerA*
    # can't start until *ContainerB* has started. It also means that
    # *ContainerA* must shut down before *ContainerB*.
    #
    # **Part of:** [GameServerContainerDefinition][1],
    # [GameServerContainerDefinitionInput][2],
    # [SupportContainerDefinition][3], [SupportContainerDefinitionInput][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html
    #
    # @!attribute [rw] container_name
    #   A descriptive label for the container definition that this container
    #   depends on.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition that the dependency container must reach before the
    #   dependent container can start. Valid conditions include:
    #
    #   * START - The dependency container must have started.
    #
    #   * COMPLETE - The dependency container has run to completion (exits).
    #     Use this condition with nonessential containers, such as those
    #     that run a script and then exit. The dependency container can't
    #     be an essential container.
    #
    #   * SUCCESS - The dependency container has run to completion and
    #     exited with a zero status. The dependency container can't be an
    #     essential container.
    #
    #   * HEALTHY - The dependency container has passed its Docker health
    #     check. Use this condition with dependency containers that have
    #     health checks configured. This condition is confirmed at container
    #     group startup only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerDependency AWS API Documentation
    #
    class ContainerDependency < Struct.new(
      :container_name,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # An environment variable to set inside a container, in the form of a
    # key-value pair.
    #
    # **Part of:** [GameServerContainerDefinition][1],
    # [GameServerContainerDefinitionInput][2],
    # [SupportContainerDefinition][3], [SupportContainerDefinitionInput][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html
    #
    # @!attribute [rw] name
    #   The environment variable name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The environment variable value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerEnvironment AWS API Documentation
    #
    class ContainerEnvironment < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon GameLift Servers managed container fleet.
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the container fleet to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #   In a GameLift fleet ARN, the resource ID matches the `FleetId`
    #   value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] fleet_role_arn
    #   The unique identifier for an Identity and Access Management (IAM)
    #   role with permissions to run your containers on resources that are
    #   managed by Amazon GameLift Servers. See [Set up an IAM service
    #   role][1]. This fleet property can't be changed.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html
    #   @return [String]
    #
    # @!attribute [rw] game_server_container_group_definition_name
    #   The name of the fleet's game server container group definition,
    #   which describes how to deploy containers with your game server build
    #   and support software onto each fleet instance.
    #   @return [String]
    #
    # @!attribute [rw] game_server_container_group_definition_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to the fleet's
    #   game server container group. The ARN value also identifies the
    #   specific container group definition version in use.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] per_instance_container_group_definition_name
    #   The name of the fleet's per-instance container group definition.
    #   @return [String]
    #
    # @!attribute [rw] per_instance_container_group_definition_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to the fleet's
    #   per-instance container group. The ARN value also identifies the
    #   specific container group definition version in use.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] instance_connection_port_range
    #   The set of port numbers to open on each instance in a container
    #   fleet. Connection ports are used by inbound traffic to connect with
    #   processes that are running in containers on the fleet.
    #   @return [Types::ConnectionPortRange]
    #
    # @!attribute [rw] instance_inbound_permissions
    #   The IP address ranges and port settings that allow inbound traffic
    #   to access game server processes and other processes on this fleet.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] game_server_container_groups_per_instance
    #   The number of times to replicate the game server container group on
    #   each fleet instance.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_game_server_container_groups_per_instance
    #   The calculated maximum number of game server container group that
    #   can be deployed on each fleet instance. The calculation depends on
    #   the resource needs of the container group and the CPU and memory
    #   resources of the fleet's instance type.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type to use for all instances in the fleet.
    #   Instance type determines the computing resources and processing
    #   power that's available to host your game servers. This includes
    #   including CPU, memory, storage, and networking capacity. You can't
    #   update this fleet property.
    #   @return [String]
    #
    # @!attribute [rw] billing_type
    #   Indicates whether the fleet uses On-Demand or Spot instances for
    #   this fleet. Learn more about when to use [ On-Demand versus Spot
    #   Instances][1]. You can't update this fleet property.
    #
    #   By default, this property is set to `ON_DEMAND`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A meaningful description of the container fleet.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] metric_groups
    #   The name of an Amazon Web Services CloudWatch metric group to add
    #   this fleet to. Metric groups aggregate metrics for multiple fleets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   Determines whether Amazon GameLift Servers can shut down game
    #   sessions on the fleet that are actively running and hosting players.
    #   Amazon GameLift Servers might prompt an instance shutdown when
    #   scaling down fleet capacity or when retiring unhealthy instances.
    #   You can also set game session protection for individual game
    #   sessions using
    #   [UpdateGameSession](gamelift/latest/apireference/API_UpdateGameSession.html).
    #
    #   * **NoProtection** -- Game sessions can be shut down during active
    #     gameplay.
    #
    #   * **FullProtection** -- Game sessions in `ACTIVE` status can't be
    #     shut down.
    #   @return [String]
    #
    # @!attribute [rw] game_session_creation_limit_policy
    #   A policy that limits the number of game sessions that each
    #   individual player can create on instances in this fleet. The limit
    #   applies for a specified span of time.
    #   @return [Types::GameSessionCreationLimitPolicy]
    #
    # @!attribute [rw] status
    #   The current status of the container fleet.
    #
    #   * `PENDING` -- A new container fleet has been requested.
    #
    #   * `CREATING` -- A new container fleet resource is being created.
    #
    #   * `CREATED` -- A new container fleet resource has been created. No
    #     fleet instances have been deployed.
    #
    #   * `ACTIVATING` -- New container fleet instances are being deployed.
    #
    #   * `ACTIVE` -- The container fleet has been deployed and is ready to
    #     host game sessions.
    #
    #   * `UPDATING` -- Updates to the container fleet is being updated. A
    #     deployment is in progress.
    #   @return [String]
    #
    # @!attribute [rw] deployment_details
    #   Information about the most recent deployment for the container
    #   fleet.
    #   @return [Types::DeploymentDetails]
    #
    # @!attribute [rw] log_configuration
    #   The method that is used to collect container logs for the fleet.
    #   Amazon GameLift Servers saves all standard output for each container
    #   in logs, including game session logs.
    #
    #   * `CLOUDWATCH` -- Send logs to an Amazon CloudWatch log group that
    #     you define. Each container emits a log stream, which is organized
    #     in the log group.
    #
    #   * `S3` -- Store logs in an Amazon S3 bucket that you define.
    #
    #   * `NONE` -- Don't collect container logs.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] location_attributes
    #   Information about the container fleet's remote locations where
    #   fleet instances are deployed.
    #   @return [Array<Types::ContainerFleetLocationAttributes>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerFleet AWS API Documentation
    #
    class ContainerFleet < Struct.new(
      :fleet_id,
      :fleet_arn,
      :fleet_role_arn,
      :game_server_container_group_definition_name,
      :game_server_container_group_definition_arn,
      :per_instance_container_group_definition_name,
      :per_instance_container_group_definition_arn,
      :instance_connection_port_range,
      :instance_inbound_permissions,
      :game_server_container_groups_per_instance,
      :maximum_game_server_container_groups_per_instance,
      :instance_type,
      :billing_type,
      :description,
      :creation_time,
      :metric_groups,
      :new_game_session_protection_policy,
      :game_session_creation_limit_policy,
      :status,
      :deployment_details,
      :log_configuration,
      :location_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a location in a multi-location container fleet.
    #
    # @!attribute [rw] location
    #   A location identifier.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of fleet activity in the location.
    #
    #   * `PENDING` -- A new container fleet has been requested.
    #
    #   * `CREATING` -- A new container fleet resource is being created.
    #
    #   * `CREATED` -- A new container fleet resource has been created. No
    #     fleet instances have been deployed.
    #
    #   * `ACTIVATING` -- New container fleet instances are being deployed.
    #
    #   * `ACTIVE` -- The container fleet has been deployed and is ready to
    #     host game sessions.
    #
    #   * `UPDATING` -- Updates to the container fleet is being updated. A
    #     deployment is in progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerFleetLocationAttributes AWS API Documentation
    #
    class ContainerFleetLocationAttributes < Struct.new(
      :location,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that describe a container group resource. You can
    # update all properties of a container group definition properties.
    # Updates to a container group definition are saved as new versions.
    #
    # **Used with:** [CreateContainerGroupDefinition][1]
    #
    # **Returned by:** [DescribeContainerGroupDefinition][2],
    # [ListContainerGroupDefinitions][3],
    # [UpdateContainerGroupDefinition][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeContainerGroupDefinition.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitions.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #
    # @!attribute [rw] container_group_definition_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to an Amazon
    #   GameLift Servers `ContainerGroupDefinition` resource. It uniquely
    #   identifies the resource across all Amazon Web Services Regions.
    #   Format is
    #   `arn:aws:gamelift:[region]::containergroupdefinition/[container
    #   group definition name]:[version]`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] operating_system
    #   The platform that all containers in the container group definition
    #   run on.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See
    #   more details in the [Amazon Linux 2 FAQs][1]. For game servers that
    #   are hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive identifier for the container group definition. The
    #   name value is unique in an Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] container_group_type
    #   The type of container group. Container group type determines how
    #   Amazon GameLift Servers deploys the container group on each fleet
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] total_memory_limit_mebibytes
    #   The amount of memory (in MiB) on a fleet instance to allocate for
    #   the container group. All containers in the group share these
    #   resources.
    #
    #   You can set a limit for each container definition in the group. If
    #   individual containers have limits, this total value must be greater
    #   than any individual container's memory limit.
    #   @return [Integer]
    #
    # @!attribute [rw] total_vcpu_limit
    #   The amount of vCPU units on a fleet instance to allocate for the
    #   container group (1 vCPU is equal to 1024 CPU units). All containers
    #   in the group share these resources. You can set a limit for each
    #   container definition in the group. If individual containers have
    #   limits, this total value must be equal to or greater than the sum of
    #   the limits for each container in the group.
    #   @return [Float]
    #
    # @!attribute [rw] game_server_container_definition
    #   The definition for the game server container in this group. This
    #   property is used only when the container group type is
    #   `GAME_SERVER`. This container definition specifies a container image
    #   with the game server build.
    #   @return [Types::GameServerContainerDefinition]
    #
    # @!attribute [rw] support_container_definitions
    #   The set of definitions for support containers in this group. A
    #   container group definition might have zero support container
    #   definitions. Support container can be used in any type of container
    #   group.
    #   @return [Array<Types::SupportContainerDefinition>]
    #
    # @!attribute [rw] version_number
    #   Indicates the version of a particular container group definition.
    #   This number is incremented automatically when you update a container
    #   group definition. You can view, update, or delete individual
    #   versions or the entire container group definition.
    #   @return [Integer]
    #
    # @!attribute [rw] version_description
    #   An optional description that was provided for a container group
    #   definition update. Each version can have a unique description.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the container group definition resource. Values
    #   include:
    #
    #   * `COPYING` -- Amazon GameLift Servers is in the process of making
    #     copies of all container images that are defined in the group.
    #     While in this state, the resource can't be used to create a
    #     container fleet.
    #
    #   * `READY` -- Amazon GameLift Servers has copied the registry images
    #     for all containers that are defined in the group. You can use a
    #     container group definition in this status to create a container
    #     fleet.
    #
    #   * `FAILED` -- Amazon GameLift Servers failed to create a valid
    #     container group definition resource. For more details on the cause
    #     of the failure, see `StatusReason`. A container group definition
    #     resource in failed status will be deleted within a few minutes.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information about a container group definition that's in
    #   `FAILED` status. Possible reasons include:
    #
    #   * An internal issue prevented Amazon GameLift Servers from creating
    #     the container group definition resource. Delete the failed
    #     resource and call [CreateContainerGroupDefinition][1]again.
    #
    #   * An access-denied message means that you don't have permissions to
    #     access the container image on ECR. See [ IAM permission
    #     examples][2] for help setting up required IAM permissions for
    #     Amazon GameLift Servers.
    #
    #   * The `ImageUri` value for at least one of the containers in the
    #     container group definition was invalid or not found in the current
    #     Amazon Web Services account.
    #
    #   * At least one of the container images referenced in the container
    #     group definition exceeds the allowed size. For size limits, see [
    #     Amazon GameLift Servers endpoints and quotas][3].
    #
    #   * At least one of the container images referenced in the container
    #     group definition uses a different operating system than the one
    #     defined for the container group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-iam-policy-examples.html.html
    #   [3]: https://docs.aws.amazon.com/general/latest/gr/gamelift.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerGroupDefinition AWS API Documentation
    #
    class ContainerGroupDefinition < Struct.new(
      :container_group_definition_arn,
      :creation_time,
      :operating_system,
      :name,
      :container_group_type,
      :total_memory_limit_mebibytes,
      :total_vcpu_limit,
      :game_server_container_definition,
      :support_container_definitions,
      :version_number,
      :version_description,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instructions on when and how to check the health of a support
    # container in a container fleet. These properties override any Docker
    # health checks that are set in the container image. For more
    # information on container health checks, see [HealthCheck command][1]
    # in the *Amazon Elastic Container Service API*. Game server containers
    # don't have a health check parameter; Amazon GameLift Servers
    # automatically handles health checks for these containers.
    #
    # The following example instructs the container to initiate a health
    # check command every 60 seconds and wait 10 seconds for it to succeed.
    # If it fails, retry the command 3 times before flagging the container
    # as unhealthy. It also tells the container to wait 100 seconds after
    # launch before counting failed health checks.
    #
    # `{"Command": [ "CMD-SHELL", "ps cax | grep "processmanager" || exit 1"
    # ], "Interval": 60, "Timeout": 10, "Retries": 3, "StartPeriod": 100 }`
    #
    # **Part of:** [SupportContainerDefinition][2],
    # [SupportContainerDefinitionInput][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_HealthCheck.html#ECS-Type-HealthCheck-command
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html
    #
    # @!attribute [rw] command
    #   A string array that specifies the command that the container runs to
    #   determine if it's healthy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] interval
    #   The time period (in seconds) between each health check.
    #   @return [Integer]
    #
    # @!attribute [rw] retries
    #   The number of times to retry a failed health check before flagging
    #   the container unhealthy. The first run of the command does not count
    #   as a retry.
    #   @return [Integer]
    #
    # @!attribute [rw] start_period
    #   The optional grace period (in seconds) to give a container time to
    #   bootstrap before the first failed health check counts toward the
    #   number of retries.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The time period (in seconds) to wait for a health check to succeed
    #   before counting a failed health check.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerHealthCheck AWS API Documentation
    #
    class ContainerHealthCheck < Struct.new(
      :command,
      :interval,
      :retries,
      :start_period,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # A unique identifier for a container in a compute on a managed
    # container fleet instance. This information makes it possible to
    # remotely connect to a specific container on a fleet instance.
    #
    # **Related to:** [ContainerAttribute][1]
    #
    # <b>Use with: </b> [GetComputeAccess][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerAttribute.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess.html
    #
    # @!attribute [rw] container_name
    #   The identifier for a container that's running in a compute.
    #   @return [String]
    #
    # @!attribute [rw] container_runtime_id
    #   The runtime ID for the container that's running in a compute. This
    #   value is unique within the compute. It is returned as a
    #   `ContainerAttribute` value in a `Compute` object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerIdentifier AWS API Documentation
    #
    class ContainerIdentifier < Struct.new(
      :container_name,
      :container_runtime_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A mount point that binds a container to a file or directory on the
    # host system.
    #
    # **Part of:** [GameServerContainerDefinition][1],
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_GameServerContainerDefinitionInput.html][2],
    # [SupportContainerDefinition][3],
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_SupportContainerDefinitionInput.html][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html
    #
    # @!attribute [rw] instance_path
    #   The path to the source file or directory.
    #   @return [String]
    #
    # @!attribute [rw] container_path
    #   The mount path on the container. If this property isn't set, the
    #   instance path is used.
    #   @return [String]
    #
    # @!attribute [rw] access_level
    #   The type of access for the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerMountPoint AWS API Documentation
    #
    class ContainerMountPoint < Struct.new(
      :instance_path,
      :container_path,
      :access_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of port ranges that can be opened on the container. A process
    # that's running in the container can bind to a port number, making it
    # accessible to inbound traffic when it's mapped to a container
    # fleet's connection port.
    #
    # Each container port range specifies a network protocol. When the
    # configuration supports more than one protocol, we recommend that you
    # use a different range for each protocol. If your ranges have
    # overlapping port numbers, Amazon GameLift Servers maps a duplicated
    # container port number to different connection ports. For example, if
    # you include 1935 in port ranges for both TCP and UDP, it might result
    # in the following mappings:
    #
    # * container port 1935 (tcp) =&gt; connection port 2001
    #
    # * container port 1935 (udp) =&gt; connection port 2002
    #
    # **Part of:** [GameServerContainerDefinition][1],
    # [GameServerContainerDefinitionInput][2],
    # [SupportContainerDefinition][3], [SupportContainerDefinitionInput][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html
    #
    # @!attribute [rw] container_port_ranges
    #   A set of one or more container port number ranges. The ranges can't
    #   overlap if the ranges' network protocols are the same. Overlapping
    #   ranges with different protocols is allowed but not recommended.
    #   @return [Array<Types::ContainerPortRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerPortConfiguration AWS API Documentation
    #
    class ContainerPortConfiguration < Struct.new(
      :container_port_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of one or more port numbers that can be opened on the container,
    # and the supported network protocol.
    #
    # **Part of:** [ContainerPortConfiguration][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerPortConfiguration.html
    #
    # @!attribute [rw] from_port
    #   A starting value for the range of allowed port numbers.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   An ending value for the range of allowed port numbers. Port numbers
    #   are end-inclusive. This value must be equal to or greater than
    #   `FromPort`.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The network protocol that these ports support.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ContainerPortRange AWS API Documentation
    #
    class ContainerPortRange < Struct.new(
      :from_port,
      :to_port,
      :protocol)
      SENSITIVE = [:from_port, :to_port]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_strategy
    #   The routing configuration, including routing type and fleet target,
    #   for the alias.
    #   @return [Types::RoutingStrategy]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new alias resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateAliasInput AWS API Documentation
    #
    class CreateAliasInput < Struct.new(
      :name,
      :description,
      :routing_strategy,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias
    #   The newly created alias resource.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateAliasOutput AWS API Documentation
    #
    class CreateAliasOutput < Struct.new(
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with a build. Build names do
    #   not need to be unique. You can change this value later.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version information that is associated with a build or script.
    #   Version strings do not need to be unique. You can change this value
    #   later.
    #   @return [String]
    #
    # @!attribute [rw] storage_location
    #   Information indicating where your game build files are stored. Use
    #   this parameter only when creating a build with files stored in an
    #   Amazon S3 bucket that you own. The storage location must specify an
    #   Amazon S3 bucket name and key. The location must also specify a role
    #   ARN that you set up to allow Amazon GameLift Servers to access your
    #   Amazon S3 bucket. The S3 bucket and your new build must be in the
    #   same Region.
    #
    #   If a `StorageLocation` is specified, the size of your file can be
    #   found in your Amazon S3 bucket. Amazon GameLift Servers will report
    #   a `SizeOnDisk` of 0.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] operating_system
    #   The operating system that your game server binaries run on. This
    #   value determines the type of fleet resources that you use for this
    #   build. If your game build contains multiple executables, they all
    #   must run on the same operating system. You must specify a valid
    #   operating system in this request. There is no default value. You
    #   can't change a build's operating system later.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See
    #   more details in the [Amazon Linux 2 FAQs][1]. For game servers that
    #   are hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new build resource. Tags are
    #   developer defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General
    #   Reference*. Once the resource is created, you can use
    #   [TagResource][2], [UntagResource][3], and [ListTagsForResource][4]
    #   to add, remove, and view tags. The maximum tag limit may be lower
    #   than stated. See the Amazon Web Services General Reference for
    #   actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html
    #   [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] server_sdk_version
    #   A server SDK version you used when integrating your game server
    #   build with Amazon GameLift Servers. For more information see
    #   [Integrate games with custom game servers][1]. By default Amazon
    #   GameLift Servers sets this value to `4.0.2`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-custom-intro.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateBuildInput AWS API Documentation
    #
    class CreateBuildInput < Struct.new(
      :name,
      :version,
      :storage_location,
      :operating_system,
      :tags,
      :server_sdk_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build
    #   The newly created build resource, including a unique build IDs and
    #   status.
    #   @return [Types::Build]
    #
    # @!attribute [rw] upload_credentials
    #   This element is returned only when the operation is called without a
    #   storage location. It contains credentials to use when you are
    #   uploading a build file to an Amazon S3 bucket that is owned by
    #   Amazon GameLift Servers. Credentials have a limited life span. To
    #   refresh these credentials, call [RequestUploadCredentials][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_RequestUploadCredentials.html
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
      SENSITIVE = [:upload_credentials]
      include Aws::Structure
    end

    # @!attribute [rw] fleet_role_arn
    #   The unique identifier for an Identity and Access Management (IAM)
    #   role with permissions to run your containers on resources that are
    #   managed by Amazon GameLift Servers. Use an IAM service role with the
    #   `GameLiftContainerFleetPolicy` managed policy attached. For more
    #   information, see [Set up an IAM service role][1]. You can't change
    #   this fleet property after the fleet is created.
    #
    #   IAM role ARN values use the following pattern: `arn:aws:iam::[Amazon
    #   Web Services account]:role/[role name]`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A meaningful description of the container fleet.
    #   @return [String]
    #
    # @!attribute [rw] game_server_container_group_definition_name
    #   A container group definition resource that describes how to deploy
    #   containers with your game server build and support software onto
    #   each fleet instance. You can specify the container group
    #   definition's name to use the latest version. Alternatively, provide
    #   an ARN value with a specific version number.
    #
    #   Create a container group definition by calling
    #   [CreateContainerGroupDefinition][1]. This operation creates a
    #   [ContainerGroupDefinition][2] resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #   @return [String]
    #
    # @!attribute [rw] per_instance_container_group_definition_name
    #   The name of a container group definition resource that describes a
    #   set of axillary software. A fleet instance has one process for
    #   executables in this container group. A per-instance container group
    #   is optional. You can update the fleet to add or remove a
    #   per-instance container group at any time. You can specify the
    #   container group definition's name to use the latest version.
    #   Alternatively, provide an ARN value with a specific version number.
    #
    #   Create a container group definition by calling
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_CreateContainerGroupDefinition.html][1].
    #   This operation creates a
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_ContainerGroupDefinition.html][2]
    #   resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #   @return [String]
    #
    # @!attribute [rw] instance_connection_port_range
    #   The set of port numbers to open on each fleet instance. A fleet's
    #   connection ports map to container ports that are configured in the
    #   fleet's container group definitions.
    #
    #   By default, Amazon GameLift Servers calculates an optimal port range
    #   based on your fleet configuration. To use the calculated range,
    #   don't set this parameter. The values are:
    #
    #   * Port range: 4192 to a number calculated based on your fleet
    #     configuration. Amazon GameLift Servers uses the following formula:
    #     `4192 + [# of game server container groups per fleet instance] *
    #     [# of container ports in the game server container group
    #     definition] + [# of container ports in the game server container
    #     group definition]`
    #
    #   ^
    #
    #   You can also choose to manually set this parameter. When manually
    #   setting this parameter, you must use port numbers that match the
    #   fleet's inbound permissions port range.
    #
    #   <note markdown="1"> If you set values manually, Amazon GameLift Servers no longer
    #   calculates a port range for you, even if you later remove the manual
    #   settings.
    #
    #    </note>
    #   @return [Types::ConnectionPortRange]
    #
    # @!attribute [rw] instance_inbound_permissions
    #   The IP address ranges and port settings that allow inbound traffic
    #   to access game server processes and other processes on this fleet.
    #   As a best practice, when remotely accessing a fleet instance, we
    #   recommend opening ports only when you need them and closing them
    #   when you're finished.
    #
    #   By default, Amazon GameLift Servers calculates an optimal port range
    #   based on your fleet configuration. To use the calculated range,
    #   don't set this parameter. The values are:
    #
    #   * Protocol: UDP
    #
    #   * Port range: 4192 to a number calculated based on your fleet
    #     configuration. Amazon GameLift Servers uses the following formula:
    #     `4192 + [# of game server container groups per fleet instance] *
    #     [# of container ports in the game server container group
    #     definition] + [# of container ports in the game server container
    #     group definition]`
    #
    #   You can also choose to manually set this parameter. When manually
    #   setting this parameter, you must use port numbers that match the
    #   fleet's connection port range.
    #
    #   <note markdown="1"> If you set values manually, Amazon GameLift Servers no longer
    #   calculates a port range for you, even if you later remove the manual
    #   settings.
    #
    #    </note>
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] game_server_container_groups_per_instance
    #   The number of times to replicate the game server container group on
    #   each fleet instance.
    #
    #   By default, Amazon GameLift Servers calculates the maximum number of
    #   game server container groups that can fit on each instance. This
    #   calculation is based on the CPU and memory resources of the fleet's
    #   instance type). To use the calculated maximum, don't set this
    #   parameter. If you set this number manually, Amazon GameLift Servers
    #   uses your value as long as it's less than the calculated maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type to use for all instances in the fleet.
    #   For multi-location fleets, the instance type must be available in
    #   the home region and all remote locations. Instance type determines
    #   the computing resources and processing power that's available to
    #   host your game servers. This includes including CPU, memory,
    #   storage, and networking capacity.
    #
    #   By default, Amazon GameLift Servers selects an instance type that
    #   fits the needs of your container groups and is available in all
    #   selected fleet locations. You can also choose to manually set this
    #   parameter. See [Amazon Elastic Compute Cloud Instance Types][1] for
    #   detailed descriptions of Amazon EC2 instance types.
    #
    #   You can't update this fleet property later.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] billing_type
    #   Indicates whether to use On-Demand or Spot instances for this fleet.
    #   Learn more about when to use [ On-Demand versus Spot Instances][1].
    #   This fleet property can't be changed after the fleet is created.
    #
    #   By default, this property is set to `ON_DEMAND`.
    #
    #   You can't update this fleet property later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot
    #   @return [String]
    #
    # @!attribute [rw] locations
    #   A set of locations to deploy container fleet instances to. You can
    #   add any Amazon Web Services Region or Local Zone that's supported
    #   by Amazon GameLift Servers. Provide a list of one or more Amazon Web
    #   Services Region codes, such as `us-west-2`, or Local Zone names.
    #   Also include the fleet's home Region, which is the Amazon Web
    #   Services Region where the fleet is created. For a list of supported
    #   Regions and Local Zones, see [ Amazon GameLift Servers service
    #   locations][1] for managed hosting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #   @return [Array<Types::LocationConfiguration>]
    #
    # @!attribute [rw] metric_groups
    #   The name of an Amazon Web Services CloudWatch metric group to add
    #   this fleet to. You can use a metric group to aggregate metrics for
    #   multiple fleets. You can specify an existing metric group name or
    #   use a new name to create a new metric group. Each fleet can have
    #   only one metric group, but you can change this value at any time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   Determines whether Amazon GameLift Servers can shut down game
    #   sessions on the fleet that are actively running and hosting players.
    #   Amazon GameLift Servers might prompt an instance shutdown when
    #   scaling down fleet capacity or when retiring unhealthy instances.
    #   You can also set game session protection for individual game
    #   sessions using
    #   [UpdateGameSession](gamelift/latest/apireference/API_UpdateGameSession.html).
    #
    #   * **NoProtection** -- Game sessions can be shut down during active
    #     gameplay.
    #
    #   * **FullProtection** -- Game sessions in `ACTIVE` status can't be
    #     shut down.
    #
    #   By default, this property is set to `NoProtection`.
    #   @return [String]
    #
    # @!attribute [rw] game_session_creation_limit_policy
    #   A policy that limits the number of game sessions that each
    #   individual player can create on instances in this fleet. The limit
    #   applies for a specified span of time.
    #   @return [Types::GameSessionCreationLimitPolicy]
    #
    # @!attribute [rw] log_configuration
    #   A method for collecting container logs for the fleet. Amazon
    #   GameLift Servers saves all standard output for each container in
    #   logs, including game session logs. You can select from the following
    #   methods:
    #
    #   * `CLOUDWATCH` -- Send logs to an Amazon CloudWatch log group that
    #     you define. Each container emits a log stream, which is organized
    #     in the log group.
    #
    #   * `S3` -- Store logs in an Amazon S3 bucket that you define.
    #
    #   * `NONE` -- Don't collect container logs.
    #
    #   By default, this property is set to `CLOUDWATCH`.
    #
    #   Amazon GameLift Servers requires permissions to send logs other
    #   Amazon Web Services services in your account. These permissions are
    #   included in the IAM fleet role for this container fleet (see
    #   `FleetRoleArn)`.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new fleet resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateContainerFleetInput AWS API Documentation
    #
    class CreateContainerFleetInput < Struct.new(
      :fleet_role_arn,
      :description,
      :game_server_container_group_definition_name,
      :per_instance_container_group_definition_name,
      :instance_connection_port_range,
      :instance_inbound_permissions,
      :game_server_container_groups_per_instance,
      :instance_type,
      :billing_type,
      :locations,
      :metric_groups,
      :new_game_session_protection_policy,
      :game_session_creation_limit_policy,
      :log_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_fleet
    #   The properties for the new container fleet, including current
    #   status. All fleets are initially placed in `PENDING` status.
    #   @return [Types::ContainerFleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateContainerFleetOutput AWS API Documentation
    #
    class CreateContainerFleetOutput < Struct.new(
      :container_fleet)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive identifier for the container group definition. The
    #   name value must be unique in an Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] container_group_type
    #   The type of container group being defined. Container group type
    #   determines how Amazon GameLift Servers deploys the container group
    #   on each fleet instance.
    #
    #   Default value: `GAME_SERVER`
    #   @return [String]
    #
    # @!attribute [rw] total_memory_limit_mebibytes
    #   The maximum amount of memory (in MiB) to allocate to the container
    #   group. All containers in the group share this memory. If you specify
    #   memory limits for an individual container, the total value must be
    #   greater than any individual container's memory limit.
    #
    #   Default value: 1024
    #   @return [Integer]
    #
    # @!attribute [rw] total_vcpu_limit
    #   The maximum amount of vCPU units to allocate to the container group
    #   (1 vCPU is equal to 1024 CPU units). All containers in the group
    #   share this memory. If you specify vCPU limits for individual
    #   containers, the total value must be equal to or greater than the sum
    #   of the CPU limits for all containers in the group.
    #
    #   Default value: 1
    #   @return [Float]
    #
    # @!attribute [rw] game_server_container_definition
    #   The definition for the game server container in this group. Define a
    #   game server container only when the container group type is
    #   `GAME_SERVER`. Game server containers specify a container image with
    #   your game server build. You can pass in your container definitions
    #   as a JSON file.
    #   @return [Types::GameServerContainerDefinitionInput]
    #
    # @!attribute [rw] support_container_definitions
    #   One or more definition for support containers in this group. You can
    #   define a support container in any type of container group. You can
    #   pass in your container definitions as a JSON file.
    #   @return [Array<Types::SupportContainerDefinitionInput>]
    #
    # @!attribute [rw] operating_system
    #   The platform that all containers in the group use. Containers in a
    #   group must run on the same operating system.
    #
    #   Default value: `AMAZON_LINUX_2023`
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See
    #   more details in the [Amazon Linux 2 FAQs][1]. For game servers that
    #   are hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #   @return [String]
    #
    # @!attribute [rw] version_description
    #   A description for the initial version of this container group
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the container group definition
    #   resource. Tags are developer-defined key-value pairs. Tagging Amazon
    #   Web Services resources are useful for resource management, access
    #   management and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateContainerGroupDefinitionInput AWS API Documentation
    #
    class CreateContainerGroupDefinitionInput < Struct.new(
      :name,
      :container_group_type,
      :total_memory_limit_mebibytes,
      :total_vcpu_limit,
      :game_server_container_definition,
      :support_container_definitions,
      :operating_system,
      :version_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_group_definition
    #   The properties of the new container group definition resource. You
    #   can use this resource to create a container fleet.
    #   @return [Types::ContainerGroupDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateContainerGroupDefinitionOutput AWS API Documentation
    #
    class CreateContainerGroupDefinitionOutput < Struct.new(
      :container_group_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] build_id
    #   The unique identifier for a custom game server build to be deployed
    #   to a fleet with compute type `EC2`. You can use either the build ID
    #   or ARN. The build must be uploaded to Amazon GameLift Servers and in
    #   `READY` status. This fleet property can't be changed after the
    #   fleet is created.
    #   @return [String]
    #
    # @!attribute [rw] script_id
    #   The unique identifier for a Realtime configuration script to be
    #   deployed to a fleet with compute type `EC2`. You can use either the
    #   script ID or ARN. Scripts must be uploaded to Amazon GameLift
    #   Servers prior to creating the fleet. This fleet property can't be
    #   changed after the fleet is created.
    #   @return [String]
    #
    # @!attribute [rw] server_launch_path
    #   **This parameter is no longer used.** Specify a server launch path
    #   using the `RuntimeConfiguration` parameter. Requests that use this
    #   parameter instead continue to be valid.
    #   @return [String]
    #
    # @!attribute [rw] server_launch_parameters
    #   **This parameter is no longer used.** Specify server launch
    #   parameters using the `RuntimeConfiguration` parameter. Requests that
    #   use this parameter instead continue to be valid.
    #   @return [String]
    #
    # @!attribute [rw] log_paths
    #   **This parameter is no longer used.** To specify where Amazon
    #   GameLift Servers should store log files once a server process shuts
    #   down, use the Amazon GameLift Servers server API `ProcessReady()`
    #   and specify one or more directory paths in `logParameters`. For more
    #   information, see [Initialize the server process][1] in the *Amazon
    #   GameLift Servers Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-initialize
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_instance_type
    #   The Amazon GameLift Servers-supported Amazon EC2 instance type to
    #   use with managed EC2 fleets. Instance type determines the computing
    #   resources that will be used to host your game servers, including
    #   CPU, memory, storage, and networking capacity. See [Amazon Elastic
    #   Compute Cloud Instance Types][1] for detailed descriptions of Amazon
    #   EC2 instance types.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] ec2_inbound_permissions
    #   The IP address ranges and port settings that allow inbound traffic
    #   to access game server processes and other processes on this fleet.
    #   Set this parameter for managed EC2 fleets. You can leave this
    #   parameter empty when creating the fleet, but you must call
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_UpdateFleetPortSettings][1]
    #   to set it before players can connect to game sessions. As a best
    #   practice, we recommend opening ports for remote access only when you
    #   need them and closing them when you're finished. For Amazon
    #   GameLift Servers Realtime fleets, Amazon GameLift Servers
    #   automatically sets TCP and UDP ranges.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetPortSettings
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   The status of termination protection for active game sessions on the
    #   fleet. By default, this property is set to `NoProtection`. You can
    #   also set game session protection for an individual game session by
    #   calling
    #   [UpdateGameSession](gamelift/latest/apireference/API_UpdateGameSession.html).
    #
    #   * **NoProtection** - Game sessions can be terminated during active
    #     gameplay as a result of a scale-down event.
    #
    #   * **FullProtection** - Game sessions in `ACTIVE` status cannot be
    #     terminated during a scale-down event.
    #   @return [String]
    #
    # @!attribute [rw] runtime_configuration
    #   Instructions for how to launch and run server processes on the
    #   fleet. Set runtime configuration for managed EC2 fleets. For an
    #   Anywhere fleets, set this parameter only if the fleet is running the
    #   Amazon GameLift Servers Agent. The runtime configuration defines one
    #   or more server process configurations. Each server process
    #   identifies a game executable or Realtime script file and the number
    #   of processes to run concurrently.
    #
    #   <note markdown="1"> This parameter replaces the parameters `ServerLaunchPath` and
    #   `ServerLaunchParameters`, which are still supported for backward
    #   compatibility.
    #
    #    </note>
    #   @return [Types::RuntimeConfiguration]
    #
    # @!attribute [rw] resource_creation_limit_policy
    #   A policy that limits the number of game sessions that an individual
    #   player can create on instances in this fleet within a specified span
    #   of time.
    #   @return [Types::ResourceCreationLimitPolicy]
    #
    # @!attribute [rw] metric_groups
    #   The name of an Amazon Web Services CloudWatch metric group to add
    #   this fleet to. A metric group is used to aggregate the metrics for
    #   multiple fleets. You can specify an existing metric group name or
    #   set a new name to create a new metric group. A fleet can be included
    #   in only one metric group at a time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] peer_vpc_aws_account_id
    #   Used when peering your Amazon GameLift Servers fleet with a VPC, the
    #   unique identifier for the Amazon Web Services account that owns the
    #   VPC. You can find your account ID in the Amazon Web Services
    #   Management Console under account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #   @return [String]
    #
    # @!attribute [rw] fleet_type
    #   Indicates whether to use On-Demand or Spot instances for this fleet.
    #   By default, this property is set to `ON_DEMAND`. Learn more about
    #   when to use [ On-Demand versus Spot Instances][1]. This fleet
    #   property can't be changed after the fleet is created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot
    #   @return [String]
    #
    # @!attribute [rw] instance_role_arn
    #   A unique identifier for an IAM role that manages access to your
    #   Amazon Web Services services. With an instance role ARN set, any
    #   application that runs on an instance in this fleet can assume the
    #   role, including install scripts, server processes, and daemons
    #   (background processes). Create a role or look up a role's ARN by
    #   using the [IAM dashboard][1] in the Amazon Web Services Management
    #   Console. Learn more about using on-box credentials for your game
    #   servers at [ Access external resources from a game server][2]. This
    #   fleet property can't be changed after the fleet is created.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html
    #   @return [String]
    #
    # @!attribute [rw] certificate_configuration
    #   Prompts Amazon GameLift Servers to generate a TLS/SSL certificate
    #   for the fleet. Amazon GameLift Servers uses the certificates to
    #   encrypt traffic between game clients and the game servers running on
    #   Amazon GameLift Servers. By default, the `CertificateConfiguration`
    #   is `DISABLED`. You can't change this property after you create the
    #   fleet.
    #
    #   Certificate Manager (ACM) certificates expire after 13 months.
    #   Certificate expiration can cause fleets to fail, preventing players
    #   from connecting to instances in the fleet. We recommend you replace
    #   fleets before 13 months, consider using fleet aliases for a smooth
    #   transition.
    #
    #   <note markdown="1"> ACM isn't available in all Amazon Web Services regions. A fleet
    #   creation request with certificate generation enabled in an
    #   unsupported Region, fails with a 4xx error. For more information
    #   about the supported Regions, see [Supported Regions][1] in the
    #   *Certificate Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-regions.html
    #   @return [Types::CertificateConfiguration]
    #
    # @!attribute [rw] locations
    #   A set of remote locations to deploy additional instances to and
    #   manage as a multi-location fleet. Use this parameter when creating a
    #   fleet in Amazon Web Services Regions that support multiple
    #   locations. You can add any Amazon Web Services Region or Local Zone
    #   that's supported by Amazon GameLift Servers. Provide a list of one
    #   or more Amazon Web Services Region codes, such as `us-west-2`, or
    #   Local Zone names. When using this parameter, Amazon GameLift Servers
    #   requires you to include your home location in the request. For a
    #   list of supported Regions and Local Zones, see [ Amazon GameLift
    #   Servers service locations][1] for managed hosting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #   @return [Array<Types::LocationConfiguration>]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new fleet resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] compute_type
    #   The type of compute resource used to host your game servers.
    #
    #   * `EC2` – The game server build is deployed to Amazon EC2 instances
    #     for cloud hosting. This is the default setting.
    #
    #   * `ANYWHERE` – Game servers and supporting software are deployed to
    #     compute resources that you provide and manage. With this compute
    #     type, you can also set the `AnywhereConfiguration` parameter.
    #   @return [String]
    #
    # @!attribute [rw] anywhere_configuration
    #   Amazon GameLift Servers Anywhere configuration options.
    #   @return [Types::AnywhereConfiguration]
    #
    # @!attribute [rw] instance_role_credentials_provider
    #   Prompts Amazon GameLift Servers to generate a shared credentials
    #   file for the IAM role that's defined in `InstanceRoleArn`. The
    #   shared credentials file is stored on each fleet instance and
    #   refreshed as needed. Use shared credentials for applications that
    #   are deployed along with the game server executable, if the game
    #   server is integrated with server SDK version 5.x. For more
    #   information about using shared credentials, see [ Communicate with
    #   other Amazon Web Services resources from your fleets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleetInput AWS API Documentation
    #
    class CreateFleetInput < Struct.new(
      :name,
      :description,
      :build_id,
      :script_id,
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
      :fleet_type,
      :instance_role_arn,
      :certificate_configuration,
      :locations,
      :tags,
      :compute_type,
      :anywhere_configuration,
      :instance_role_credentials_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to add locations to. You can use
    #   either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] locations
    #   A list of locations to deploy additional instances to and manage as
    #   part of the fleet. You can add any Amazon GameLift Servers-supported
    #   Amazon Web Services Region as a remote location, in the form of an
    #   Amazon Web Services Region code such as `us-west-2`.
    #   @return [Array<Types::LocationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleetLocationsInput AWS API Documentation
    #
    class CreateFleetLocationsInput < Struct.new(
      :fleet_id,
      :locations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that was updated with new
    #   locations.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] location_states
    #   The remote locations that are being added to the fleet, and the
    #   life-cycle status of each location. For new locations, the status is
    #   set to `NEW`. During location creation, Amazon GameLift Servers
    #   updates each location's status as instances are deployed there and
    #   prepared for game hosting. This list does not include the fleet home
    #   Region or any remote locations that were already added to the fleet.
    #   @return [Array<Types::LocationState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleetLocationsOutput AWS API Documentation
    #
    class CreateFleetLocationsOutput < Struct.new(
      :fleet_id,
      :fleet_arn,
      :location_states)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_attributes
    #   The properties for the new fleet, including the current status. All
    #   fleets are placed in `NEW` status on creation.
    #   @return [Types::FleetAttributes]
    #
    # @!attribute [rw] location_states
    #   The fleet's locations and life-cycle status of each location. For
    #   new fleets, the status of all locations is set to `NEW`. During
    #   fleet creation, Amazon GameLift Servers updates each location status
    #   as instances are deployed there and prepared for game hosting. This
    #   list includes an entry for the fleet's home Region. For fleets with
    #   no remote locations, only one entry, representing the home Region,
    #   is returned.
    #   @return [Array<Types::LocationState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleetOutput AWS API Documentation
    #
    class CreateFleetOutput < Struct.new(
      :fleet_attributes,
      :location_states)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   An identifier for the new game server group. This value is used to
    #   generate unique ARN identifiers for the Amazon EC2 Auto Scaling
    #   group and the Amazon GameLift Servers FleetIQ game server group. The
    #   name must be unique per Region per Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name ([ARN][1]) for an IAM role that allows
    #   Amazon GameLift Servers to access your Amazon EC2 Auto Scaling
    #   groups.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] min_size
    #   The minimum number of instances allowed in the Amazon EC2 Auto
    #   Scaling group. During automatic scaling events, Amazon GameLift
    #   Servers FleetIQ and Amazon EC2 do not scale down the group below
    #   this minimum. In production, this value should be set to at least 1.
    #   After the Auto Scaling group is created, update this value directly
    #   in the Auto Scaling group using the Amazon Web Services console or
    #   APIs.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of instances allowed in the Amazon EC2 Auto
    #   Scaling group. During automatic scaling events, Amazon GameLift
    #   Servers FleetIQ and EC2 do not scale up the group above this
    #   maximum. After the Auto Scaling group is created, update this value
    #   directly in the Auto Scaling group using the Amazon Web Services
    #   console or APIs.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_template
    #   The Amazon EC2 launch template that contains configuration settings
    #   and game server code to be deployed to all instances in the game
    #   server group. You can specify the template using either the template
    #   name or ID. For help with creating a launch template, see [Creating
    #   a Launch Template for an Auto Scaling Group][1] in the *Amazon
    #   Elastic Compute Cloud Auto Scaling User Guide*. After the Auto
    #   Scaling group is created, update this value directly in the Auto
    #   Scaling group using the Amazon Web Services console or APIs.
    #
    #   <note markdown="1"> If you specify network interfaces in your launch template, you must
    #   explicitly set the property `AssociatePublicIpAddress` to "true".
    #   If no network interface is specified in the launch template, Amazon
    #   GameLift Servers FleetIQ uses your account's default VPC.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html
    #   @return [Types::LaunchTemplateSpecification]
    #
    # @!attribute [rw] instance_definitions
    #   The Amazon EC2 instance types and sizes to use in the Auto Scaling
    #   group. The instance definitions must specify at least two different
    #   instance types that are supported by Amazon GameLift Servers
    #   FleetIQ. For more information on instance types, see [EC2 Instance
    #   Types][1] in the *Amazon Elastic Compute Cloud User Guide*. You can
    #   optionally specify capacity weighting for each instance type. If no
    #   weight value is specified for an instance type, it is set to the
    #   default value "1". For more information about capacity weighting,
    #   see [ Instance Weighting for Amazon EC2 Auto Scaling][2] in the
    #   Amazon EC2 Auto Scaling User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html
    #   @return [Array<Types::InstanceDefinition>]
    #
    # @!attribute [rw] auto_scaling_policy
    #   Configuration settings to define a scaling policy for the Auto
    #   Scaling group that is optimized for game hosting. The scaling policy
    #   uses the metric `"PercentUtilizedGameServers"` to maintain a buffer
    #   of idle game servers that can immediately accommodate new games and
    #   players. After the Auto Scaling group is created, update this value
    #   directly in the Auto Scaling group using the Amazon Web Services
    #   console or APIs.
    #   @return [Types::GameServerGroupAutoScalingPolicy]
    #
    # @!attribute [rw] balancing_strategy
    #   Indicates how Amazon GameLift Servers FleetIQ balances the use of
    #   Spot Instances and On-Demand Instances in the game server group.
    #   Method options include the following:
    #
    #   * `SPOT_ONLY` - Only Spot Instances are used in the game server
    #     group. If Spot Instances are unavailable or not viable for game
    #     hosting, the game server group provides no hosting capacity until
    #     Spot Instances can again be used. Until then, no new instances are
    #     started, and the existing nonviable Spot Instances are terminated
    #     (after current gameplay ends) and are not replaced.
    #
    #   * `SPOT_PREFERRED` - (default value) Spot Instances are used
    #     whenever available in the game server group. If Spot Instances are
    #     unavailable, the game server group continues to provide hosting
    #     capacity by falling back to On-Demand Instances. Existing
    #     nonviable Spot Instances are terminated (after current gameplay
    #     ends) and are replaced with new On-Demand Instances.
    #
    #   * `ON_DEMAND_ONLY` - Only On-Demand Instances are used in the game
    #     server group. No Spot Instances are used, even when available,
    #     while this balancing strategy is in force.
    #   @return [String]
    #
    # @!attribute [rw] game_server_protection_policy
    #   A flag that indicates whether instances in the game server group are
    #   protected from early termination. Unprotected instances that have
    #   active game servers running might be terminated during a scale-down
    #   event, causing players to be dropped from the game. Protected
    #   instances cannot be terminated while there are active game servers
    #   running except in the event of a forced game server group deletion
    #   (see ). An exception to this is with Spot Instances, which can be
    #   terminated by Amazon Web Services regardless of protection status.
    #   This property is set to `NO_PROTECTION` by default.
    #   @return [String]
    #
    # @!attribute [rw] vpc_subnets
    #   A list of virtual private cloud (VPC) subnets to use with instances
    #   in the game server group. By default, all Amazon GameLift Servers
    #   FleetIQ-supported Availability Zones are used. You can use this
    #   parameter to specify VPCs that you've set up. This property cannot
    #   be updated after the game server group is created, and the
    #   corresponding Auto Scaling group will always use the property value
    #   that is set with this request, even if the Auto Scaling group is
    #   updated directly.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new game server group resource.
    #   Tags are developer-defined key-value pairs. Tagging Amazon Web
    #   Services resources is useful for resource management, access
    #   management, and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameServerGroupInput AWS API Documentation
    #
    class CreateGameServerGroupInput < Struct.new(
      :game_server_group_name,
      :role_arn,
      :min_size,
      :max_size,
      :launch_template,
      :instance_definitions,
      :auto_scaling_policy,
      :balancing_strategy,
      :game_server_protection_policy,
      :vpc_subnets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group
    #   The newly created game server group object, including the new ARN
    #   value for the Amazon GameLift Servers FleetIQ game server group and
    #   the object's status. The Amazon EC2 Auto Scaling group ARN is
    #   initially null, since the group has not yet been created. This value
    #   is added once the game server group status reaches `ACTIVE`.
    #   @return [Types::GameServerGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameServerGroupOutput AWS API Documentation
    #
    class CreateGameServerGroupOutput < Struct.new(
      :game_server_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to create a game session in. You
    #   can use either the fleet ID or ARN value. Each request must
    #   reference either a fleet ID or alias ID, but not both.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   A unique identifier for the alias associated with the fleet to
    #   create a game session in. You can use either the alias ID or ARN
    #   value. Each request must reference either a fleet ID or alias ID,
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously
    #   to the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   A set of key-value pairs that can store custom data in a game
    #   session. For example: `{"Key": "difficulty", "Value": "novice"}`.
    #   For an example, see [Create a game session with custom
    #   properties][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-create
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] creator_id
    #   A unique identifier for a player or entity creating the game
    #   session.
    #
    #   If you add a resource creation limit policy to a fleet, the
    #   `CreateGameSession` operation requires a `CreatorId`. Amazon
    #   GameLift Servers limits the number of game session creation requests
    #   with the same `CreatorId` in a specified time period.
    #
    #   If you your fleet doesn't have a resource creation limit policy and
    #   you provide a `CreatorId` in your `CreateGameSession` requests,
    #   Amazon GameLift Servers limits requests to one request per
    #   `CreatorId` per second.
    #
    #   To not limit `CreateGameSession` requests with the same `CreatorId`,
    #   don't provide a `CreatorId` in your `CreateGameSession` request.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   *This parameter is deprecated. Use `IdempotencyToken` instead.*
    #
    #   Custom string that uniquely identifies a request for a new game
    #   session. Maximum token length is 48 characters. If provided, this
    #   string is included in the new game session's ID.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   Custom string that uniquely identifies the new game session request.
    #   This is useful for ensuring that game session requests with the same
    #   idempotency token are processed only once. Subsequent requests with
    #   the same string return the original `GameSession` object, with an
    #   updated status. Maximum token length is 48 characters. If provided,
    #   this string is included in the new game session's ID. A game
    #   session ARN has the following format:
    #   `arn:aws:gamelift:<location>::gamesession/<fleet ID>/<custom ID
    #   string or idempotency token>`. Idempotency tokens remain in use for
    #   30 days after a game session has ended; game session objects are
    #   retained for this time period and then deleted.
    #   @return [String]
    #
    # @!attribute [rw] game_session_data
    #   A set of custom game session properties, formatted as a single
    #   string value. This data is passed to a game server process with a
    #   request to start a new game session. For more information, see
    #   [Start a game session][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A fleet's remote location to place the new game session in. If this
    #   parameter is not set, the new game session is placed in the fleet's
    #   home Region. Specify a remote location with an Amazon Web Services
    #   Region code such as `us-west-2`. When using an Anywhere fleet, this
    #   parameter is required and must be set to the Anywhere fleet's
    #   custom location.
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
      :game_session_data,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session
    #   Object that describes the newly created game session record.
    #   @return [Types::GameSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionOutput AWS API Documentation
    #
    class CreateGameSessionOutput < Struct.new(
      :game_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with game session queue.
    #   Queue names must be unique within each Region.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum time, in seconds, that a new game session placement
    #   request remains in the queue. When a request exceeds this time, the
    #   game session placement changes to a `TIMED_OUT` status. If you
    #   don't specify a request timeout, the queue uses a default value.
    #   @return [Integer]
    #
    # @!attribute [rw] player_latency_policies
    #   A set of policies that enforce a sliding cap on player latency when
    #   processing game sessions placement requests. Use multiple policies
    #   to gradually relax the cap over time if Amazon GameLift Servers
    #   can't make a placement. Policies are evaluated in order starting
    #   with the lowest maximum latency value.
    #   @return [Array<Types::PlayerLatencyPolicy>]
    #
    # @!attribute [rw] destinations
    #   A list of fleets and/or fleet aliases that can be used to fulfill
    #   game session placement requests in the queue. Destinations are
    #   identified by either a fleet ARN or a fleet alias ARN, and are
    #   listed in order of placement preference.
    #   @return [Array<Types::GameSessionQueueDestination>]
    #
    # @!attribute [rw] filter_configuration
    #   A list of locations where a queue is allowed to place new game
    #   sessions. Locations are specified in the form of Amazon Web Services
    #   Region codes, such as `us-west-2`. If this parameter is not set,
    #   game sessions can be placed in any queue location.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] priority_configuration
    #   Custom settings to use when prioritizing destinations and locations
    #   for game session placements. This configuration replaces the FleetIQ
    #   default prioritization process. Priority types that are not
    #   explicitly named will be automatically applied at the end of the
    #   prioritization process.
    #   @return [Types::PriorityConfiguration]
    #
    # @!attribute [rw] custom_event_data
    #   Information to be added to all events that are related to this game
    #   session queue.
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   An SNS topic ARN that is set up to receive game session placement
    #   notifications. See [ Setting up notifications for game session
    #   placement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new game session queue resource.
    #   Tags are developer-defined key-value pairs. Tagging Amazon Web
    #   Services resources are useful for resource management, access
    #   management and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionQueueInput AWS API Documentation
    #
    class CreateGameSessionQueueInput < Struct.new(
      :name,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_queue
    #   An object that describes the newly created game session queue.
    #   @return [Types::GameSessionQueue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionQueueOutput AWS API Documentation
    #
    class CreateGameSessionQueueOutput < Struct.new(
      :game_session_queue)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location_name
    #   A descriptive name for the custom location.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management, and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General
    #   Rareference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateLocationInput AWS API Documentation
    #
    class CreateLocationInput < Struct.new(
      :location_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] location
    #   The details of the custom location you created.
    #   @return [Types::LocationModel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateLocationOutput AWS API Documentation
    #
    class CreateLocationOutput < Struct.new(
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A unique identifier for the matchmaking configuration. This name is
    #   used to identify the configuration associated with a matchmaking
    #   request or ticket.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the matchmaking configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_arns
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers game session queue resource and uniquely identifies
    #   it. ARNs are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::gamesessionqueue/<queue name>`. Queues
    #   can be located in any Region. Queues are used to start new Amazon
    #   GameLift Servers-hosted game sessions for matches that are created
    #   with this matchmaking configuration. If `FlexMatchMode` is set to
    #   `STANDALONE`, do not set this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can
    #   remain in process before timing out. Requests that fail due to
    #   timing out can be resubmitted as needed.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match, if acceptance is required.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_required
    #   A flag that determines whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to `TRUE`. With this option enabled, matchmaking
    #   tickets use the status `REQUIRES_ACCEPTANCE` to indicate when a
    #   completed potential match is waiting for player acceptance.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule_set_name
    #   A unique identifier for the matchmaking rule set to use with this
    #   configuration. You can use either the rule set name or ARN value. A
    #   matchmaking configuration can only use rule sets that are defined in
    #   the same Region.
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   An SNS topic ARN that is set up to receive matchmaking
    #   notifications. See [ Setting up notifications for matchmaking][1]
    #   for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    #   @return [String]
    #
    # @!attribute [rw] additional_player_count
    #   The number of player slots in a match to keep open for future
    #   players. For example, if the configuration's rule set specifies a
    #   match for a single 12-person team, and the additional player count
    #   is set to 2, only 10 players are selected for the match. This
    #   parameter is not used if `FlexMatchMode` is set to `STANDALONE`.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_event_data
    #   Information to be added to all events related to this matchmaking
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   A set of key-value pairs that can store custom data in a game
    #   session. For example: `{"Key": "difficulty", "Value": "novice"}`.
    #   This information is added to the new `GameSession` object that is
    #   created for a successful match. This parameter is not used if
    #   `FlexMatchMode` is set to `STANDALONE`.
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] game_session_data
    #   A set of custom game session properties, formatted as a single
    #   string value. This data is passed to a game server process with a
    #   request to start a new game session. For more information, see
    #   [Start a game session][1]. This information is added to the new
    #   `GameSession` object that is created for a successful match. This
    #   parameter is not used if `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @!attribute [rw] backfill_mode
    #   The method used to backfill game sessions that are created with this
    #   matchmaking configuration. Specify `MANUAL` when your game manages
    #   backfill requests manually or does not use the match backfill
    #   feature. Specify `AUTOMATIC` to have Amazon GameLift Servers create
    #   a backfill request whenever a game session has one or more open
    #   slots. Learn more about manual and automatic backfill in [ Backfill
    #   Existing Games with FlexMatch][1]. Automatic backfill is not
    #   available when `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    #   @return [String]
    #
    # @!attribute [rw] flex_match_mode
    #   Indicates whether this matchmaking configuration is being used with
    #   Amazon GameLift Servers hosting or as a standalone matchmaking
    #   solution.
    #
    #   * **STANDALONE** - FlexMatch forms matches and returns match
    #     information, including players and team assignments, in a [
    #     MatchmakingSucceeded][1] event.
    #
    #   * **WITH\_QUEUE** - FlexMatch forms matches and uses the specified
    #     Amazon GameLift Servers queue to start a game session for the
    #     match.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new matchmaking configuration
    #   resource. Tags are developer-defined key-value pairs. Tagging Amazon
    #   Web Services resources are useful for resource management, access
    #   management and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
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
      :game_session_data,
      :backfill_mode,
      :flex_match_mode,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   Object that describes the newly created matchmaking configuration.
    #   @return [Types::MatchmakingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingConfigurationOutput AWS API Documentation
    #
    class CreateMatchmakingConfigurationOutput < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A unique identifier for the matchmaking rule set. A matchmaking
    #   configuration identifies the rule set it uses by this name value.
    #   Note that the rule set name is different from the optional `name`
    #   field in the rule set body.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_body
    #   A collection of matchmaking rules, formatted as a JSON string.
    #   Comments are not allowed in JSON, but most elements support a
    #   description field.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new matchmaking rule set resource.
    #   Tags are developer-defined key-value pairs. Tagging Amazon Web
    #   Services resources are useful for resource management, access
    #   management and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services
    #   General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingRuleSetInput AWS API Documentation
    #
    class CreateMatchmakingRuleSetInput < Struct.new(
      :name,
      :rule_set_body,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_set
    #   The newly created matchmaking rule set.
    #   @return [Types::MatchmakingRuleSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingRuleSetOutput AWS API Documentation
    #
    class CreateMatchmakingRuleSetOutput < Struct.new(
      :rule_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session to add a player to.
    #   @return [String]
    #
    # @!attribute [rw] player_id
    #   A unique identifier for a player. Player IDs are developer-defined.
    #   @return [String]
    #
    # @!attribute [rw] player_data
    #   Developer-defined information related to a player. Amazon GameLift
    #   Servers does not use this data, so it can be formatted as needed for
    #   use in the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessionInput AWS API Documentation
    #
    class CreatePlayerSessionInput < Struct.new(
      :game_session_id,
      :player_id,
      :player_data)
      SENSITIVE = [:player_id]
      include Aws::Structure
    end

    # @!attribute [rw] player_session
    #   Object that describes the newly created player session record.
    #   @return [Types::PlayerSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessionOutput AWS API Documentation
    #
    class CreatePlayerSessionOutput < Struct.new(
      :player_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session to add players to.
    #   @return [String]
    #
    # @!attribute [rw] player_ids
    #   List of unique identifiers for the players to be added.
    #   @return [Array<String>]
    #
    # @!attribute [rw] player_data_map
    #   Map of string pairs, each specifying a player ID and a set of
    #   developer-defined information related to the player. Amazon GameLift
    #   Servers does not use this data, so it can be formatted as needed for
    #   use in the game. Any player data strings for player IDs that are not
    #   included in the `PlayerIds` parameter are ignored.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessionsInput AWS API Documentation
    #
    class CreatePlayerSessionsInput < Struct.new(
      :game_session_id,
      :player_ids,
      :player_data_map)
      SENSITIVE = [:player_ids]
      include Aws::Structure
    end

    # @!attribute [rw] player_sessions
    #   A collection of player session objects created for the added
    #   players.
    #   @return [Array<Types::PlayerSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessionsOutput AWS API Documentation
    #
    class CreatePlayerSessionsOutput < Struct.new(
      :player_sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with a script. Script names
    #   do not need to be unique. You can use [UpdateScript][1] to change
    #   this value later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateScript.html
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version information that is associated with a build or script.
    #   Version strings do not need to be unique. You can use
    #   [UpdateScript][1] to change this value later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateScript.html
    #   @return [String]
    #
    # @!attribute [rw] storage_location
    #   The location of the Amazon S3 bucket where a zipped file containing
    #   your Realtime scripts is stored. The storage location must specify
    #   the Amazon S3 bucket name, the zip file name (the "key"), and a
    #   role ARN that allows Amazon GameLift Servers to access the Amazon S3
    #   storage location. The S3 bucket must be in the same Region where you
    #   want to create a new script. By default, Amazon GameLift Servers
    #   uploads the latest version of the zip file; if you have S3 object
    #   versioning turned on, you can use the `ObjectVersion` parameter to
    #   specify an earlier version.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] zip_file
    #   A data object containing your Realtime scripts and dependencies as a
    #   zip file. The zip file can have one or multiple files. Maximum size
    #   of a zip file is 5 MB.
    #
    #   When using the Amazon Web Services CLI tool to create a script, this
    #   parameter is set to the zip file name. It must be prepended with the
    #   string "fileb://" to indicate that the file data is a binary
    #   object. For example: `--zip-file fileb://myRealtimeScript.zip`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of labels to assign to the new script resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General
    #   Reference*. Once the resource is created, you can use
    #   [TagResource][2], [UntagResource][3], and [ListTagsForResource][4]
    #   to add, remove, and view tags. The maximum tag limit may be lower
    #   than stated. See the Amazon Web Services General Reference for
    #   actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html
    #   [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateScriptInput AWS API Documentation
    #
    class CreateScriptInput < Struct.new(
      :name,
      :version,
      :storage_location,
      :zip_file,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] script
    #   The newly created script record with a unique script ID and ARN. The
    #   new script's storage location reflects an Amazon S3 location: (1)
    #   If the script was uploaded from an S3 bucket under your account, the
    #   storage location reflects the information that was provided in the
    #   *CreateScript* request; (2) If the script file was uploaded from a
    #   local zip file, the storage location reflects an S3 location
    #   controls by the Amazon GameLift Servers service.
    #   @return [Types::Script]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateScriptOutput AWS API Documentation
    #
    class CreateScriptOutput < Struct.new(
      :script)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_lift_aws_account_id
    #   A unique identifier for the Amazon Web Services account that you use
    #   to manage your Amazon GameLift Servers fleet. You can find your
    #   Account ID in the Amazon Web Services Management Console under
    #   account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringAuthorizationInput AWS API Documentation
    #
    class CreateVpcPeeringAuthorizationInput < Struct.new(
      :game_lift_aws_account_id,
      :peer_vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_peering_authorization
    #   Details on the requested VPC peering authorization, including
    #   expiration.
    #   @return [Types::VpcPeeringAuthorization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringAuthorizationOutput AWS API Documentation
    #
    class CreateVpcPeeringAuthorizationOutput < Struct.new(
      :vpc_peering_authorization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet. You can use either the fleet ID
    #   or ARN value. This tells Amazon GameLift Servers which GameLift VPC
    #   to peer with.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_aws_account_id
    #   A unique identifier for the Amazon Web Services account with the VPC
    #   that you want to peer your Amazon GameLift Servers fleet with. You
    #   can find your Account ID in the Amazon Web Services Management
    #   Console under account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringConnectionInput AWS API Documentation
    #
    class CreateVpcPeeringConnectionInput < Struct.new(
      :fleet_id,
      :peer_vpc_aws_account_id,
      :peer_vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringConnectionOutput AWS API Documentation
    #
    class CreateVpcPeeringConnectionOutput < Aws::EmptyStructure; end

    # @!attribute [rw] alias_id
    #   A unique identifier of the alias that you want to delete. You can
    #   use either the alias ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteAliasInput AWS API Documentation
    #
    class DeleteAliasInput < Struct.new(
      :alias_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_id
    #   A unique identifier for the build to delete. You can use either the
    #   build ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteBuildInput AWS API Documentation
    #
    class DeleteBuildInput < Struct.new(
      :build_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the container fleet to delete. You can use
    #   either the fleet ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteContainerFleetInput AWS API Documentation
    #
    class DeleteContainerFleetInput < Struct.new(
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteContainerFleetOutput AWS API Documentation
    #
    class DeleteContainerFleetOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The unique identifier for the container group definition to delete.
    #   You can use either the `Name` or `ARN` value.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The specific version to delete.
    #   @return [Integer]
    #
    # @!attribute [rw] version_count_to_retain
    #   The number of most recent versions to keep while deleting all older
    #   versions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteContainerGroupDefinitionInput AWS API Documentation
    #
    class DeleteContainerGroupDefinitionInput < Struct.new(
      :name,
      :version_number,
      :version_count_to_retain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteContainerGroupDefinitionOutput AWS API Documentation
    #
    class DeleteContainerGroupDefinitionOutput < Aws::EmptyStructure; end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to be deleted. You can use either
    #   the fleet ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleetInput AWS API Documentation
    #
    class DeleteFleetInput < Struct.new(
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to delete locations for. You can
    #   use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] locations
    #   The list of fleet locations to delete. Specify locations in the form
    #   of an Amazon Web Services Region code, such as `us-west-2`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleetLocationsInput AWS API Documentation
    #
    class DeleteFleetLocationsInput < Struct.new(
      :fleet_id,
      :locations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that location attributes are being
    #   deleted for.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] location_states
    #   The remote locations that are being deleted, with each location
    #   status set to `DELETING`.
    #   @return [Array<Types::LocationState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleetLocationsOutput AWS API Documentation
    #
    class DeleteFleetLocationsOutput < Struct.new(
      :fleet_id,
      :fleet_arn,
      :location_states)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group. Use either the name
    #   or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] delete_option
    #   The type of delete to perform. Options include the following:
    #
    #   * `SAFE_DELETE` – (default) Terminates the game server group and
    #     Amazon EC2 Auto Scaling group only when it has no game servers
    #     that are in `UTILIZED` status.
    #
    #   * `FORCE_DELETE` – Terminates the game server group, including all
    #     active game servers regardless of their utilization status, and
    #     the Amazon EC2 Auto Scaling group.
    #
    #   * `RETAIN` – Does a safe delete of the game server group but retains
    #     the Amazon EC2 Auto Scaling group as is.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameServerGroupInput AWS API Documentation
    #
    class DeleteGameServerGroupInput < Struct.new(
      :game_server_group_name,
      :delete_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group
    #   An object that describes the deleted game server group resource,
    #   with status updated to `DELETE_SCHEDULED`.
    #   @return [Types::GameServerGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameServerGroupOutput AWS API Documentation
    #
    class DeleteGameServerGroupOutput < Struct.new(
      :game_server_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with game session queue.
    #   Queue names must be unique within each Region. You can use either
    #   the queue ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameSessionQueueInput AWS API Documentation
    #
    class DeleteGameSessionQueueInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameSessionQueueOutput AWS API Documentation
    #
    class DeleteGameSessionQueueOutput < Aws::EmptyStructure; end

    # @!attribute [rw] location_name
    #   The location name of the custom location to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteLocationInput AWS API Documentation
    #
    class DeleteLocationInput < Struct.new(
      :location_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteLocationOutput AWS API Documentation
    #
    class DeleteLocationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   A unique identifier for the matchmaking configuration. You can use
    #   either the configuration name or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingConfigurationInput AWS API Documentation
    #
    class DeleteMatchmakingConfigurationInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingConfigurationOutput AWS API Documentation
    #
    class DeleteMatchmakingConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   A unique identifier for the matchmaking rule set to be deleted.
    #   (Note: The rule set name is different from the optional "name"
    #   field in the rule set body.) You can use either the rule set name or
    #   ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingRuleSetInput AWS API Documentation
    #
    class DeleteMatchmakingRuleSetInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingRuleSetOutput AWS API Documentation
    #
    class DeleteMatchmakingRuleSetOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   A descriptive label that is associated with a fleet's scaling
    #   policy. Policy names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to be deleted. You can use either
    #   the fleet ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteScalingPolicyInput AWS API Documentation
    #
    class DeleteScalingPolicyInput < Struct.new(
      :name,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] script_id
    #   A unique identifier for the Realtime script to delete. You can use
    #   either the script ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteScriptInput AWS API Documentation
    #
    class DeleteScriptInput < Struct.new(
      :script_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_lift_aws_account_id
    #   A unique identifier for the Amazon Web Services account that you use
    #   to manage your Amazon GameLift Servers fleet. You can find your
    #   Account ID in the Amazon Web Services Management Console under
    #   account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringAuthorizationInput AWS API Documentation
    #
    class DeleteVpcPeeringAuthorizationInput < Struct.new(
      :game_lift_aws_account_id,
      :peer_vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringAuthorizationOutput AWS API Documentation
    #
    class DeleteVpcPeeringAuthorizationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet. This fleet specified must match
    #   the fleet referenced in the VPC peering connection record. You can
    #   use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   A unique identifier for a VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringConnectionInput AWS API Documentation
    #
    class DeleteVpcPeeringConnectionInput < Struct.new(
      :fleet_id,
      :vpc_peering_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringConnectionOutput AWS API Documentation
    #
    class DeleteVpcPeeringConnectionOutput < Aws::EmptyStructure; end

    # Set of rules for processing a deployment for a container fleet update.
    #
    # @!attribute [rw] protection_strategy
    #   Determines how fleet deployment activity affects active game
    #   sessions on the fleet. With protection, a deployment honors game
    #   session protection, and delays actions that would interrupt a
    #   protected active game session until the game session ends. Without
    #   protection, deployment activity can shut down all running tasks,
    #   including active game sessions, regardless of game session
    #   protection.
    #   @return [String]
    #
    # @!attribute [rw] minimum_healthy_percentage
    #   Sets a minimum level of healthy tasks to maintain during deployment
    #   activity.
    #   @return [Integer]
    #
    # @!attribute [rw] impairment_strategy
    #   Determines what actions to take if a deployment fails. If the fleet
    #   is multi-location, this strategy applies across all fleet locations.
    #   With a rollback strategy, updated fleet instances are rolled back to
    #   the last successful deployment. Alternatively, you can maintain a
    #   few impaired containers for the purpose of debugging, while all
    #   other tasks return to the last successful deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeploymentConfiguration AWS API Documentation
    #
    class DeploymentConfiguration < Struct.new(
      :protection_strategy,
      :minimum_healthy_percentage,
      :impairment_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the most recent deployment for the container fleet.
    #
    # @!attribute [rw] latest_deployment_id
    #   A unique identifier for a fleet deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeploymentDetails AWS API Documentation
    #
    class DeploymentDetails < Struct.new(
      :latest_deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet the compute resource is currently
    #   registered to.
    #   @return [String]
    #
    # @!attribute [rw] compute_name
    #   The unique identifier of the compute resource to deregister. For an
    #   Anywhere fleet compute, use the registered compute name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeregisterComputeInput AWS API Documentation
    #
    class DeregisterComputeInput < Struct.new(
      :fleet_id,
      :compute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeregisterComputeOutput AWS API Documentation
    #
    class DeregisterComputeOutput < Aws::EmptyStructure; end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group where the game server
    #   is running.
    #   @return [String]
    #
    # @!attribute [rw] game_server_id
    #   A custom string that uniquely identifies the game server to
    #   deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeregisterGameServerInput AWS API Documentation
    #
    class DeregisterGameServerInput < Struct.new(
      :game_server_group_name,
      :game_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias_id
    #   The unique identifier for the fleet alias that you want to retrieve.
    #   You can use either the alias ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeAliasInput AWS API Documentation
    #
    class DescribeAliasInput < Struct.new(
      :alias_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias
    #   The requested alias resource.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeAliasOutput AWS API Documentation
    #
    class DescribeAliasOutput < Struct.new(
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_id
    #   A unique identifier for the build to retrieve properties for. You
    #   can use either the build ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeBuildInput AWS API Documentation
    #
    class DescribeBuildInput < Struct.new(
      :build_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build
    #   Set of properties describing the requested build.
    #   @return [Types::Build]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeBuildOutput AWS API Documentation
    #
    class DescribeBuildOutput < Struct.new(
      :build)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that the compute belongs to. You
    #   can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] compute_name
    #   The unique identifier of the compute resource to retrieve properties
    #   for. For a managed container fleet or Anywhere fleet, use a compute
    #   name. For an EC2 fleet, use an instance ID. To retrieve a fleet's
    #   compute identifiers, call [ListCompute][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeComputeInput AWS API Documentation
    #
    class DescribeComputeInput < Struct.new(
      :fleet_id,
      :compute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute
    #   The set of properties for the requested compute resource.
    #   @return [Types::Compute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeComputeOutput AWS API Documentation
    #
    class DescribeComputeOutput < Struct.new(
      :compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the container fleet to retrieve. You can use
    #   either the fleet ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeContainerFleetInput AWS API Documentation
    #
    class DescribeContainerFleetInput < Struct.new(
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_fleet
    #   The properties for the requested container fleet, including current
    #   status.
    #   @return [Types::ContainerFleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeContainerFleetOutput AWS API Documentation
    #
    class DescribeContainerFleetOutput < Struct.new(
      :container_fleet)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique identifier for the container group definition to retrieve
    #   properties for. You can use either the `Name` or `ARN` value.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The specific version to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeContainerGroupDefinitionInput AWS API Documentation
    #
    class DescribeContainerGroupDefinitionInput < Struct.new(
      :name,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_group_definition
    #   The properties of the requested container group definition resource.
    #   @return [Types::ContainerGroupDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeContainerGroupDefinitionOutput AWS API Documentation
    #
    class DescribeContainerGroupDefinitionOutput < Struct.new(
      :container_group_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ec2_instance_type
    #   Name of an Amazon EC2 instance type that is supported in Amazon
    #   GameLift Servers. A fleet instance type determines the computing
    #   resources of each instance in the fleet, including CPU, memory,
    #   storage, and networking capacity. Do not specify a value for this
    #   parameter to retrieve limits for all instance types.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The name of a remote location to request instance limits for, in the
    #   form of an Amazon Web Services Region code such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeEC2InstanceLimitsInput AWS API Documentation
    #
    class DescribeEC2InstanceLimitsInput < Struct.new(
      :ec2_instance_type,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ec2_instance_limits
    #   The maximum number of instances for the specified instance type.
    #   @return [Array<Types::EC2InstanceLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeEC2InstanceLimitsOutput AWS API Documentation
    #
    class DescribeEC2InstanceLimitsOutput < Struct.new(
      :ec2_instance_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_ids
    #   A list of unique fleet identifiers to retrieve attributes for. You
    #   can use either the fleet ID or ARN value. To retrieve attributes for
    #   all current fleets, do not include this parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of
    #   fleet IDs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value. This parameter is ignored when the request
    #   specifies one or a list of fleet IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetAttributesInput AWS API Documentation
    #
    class DescribeFleetAttributesInput < Struct.new(
      :fleet_ids,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_attributes
    #   A collection of objects containing attribute metadata for each
    #   requested fleet ID. Attribute objects are returned only for fleets
    #   that currently exist.
    #   @return [Array<Types::FleetAttributes>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetAttributesOutput AWS API Documentation
    #
    class DescribeFleetAttributesOutput < Struct.new(
      :fleet_attributes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_ids
    #   A unique identifier for the fleet to retrieve capacity information
    #   for. You can use either the fleet ID or ARN value. Leave this
    #   parameter empty to retrieve capacity information for all fleets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of
    #   fleet IDs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value. This parameter is ignored when the request
    #   specifies one or a list of fleet IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetCapacityInput AWS API Documentation
    #
    class DescribeFleetCapacityInput < Struct.new(
      :fleet_ids,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_capacity
    #   A collection of objects that contains capacity information for each
    #   requested fleet ID. Capacity objects are returned only for fleets
    #   that currently exist. Changes in desired instance value can take up
    #   to 1 minute to be reflected.
    #   @return [Array<Types::FleetCapacity>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetCapacityOutput AWS API Documentation
    #
    class DescribeFleetCapacityOutput < Struct.new(
      :fleet_capacity,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the container fleet. You can use either the
    #   fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   A unique identifier for the deployment to return information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetDeploymentInput AWS API Documentation
    #
    class DescribeFleetDeploymentInput < Struct.new(
      :fleet_id,
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_deployment
    #   The requested deployment information.
    #   @return [Types::FleetDeployment]
    #
    # @!attribute [rw] locational_deployments
    #   If the deployment is for a multi-location fleet, the requests
    #   returns the deployment status in each fleet location.
    #   @return [Hash<String,Types::LocationalDeployment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetDeploymentOutput AWS API Documentation
    #
    class DescribeFleetDeploymentOutput < Struct.new(
      :fleet_deployment,
      :locational_deployments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to get event logs for. You can use
    #   either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The earliest date to retrieve event logs for. If no start time is
    #   specified, this call returns entries starting from when the fleet
    #   was created to the specified end time. Format is a number expressed
    #   in Unix time as milliseconds (ex: "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The most recent date to retrieve event logs for. If no end time is
    #   specified, this call returns entries from the specified start time
    #   up to the present. Format is a number expressed in Unix time as
    #   milliseconds (ex: "1469498468.057").
    #   @return [Time]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   A collection of objects containing event log entries for the
    #   specified fleet.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetEventsOutput AWS API Documentation
    #
    class DescribeFleetEventsOutput < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to retrieve remote locations for.
    #   You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] locations
    #   A list of fleet locations to retrieve information for. Specify
    #   locations in the form of an Amazon Web Services Region code, such as
    #   `us-west-2`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This limit
    #   is not currently enforced.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationAttributesInput AWS API Documentation
    #
    class DescribeFleetLocationAttributesInput < Struct.new(
      :fleet_id,
      :locations,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that location attributes were
    #   requested for.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] location_attributes
    #   Location-specific information on the requested fleet's remote
    #   locations.
    #   @return [Array<Types::LocationAttributes>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationAttributesOutput AWS API Documentation
    #
    class DescribeFleetLocationAttributesOutput < Struct.new(
      :fleet_id,
      :fleet_arn,
      :location_attributes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to request location capacity for.
    #   You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The fleet location to retrieve capacity information for. Specify a
    #   location in the form of an Amazon Web Services Region code, such as
    #   `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationCapacityInput AWS API Documentation
    #
    class DescribeFleetLocationCapacityInput < Struct.new(
      :fleet_id,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_capacity
    #   Resource capacity information for the requested fleet location.
    #   Capacity objects are returned only for fleets and locations that
    #   currently exist. Changes in desired instance value can take up to 1
    #   minute to be reflected.
    #   @return [Types::FleetCapacity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationCapacityOutput AWS API Documentation
    #
    class DescribeFleetLocationCapacityOutput < Struct.new(
      :fleet_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to request location utilization
    #   for. You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The fleet location to retrieve utilization information for. Specify
    #   a location in the form of an Amazon Web Services Region code, such
    #   as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationUtilizationInput AWS API Documentation
    #
    class DescribeFleetLocationUtilizationInput < Struct.new(
      :fleet_id,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_utilization
    #   Utilization information for the requested fleet location.
    #   Utilization objects are returned only for fleets and locations that
    #   currently exist.
    #   @return [Types::FleetUtilization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationUtilizationOutput AWS API Documentation
    #
    class DescribeFleetLocationUtilizationOutput < Struct.new(
      :fleet_utilization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to retrieve port settings for. You
    #   can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A remote location to check for status of port setting updates. Use
    #   the Amazon Web Services Region code format, such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetPortSettingsInput AWS API Documentation
    #
    class DescribeFleetPortSettingsInput < Struct.new(
      :fleet_id,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that was requested.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] inbound_permissions
    #   The port settings for the requested fleet ID.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] update_status
    #   The current status of updates to the fleet's port settings in the
    #   requested fleet location. A status of `PENDING_UPDATE` indicates
    #   that an update was requested for the fleet but has not yet been
    #   completed for the location.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The requested fleet location, expressed as an Amazon Web Services
    #   Region code, such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetPortSettingsOutput AWS API Documentation
    #
    class DescribeFleetPortSettingsOutput < Struct.new(
      :fleet_id,
      :fleet_arn,
      :inbound_permissions,
      :update_status,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_ids
    #   A unique identifier for the fleet to retrieve utilization data for.
    #   You can use either the fleet ID or ARN value. To retrieve attributes
    #   for all current fleets, do not include this parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of
    #   fleet IDs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value. This parameter is ignored when the request
    #   specifies one or a list of fleet IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetUtilizationInput AWS API Documentation
    #
    class DescribeFleetUtilizationInput < Struct.new(
      :fleet_ids,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_utilization
    #   A collection of objects containing utilization information for each
    #   requested fleet ID. Utilization objects are returned only for fleets
    #   that currently exist.
    #   @return [Array<Types::FleetUtilization>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetUtilizationOutput AWS API Documentation
    #
    class DescribeFleetUtilizationOutput < Struct.new(
      :fleet_utilization,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group. Use either the name
    #   or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerGroupInput AWS API Documentation
    #
    class DescribeGameServerGroupInput < Struct.new(
      :game_server_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group
    #   An object with the property settings for the requested game server
    #   group resource.
    #   @return [Types::GameServerGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerGroupOutput AWS API Documentation
    #
    class DescribeGameServerGroupOutput < Struct.new(
      :game_server_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group where the game server
    #   is running.
    #   @return [String]
    #
    # @!attribute [rw] game_server_id
    #   A custom string that uniquely identifies the game server information
    #   to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerInput AWS API Documentation
    #
    class DescribeGameServerInput < Struct.new(
      :game_server_group_name,
      :game_server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group. Use either the name
    #   or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] instance_ids
    #   The Amazon EC2 instance IDs that you want to retrieve status on.
    #   Amazon EC2 instance IDs use a 17-character format, for example:
    #   `i-1234567890abcdef0`. To retrieve all instances in the game server
    #   group, leave this parameter empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerInstancesInput AWS API Documentation
    #
    class DescribeGameServerInstancesInput < Struct.new(
      :game_server_group_name,
      :instance_ids,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_instances
    #   The collection of requested game server instances.
    #   @return [Array<Types::GameServerInstance>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerInstancesOutput AWS API Documentation
    #
    class DescribeGameServerInstancesOutput < Struct.new(
      :game_server_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server
    #   Object that describes the requested game server.
    #   @return [Types::GameServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerOutput AWS API Documentation
    #
    class DescribeGameServerOutput < Struct.new(
      :game_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to retrieve all game sessions
    #   active on the fleet. You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   A unique identifier for the alias associated with the fleet to
    #   retrieve all game sessions for. You can use either the alias ID or
    #   ARN value.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A fleet location to get game session details for. You can specify a
    #   fleet's home Region or a remote location. Use the Amazon Web
    #   Services Region code format, such as `us-west-2`.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   Game session status to filter results on. Possible game session
    #   statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING` and
    #   `TERMINATING` (the last two are transitory).
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionDetailsInput AWS API Documentation
    #
    class DescribeGameSessionDetailsInput < Struct.new(
      :fleet_id,
      :game_session_id,
      :alias_id,
      :location,
      :status_filter,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_details
    #   A collection of properties for each game session that matches the
    #   request.
    #   @return [Array<Types::GameSessionDetail>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionDetailsOutput AWS API Documentation
    #
    class DescribeGameSessionDetailsOutput < Struct.new(
      :game_session_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] placement_id
    #   A unique identifier for a game session placement to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionPlacementInput AWS API Documentation
    #
    class DescribeGameSessionPlacementInput < Struct.new(
      :placement_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   A list of queue names to retrieve information for. You can use
    #   either the queue ID or ARN value. To request settings for all
    #   queues, leave this parameter empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. You can
    #   request up to 50 results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionQueuesInput AWS API Documentation
    #
    class DescribeGameSessionQueuesInput < Struct.new(
      :names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_queues
    #   A collection of objects that describe the requested game session
    #   queues.
    #   @return [Array<Types::GameSessionQueue>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionQueuesOutput AWS API Documentation
    #
    class DescribeGameSessionQueuesOutput < Struct.new(
      :game_session_queues,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to retrieve game sessions for. You
    #   can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   A unique identifier for the alias associated with the fleet to
    #   retrieve game sessions for. You can use either the alias ID or ARN
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A fleet location to get game sessions for. You can specify a
    #   fleet's home Region or a remote location. Use the Amazon Web
    #   Services Region code format, such as `us-west-2`.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   Game session status to filter results on. You can filter on the
    #   following states: `ACTIVE`, `TERMINATED`, `ACTIVATING`, and
    #   `TERMINATING`. The last two are transitory and used for only very
    #   brief periods of time.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionsInput AWS API Documentation
    #
    class DescribeGameSessionsInput < Struct.new(
      :fleet_id,
      :game_session_id,
      :alias_id,
      :location,
      :status_filter,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_sessions
    #   A collection of properties for each game session that matches the
    #   request.
    #   @return [Array<Types::GameSession>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionsOutput AWS API Documentation
    #
    class DescribeGameSessionsOutput < Struct.new(
      :game_sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to retrieve instance information
    #   for. You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   A unique identifier for an instance to retrieve. Specify an instance
    #   ID or leave blank to retrieve all instances in the fleet.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The name of a location to retrieve instance information for, in the
    #   form of an Amazon Web Services Region code such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeInstancesInput AWS API Documentation
    #
    class DescribeInstancesInput < Struct.new(
      :fleet_id,
      :instance_id,
      :limit,
      :next_token,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   A collection of objects containing properties for each instance
    #   returned.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeInstancesOutput AWS API Documentation
    #
    class DescribeInstancesOutput < Struct.new(
      :instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   A unique identifier for the matchmaking configuration(s) to
    #   retrieve. You can use either the configuration name or ARN value. To
    #   request all existing configurations, leave this parameter empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_set_name
    #   A unique identifier for the matchmaking rule set. You can use either
    #   the rule set name or ARN value. Use this parameter to retrieve all
    #   matchmaking configurations that use this rule set.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is limited to 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingConfigurationsInput AWS API Documentation
    #
    class DescribeMatchmakingConfigurationsInput < Struct.new(
      :names,
      :rule_set_name,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configurations
    #   A collection of requested matchmaking configurations.
    #   @return [Array<Types::MatchmakingConfiguration>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingConfigurationsOutput AWS API Documentation
    #
    class DescribeMatchmakingConfigurationsOutput < Struct.new(
      :configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ticket_ids
    #   A unique identifier for a matchmaking ticket. You can include up to
    #   10 ID values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingInput AWS API Documentation
    #
    class DescribeMatchmakingInput < Struct.new(
      :ticket_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ticket_list
    #   A collection of existing matchmaking ticket objects matching the
    #   request.
    #   @return [Array<Types::MatchmakingTicket>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingOutput AWS API Documentation
    #
    class DescribeMatchmakingOutput < Struct.new(
      :ticket_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   A list of one or more matchmaking rule set names to retrieve details
    #   for. (Note: The rule set name is different from the optional
    #   "name" field in the rule set body.) You can use either the rule
    #   set name or ARN value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingRuleSetsInput AWS API Documentation
    #
    class DescribeMatchmakingRuleSetsInput < Struct.new(
      :names,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_sets
    #   A collection of requested matchmaking rule set objects.
    #   @return [Array<Types::MatchmakingRuleSet>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingRuleSetsOutput AWS API Documentation
    #
    class DescribeMatchmakingRuleSetsOutput < Struct.new(
      :rule_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session to retrieve player sessions
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] player_id
    #   A unique identifier for a player to retrieve player sessions for.
    #   @return [String]
    #
    # @!attribute [rw] player_session_id
    #   A unique identifier for a player session to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] player_session_status_filter
    #   Player session status to filter results on. Note that when a
    #   PlayerSessionId or PlayerId is provided in a DescribePlayerSessions
    #   request, then the PlayerSessionStatusFilter has no effect on the
    #   response.
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
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. If a player
    #   session ID is specified, this parameter is ignored.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value. If a player session ID is specified, this parameter
    #   is ignored.
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
      SENSITIVE = [:player_id]
      include Aws::Structure
    end

    # @!attribute [rw] player_sessions
    #   A collection of objects containing properties for each player
    #   session that matches the request.
    #   @return [Array<Types::PlayerSession>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribePlayerSessionsOutput AWS API Documentation
    #
    class DescribePlayerSessionsOutput < Struct.new(
      :player_sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to get the runtime configuration
    #   for. You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeRuntimeConfigurationInput AWS API Documentation
    #
    class DescribeRuntimeConfigurationInput < Struct.new(
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime_configuration
    #   Instructions that describe how server processes are launched and
    #   maintained on computes in the fleet.
    #   @return [Types::RuntimeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeRuntimeConfigurationOutput AWS API Documentation
    #
    class DescribeRuntimeConfigurationOutput < Struct.new(
      :runtime_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet for which to retrieve scaling
    #   policies. You can use either the fleet ID or ARN value.
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
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The fleet location. If you don't specify this value, the response
    #   contains the scaling policies of every location in the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScalingPoliciesInput AWS API Documentation
    #
    class DescribeScalingPoliciesInput < Struct.new(
      :fleet_id,
      :status_filter,
      :limit,
      :next_token,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_policies
    #   A collection of objects containing the scaling policies matching the
    #   request.
    #   @return [Array<Types::ScalingPolicy>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScalingPoliciesOutput AWS API Documentation
    #
    class DescribeScalingPoliciesOutput < Struct.new(
      :scaling_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] script_id
    #   A unique identifier for the Realtime script to retrieve properties
    #   for. You can use either the script ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScriptInput AWS API Documentation
    #
    class DescribeScriptInput < Struct.new(
      :script_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] script
    #   A set of properties describing the requested script.
    #   @return [Types::Script]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScriptOutput AWS API Documentation
    #
    class DescribeScriptOutput < Struct.new(
      :script)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringAuthorizationsInput AWS API Documentation
    #
    class DescribeVpcPeeringAuthorizationsInput < Aws::EmptyStructure; end

    # @!attribute [rw] vpc_peering_authorizations
    #   A collection of objects that describe all valid VPC peering
    #   operations for the current Amazon Web Services account.
    #   @return [Array<Types::VpcPeeringAuthorization>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringAuthorizationsOutput AWS API Documentation
    #
    class DescribeVpcPeeringAuthorizationsOutput < Struct.new(
      :vpc_peering_authorizations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet. You can use either the fleet ID
    #   or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringConnectionsInput AWS API Documentation
    #
    class DescribeVpcPeeringConnectionsInput < Struct.new(
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_peering_connections
    #   A collection of VPC peering connection records that match the
    #   request.
    #   @return [Array<Types::VpcPeeringConnection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringConnectionsOutput AWS API Documentation
    #
    class DescribeVpcPeeringConnectionsOutput < Struct.new(
      :vpc_peering_connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Player information for use when creating player sessions using a game
    # session placement request.
    #
    # @!attribute [rw] player_id
    #   A unique identifier for a player to associate with the player
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] player_data
    #   Developer-defined information related to a player. Amazon GameLift
    #   Servers does not use this data, so it can be formatted as needed for
    #   use in the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DesiredPlayerSession AWS API Documentation
    #
    class DesiredPlayerSession < Struct.new(
      :player_id,
      :player_data)
      SENSITIVE = [:player_id]
      include Aws::Structure
    end

    # Resource capacity settings. Fleet capacity is measured in Amazon EC2
    # instances. Pending and terminating counts are non-zero when the fleet
    # capacity is adjusting to a scaling event or if access to resources is
    # temporarily affected.
    #
    # @!attribute [rw] desired
    #   Requested number of active instances. Amazon GameLift Servers takes
    #   action as needed to maintain the desired number of instances.
    #   Capacity is scaled up or down by changing the desired instances. A
    #   change in the desired instances value can take up to 1 minute to be
    #   reflected when viewing a fleet's capacity settings.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum
    #   The minimum instance count value allowed.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum
    #   The maximum instance count value allowed.
    #   @return [Integer]
    #
    # @!attribute [rw] pending
    #   Number of instances that are starting but not yet active.
    #   @return [Integer]
    #
    # @!attribute [rw] active
    #   Actual number of instances that are ready to host game sessions.
    #   @return [Integer]
    #
    # @!attribute [rw] idle
    #   Number of active instances that are not currently hosting a game
    #   session.
    #   @return [Integer]
    #
    # @!attribute [rw] terminating
    #   Number of instances that are no longer active but haven't yet been
    #   terminated.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon GameLift Servers service limits for an Amazon EC2 instance
    # type and current utilization. Amazon GameLift Servers allows Amazon
    # Web Services accounts a maximum number of instances, per instance
    # type, per Amazon Web Services Region or location, for use with Amazon
    # GameLift Servers. You can request an limit increase for your account
    # by using the **Service limits** page in the Amazon GameLift Servers
    # console.
    #
    # @!attribute [rw] ec2_instance_type
    #   The name of an Amazon EC2 instance type. See [Amazon Elastic Compute
    #   Cloud Instance Types][1] for detailed descriptions.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] current_instances
    #   The number of instances for the specified type and location that are
    #   currently being used by the Amazon Web Services account.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_limit
    #   The number of instances that is allowed for the specified instance
    #   type and location.
    #   @return [Integer]
    #
    # @!attribute [rw] location
    #   An Amazon Web Services Region code, such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/EC2InstanceLimit AWS API Documentation
    #
    class EC2InstanceLimit < Struct.new(
      :ec2_instance_type,
      :current_instances,
      :instance_limit,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Log entry describing an event that involves Amazon GameLift Servers
    # resources (such as a fleet). In addition to tracking activity, event
    # codes and messages can provide additional information for
    # troubleshooting and debugging problems.
    #
    # @!attribute [rw] event_id
    #   A unique identifier for a fleet event.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   A unique identifier for an event resource, such as a fleet ID.
    #   @return [String]
    #
    # @!attribute [rw] event_code
    #   The type of event being logged.
    #
    #   **Fleet state transition events:**
    #
    #   * FLEET\_CREATED -- A fleet resource was successfully created with a
    #     status of `NEW`. Event messaging includes the fleet ID.
    #
    #   * FLEET\_STATE\_DOWNLOADING -- Fleet status changed from `NEW` to
    #     `DOWNLOADING`. Amazon GameLift Servers is downloading the
    #     compressed build and running install scripts.
    #
    #   * FLEET\_STATE\_VALIDATING -- Fleet status changed from
    #     `DOWNLOADING` to `VALIDATING`. Amazon GameLift Servers has
    #     successfully installed build and is now validating the build
    #     files.
    #
    #   * FLEET\_STATE\_BUILDING -- Fleet status changed from `VALIDATING`
    #     to `BUILDING`. Amazon GameLift Servers has successfully verified
    #     the build files and is now launching a fleet instance.
    #
    #   * FLEET\_STATE\_ACTIVATING -- Fleet status changed from `BUILDING`
    #     to `ACTIVATING`. Amazon GameLift Servers is launching a game
    #     server process on the fleet instance and is testing its
    #     connectivity with the Amazon GameLift Servers service.
    #
    #   * FLEET\_STATE\_ACTIVE -- The fleet's status changed from
    #     `ACTIVATING` to `ACTIVE`. The fleet is now ready to host game
    #     sessions.
    #
    #   * FLEET\_STATE\_ERROR -- The Fleet's status changed to `ERROR`.
    #     Describe the fleet event message for more details.
    #
    #   **Fleet creation events (ordered by fleet creation activity):**
    #
    #   * FLEET\_BINARY\_DOWNLOAD\_FAILED -- The build failed to download to
    #     the fleet instance.
    #
    #   * FLEET\_CREATION\_EXTRACTING\_BUILD -- The game server build was
    #     successfully downloaded to an instance, and Amazon GameLift
    #     Serversis now extracting the build files from the uploaded build.
    #     Failure at this stage prevents a fleet from moving to ACTIVE
    #     status. Logs for this stage display a list of the files that are
    #     extracted and saved on the instance. Access the logs by using the
    #     URL in *PreSignedLogUrl*.
    #
    #   * FLEET\_CREATION\_RUNNING\_INSTALLER -- The game server build files
    #     were successfully extracted, and Amazon GameLift Servers is now
    #     running the build's install script (if one is included). Failure
    #     in this stage prevents a fleet from moving to ACTIVE status. Logs
    #     for this stage list the installation steps and whether or not the
    #     install completed successfully. Access the logs by using the URL
    #     in *PreSignedLogUrl*.
    #
    #   * FLEET\_CREATION\_COMPLETED\_INSTALLER -- The game server build
    #     files were successfully installed and validation of the
    #     installation will begin soon.
    #
    #   * FLEET\_CREATION\_FAILED\_INSTALLER -- The installed failed while
    #     attempting to install the build files. This event indicates that
    #     the failure occurred before Amazon GameLift Servers could start
    #     validation.
    #
    #   * FLEET\_CREATION\_VALIDATING\_RUNTIME\_CONFIG -- The build process
    #     was successful, and the GameLift is now verifying that the game
    #     server launch paths, which are specified in the fleet's runtime
    #     configuration, exist. If any listed launch path exists, Amazon
    #     GameLift Servers tries to launch a game server process and waits
    #     for the process to report ready. Failures in this stage prevent a
    #     fleet from moving to `ACTIVE` status. Logs for this stage list the
    #     launch paths in the runtime configuration and indicate whether
    #     each is found. Access the logs by using the URL in
    #     *PreSignedLogUrl*.
    #
    #   * FLEET\_VALIDATION\_LAUNCH\_PATH\_NOT\_FOUND -- Validation of the
    #     runtime configuration failed because the executable specified in a
    #     launch path does not exist on the instance.
    #
    #   * FLEET\_VALIDATION\_EXECUTABLE\_RUNTIME\_FAILURE -- Validation of
    #     the runtime configuration failed because the executable specified
    #     in a launch path failed to run on the fleet instance.
    #
    #   * FLEET\_VALIDATION\_TIMED\_OUT -- Validation of the fleet at the
    #     end of creation timed out. Try fleet creation again.
    #
    #   * FLEET\_ACTIVATION\_FAILED -- The fleet failed to successfully
    #     complete one of the steps in the fleet activation process. This
    #     event code indicates that the game build was successfully
    #     downloaded to a fleet instance, built, and validated, but was not
    #     able to start a server process. For more information, see [Debug
    #     Fleet Creation Issues][1].
    #
    #   * FLEET\_ACTIVATION\_FAILED\_NO\_INSTANCES -- Fleet creation was not
    #     able to obtain any instances based on the input fleet attributes.
    #     Try again at a different time or choose a different combination of
    #     fleet attributes such as fleet type, instance type, etc.
    #
    #   * FLEET\_INITIALIZATION\_FAILED -- A generic exception occurred
    #     during fleet creation. Describe the fleet event message for more
    #     details.
    #
    #   **VPC peering events:**
    #
    #   * FLEET\_VPC\_PEERING\_SUCCEEDED -- A VPC peering connection has
    #     been established between the VPC for an Amazon GameLift Servers
    #     fleet and a VPC in your Amazon Web Services account.
    #
    #   * FLEET\_VPC\_PEERING\_FAILED -- A requested VPC peering connection
    #     has failed. Event details and status information provide
    #     additional detail. A common reason for peering failure is that the
    #     two VPCs have overlapping CIDR blocks of IPv4 addresses. To
    #     resolve this, change the CIDR block for the VPC in your Amazon Web
    #     Services account. For more information on VPC peering failures,
    #     see
    #     [https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html][2]
    #
    #   * FLEET\_VPC\_PEERING\_DELETED -- A VPC peering connection has been
    #     successfully deleted.
    #
    #   **Spot instance events:**
    #
    #   * INSTANCE\_INTERRUPTED -- A spot instance was interrupted by EC2
    #     with a two-minute notification.
    #
    #   * INSTANCE\_RECYCLED -- A spot instance was determined to have a
    #     high risk of interruption and is scheduled to be recycled once it
    #     has no active game sessions.
    #
    #   **Server process events:**
    #
    #   * SERVER\_PROCESS\_INVALID\_PATH -- The game server executable or
    #     script could not be found based on the Fleet runtime
    #     configuration. Check that the launch path is correct based on the
    #     operating system of the Fleet.
    #
    #   * SERVER\_PROCESS\_SDK\_INITIALIZATION\_TIMEOUT -- The server
    #     process did not call `InitSDK()` within the time expected (5
    #     minutes). Check your game session log to see why `InitSDK()` was
    #     not called in time. This event is not emitted for managed
    #     container fleets and Anywhere fleets unless they're deployed with
    #     the Amazon GameLift Servers Agent.
    #
    #   * SERVER\_PROCESS\_PROCESS\_READY\_TIMEOUT -- The server process did
    #     not call `ProcessReady()` within the time expected (5 minutes)
    #     after calling `InitSDK()`. Check your game session log to see why
    #     `ProcessReady()` was not called in time.
    #
    #   * SERVER\_PROCESS\_CRASHED -- The server process exited without
    #     calling `ProcessEnding()`. Check your game session log to see why
    #     `ProcessEnding()` was not called.
    #
    #   * SERVER\_PROCESS\_TERMINATED\_UNHEALTHY -- The server process did
    #     not report a valid health check for too long and was therefore
    #     terminated by GameLift. Check your game session log to see if the
    #     thread became stuck processing a synchronous task for too long.
    #
    #   * SERVER\_PROCESS\_FORCE\_TERMINATED -- The server process did not
    #     exit cleanly within the time expected after `OnProcessTerminate()`
    #     was sent. Check your game session log to see why termination took
    #     longer than expected.
    #
    #   * SERVER\_PROCESS\_PROCESS\_EXIT\_TIMEOUT -- The server process did
    #     not exit cleanly within the time expected (30 seconds) after
    #     calling `ProcessEnding()`. Check your game session log to see why
    #     termination took longer than expected.
    #
    #   **Game session events:**
    #
    #   * GAME\_SESSION\_ACTIVATION\_TIMEOUT -- GameSession failed to
    #     activate within the expected time. Check your game session log to
    #     see why `ActivateGameSession()` took longer to complete than
    #     expected.
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
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation
    #   [2]: https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Additional information related to the event.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   Time stamp indicating when this event occurred. Format is a number
    #   expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] pre_signed_log_url
    #   Location of stored logs with additional detail that is related to
    #   the event. This is useful for debugging issues. The URL is valid for
    #   15 minutes. You can also access fleet creation logs through the
    #   Amazon GameLift Servers console.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of times that this event occurred.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :resource_id,
      :event_code,
      :message,
      :event_time,
      :pre_signed_log_url,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of fleet locations where a game session queue can place new
    # game sessions. You can use a filter to temporarily exclude specific
    # locations from receiving placements. For queues that have
    # multi-location fleets, you can use a filter configuration allow
    # placement with some, but not all, of a fleet's locations.
    #
    # @!attribute [rw] allowed_locations
    #   A list of locations to allow game session placement in, in the form
    #   of Amazon Web Services Region codes such as `us-west-2`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FilterConfiguration AWS API Documentation
    #
    class FilterConfiguration < Struct.new(
      :allowed_locations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon GameLift Servers fleet of game hosting resources.
    # Attributes differ based on the fleet's compute type, as follows:
    #
    # * EC2 fleet attributes identify a `Build` resource (for fleets with
    #   customer game server builds) or a `Script` resource (for Amazon
    #   GameLift Servers Realtime fleets).
    #
    # * Amazon GameLift Servers Anywhere fleets have an abbreviated set of
    #   attributes, because most fleet configurations are set directly on
    #   the fleet's computes. Attributes include fleet identifiers and
    #   descriptive properties, creation/termination time, and fleet status.
    #
    # **Returned by:**
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_DescribeFleetAttributes][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetAttributes
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #   In a GameLift fleet ARN, the resource ID matches the `FleetId`
    #   value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] fleet_type
    #   Indicates whether the fleet uses On-Demand or Spot instances. For
    #   more information, see [ On-Demand versus Spot Instances][1]. This
    #   fleet property can't be changed after the fleet is created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type that the fleet uses. Instance type
    #   determines the computing resources of each instance in the fleet,
    #   including CPU, memory, storage, and networking capacity. See [Amazon
    #   Elastic Compute Cloud Instance Types][1] for detailed descriptions.
    #   This attribute is used with fleets where `ComputeType` is `EC2`.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] termination_time
    #   A time stamp indicating when this data object was terminated. Format
    #   is a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Current status of the fleet. Possible fleet statuses include the
    #   following:
    #
    #   * NEW -- A new fleet resource has been defined and Amazon GameLift
    #     Servers has started creating the fleet. Desired instances is set
    #     to 1.
    #
    #   * DOWNLOADING/VALIDATING/BUILDING -- Amazon GameLift Servers is
    #     download the game server build, running install scripts, and then
    #     validating the build files. When complete, Amazon GameLift Servers
    #     launches a fleet instance.
    #
    #   * ACTIVATING -- Amazon GameLift Servers is launching a game server
    #     process and testing its connectivity with the Amazon GameLift
    #     Servers service.
    #
    #   * ACTIVE -- The fleet is now ready to host game sessions.
    #
    #   * ERROR -- An error occurred when downloading, validating, building,
    #     or activating the fleet.
    #
    #   * DELETING -- Hosts are responding to a delete fleet request.
    #
    #   * TERMINATED -- The fleet no longer exists.
    #   @return [String]
    #
    # @!attribute [rw] build_id
    #   A unique identifier for the build resource that is deployed on
    #   instances in this fleet. This attribute is used with fleets where
    #   `ComputeType` is "EC2".
    #   @return [String]
    #
    # @!attribute [rw] build_arn
    #   The Amazon Resource Name ([ARN][1]) associated with the Amazon
    #   GameLift Servers build resource that is deployed on instances in
    #   this fleet. In a GameLift build ARN, the resource ID matches the
    #   `BuildId` value. This attribute is used with fleets where
    #   `ComputeType` is "EC2".
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] script_id
    #   A unique identifier for the Realtime script resource that is
    #   deployed on instances in this fleet. This attribute is used with
    #   fleets where `ComputeType` is "EC2".
    #   @return [String]
    #
    # @!attribute [rw] script_arn
    #   The Amazon Resource Name ([ARN][1]) associated with the GameLift
    #   script resource that is deployed on instances in this fleet. In a
    #   GameLift script ARN, the resource ID matches the `ScriptId` value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] server_launch_path
    #   **This parameter is no longer used.** Server launch paths are now
    #   defined using the fleet's [RuntimeConfiguration][1]. Requests that
    #   use this parameter continue to be valid.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/RuntimeConfiguration.html
    #   @return [String]
    #
    # @!attribute [rw] server_launch_parameters
    #   **This parameter is no longer used.** Server launch parameters are
    #   now defined using the fleet's runtime configuration. Requests that
    #   use this parameter continue to be valid.
    #   @return [String]
    #
    # @!attribute [rw] log_paths
    #   **This parameter is no longer used.** Game session log paths are now
    #   defined using the Amazon GameLift Servers server API
    #   `ProcessReady()` `logParameters`. See more information in the
    #   [Server API Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   The type of game session protection to set on all new instances that
    #   are started in the fleet. This attribute is used with fleets where
    #   `ComputeType` is `EC2`.
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE`
    #     status, it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   The operating system of the fleet's computing resources. A fleet's
    #   operating system is determined by the OS of the build or script that
    #   is deployed on this fleet. This attribute is used with fleets where
    #   `ComputeType` is `EC2`.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See
    #   more details in the [Amazon Linux 2 FAQs][1]. For game servers that
    #   are hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #   @return [String]
    #
    # @!attribute [rw] resource_creation_limit_policy
    #   A policy that puts limits on the number of game sessions that a
    #   player can create within a specified span of time. With this policy,
    #   you can control players' ability to consume available resources.
    #
    #   The policy is evaluated when a player tries to create a new game
    #   session. On receiving a `CreateGameSession` request, Amazon GameLift
    #   Servers checks that the player (identified by `CreatorId`) has
    #   created fewer than game session limit in the specified time period.
    #   @return [Types::ResourceCreationLimitPolicy]
    #
    # @!attribute [rw] metric_groups
    #   Name of a metric group that metrics for this fleet are added to. In
    #   Amazon CloudWatch, you can view aggregated metrics for fleets that
    #   are in a metric group. A fleet can be included in only one metric
    #   group at a time. This attribute is used with fleets where
    #   `ComputeType` is `EC2`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stopped_actions
    #   A list of fleet activity that has been suspended using
    #   [StopFleetActions][1]. This includes fleet auto-scaling. This
    #   attribute is used with fleets where `ComputeType` is `EC2`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_role_arn
    #   A unique identifier for an IAM role that manages access to your
    #   Amazon Web Services services. With an instance role ARN set, any
    #   application that runs on an instance in this fleet can assume the
    #   role, including install scripts, server processes, and daemons
    #   (background processes). Create a role or look up a role's ARN by
    #   using the [IAM dashboard][1] in the Amazon Web Services Management
    #   Console. Learn more about using on-box credentials for your game
    #   servers at [ Access external resources from a game server][2]. This
    #   attribute is used with fleets where `ComputeType` is `EC2`.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html
    #   @return [String]
    #
    # @!attribute [rw] certificate_configuration
    #   Determines whether a TLS/SSL certificate is generated for a fleet.
    #   This feature must be enabled when creating the fleet. All instances
    #   in a fleet share the same certificate.
    #   @return [Types::CertificateConfiguration]
    #
    # @!attribute [rw] compute_type
    #   The type of compute resource used to host your game servers. You can
    #   use your own compute resources with Amazon GameLift Servers Anywhere
    #   or use Amazon EC2 instances with managed Amazon GameLift Servers.
    #   @return [String]
    #
    # @!attribute [rw] anywhere_configuration
    #   A set of attributes that are specific to an Anywhere fleet.
    #   @return [Types::AnywhereConfiguration]
    #
    # @!attribute [rw] instance_role_credentials_provider
    #   Indicates that fleet instances maintain a shared credentials file
    #   for the IAM role defined in `InstanceRoleArn`. Shared credentials
    #   allow applications that are deployed with the game server executable
    #   to communicate with other Amazon Web Services resources. This
    #   property is used only when the game server is integrated with the
    #   server SDK version 5.x. For more information about using shared
    #   credentials, see [ Communicate with other Amazon Web Services
    #   resources from your fleets][1]. This attribute is used with fleets
    #   where `ComputeType` is `EC2`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html
    #   @return [String]
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
      :build_arn,
      :script_id,
      :script_arn,
      :server_launch_path,
      :server_launch_parameters,
      :log_paths,
      :new_game_session_protection_policy,
      :operating_system,
      :resource_creation_limit_policy,
      :metric_groups,
      :stopped_actions,
      :instance_role_arn,
      :certificate_configuration,
      :compute_type,
      :anywhere_configuration,
      :instance_role_credentials_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Current resource capacity settings for managed EC2 fleets and managed
    # container fleets. For multi-location fleets, location values might
    # refer to a fleet's remote location or its home Region.
    #
    # **Returned by:** [DescribeFleetCapacity][1],
    # [DescribeFleetLocationCapacity][2], [UpdateFleetCapacity][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet associated with the location.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type that is used for instances in a fleet.
    #   Instance type determines the computing resources in use, including
    #   CPU, memory, storage, and networking capacity. See [Amazon Elastic
    #   Compute Cloud Instance Types][1] for detailed descriptions.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] instance_counts
    #   The current number of instances in the fleet, listed by instance
    #   status. Counts for pending and terminating instances might be
    #   non-zero if the fleet is adjusting to a scaling event or if access
    #   to resources is temporarily affected.
    #   @return [Types::EC2InstanceCounts]
    #
    # @!attribute [rw] location
    #   The fleet location for the instance count information, expressed as
    #   an Amazon Web Services Region code, such as `us-west-2`.
    #   @return [String]
    #
    # @!attribute [rw] game_server_container_group_counts
    #   The number and status of game server container groups deployed in a
    #   container fleet.
    #   @return [Types::GameServerContainerGroupCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FleetCapacity AWS API Documentation
    #
    class FleetCapacity < Struct.new(
      :fleet_id,
      :fleet_arn,
      :instance_type,
      :instance_counts,
      :location,
      :game_server_container_group_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified fleet has no available instances to fulfill a
    # `CreateGameSession` request. Clients can retry such requests
    # immediately or after a waiting period.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FleetCapacityExceededException AWS API Documentation
    #
    class FleetCapacityExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a container fleet deployment with updates to the fleet.
    #
    # @!attribute [rw] deployment_id
    #   A unique identifier for the deployment.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the container fleet.
    #   @return [String]
    #
    # @!attribute [rw] game_server_binary_arn
    #   The unique identifier for the version of the game server container
    #   group definition that is being deployed.
    #   @return [String]
    #
    # @!attribute [rw] rollback_game_server_binary_arn
    #   The unique identifier for the version of the game server container
    #   group definition to roll back to if deployment fails. Amazon
    #   GameLift Servers sets this property to the container group
    #   definition version that the fleet used when it was last active.
    #   @return [String]
    #
    # @!attribute [rw] per_instance_binary_arn
    #   The unique identifier for the version of the per-instance container
    #   group definition that is being deployed.
    #   @return [String]
    #
    # @!attribute [rw] rollback_per_instance_binary_arn
    #   The unique identifier for the version of the per-instance container
    #   group definition to roll back to if deployment fails. Amazon
    #   GameLift Servers sets this property to the container group
    #   definition version that the fleet used when it was last active.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   The status of fleet deployment activity in the location.
    #
    #   * `IN_PROGRESS` -- The deployment is in progress.
    #
    #   * `IMPAIRED` -- The deployment failed and the fleet has some
    #     impaired containers.
    #
    #   * `COMPLETE` -- The deployment has completed successfully.
    #
    #   * `ROLLBACK_IN_PROGRESS` -- The deployment failed and rollback has
    #     been initiated.
    #
    #   * `ROLLBACK_IN_COMPLETE` -- The deployment failed and rollback has
    #     been completed.
    #
    #   * `CANCELLED` -- The deployment was cancelled.
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   Instructions for how to deploy updates to a container fleet and what
    #   actions to take if the deployment fails.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FleetDeployment AWS API Documentation
    #
    class FleetDeployment < Struct.new(
      :deployment_id,
      :fleet_id,
      :game_server_binary_arn,
      :rollback_game_server_binary_arn,
      :per_instance_binary_arn,
      :rollback_per_instance_binary_arn,
      :deployment_status,
      :deployment_configuration,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Current resource utilization statistics in a specified fleet or
    # location. The location value might refer to a fleet's remote location
    # or its home region.
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet associated with the location.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] active_server_process_count
    #   The number of server processes in `ACTIVE` status that are currently
    #   running across all instances in the fleet location.
    #   @return [Integer]
    #
    # @!attribute [rw] active_game_session_count
    #   The number of active game sessions that are currently being hosted
    #   across all instances in the fleet location.
    #   @return [Integer]
    #
    # @!attribute [rw] current_player_session_count
    #   The number of active player sessions that are currently being hosted
    #   across all instances in the fleet location.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_player_session_count
    #   The maximum number of players allowed across all game sessions that
    #   are currently being hosted across all instances in the fleet
    #   location.
    #   @return [Integer]
    #
    # @!attribute [rw] location
    #   The fleet location for the fleet utilization information, expressed
    #   as an Amazon Web Services Region code, such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/FleetUtilization AWS API Documentation
    #
    class FleetUtilization < Struct.new(
      :fleet_id,
      :fleet_arn,
      :active_server_process_count,
      :active_game_session_count,
      :current_player_session_count,
      :maximum_player_session_count,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # This key-value pair can store custom data about a game session. For
    # example, you might use a `GameProperty` to track a game session's
    # map, level of difficulty, or remaining time. The difficulty level
    # could be specified like this: `{"Key": "difficulty",
    # "Value":"Novice"}`.
    #
    # You can set game properties when creating a game session. You can also
    # modify game properties of an active game session. When searching for
    # game sessions, you can filter on game property keys and values. You
    # can't delete game properties from a game session.
    #
    # For examples of working with game properties, see [Create a game
    # session with properties][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties
    #
    # @!attribute [rw] key
    #   The game property identifier.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The game property value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameProperty AWS API Documentation
    #
    class GameProperty < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties describing a game server that is running on an instance in
    # a game server group.
    #
    # A game server is created by a successful call to `RegisterGameServer`
    # and deleted by calling `DeregisterGameServer`. A game server is
    # claimed to host a game session by calling `ClaimGameServer`.
    #
    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group where the game server
    #   is running.
    #   @return [String]
    #
    # @!attribute [rw] game_server_group_arn
    #   The ARN identifier for the game server group where the game server
    #   is located.
    #   @return [String]
    #
    # @!attribute [rw] game_server_id
    #   A custom string that uniquely identifies the game server. Game
    #   server IDs are developer-defined and are unique across all game
    #   server groups in an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The unique identifier for the instance where the game server is
    #   running. This ID is available in the instance metadata. EC2 instance
    #   IDs use a 17-character format, for example: `i-1234567890abcdef0`.
    #   @return [String]
    #
    # @!attribute [rw] connection_info
    #   The port and IP address that must be used to establish a client
    #   connection to the game server.
    #   @return [String]
    #
    # @!attribute [rw] game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers.
    #   @return [String]
    #
    # @!attribute [rw] claim_status
    #   Indicates when an available game server has been reserved for
    #   gameplay but has not yet started hosting a game. Once it is claimed,
    #   the game server remains in `CLAIMED` status for a maximum of one
    #   minute. During this time, game clients connect to the game server to
    #   start the game and trigger the game server to update its utilization
    #   status. After one minute, the game server claim status reverts to
    #   null.
    #   @return [String]
    #
    # @!attribute [rw] utilization_status
    #   Indicates whether the game server is currently available for new
    #   games or is busy. Possible statuses include:
    #
    #   * `AVAILABLE` - The game server is available to be claimed. A game
    #     server that has been claimed remains in this status until it
    #     reports game hosting activity.
    #
    #   * `UTILIZED` - The game server is currently hosting a game session
    #     with players.
    #   @return [String]
    #
    # @!attribute [rw] registration_time
    #   Timestamp that indicates when the game server registered. The format
    #   is a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] last_claim_time
    #   Timestamp that indicates the last time the game server was claimed.
    #   The format is a number expressed in Unix time as milliseconds (for
    #   example `"1469498468.057"`). This value is used to calculate when a
    #   claimed game server's status should revert to null.
    #   @return [Time]
    #
    # @!attribute [rw] last_health_check_time
    #   Timestamp that indicates the last time the game server was updated
    #   with health status. The format is a number expressed in Unix time as
    #   milliseconds (for example `"1469498468.057"`). After game server
    #   registration, this property is only changed when a game server
    #   update specifies a health check value.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameServer AWS API Documentation
    #
    class GameServer < Struct.new(
      :game_server_group_name,
      :game_server_group_arn,
      :game_server_id,
      :instance_id,
      :connection_info,
      :game_server_data,
      :claim_status,
      :utilization_status,
      :registration_time,
      :last_claim_time,
      :last_health_check_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the game server container in an existing game server
    # container group. A game server container identifies a container image
    # with your game server build. A game server container is automatically
    # considered essential; if an essential container fails, the entire
    # container group restarts.
    #
    # You can update a container definition and deploy the updates to an
    # existing fleet. When creating or updating a game server container
    # group definition, use the property
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_GameServerContainerDefinitionInput][1].
    #
    # **Part of:** [ContainerGroupDefinition][2]
    #
    # **Returned by:** [DescribeContainerGroupDefinition][3],
    # [ListContainerGroupDefinitions][4],
    # [UpdateContainerGroupDefinition][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeContainerGroupDefinition.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitions.html
    # [5]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #
    # @!attribute [rw] container_name
    #   The container definition identifier. Container names are unique
    #   within a container group definition.
    #   @return [String]
    #
    # @!attribute [rw] depends_on
    #   Indicates that the container relies on the status of other
    #   containers in the same container group during startup and shutdown
    #   sequences. A container might have dependencies on multiple
    #   containers.
    #   @return [Array<Types::ContainerDependency>]
    #
    # @!attribute [rw] mount_points
    #   A mount point that binds a path inside the container to a file or
    #   directory on the host system and lets it access the file or
    #   directory.
    #   @return [Array<Types::ContainerMountPoint>]
    #
    # @!attribute [rw] environment_override
    #   A set of environment variables that's passed to the container on
    #   startup. See the [ContainerDefinition::environment][1] parameter in
    #   the *Amazon Elastic Container Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html#ECS-Type-ContainerDefinition-environment
    #   @return [Array<Types::ContainerEnvironment>]
    #
    # @!attribute [rw] image_uri
    #   The URI to the image that Amazon GameLift Servers uses when
    #   deploying this container to a container fleet. For a more specific
    #   identifier, see `ResolvedImageDigest`.
    #   @return [String]
    #
    # @!attribute [rw] port_configuration
    #   The set of ports that are available to bind to processes in the
    #   container. For example, a game server process requires a container
    #   port to allow game clients to connect to it. Container ports aren't
    #   directly accessed by inbound traffic. Amazon GameLift Servers maps
    #   these container ports to externally accessible connection ports,
    #   which are assigned as needed from the container fleet's
    #   `ConnectionPortRange`.
    #   @return [Types::ContainerPortConfiguration]
    #
    # @!attribute [rw] resolved_image_digest
    #   A unique and immutable identifier for the container image. The
    #   digest is a SHA 256 hash of the container image manifest.
    #   @return [String]
    #
    # @!attribute [rw] server_sdk_version
    #   The Amazon GameLift Servers server SDK version that the game server
    #   is integrated with. Only game servers using 5.2.0 or higher are
    #   compatible with container fleets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameServerContainerDefinition AWS API Documentation
    #
    class GameServerContainerDefinition < Struct.new(
      :container_name,
      :depends_on,
      :mount_points,
      :environment_override,
      :image_uri,
      :port_configuration,
      :resolved_image_digest,
      :server_sdk_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for a container that runs your game server
    # executable. This definition includes container configuration,
    # resources, and start instructions. Use this data type when creating or
    # updating a game server container group definition. For properties of a
    # deployed container, see [GameServerContainerDefinition][1]. A game
    # server container is automatically considered essential; if an
    # essential container fails, the entire container group restarts.
    #
    # <b>Use with: </b> [CreateContainerGroupDefinition][2],
    # [UpdateContainerGroupDefinition][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #
    # @!attribute [rw] container_name
    #   A string that uniquely identifies the container definition within a
    #   container group.
    #   @return [String]
    #
    # @!attribute [rw] depends_on
    #   Establishes dependencies between this container and the status of
    #   other containers in the same container group. A container can have
    #   dependencies on multiple different containers.
    #
    #   You can use dependencies to establish a startup/shutdown sequence
    #   across the container group. For example, you might specify that
    #   *ContainerB* has a `START` dependency on *ContainerA*. This
    #   dependency means that *ContainerB* can't start until after
    #   *ContainerA* has started. This dependency is reversed on shutdown,
    #   which means that *ContainerB* must shut down before *ContainerA* can
    #   shut down.
    #   @return [Array<Types::ContainerDependency>]
    #
    # @!attribute [rw] mount_points
    #   A mount point that binds a path inside the container to a file or
    #   directory on the host system and lets it access the file or
    #   directory.
    #   @return [Array<Types::ContainerMountPoint>]
    #
    # @!attribute [rw] environment_override
    #   A set of environment variables to pass to the container on startup.
    #   See the [ContainerDefinition::environment][1] parameter in the
    #   *Amazon Elastic Container Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html#ECS-Type-ContainerDefinition-environment
    #   @return [Array<Types::ContainerEnvironment>]
    #
    # @!attribute [rw] image_uri
    #   The location of the container image to deploy to a container fleet.
    #   Provide an image in an Amazon Elastic Container Registry public or
    #   private repository. The repository must be in the same Amazon Web
    #   Services account and Amazon Web Services Region where you're
    #   creating the container group definition. For limits on image size,
    #   see [Amazon GameLift Servers endpoints and quotas][1]. You can use
    #   any of the following image URI formats:
    #
    #   * Image ID only: `[AWS account].dkr.ecr.[AWS
    #     region].amazonaws.com/[repository ID]`
    #
    #   * Image ID and digest: `[AWS account].dkr.ecr.[AWS
    #     region].amazonaws.com/[repository ID]@[digest]`
    #
    #   * Image ID and tag: `[AWS account].dkr.ecr.[AWS
    #     region].amazonaws.com/[repository ID]:[tag]`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/gamelift.html
    #   @return [String]
    #
    # @!attribute [rw] port_configuration
    #   A set of ports that Amazon GameLift Servers can assign to processes
    #   in a container. The container port configuration must have enough
    #   ports for each container process that accepts inbound traffic
    #   connections. For example, a game server process requires a container
    #   port to allow game clients to connect to it. A container port
    #   configuration can have can have one or more container port ranges.
    #   Each range specifies starting and ending values as well as the
    #   supported network protocol.
    #
    #   Container ports aren't directly accessed by inbound traffic. Amazon
    #   GameLift Servers maps each container port to an externally
    #   accessible connection port (see the container fleet property
    #   `ConnectionPortRange`).
    #   @return [Types::ContainerPortConfiguration]
    #
    # @!attribute [rw] server_sdk_version
    #   The Amazon GameLift Servers server SDK version that the game server
    #   is integrated with. Only game servers using 5.2.0 or higher are
    #   compatible with container fleets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameServerContainerDefinitionInput AWS API Documentation
    #
    class GameServerContainerDefinitionInput < Struct.new(
      :container_name,
      :depends_on,
      :mount_points,
      :environment_override,
      :image_uri,
      :port_configuration,
      :server_sdk_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number and status of game server container groups that are
    # deployed across a container fleet. Combine this count with the number
    # of server processes that each game server container group runs to
    # learn how many game sessions the fleet is capable of hosting
    # concurrently. For example, if a fleet has 50 game server container
    # groups, and the game server container in each group runs 1 game server
    # process, then the fleet has the capacity to run host 50 game sessions
    # at a time.
    #
    # **Returned by:**
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_DescribeFleetCapacity.html][1],
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_DescribeFleetLocationCapacity.html][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html
    #
    # @!attribute [rw] pending
    #   The number of container groups that are starting up but haven't yet
    #   registered.
    #   @return [Integer]
    #
    # @!attribute [rw] active
    #   The number of container groups that have active game sessions.
    #   @return [Integer]
    #
    # @!attribute [rw] idle
    #   The number of container groups that have no active game sessions.
    #   @return [Integer]
    #
    # @!attribute [rw] terminating
    #   The number of container groups that are in the process of shutting
    #   down.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameServerContainerGroupCounts AWS API Documentation
    #
    class GameServerContainerGroupCounts < Struct.new(
      :pending,
      :active,
      :idle,
      :terminating)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that describe a game server group resource. A game server
    # group manages certain properties related to a corresponding Amazon EC2
    # Auto Scaling group.
    #
    # A game server group is created by a successful call to
    # `CreateGameServerGroup` and deleted by calling
    # `DeleteGameServerGroup`. Game server group activity can be temporarily
    # suspended and resumed by calling `SuspendGameServerGroup` and
    # `ResumeGameServerGroup`, respectively.
    #
    # @!attribute [rw] game_server_group_name
    #   A developer-defined identifier for the game server group. The name
    #   is unique for each Region in each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] game_server_group_arn
    #   A generated unique ID for the game server group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name ([ARN][1]) for an IAM role that allows
    #   Amazon GameLift Servers to access your Amazon EC2 Auto Scaling
    #   groups.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] instance_definitions
    #   The set of Amazon EC2 instance types that Amazon GameLift Servers
    #   FleetIQ can use when balancing and automatically scaling instances
    #   in the corresponding Auto Scaling group.
    #   @return [Array<Types::InstanceDefinition>]
    #
    # @!attribute [rw] balancing_strategy
    #   Indicates how Amazon GameLift Servers FleetIQ balances the use of
    #   Spot Instances and On-Demand Instances in the game server group.
    #   Method options include the following:
    #
    #   * `SPOT_ONLY` - Only Spot Instances are used in the game server
    #     group. If Spot Instances are unavailable or not viable for game
    #     hosting, the game server group provides no hosting capacity until
    #     Spot Instances can again be used. Until then, no new instances are
    #     started, and the existing nonviable Spot Instances are terminated
    #     (after current gameplay ends) and are not replaced.
    #
    #   * `SPOT_PREFERRED` - (default value) Spot Instances are used
    #     whenever available in the game server group. If Spot Instances are
    #     unavailable, the game server group continues to provide hosting
    #     capacity by falling back to On-Demand Instances. Existing
    #     nonviable Spot Instances are terminated (after current gameplay
    #     ends) and are replaced with new On-Demand Instances.
    #
    #   * `ON_DEMAND_ONLY` - Only On-Demand Instances are used in the game
    #     server group. No Spot Instances are used, even when available,
    #     while this balancing strategy is in force.
    #   @return [String]
    #
    # @!attribute [rw] game_server_protection_policy
    #   A flag that indicates whether instances in the game server group are
    #   protected from early termination. Unprotected instances that have
    #   active game servers running might be terminated during a scale-down
    #   event, causing players to be dropped from the game. Protected
    #   instances cannot be terminated while there are active game servers
    #   running except in the event of a forced game server group deletion
    #   (see ). An exception to this is with Spot Instances, which can be
    #   terminated by Amazon Web Services regardless of protection status.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_group_arn
    #   A generated unique ID for the Amazon EC2 Auto Scaling group that is
    #   associated with this game server group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the game server group. Possible statuses
    #   include:
    #
    #   * `NEW` - Amazon GameLift Servers FleetIQ has validated the
    #     `CreateGameServerGroup()` request.
    #
    #   * `ACTIVATING` - Amazon GameLift Servers FleetIQ is setting up a
    #     game server group, which includes creating an Auto Scaling group
    #     in your Amazon Web Services account.
    #
    #   * `ACTIVE` - The game server group has been successfully created.
    #
    #   * `DELETE_SCHEDULED` - A request to delete the game server group has
    #     been received.
    #
    #   * `DELETING` - Amazon GameLift Servers FleetIQ has received a valid
    #     `DeleteGameServerGroup()` request and is processing it. Amazon
    #     GameLift Servers FleetIQ must first complete and release hosts
    #     before it deletes the Auto Scaling group and the game server
    #     group.
    #
    #   * `DELETED` - The game server group has been successfully deleted.
    #
    #   * `ERROR` - The asynchronous processes of activating or deleting a
    #     game server group has failed, resulting in an error state.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information about the current game server group status.
    #   This information might provide additional insight on groups that are
    #   in `ERROR` status.
    #   @return [String]
    #
    # @!attribute [rw] suspended_actions
    #   A list of activities that are currently suspended for this game
    #   server group. If this property is empty, all activities are
    #   occurring.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   A timestamp that indicates when this game server group was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameServerGroup AWS API Documentation
    #
    class GameServerGroup < Struct.new(
      :game_server_group_name,
      :game_server_group_arn,
      :role_arn,
      :instance_definitions,
      :balancing_strategy,
      :game_server_protection_policy,
      :auto_scaling_group_arn,
      :status,
      :status_reason,
      :suspended_actions,
      :creation_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for intelligent automatic scaling that uses
    # target tracking. These settings are used to add an Auto Scaling policy
    # when creating the corresponding Auto Scaling group. After the Auto
    # Scaling group is created, all updates to Auto Scaling policies,
    # including changing this policy and adding or removing other policies,
    # is done directly on the Auto Scaling group.
    #
    # @!attribute [rw] estimated_instance_warmup
    #   Length of time, in seconds, it takes for a new instance to start new
    #   game server processes and register with Amazon GameLift Servers
    #   FleetIQ. Specifying a warm-up time can be useful, particularly with
    #   game servers that take a long time to start up, because it avoids
    #   prematurely starting new instances.
    #   @return [Integer]
    #
    # @!attribute [rw] target_tracking_configuration
    #   Settings for a target-based scaling policy applied to Auto Scaling
    #   group. These settings are used to create a target-based policy that
    #   tracks the Amazon GameLift Servers FleetIQ metric
    #   `"PercentUtilizedGameServers"` and specifies a target value for the
    #   metric. As player usage changes, the policy triggers to adjust the
    #   game server group capacity so that the metric returns to the target
    #   value.
    #   @return [Types::TargetTrackingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameServerGroupAutoScalingPolicy AWS API Documentation
    #
    class GameServerGroupAutoScalingPolicy < Struct.new(
      :estimated_instance_warmup,
      :target_tracking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional properties, including status, that describe an EC2 instance
    # in a game server group. Instance configurations are set with game
    # server group properties (see `DescribeGameServerGroup` and with the
    # EC2 launch template that was used when creating the game server group.
    #
    # Retrieve game server instances for a game server group by calling
    # `DescribeGameServerInstances`.
    #
    # @!attribute [rw] game_server_group_name
    #   A developer-defined identifier for the game server group that
    #   includes the game server instance. The name is unique for each
    #   Region in each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] game_server_group_arn
    #   A generated unique identifier for the game server group that
    #   includes the game server instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The unique identifier for the instance where the game server is
    #   running. This ID is available in the instance metadata. EC2 instance
    #   IDs use a 17-character format, for example: `i-1234567890abcdef0`.
    #   @return [String]
    #
    # @!attribute [rw] instance_status
    #   Current status of the game server instance
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameServerInstance AWS API Documentation
    #
    class GameServerInstance < Struct.new(
      :game_server_group_name,
      :game_server_group_arn,
      :instance_id,
      :instance_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties describing a game session.
    #
    # A game session in ACTIVE status can host players. When a game session
    # ends, its status is set to `TERMINATED`.
    #
    # Amazon GameLift Servers retains a game session resource for 30 days
    # after the game session ends. You can reuse idempotency token values
    # after this time. Game session logs are retained for 14 days.
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session. A game session ARN has the
    #   following format: `arn:aws:gamelift:<location>::gamesession/<fleet
    #   ID>/<custom ID string or idempotency token>`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that the game session is running
    #   on.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) associated with the GameLift
    #   fleet that this game session is running on.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] termination_time
    #   A time stamp indicating when this data object was terminated. Format
    #   is a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] current_player_session_count
    #   Number of players currently in the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously
    #   to the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Current status of the game session. A game session must have an
    #   `ACTIVE` status to have player sessions.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Provides additional information about game session status.
    #
    #   * `INTERRUPTED` -- The game session was hosted on an EC2 Spot
    #     instance that was reclaimed, causing the active game session to be
    #     stopped.
    #
    #   * `TRIGGERED_ON_PROCESS_TERMINATE` – The game session was stopped by
    #     calling `TerminateGameSession` with the termination mode
    #     `TRIGGER_ON_PROCESS_TERMINATE`.
    #
    #   * `FORCE_TERMINATED` – The game session was stopped by calling
    #     `TerminateGameSession` with the termination mode
    #     `FORCE_TERMINATE`.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   A set of key-value pairs that can store custom data in a game
    #   session. For example: `{"Key": "difficulty", "Value": "novice"}`.
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the game session. To connect to a Amazon GameLift
    #   Servers game server, an app needs both the IP address and port
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS identifier assigned to the instance that is running the game
    #   session. Values have the following format:
    #
    #   * TLS-enabled fleets: `<unique identifier>.<region
    #     identifier>.amazongamelift.com`.
    #
    #   * Non-TLS-enabled fleets: `ec2-<unique
    #     identifier>.compute.amazonaws.com`. (See [Amazon EC2 Instance IP
    #     Addressing][1].)
    #
    #   When connecting to a game session that is running on a TLS-enabled
    #   fleet, you must use the DNS name, not the IP address.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number for the game session. To connect to a Amazon
    #   GameLift Servers game server, an app needs both the IP address and
    #   port number.
    #   @return [Integer]
    #
    # @!attribute [rw] player_session_creation_policy
    #   Indicates whether the game session is accepting new players.
    #   @return [String]
    #
    # @!attribute [rw] creator_id
    #   A unique identifier for a player. This ID is used to enforce a
    #   resource protection policy (if one exists), that limits the number
    #   of game sessions a player can create.
    #   @return [String]
    #
    # @!attribute [rw] game_session_data
    #   A set of custom game session properties, formatted as a single
    #   string value. This data is passed to a game server process with a
    #   request to start a new game session. For more information, see
    #   [Start a game session][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @!attribute [rw] matchmaker_data
    #   Information about the matchmaking process that resulted in the game
    #   session, if matchmaking was used. Data is in JSON syntax, formatted
    #   as a string. Information includes the matchmaker ID as well as
    #   player attributes and team assignments. For more details on
    #   matchmaker data, see [Match Data][1]. Matchmaker data is updated
    #   whenever new players are added during a successful backfill (see
    #   [StartMatchBackfill][2]).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchBackfill.html
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The fleet location where the game session is running. This value
    #   might specify the fleet's home Region or a remote location.
    #   Location is expressed as an Amazon Web Services Region code such as
    #   `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSession AWS API Documentation
    #
    class GameSession < Struct.new(
      :game_session_id,
      :name,
      :fleet_id,
      :fleet_arn,
      :creation_time,
      :termination_time,
      :current_player_session_count,
      :maximum_player_session_count,
      :status,
      :status_reason,
      :game_properties,
      :ip_address,
      :dns_name,
      :port,
      :player_session_creation_policy,
      :creator_id,
      :game_session_data,
      :matchmaker_data,
      :location)
      SENSITIVE = [:ip_address, :port]
      include Aws::Structure
    end

    # Connection information for a new game session that is created in
    # response to a start matchmaking request. Once a match is made, the
    # FlexMatch engine creates a new game session for it. This information,
    # including the game session endpoint and player sessions for each
    # player in the original matchmaking request, is added to the
    # matchmaking ticket.
    #
    # @!attribute [rw] game_session_arn
    #   A unique identifier for the game session. Use the game session ID.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the game session. To connect to a Amazon GameLift
    #   Servers game server, an app needs both the IP address and port
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS identifier assigned to the instance that is running the game
    #   session. Values have the following format:
    #
    #   * TLS-enabled fleets: `<unique identifier>.<region
    #     identifier>.amazongamelift.com`.
    #
    #   * Non-TLS-enabled fleets: `ec2-<unique
    #     identifier>.compute.amazonaws.com`. (See [Amazon EC2 Instance IP
    #     Addressing][1].)
    #
    #   When connecting to a game session that is running on a TLS-enabled
    #   fleet, you must use the DNS name, not the IP address.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number for the game session. To connect to a Amazon
    #   GameLift Servers game server, an app needs both the IP address and
    #   port number.
    #   @return [Integer]
    #
    # @!attribute [rw] matched_player_sessions
    #   A collection of player session IDs, one for each player ID that was
    #   included in the original matchmaking request.
    #   @return [Array<Types::MatchedPlayerSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionConnectionInfo AWS API Documentation
    #
    class GameSessionConnectionInfo < Struct.new(
      :game_session_arn,
      :ip_address,
      :dns_name,
      :port,
      :matched_player_sessions)
      SENSITIVE = [:ip_address]
      include Aws::Structure
    end

    # A policy that puts limits on the number of game sessions that a player
    # can create within a specified span of time. With this policy, you can
    # control players' ability to consume available resources.
    #
    # The policy is evaluated when a player tries to create a new game
    # session. On receiving a `CreateGameSession` request, Amazon GameLift
    # Servers checks that the player (identified by `CreatorId`) has created
    # fewer than game session limit in the specified time period.
    #
    # @!attribute [rw] new_game_sessions_per_creator
    #   A policy that puts limits on the number of game sessions that a
    #   player can create within a specified span of time. With this policy,
    #   you can control players' ability to consume available resources.
    #
    #   The policy evaluates when a player tries to create a new game
    #   session. On receiving a `CreateGameSession` request, Amazon GameLift
    #   Servers checks that the player (identified by `CreatorId`) has
    #   created fewer than game session limit in the specified time period.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_period_in_minutes
    #   The time span used in evaluating the resource creation limit policy.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionCreationLimitPolicy AWS API Documentation
    #
    class GameSessionCreationLimitPolicy < Struct.new(
      :new_game_sessions_per_creator,
      :policy_period_in_minutes)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The game instance is currently full and cannot allow the requested
    # player(s) to join. Clients can retry such requests immediately or
    # after a waiting period.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionFullException AWS API Documentation
    #
    class GameSessionFullException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a potential game session placement, including the full
    # details of the original placement request and the current status.
    #
    # <note markdown="1"> If the game session placement status is `PENDING`, the properties for
    # game session ID/ARN, region, IP address/DNS, and port aren't final. A
    # game session is not active and ready to accept players until placement
    # status reaches `FULFILLED`. When the placement is in `PENDING` status,
    # Amazon GameLift Servers may attempt to place a game session multiple
    # times before succeeding. With each attempt it creates a
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_GameSession][1]
    # object and updates this placement object with the new game session
    # properties.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameSession
    #
    # @!attribute [rw] placement_id
    #   A unique identifier for a game session placement.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_name
    #   A descriptive label that is associated with game session queue.
    #   Queue names must be unique within each Region.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the game session placement request.
    #
    #   * **PENDING** -- The placement request is in the queue waiting to be
    #     processed. Game session properties are not yet final.
    #
    #   * **FULFILLED** -- A new game session has been successfully placed.
    #     Game session properties are now final.
    #
    #   * **CANCELLED** -- The placement request was canceled.
    #
    #   * **TIMED\_OUT** -- A new game session was not successfully created
    #     before the time limit expired. You can resubmit the placement
    #     request as needed.
    #
    #   * **FAILED** -- Amazon GameLift Servers is not able to complete the
    #     process of placing the game session. Common reasons are the game
    #     session terminated before the placement process was completed, or
    #     an unexpected internal error.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   A set of key-value pairs that can store custom data in a game
    #   session. For example: `{"Key": "difficulty", "Value": "novice"}`.
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously
    #   to the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] game_session_name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session. This value isn't final
    #   until placement status is `FULFILLED`.
    #   @return [String]
    #
    # @!attribute [rw] game_session_arn
    #   Identifier for the game session created by this placement request.
    #   This identifier is unique across all Regions. This value isn't
    #   final until placement status is `FULFILLED`.
    #   @return [String]
    #
    # @!attribute [rw] game_session_region
    #   Name of the Region where the game session created by this placement
    #   request is running. This value isn't final until placement status
    #   is `FULFILLED`.
    #   @return [String]
    #
    # @!attribute [rw] player_latencies
    #   A set of values, expressed in milliseconds, that indicates the
    #   amount of latency that a player experiences when connected to Amazon
    #   Web Services Regions.
    #   @return [Array<Types::PlayerLatency>]
    #
    # @!attribute [rw] start_time
    #   Time stamp indicating when this request was placed in the queue.
    #   Format is a number expressed in Unix time as milliseconds (for
    #   example `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time stamp indicating when this request was completed, canceled, or
    #   timed out.
    #   @return [Time]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the game session. To connect to a Amazon GameLift
    #   Servers game server, an app needs both the IP address and port
    #   number. This value isn't final until placement status is
    #   `FULFILLED`.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS identifier assigned to the instance that is running the game
    #   session. Values have the following format:
    #
    #   * TLS-enabled fleets: `<unique identifier>.<region
    #     identifier>.amazongamelift.com`.
    #
    #   * Non-TLS-enabled fleets: `ec2-<unique
    #     identifier>.compute.amazonaws.com`. (See [Amazon EC2 Instance IP
    #     Addressing][1].)
    #
    #   When connecting to a game session that is running on a TLS-enabled
    #   fleet, you must use the DNS name, not the IP address.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number for the game session. To connect to a Amazon
    #   GameLift Servers game server, an app needs both the IP address and
    #   port number. This value isn't final until placement status is
    #   `FULFILLED`.
    #   @return [Integer]
    #
    # @!attribute [rw] placed_player_sessions
    #   A collection of information on player sessions created in response
    #   to the game session placement request. These player sessions are
    #   created only after a new game session is successfully placed
    #   (placement status is `FULFILLED`). This information includes the
    #   player ID, provided in the placement request, and a corresponding
    #   player session ID.
    #   @return [Array<Types::PlacedPlayerSession>]
    #
    # @!attribute [rw] game_session_data
    #   A set of custom game session properties, formatted as a single
    #   string value. This data is passed to a game server process with a
    #   request to start a new game session. For more information, see
    #   [Start a game session][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
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
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data
    #   @return [String]
    #
    # @!attribute [rw] priority_configuration_override
    #   An alternative priority list of locations that's included with a
    #   game session placement request. When provided, the list overrides a
    #   queue's location order list for this game session placement request
    #   only. The list might include Amazon Web Services Regions, local
    #   zones, and custom locations (for Anywhere fleets). The fallback
    #   strategy tells Amazon GameLift Servers what action to take (if any)
    #   in the event that it failed to place a new game session.
    #   @return [Types::PriorityConfigurationOverride]
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
      :dns_name,
      :port,
      :placed_player_sessions,
      :game_session_data,
      :matchmaker_data,
      :priority_configuration_override)
      SENSITIVE = [:ip_address, :port]
      include Aws::Structure
    end

    # Configuration for a game session placement mechanism that processes
    # requests for new game sessions. A queue can be used on its own or as
    # part of a matchmaking solution.
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with game session queue.
    #   Queue names must be unique within each Region.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers game session queue resource and uniquely identifies
    #   it. ARNs are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::gamesessionqueue/<queue name>`. In a
    #   Amazon GameLift Servers game session queue ARN, the resource ID
    #   matches the *Name* value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum time, in seconds, that a new game session placement
    #   request remains in the queue. When a request exceeds this time, the
    #   game session placement changes to a `TIMED_OUT` status.
    #   @return [Integer]
    #
    # @!attribute [rw] player_latency_policies
    #   A set of policies that enforce a sliding cap on player latency when
    #   processing game sessions placement requests. Use multiple policies
    #   to gradually relax the cap over time if Amazon GameLift Servers
    #   can't make a placement. Policies are evaluated in order starting
    #   with the lowest maximum latency value.
    #   @return [Array<Types::PlayerLatencyPolicy>]
    #
    # @!attribute [rw] destinations
    #   A list of fleets and/or fleet aliases that can be used to fulfill
    #   game session placement requests in the queue. Destinations are
    #   identified by either a fleet ARN or a fleet alias ARN, and are
    #   listed in order of placement preference.
    #   @return [Array<Types::GameSessionQueueDestination>]
    #
    # @!attribute [rw] filter_configuration
    #   A list of locations where a queue is allowed to place new game
    #   sessions. Locations are specified in the form of Amazon Web Services
    #   Region codes, such as `us-west-2`. If this parameter is not set,
    #   game sessions can be placed in any queue location.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] priority_configuration
    #   Custom settings to use when prioritizing destinations and locations
    #   for game session placements. This configuration replaces the FleetIQ
    #   default prioritization process. Priority types that are not
    #   explicitly named will be automatically applied at the end of the
    #   prioritization process.
    #   @return [Types::PriorityConfiguration]
    #
    # @!attribute [rw] custom_event_data
    #   Information that is added to all events that are related to this
    #   game session queue.
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   An SNS topic ARN that is set up to receive game session placement
    #   notifications. See [ Setting up notifications for game session
    #   placement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionQueue AWS API Documentation
    #
    class GameSessionQueue < Struct.new(
      :name,
      :game_session_queue_arn,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # A fleet or alias designated in a game session queue. Queues fulfill
    # requests for new game sessions by placing a new game session on any of
    # the queue's destinations.
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) that is assigned to fleet or fleet
    #   alias. ARNs, which include a fleet ID or alias ID and a Region name,
    #   provide a unique identifier across all Regions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GameSessionQueueDestination AWS API Documentation
    #
    class GameSessionQueueDestination < Struct.new(
      :destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that holds the compute resource
    #   that you want to connect to. You can use either the fleet ID or ARN
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] compute_name
    #   A unique identifier for the compute resource that you want to
    #   connect to. For an EC2 fleet, use an instance ID. For a managed
    #   container fleet, use a compute name. You can retrieve a fleet's
    #   compute names by calling [ListCompute][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetComputeAccessInput AWS API Documentation
    #
    class GetComputeAccessInput < Struct.new(
      :fleet_id,
      :compute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The ID of the fleet that holds the compute resource to be accessed.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] compute_name
    #   The identifier of the compute resource to be accessed. This value
    #   might be either a compute name or an instance ID.
    #   @return [String]
    #
    # @!attribute [rw] compute_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to an Amazon
    #   GameLift Servers compute resource and uniquely identifies it. ARNs
    #   are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::compute/compute-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   A set of temporary Amazon Web Services credentials for use when
    #   connecting to the compute resource with Amazon EC2 Systems Manager
    #   (SSM).
    #   @return [Types::AwsCredentials]
    #
    # @!attribute [rw] target
    #   The instance ID where the compute resource is running.
    #   @return [String]
    #
    # @!attribute [rw] container_identifiers
    #   For a managed container fleet, a list of containers on the compute.
    #   Use the container runtime ID with Docker commands to connect to a
    #   specific container.
    #   @return [Array<Types::ContainerIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetComputeAccessOutput AWS API Documentation
    #
    class GetComputeAccessOutput < Struct.new(
      :fleet_id,
      :fleet_arn,
      :compute_name,
      :compute_arn,
      :credentials,
      :target,
      :container_identifiers)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that the compute is registered to.
    #   @return [String]
    #
    # @!attribute [rw] compute_name
    #   The name of the compute resource you are requesting the
    #   authentication token for. For an Anywhere fleet compute, use the
    #   registered compute name. For an EC2 fleet instance, use the instance
    #   ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetComputeAuthTokenInput AWS API Documentation
    #
    class GetComputeAuthTokenInput < Struct.new(
      :fleet_id,
      :compute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that the compute is registered to.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] compute_name
    #   The name of the compute resource that the authentication token is
    #   issued to.
    #   @return [String]
    #
    # @!attribute [rw] compute_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to an Amazon
    #   GameLift Servers compute resource and uniquely identifies it. ARNs
    #   are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::compute/compute-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   A valid temporary authentication token.
    #   @return [String]
    #
    # @!attribute [rw] expiration_timestamp
    #   The amount of time until the authentication token is no longer
    #   valid.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetComputeAuthTokenOutput AWS API Documentation
    #
    class GetComputeAuthTokenOutput < Struct.new(
      :fleet_id,
      :fleet_arn,
      :compute_name,
      :compute_arn,
      :auth_token,
      :expiration_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session to get logs for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetGameSessionLogUrlInput AWS API Documentation
    #
    class GetGameSessionLogUrlInput < Struct.new(
      :game_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pre_signed_url
    #   Location of the requested game session logs, available for download.
    #   This URL is valid for 15 minutes, after which S3 will reject any
    #   download request using this URL. You can request a new URL any time
    #   within the 14-day period that the logs are retained.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetGameSessionLogUrlOutput AWS API Documentation
    #
    class GetGameSessionLogUrlOutput < Struct.new(
      :pre_signed_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that contains the instance you
    #   want to access. You can request access to instances in EC2 fleets
    #   with the following statuses: `ACTIVATING`, `ACTIVE`, or `ERROR`. Use
    #   either a fleet ID or an ARN value.
    #
    #   <note markdown="1"> You can access fleets in `ERROR` status for a short period of time
    #   before Amazon GameLift Servers deletes them.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   A unique identifier for the instance you want to access. You can
    #   access an instance in any status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetInstanceAccessInput AWS API Documentation
    #
    class GetInstanceAccessInput < Struct.new(
      :fleet_id,
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_access
    #   The connection information for a fleet instance, including IP
    #   address and access credentials.
    #   @return [Types::InstanceAccess]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetInstanceAccessOutput AWS API Documentation
    #
    class GetInstanceAccessOutput < Struct.new(
      :instance_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # A game session with this custom ID string already exists in this
    # fleet. Resolve this conflict before retrying this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a virtual computing instance that runs game server
    # processes and hosts game sessions. In Amazon GameLift Servers, one or
    # more instances make up a managed EC2 fleet.
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that the instance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   A unique identifier for the instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   IP address that is assigned to the instance.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS identifier assigned to the instance that is running the game
    #   session. Values have the following format:
    #
    #   * TLS-enabled fleets: `<unique identifier>.<region
    #     identifier>.amazongamelift.com`.
    #
    #   * Non-TLS-enabled fleets: `ec2-<unique
    #     identifier>.compute.amazonaws.com`. (See [Amazon EC2 Instance IP
    #     Addressing][1].)
    #
    #   When connecting to a game session that is running on a TLS-enabled
    #   fleet, you must use the DNS name, not the IP address.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   Operating system that is running on this EC2 instance.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See
    #   more details in the [Amazon Linux 2 FAQs][1]. For game servers that
    #   are hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
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
    #     back to Amazon GameLift Servers that it is ready to host a game
    #     session. The instance is now considered ready to host game
    #     sessions.
    #
    #   * **TERMINATING** -- The instance is in the process of shutting
    #     down. This may happen to reduce capacity during a scaling down
    #     event or to recycle resources in the event of a problem.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The fleet location of the instance, expressed as an Amazon Web
    #   Services Region code, such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :fleet_id,
      :fleet_arn,
      :instance_id,
      :ip_address,
      :dns_name,
      :operating_system,
      :type,
      :status,
      :creation_time,
      :location)
      SENSITIVE = [:ip_address]
      include Aws::Structure
    end

    # Information and credentials that you can use to remotely connect to an
    # instance in an EC2 managed fleet. This data type is returned in
    # response to a call to
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_GetInstanceAccess][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet containing the instance to be
    #   accessed.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   A unique identifier for the instance to be accessed.
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
    #   Security credentials that are required to access the instance.
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
      SENSITIVE = [:ip_address, :credentials]
      include Aws::Structure
    end

    # A set of credentials that allow remote access to an instance in an EC2
    # managed fleet. These credentials are returned in response to a call to
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_GetInstanceAccess][1],
    # which requests access for instances that are running game servers with
    # the Amazon GameLift Servers server SDK version 4.x or earlier.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess
    #
    # @!attribute [rw] user_name
    #   A user name for logging in.
    #   @return [String]
    #
    # @!attribute [rw] secret
    #   Secret string. For Windows instances, the secret is a password for
    #   use with Windows Remote Desktop. For Linux instances, it's a
    #   private key for use with SSH.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/InstanceCredentials AWS API Documentation
    #
    class InstanceCredentials < Struct.new(
      :user_name,
      :secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # An allowed instance type for a game server group. All game server
    # groups must have at least two instance types defined for it. Amazon
    # GameLift Servers FleetIQ periodically evaluates each defined instance
    # type for viability. It then updates the Auto Scaling group with the
    # list of viable instance types.
    #
    # @!attribute [rw] instance_type
    #   An Amazon EC2 instance type designation.
    #   @return [String]
    #
    # @!attribute [rw] weighted_capacity
    #   Instance weighting that indicates how much this instance type
    #   contributes to the total capacity of a game server group. Instance
    #   weights are used by Amazon GameLift Servers FleetIQ to calculate the
    #   instance type's cost per unit hour and better identify the most
    #   cost-effective options. For detailed information on weighting
    #   instance capacity, see [Instance Weighting][1] in the *Amazon
    #   Elastic Compute Cloud Auto Scaling User Guide*. Default value is
    #   "1".
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/InstanceDefinition AWS API Documentation
    #
    class InstanceDefinition < Struct.new(
      :instance_type,
      :weighted_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an unrecoverable internal failure while
    # processing the request. Clients can retry such requests immediately or
    # after a waiting period.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a resource associated with the request and/or the fleet. Resolve
    # the conflict before retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/InvalidFleetStatusException AWS API Documentation
    #
    class InvalidFleetStatusException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a resource associated with the request and/or the game instance.
    # Resolve the conflict before retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/InvalidGameSessionStatusException AWS API Documentation
    #
    class InvalidGameSessionStatusException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameter values in the request are invalid. Correct the
    # invalid parameter values before retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of IP addresses and port settings that allow inbound traffic
    # to connect to processes on an instance in a fleet. Processes are
    # assigned an IP address/port number combination, which must fall into
    # the fleet's allowed ranges.
    #
    # For Amazon GameLift Servers Realtime fleets, Amazon GameLift Servers
    # automatically opens two port ranges, one for TCP messaging and one for
    # UDP.
    #
    # @!attribute [rw] from_port
    #   A starting value for a range of allowed port numbers.
    #
    #   For fleets using Linux builds, only ports `22` and `1026-60000` are
    #   valid.
    #
    #   For fleets using Windows builds, only ports `1026-60000` are valid.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   An ending value for a range of allowed port numbers. Port numbers
    #   are end-inclusive. This value must be equal to or greater than
    #   `FromPort`.
    #
    #   For fleets using Linux builds, only ports `22` and `1026-60000` are
    #   valid.
    #
    #   For fleets using Windows builds, only ports `1026-60000` are valid.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_range
    #   A range of allowed IP addresses. This value must be expressed in
    #   CIDR notation. Example: "`000.000.000.000/[subnet mask]`" or
    #   optionally the shortened version "`0.0.0.0/[subnet mask]`".
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The network communication protocol used by the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/IpPermission AWS API Documentation
    #
    class IpPermission < Struct.new(
      :from_port,
      :to_port,
      :ip_range,
      :protocol)
      SENSITIVE = [:from_port, :to_port, :ip_range]
      include Aws::Structure
    end

    # An Amazon Elastic Compute Cloud launch template that contains
    # configuration settings and game server code to be deployed to all
    # instances in a game server group. The launch template is specified
    # when creating a new game server group.
    #
    # @!attribute [rw] launch_template_id
    #   A unique identifier for an existing Amazon EC2 launch template.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_name
    #   A readable identifier for an existing Amazon EC2 launch template.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the Amazon EC2 launch template to use. If no version
    #   is specified, the default version will be used. With Amazon EC2, you
    #   can specify a default version for a launch template. If none is set,
    #   the default is the first version created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/LaunchTemplateSpecification AWS API Documentation
    #
    class LaunchTemplateSpecification < Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause the resource to exceed the allowed
    # service limit. Resolve the issue before retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] routing_strategy_type
    #   The routing type to filter results on. Use this parameter to
    #   retrieve only aliases with a certain routing type. To retrieve all
    #   aliases, leave this parameter empty.
    #
    #   Possible routing types include the following:
    #
    #   * **SIMPLE** -- The alias resolves to one specific fleet. Use this
    #     type when routing to active fleets.
    #
    #   * **TERMINAL** -- The alias does not resolve to a fleet but instead
    #     can be used to display a message to the user. A terminal alias
    #     throws a TerminalRoutingStrategyException with the
    #     [RoutingStrategy][1] message embedded.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_RoutingStrategy.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListAliasesInput AWS API Documentation
    #
    class ListAliasesInput < Struct.new(
      :routing_strategy_type,
      :name,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aliases
    #   A collection of alias resources that match the request parameters.
    #   @return [Array<Types::Alias>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListAliasesOutput AWS API Documentation
    #
    class ListAliasesOutput < Struct.new(
      :aliases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListBuildsInput AWS API Documentation
    #
    class ListBuildsInput < Struct.new(
      :status,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] builds
    #   A collection of build resources that match the request.
    #   @return [Array<Types::Build>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListBuildsOutput AWS API Documentation
    #
    class ListBuildsOutput < Struct.new(
      :builds,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to retrieve compute resources for.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The name of a location to retrieve compute resources for. For an
    #   Amazon GameLift Servers Anywhere fleet, use a custom location. For a
    #   managed fleet, provide a Amazon Web Services Region or Local Zone
    #   code (for example: `us-west-2` or `us-west-2-lax-1`).
    #   @return [String]
    #
    # @!attribute [rw] container_group_definition_name
    #   For computes in a managed container fleet, the name of the deployed
    #   container group definition.
    #   @return [String]
    #
    # @!attribute [rw] compute_status
    #   The status of computes in a managed container fleet, based on the
    #   success of the latest update deployment.
    #
    #   * `ACTIVE` -- The compute is deployed with the correct container
    #     definitions. It is ready to process game servers and host game
    #     sessions.
    #
    #   * `IMPAIRED` -- An update deployment to the compute failed, and the
    #     compute is deployed with incorrect container definitions.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListComputeInput AWS API Documentation
    #
    class ListComputeInput < Struct.new(
      :fleet_id,
      :location,
      :container_group_definition_name,
      :compute_status,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compute_list
    #   A list of compute resources in the specified fleet.
    #   @return [Array<Types::Compute>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListComputeOutput AWS API Documentation
    #
    class ListComputeOutput < Struct.new(
      :compute_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_group_definition_name
    #   The container group definition to filter the list on. Use this
    #   parameter to retrieve only those fleets that use the specified
    #   container group definition. You can specify the container group
    #   definition's name to get fleets with the latest versions.
    #   Alternatively, provide an ARN value to get fleets with a specific
    #   version number.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerFleetsInput AWS API Documentation
    #
    class ListContainerFleetsInput < Struct.new(
      :container_group_definition_name,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_fleets
    #   A collection of container fleet objects for all fleets that match
    #   the request criteria.
    #   @return [Array<Types::ContainerFleet>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerFleetsOutput AWS API Documentation
    #
    class ListContainerFleetsOutput < Struct.new(
      :container_fleets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique identifier for the container group definition to retrieve
    #   properties for. You can use either the `Name` or `ARN` value.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerGroupDefinitionVersionsInput AWS API Documentation
    #
    class ListContainerGroupDefinitionVersionsInput < Struct.new(
      :name,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_group_definitions
    #   A result set of container group definitions that match the request.
    #   @return [Array<Types::ContainerGroupDefinition>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerGroupDefinitionVersionsOutput AWS API Documentation
    #
    class ListContainerGroupDefinitionVersionsOutput < Struct.new(
      :container_group_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_group_type
    #   The type of container group to retrieve. Container group type
    #   determines how Amazon GameLift Servers deploys the container group
    #   on each fleet instance.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerGroupDefinitionsInput AWS API Documentation
    #
    class ListContainerGroupDefinitionsInput < Struct.new(
      :container_group_type,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_group_definitions
    #   A result set of container group definitions that match the request.
    #   @return [Array<Types::ContainerGroupDefinition>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerGroupDefinitionsOutput AWS API Documentation
    #
    class ListContainerGroupDefinitionsOutput < Struct.new(
      :container_group_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the container fleet. You can use either the
    #   fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleetDeploymentsInput AWS API Documentation
    #
    class ListFleetDeploymentsInput < Struct.new(
      :fleet_id,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_deployments
    #   The requested deployment information.
    #   @return [Array<Types::FleetDeployment>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleetDeploymentsOutput AWS API Documentation
    #
    class ListFleetDeploymentsOutput < Struct.new(
      :fleet_deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_id
    #   A unique identifier for the build to request fleets for. Use this
    #   parameter to return only fleets using a specified build. Use either
    #   the build ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] script_id
    #   A unique identifier for the Realtime script to request fleets for.
    #   Use this parameter to return only fleets using a specified script.
    #   Use either the script ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleetsInput AWS API Documentation
    #
    class ListFleetsInput < Struct.new(
      :build_id,
      :script_id,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_ids
    #   A set of fleet IDs that match the list request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleetsOutput AWS API Documentation
    #
    class ListFleetsOutput < Struct.new(
      :fleet_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   The game server groups' limit.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListGameServerGroupsInput AWS API Documentation
    #
    class ListGameServerGroupsInput < Struct.new(
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_groups
    #   The game server groups' game server groups.
    #   @return [Array<Types::GameServerGroup>]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListGameServerGroupsOutput AWS API Documentation
    #
    class ListGameServerGroupsOutput < Struct.new(
      :game_server_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   An identifier for the game server group to retrieve a list of game
    #   servers from. Use either the name or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Indicates how to sort the returned data based on game server
    #   registration timestamp. Use `ASCENDING` to retrieve oldest game
    #   servers first, or use `DESCENDING` to retrieve newest game servers
    #   first. If this parameter is left empty, game servers are returned in
    #   no particular order.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListGameServersInput AWS API Documentation
    #
    class ListGameServersInput < Struct.new(
      :game_server_group_name,
      :sort_order,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_servers
    #   A collection of game server objects that match the request.
    #   @return [Array<Types::GameServer>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListGameServersOutput AWS API Documentation
    #
    class ListGameServersOutput < Struct.new(
      :game_servers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters the list for `AWS` or `CUSTOM` locations. Use this parameter
    #   to narrow down results to only Amazon Web Services-managed locations
    #   (Amazon EC2 or container) or only your custom locations (such as an
    #   Amazon GameLift Servers Anywhere fleet).
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListLocationsInput AWS API Documentation
    #
    class ListLocationsInput < Struct.new(
      :filters,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] locations
    #   A collection of locations, including both Amazon Web Services and
    #   custom locations. Each location includes a name and ping beacon
    #   information that can be used to measure network latency between
    #   player devices and the location.
    #   @return [Array<Types::LocationModel>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListLocationsOutput AWS API Documentation
    #
    class ListLocationsOutput < Struct.new(
      :locations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListScriptsInput AWS API Documentation
    #
    class ListScriptsInput < Struct.new(
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scripts
    #   A set of properties describing the requested script.
    #   @return [Array<Types::Script>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListScriptsOutput AWS API Documentation
    #
    class ListScriptsOutput < Struct.new(
      :scripts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name ([ARN][1]) that uniquely identifies the
    #   Amazon GameLift Servers resource that you want to retrieve tags for.
    #   Amazon GameLift Servers includes resource ARNs in the data object
    #   for the resource. You can retrieve the ARN by calling a `List` or
    #   `Describe` operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The collection of tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a location in a multi-location fleet.
    #
    # @!attribute [rw] location_state
    #   A fleet location and its current life-cycle state.
    #   @return [Types::LocationState]
    #
    # @!attribute [rw] stopped_actions
    #   A list of fleet actions that have been suspended in the fleet
    #   location.
    #   @return [Array<String>]
    #
    # @!attribute [rw] update_status
    #   The status of fleet activity updates to the location. The status
    #   `PENDING_UPDATE` indicates that `StopFleetActions` or
    #   `StartFleetActions` has been requested but the update has not yet
    #   been completed for the location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/LocationAttributes AWS API Documentation
    #
    class LocationAttributes < Struct.new(
      :location_state,
      :stopped_actions,
      :update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A remote location where a multi-location fleet can deploy game servers
    # for game hosting.
    #
    # @!attribute [rw] location
    #   An Amazon Web Services Region code, such as `us-west-2`. For a list
    #   of supported Regions and Local Zones, see [ Amazon GameLift Servers
    #   service locations][1] for managed hosting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/LocationConfiguration AWS API Documentation
    #
    class LocationConfiguration < Struct.new(
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of a location, which can include its name, ARN (for custom
    # locations), and ping beacon information.
    #
    # @!attribute [rw] location_name
    #   The location's name.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a custom
    #   location resource and uniquely identifies it. ARNs are unique across
    #   all Regions. Format is
    #   `arn:aws:gamelift:<region>::location/location-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] ping_beacon
    #   Information about the UDP ping beacon for this location.
    #   @return [Types::PingBeacon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/LocationModel AWS API Documentation
    #
    class LocationModel < Struct.new(
      :location_name,
      :location_arn,
      :ping_beacon)
      SENSITIVE = []
      include Aws::Structure
    end

    # A fleet location and its life-cycle state. A location state object
    # might be used to describe a fleet's remote location or home Region.
    # Life-cycle state tracks the progress of launching the first instance
    # in a new location and preparing it for game hosting, and then removing
    # all instances and deleting the location from the fleet.
    #
    # * **NEW** -- A new fleet location has been defined and desired
    #   instances is set to 1.
    #
    # * **DOWNLOADING/VALIDATING/BUILDING/ACTIVATING** -- Amazon GameLift
    #   Servers is setting up the new fleet location, creating new instances
    #   with the game build or Realtime script and starting server
    #   processes.
    #
    # * **ACTIVE** -- Hosts can now accept game sessions.
    #
    # * **ERROR** -- An error occurred when downloading, validating,
    #   building, or activating the fleet location.
    #
    # * **DELETING** -- Hosts are responding to a delete fleet location
    #   request.
    #
    # * **TERMINATED** -- The fleet location no longer exists.
    #
    # * **NOT\_FOUND** -- The fleet location was not found. This could be
    #   because the custom location was removed or not created.
    #
    # @!attribute [rw] location
    #   The fleet location, expressed as an Amazon Web Services Region code
    #   such as `us-west-2`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The life-cycle status of a fleet location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/LocationState AWS API Documentation
    #
    class LocationState < Struct.new(
      :location,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a multi-location container fleet, describes the progress of a
    # deployment across all fleet locations.
    #
    # @!attribute [rw] deployment_status
    #   The status of fleet deployment activity in the location.
    #
    #   * `IN_PROGRESS` -- The deployment is in progress.
    #
    #   * `IMPAIRED` -- The deployment failed and the fleet has some
    #     impaired containers.
    #
    #   * `COMPLETE` -- The deployment has completed successfully.
    #
    #   * `ROLLBACK_IN_PROGRESS` -- The deployment failed and rollback has
    #     been initiated.
    #
    #   * `ROLLBACK_IN_COMPLETE` -- The deployment failed and rollback has
    #     been completed.
    #
    #   * `CANCELLED` -- The deployment was cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/LocationalDeployment AWS API Documentation
    #
    class LocationalDeployment < Struct.new(
      :deployment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A method for collecting container logs for the fleet. Amazon GameLift
    # Servers saves all standard output for each container in logs,
    # including game session logs. You can select from the following
    # methods:
    #
    # @!attribute [rw] log_destination
    #   The type of log collection to use for a fleet.
    #
    #   * `CLOUDWATCH` -- (default value) Send logs to an Amazon CloudWatch
    #     log group that you define. Each container emits a log stream,
    #     which is organized in the log group.
    #
    #   * `S3` -- Store logs in an Amazon S3 bucket that you define. This
    #     bucket must reside in the fleet's home Amazon Web Services
    #     Region.
    #
    #   * `NONE` -- Don't collect container logs.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   If log destination is `S3`, logs are sent to the specified Amazon S3
    #   bucket name.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   If log destination is `CLOUDWATCH`, logs are sent to the specified
    #   log group in Amazon CloudWatch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/LogConfiguration AWS API Documentation
    #
    class LogConfiguration < Struct.new(
      :log_destination,
      :s3_bucket_name,
      :log_group_arn)
      SENSITIVE = []
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
    #   A unique identifier for a player
    #   @return [String]
    #
    # @!attribute [rw] player_session_id
    #   A unique identifier for a player session
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/MatchedPlayerSession AWS API Documentation
    #
    class MatchedPlayerSession < Struct.new(
      :player_id,
      :player_session_id)
      SENSITIVE = [:player_id]
      include Aws::Structure
    end

    # Guidelines for use with FlexMatch to match players into games. All
    # matchmaking requests must specify a matchmaking configuration.
    #
    # @!attribute [rw] name
    #   A unique identifier for the matchmaking configuration. This name is
    #   used to identify the configuration associated with a matchmaking
    #   request or ticket.
    #   @return [String]
    #
    # @!attribute [rw] configuration_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers matchmaking configuration resource and uniquely
    #   identifies it. ARNs are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::matchmakingconfiguration/<matchmaking
    #   configuration name>`. In a Amazon GameLift Servers configuration
    #   ARN, the resource ID matches the *Name* value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A descriptive label that is associated with matchmaking
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_arns
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers game session queue resource and uniquely identifies
    #   it. ARNs are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::gamesessionqueue/<queue name>`. Queues
    #   can be located in any Region. Queues are used to start new Amazon
    #   GameLift Servers-hosted game sessions for matches that are created
    #   with this matchmaking configuration. This property is not set when
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can
    #   remain in process before timing out. Requests that fail due to
    #   timing out can be resubmitted as needed.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match, if acceptance is required. If any player rejects the
    #   match or fails to accept before the timeout, the ticket continues to
    #   look for an acceptable match.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_required
    #   A flag that indicates whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to TRUE. When this option is enabled, matchmaking
    #   tickets use the status `REQUIRES_ACCEPTANCE` to indicate when a
    #   completed potential match is waiting for player acceptance.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule_set_name
    #   A unique identifier for the matchmaking rule set to use with this
    #   configuration. A matchmaking configuration can only use rule sets
    #   that are defined in the same Region.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_arn
    #   The Amazon Resource Name ([ARN][1]) associated with the GameLift
    #   matchmaking rule set resource that this configuration uses.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   An SNS topic ARN that is set up to receive matchmaking
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] additional_player_count
    #   The number of player slots in a match to keep open for future
    #   players. For example, if the configuration's rule set specifies a
    #   match for a single 12-person team, and the additional player count
    #   is set to 2, only 10 players are selected for the match. This
    #   parameter is not used when `FlexMatchMode` is set to `STANDALONE`.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_event_data
    #   Information to attach to all events related to the matchmaking
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] game_properties
    #   A set of key-value pairs that can store custom data in a game
    #   session. For example: `{"Key": "difficulty", "Value": "novice"}`.
    #   This information is added to the new `GameSession` object that is
    #   created for a successful match. This parameter is not used when
    #   `FlexMatchMode` is set to `STANDALONE`.
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] game_session_data
    #   A set of custom game session properties, formatted as a single
    #   string value. This data is passed to a game server process with a
    #   request to start a new game session. For more information, see
    #   [Start a game session][1]. This information is added to the new
    #   `GameSession` object that is created for a successful match. This
    #   parameter is not used when `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @!attribute [rw] backfill_mode
    #   The method used to backfill game sessions created with this
    #   matchmaking configuration. MANUAL indicates that the game makes
    #   backfill requests or does not use the match backfill feature.
    #   AUTOMATIC indicates that GameLift creates backfill requests whenever
    #   a game session has one or more open slots. Learn more about manual
    #   and automatic backfill in [Backfill existing games with
    #   FlexMatch][1]. Automatic backfill is not available when
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    #   @return [String]
    #
    # @!attribute [rw] flex_match_mode
    #   Indicates whether this matchmaking configuration is being used with
    #   Amazon GameLift Servers hosting or as a standalone matchmaking
    #   solution.
    #
    #   * **STANDALONE** - FlexMatch forms matches and returns match
    #     information, including players and team assignments, in a [
    #     MatchmakingSucceeded][1] event.
    #
    #   * **WITH\_QUEUE** - FlexMatch forms matches and uses the specified
    #     Amazon GameLift Servers queue to start a game session for the
    #     match.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/MatchmakingConfiguration AWS API Documentation
    #
    class MatchmakingConfiguration < Struct.new(
      :name,
      :configuration_arn,
      :description,
      :game_session_queue_arns,
      :request_timeout_seconds,
      :acceptance_timeout_seconds,
      :acceptance_required,
      :rule_set_name,
      :rule_set_arn,
      :notification_target,
      :additional_player_count,
      :custom_event_data,
      :creation_time,
      :game_properties,
      :game_session_data,
      :backfill_mode,
      :flex_match_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Set of rule statements, used with FlexMatch, that determine how to
    # build your player matches. Each rule set describes a type of group to
    # be created and defines the parameters for acceptable player matches.
    #
    # A rule set may define the following elements for a match. For detailed
    # information and examples showing how to construct a rule set, see
    # [Build a FlexMatch rule set][1].
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
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    #
    # @!attribute [rw] rule_set_name
    #   A unique identifier for the matchmaking rule set
    #   @return [String]
    #
    # @!attribute [rw] rule_set_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers matchmaking rule set resource and uniquely
    #   identifies it. ARNs are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::matchmakingruleset/<ruleset name>`. In a
    #   GameLift rule set ARN, the resource ID matches the *RuleSetName*
    #   value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] rule_set_body
    #   A collection of matchmaking rules, formatted as a JSON string.
    #   Comments are not allowed in JSON, but most elements support a
    #   description field.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/MatchmakingRuleSet AWS API Documentation
    #
    class MatchmakingRuleSet < Struct.new(
      :rule_set_name,
      :rule_set_arn,
      :rule_set_body,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ticket generated to track the progress of a matchmaking request. Each
    # ticket is uniquely identified by a ticket ID, supplied by the
    # requester, when creating a matchmaking request.
    #
    # @!attribute [rw] ticket_id
    #   A unique identifier for a matchmaking ticket.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   Name of the matchmaking configuration that is used with this ticket.
    #   Matchmaking configurations determine how players are grouped into a
    #   match and how a new game session is created for the match.
    #   @return [String]
    #
    # @!attribute [rw] configuration_arn
    #   The Amazon Resource Name ([ARN][1]) associated with the GameLift
    #   matchmaking configuration resource that is used with this ticket.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
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
    #     players must accept the match. This status is used only with
    #     requests that use a matchmaking configuration with a player
    #     acceptance requirement.
    #
    #   * **PLACING** -- The FlexMatch engine has matched players and is in
    #     the process of placing a new game session for the match.
    #
    #   * **COMPLETED** -- Players have been matched and a game session is
    #     ready to host the players. A ticket in this state contains the
    #     necessary connection information for players.
    #
    #   * **FAILED** -- The matchmaking request was not completed.
    #
    #   * **CANCELLED** -- The matchmaking request was canceled. This may be
    #     the result of a `StopMatchmaking` operation or a proposed match
    #     that one or more players failed to accept.
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
    #   example `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time stamp indicating when the matchmaking request stopped being
    #   processed due to successful completion, timeout, or cancellation.
    #   Format is a number expressed in Unix time as milliseconds (for
    #   example `"1469498468.057"`).
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
    #   Connection information for a new game session. Once a match is made,
    #   the FlexMatch engine creates a new game session for it. This
    #   information is added to the matchmaking ticket, which you can be
    #   retrieve by calling [DescribeMatchmaking][1] .
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeMatchmaking.html
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
      :configuration_arn,
      :status,
      :status_reason,
      :status_message,
      :start_time,
      :end_time,
      :players,
      :game_session_connection_info,
      :estimated_wait_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resources was not found. The resource was either not
    # created yet or deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because Amazon GameLift Servers has not yet
    # finished validating this compute. We recommend attempting 8 to 10
    # retries over 3 to 5 minutes with [exponential backoffs and jitter][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/https:/aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/NotReadyException AWS API Documentation
    #
    class NotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified game server group has no available game servers to
    # fulfill a `ClaimGameServer` request. Clients can retry such requests
    # immediately or after a waiting period.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/OutOfCapacityException AWS API Documentation
    #
    class OutOfCapacityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a UDP ping beacon that can be used to measure
    # network latency between a player device and an Amazon GameLift Servers
    # hosting location.
    #
    # @!attribute [rw] udp_endpoint
    #   The domain name and port of the UDP ping beacon.
    #   @return [Types::UDPEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PingBeacon AWS API Documentation
    #
    class PingBeacon < Struct.new(
      :udp_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a player session. This object contains only the
    # player ID and player session ID. To retrieve full details on a player
    # session, call [DescribePlayerSessions][1] with the player session ID.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribePlayerSessions.html
    #
    # @!attribute [rw] player_id
    #   A unique identifier for a player that is associated with this player
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] player_session_id
    #   A unique identifier for a player session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PlacedPlayerSession AWS API Documentation
    #
    class PlacedPlayerSession < Struct.new(
      :player_id,
      :player_session_id)
      SENSITIVE = [:player_id]
      include Aws::Structure
    end

    # Represents a player in matchmaking. When starting a matchmaking
    # request, a player has a player ID, attributes, and may have latency
    # data. Team information is added after a match has been successfully
    # completed.
    #
    # @!attribute [rw] player_id
    #   A unique identifier for a player
    #   @return [String]
    #
    # @!attribute [rw] player_attributes
    #   A collection of key:value pairs containing player information for
    #   use in matchmaking. Player attribute keys must match the
    #   *playerAttributes* used in a matchmaking rule set. Example:
    #   `"PlayerAttributes": {"skill": {"N": "23"}, "gameMode": {"S":
    #   "deathmatch"}}`.
    #
    #   You can provide up to 10 `PlayerAttributes`.
    #   @return [Hash<String,Types::AttributeValue>]
    #
    # @!attribute [rw] team
    #   Name of the team that the player is assigned to in a match. Team
    #   names are defined in a matchmaking rule set.
    #   @return [String]
    #
    # @!attribute [rw] latency_in_ms
    #   A set of values, expressed in milliseconds, that indicates the
    #   amount of latency that a player experiences when connected to Amazon
    #   Web Services Regions. If this property is present, FlexMatch
    #   considers placing the match only in Regions for which latency is
    #   reported.
    #
    #   If a matchmaker has a rule that evaluates player latency, players
    #   must report latency in order to be matched. If no latency is
    #   reported in this scenario, FlexMatch assumes that no Regions are
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
      SENSITIVE = [:player_id]
      include Aws::Structure
    end

    # Regional latency information for a player, used when requesting a new
    # game session. This value indicates the amount of time lag that exists
    # when the player is connected to a fleet in the specified Region. The
    # relative difference between a player's latency values for multiple
    # Regions are used to determine which fleets are best suited to place a
    # new game session for the player.
    #
    # @!attribute [rw] player_id
    #   A unique identifier for a player associated with the latency data.
    #   @return [String]
    #
    # @!attribute [rw] region_identifier
    #   Name of the Region that is associated with the latency value.
    #   @return [String]
    #
    # @!attribute [rw] latency_in_milliseconds
    #   Amount of time that represents the time lag experienced by the
    #   player when connected to the specified Region.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PlayerLatency AWS API Documentation
    #
    class PlayerLatency < Struct.new(
      :player_id,
      :region_identifier,
      :latency_in_milliseconds)
      SENSITIVE = [:player_id]
      include Aws::Structure
    end

    # Sets a latency cap for individual players when placing a game session.
    # With a latency policy in force, a game session cannot be placed in a
    # fleet location where a player reports latency higher than the cap.
    # Latency policies are used only with placement request that provide
    # player latency information. Player latency policies can be stacked to
    # gradually relax latency requirements over time.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a player session. Player sessions are created either for a
    # specific game session, or as part of a game session placement or
    # matchmaking request. A player session can represents a reserved player
    # slot in a game session (when status is `RESERVED`) or actual player
    # activity in a game session (when status is `ACTIVE`). A player session
    # object, including player data, is automatically passed to a game
    # session when the player connects to the game session and is validated.
    # After the game session ends, player sessions information is retained
    # for 30 days and then removed.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] player_session_id
    #   A unique identifier for a player session.
    #   @return [String]
    #
    # @!attribute [rw] player_id
    #   A unique identifier for a player that is associated with this player
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session that the player session is
    #   connected to.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that the player's game session is
    #   running on.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) associated with the GameLift
    #   fleet that the player's game session is running on.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] termination_time
    #   A time stamp indicating when this data object was terminated. Format
    #   is a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
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
    #   The IP address of the game session. To connect to a Amazon GameLift
    #   Servers game server, an app needs both the IP address and port
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS identifier assigned to the instance that is running the game
    #   session. Values have the following format:
    #
    #   * TLS-enabled fleets: `<unique identifier>.<region
    #     identifier>.amazongamelift.com`.
    #
    #   * Non-TLS-enabled fleets: `ec2-<unique
    #     identifier>.compute.amazonaws.com`. (See [Amazon EC2 Instance IP
    #     Addressing][1].)
    #
    #   When connecting to a game session that is running on a TLS-enabled
    #   fleet, you must use the DNS name, not the IP address.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port number for the game session. To connect to a Amazon GameLift
    #   Servers server process, an app needs both the IP address and port
    #   number.
    #   @return [Integer]
    #
    # @!attribute [rw] player_data
    #   Developer-defined information related to a player. Amazon GameLift
    #   Servers does not use this data, so it can be formatted as needed for
    #   use in the game.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PlayerSession AWS API Documentation
    #
    class PlayerSession < Struct.new(
      :player_session_id,
      :player_id,
      :game_session_id,
      :fleet_id,
      :fleet_arn,
      :creation_time,
      :termination_time,
      :status,
      :ip_address,
      :dns_name,
      :port,
      :player_data)
      SENSITIVE = [:player_id, :ip_address, :port]
      include Aws::Structure
    end

    # Custom prioritization settings to use with a game session queue.
    # Prioritization settings determine how the queue selects a game hosting
    # resource to start a new game session. This configuration replaces the
    # default prioritization process for queues.
    #
    # By default, a queue makes game session placements based on the
    # following criteria:
    #
    # * When a game session request does not include player latency data,
    #   Amazon GameLift Servers places game sessions based on the following
    #   priorities: (1) the queue's default destination order, and (2) for
    #   multi-location fleets, an alphabetic list of locations.
    #
    # * When a game session request includes player latency data, Amazon
    #   GameLift Servers re-orders the queue's destinations to make
    #   placements where the average player latency is lowest. It reorders
    #   based the following priorities: (1) the lowest average latency
    #   across all players, (2) the lowest hosting cost, (3) the queue's
    #   default destination order, and (4) for multi-location fleets, an
    #   alphabetic list of locations.
    #
    # @!attribute [rw] priority_order
    #   A custom sequence to use when prioritizing where to place new game
    #   sessions. Each priority type is listed once.
    #
    #   * `LATENCY` -- Amazon GameLift Servers prioritizes locations where
    #     the average player latency is lowest. Player latency data is
    #     provided in each game session placement request.
    #
    #   * `COST` -- Amazon GameLift Servers prioritizes queue destinations
    #     with the lowest current hosting costs. Cost is evaluated based on
    #     the destination's location, instance type, and fleet type (Spot
    #     or On-Demand).
    #
    #   * `DESTINATION` -- Amazon GameLift Servers prioritizes based on the
    #     list order of destinations in the queue configuration.
    #
    #   * `LOCATION` -- Amazon GameLift Servers prioritizes based on the
    #     provided order of locations, as defined in `LocationOrder`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] location_order
    #   The prioritization order to use for fleet locations, when the
    #   `PriorityOrder` property includes `LOCATION`. Locations can include
    #   Amazon Web Services Region codes (such as `us-west-2`), local zones,
    #   and custom locations (for Anywhere fleets). Each location must be
    #   listed only once. For details, see [Amazon GameLift Servers service
    #   locations.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PriorityConfiguration AWS API Documentation
    #
    class PriorityConfiguration < Struct.new(
      :priority_order,
      :location_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # An alternate list of prioritized locations for use with a game session
    # queue. When this property is included in a
    # [StartGameSessionPlacement][1] request, the alternate list overrides
    # the queue's default location priorities, as defined in the queue's
    # [PriorityConfiguration](gamelift/latest/apireference/API_PriorityConfiguration.html)
    # setting (*LocationOrder*). The override is valid for an individual
    # placement request only. Use this property only with queues that have a
    # `PriorityConfiguration` setting that prioritizes `LOCATION` first.
    #
    # <note markdown="1"> A priority configuration override list does not override a queue's
    # FilterConfiguration setting, if the queue has one. Filter
    # configurations are used to limit placements to a subset of the
    # locations in a queue's destinations. If the override list includes a
    # location that's not on in the `FilterConfiguration` allowed list,
    # Amazon GameLift Servers won't attempt to place a game session there.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html
    #
    # @!attribute [rw] placement_fallback_strategy
    #   Instructions for how to proceed if placement fails in every location
    #   on the priority override list. Valid strategies include:
    #
    #   * `DEFAULT_AFTER_SINGLE_PASS` -- After attempting to place a new
    #     game session in every location on the priority override list, try
    #     to place a game session in queue's other locations. This is the
    #     default behavior.
    #
    #   * `NONE` -- Limit placements to locations on the priority override
    #     list only.
    #   @return [String]
    #
    # @!attribute [rw] location_order
    #   A prioritized list of hosting locations. The list can include Amazon
    #   Web Services Regions (such as `us-west-2`), local zones, and custom
    #   locations (for Anywhere fleets). Each location must be listed only
    #   once. For details, see [Amazon GameLift Servers service
    #   locations.][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PriorityConfigurationOverride AWS API Documentation
    #
    class PriorityConfigurationOverride < Struct.new(
      :placement_fallback_strategy,
      :location_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with a fleet's scaling
    #   policy. Policy names do not need to be unique. A fleet can have only
    #   one scaling policy with the same name.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to apply this policy to. You can
    #   use either the fleet ID or ARN value. The fleet cannot be in any of
    #   the following statuses: ERROR or DELETING.
    #   @return [String]
    #
    # @!attribute [rw] scaling_adjustment
    #   Amount of adjustment to make, based on the scaling adjustment type.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling_adjustment_type
    #   The type of adjustment to make to a fleet's instance count:
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
    #   Name of the Amazon GameLift Servers-defined metric that is used to
    #   trigger a scaling adjustment. For detailed descriptions of fleet
    #   metrics, see [Monitor Amazon GameLift Servers with Amazon
    #   CloudWatch][1].
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
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of scaling policy to create. For a target-based policy, set
    #   the parameter *MetricName* to 'PercentAvailableGameSessions' and
    #   specify a *TargetConfiguration*. For a rule-based policy set the
    #   following parameters: *MetricName*, *ComparisonOperator*,
    #   *Threshold*, *EvaluationPeriods*, *ScalingAdjustmentType*, and
    #   *ScalingAdjustment*.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   An object that contains settings for a target-based scaling policy.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with a fleet's scaling
    #   policy. Policy names do not need to be unique.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PutScalingPolicyOutput AWS API Documentation
    #
    class PutScalingPolicyOutput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to register the compute to. You
    #   can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] compute_name
    #   A descriptive label for the compute resource.
    #   @return [String]
    #
    # @!attribute [rw] certificate_path
    #   The path to a TLS certificate on your compute resource. Amazon
    #   GameLift Servers doesn't validate the path and certificate.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of the compute resource. Amazon GameLift Servers
    #   requires either a DNS name or IP address.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the compute resource. Amazon GameLift Servers
    #   requires either a DNS name or IP address. When registering an
    #   Anywhere fleet, an IP address is required.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The name of a custom location to associate with the compute resource
    #   being registered. This parameter is required when registering a
    #   compute for an Anywhere fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RegisterComputeInput AWS API Documentation
    #
    class RegisterComputeInput < Struct.new(
      :fleet_id,
      :compute_name,
      :certificate_path,
      :dns_name,
      :ip_address,
      :location)
      SENSITIVE = [:ip_address]
      include Aws::Structure
    end

    # @!attribute [rw] compute
    #   The details of the compute resource you registered.
    #   @return [Types::Compute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RegisterComputeOutput AWS API Documentation
    #
    class RegisterComputeOutput < Struct.new(
      :compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group where the game server
    #   is running.
    #   @return [String]
    #
    # @!attribute [rw] game_server_id
    #   A custom string that uniquely identifies the game server to
    #   register. Game server IDs are developer-defined and must be unique
    #   across all game server groups in your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The unique identifier for the instance where the game server is
    #   running. This ID is available in the instance metadata. EC2 instance
    #   IDs use a 17-character format, for example: `i-1234567890abcdef0`.
    #   @return [String]
    #
    # @!attribute [rw] connection_info
    #   Information that is needed to make inbound client connections to the
    #   game server. This might include the IP address and port, DNS name,
    #   and other information.
    #   @return [String]
    #
    # @!attribute [rw] game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RegisterGameServerInput AWS API Documentation
    #
    class RegisterGameServerInput < Struct.new(
      :game_server_group_name,
      :game_server_id,
      :instance_id,
      :connection_info,
      :game_server_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server
    #   Object that describes the newly registered game server.
    #   @return [Types::GameServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RegisterGameServerOutput AWS API Documentation
    #
    class RegisterGameServerOutput < Struct.new(
      :game_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_id
    #   A unique identifier for the build to get credentials for. You can
    #   use either the build ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RequestUploadCredentialsInput AWS API Documentation
    #
    class RequestUploadCredentialsInput < Struct.new(
      :build_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] upload_credentials
    #   Amazon Web Services credentials required when uploading a game build
    #   to the storage location. These credentials have a limited lifespan
    #   and are valid only for the build they were issued for.
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
      SENSITIVE = [:upload_credentials]
      include Aws::Structure
    end

    # @!attribute [rw] alias_id
    #   The unique identifier of the alias that you want to retrieve a fleet
    #   ID for. You can use either the alias ID or ARN value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResolveAliasInput AWS API Documentation
    #
    class ResolveAliasInput < Struct.new(
      :alias_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The fleet identifier that the alias is pointing to.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) associated with the GameLift
    #   fleet resource that this alias points to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResolveAliasOutput AWS API Documentation
    #
    class ResolveAliasOutput < Struct.new(
      :fleet_id,
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A policy that puts limits on the number of game sessions that a player
    # can create within a specified span of time. With this policy, you can
    # control players' ability to consume available resources.
    #
    # The policy is evaluated when a player tries to create a new game
    # session. On receiving a `CreateGameSession` request, Amazon GameLift
    # Servers checks that the player (identified by `CreatorId`) has created
    # fewer than game session limit in the specified time period.
    #
    # @!attribute [rw] new_game_sessions_per_creator
    #   A policy that puts limits on the number of game sessions that a
    #   player can create within a specified span of time. With this policy,
    #   you can control players' ability to consume available resources.
    #
    #   The policy is evaluated when a player tries to create a new game
    #   session. On receiving a `CreateGameSession` request, Amazon GameLift
    #   Servers checks that the player (identified by `CreatorId`) has
    #   created fewer than game session limit in the specified time period.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_period_in_minutes
    #   The time span used in evaluating the resource creation limit policy.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResourceCreationLimitPolicy AWS API Documentation
    #
    class ResourceCreationLimitPolicy < Struct.new(
      :new_game_sessions_per_creator,
      :policy_period_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group. Use either the name
    #   or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] resume_actions
    #   The activity to resume for this game server group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResumeGameServerGroupInput AWS API Documentation
    #
    class ResumeGameServerGroupInput < Struct.new(
      :game_server_group_name,
      :resume_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group
    #   An object that describes the game server group resource, with the
    #   `SuspendedActions` property updated to reflect the resumed activity.
    #   @return [Types::GameServerGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResumeGameServerGroupOutput AWS API Documentation
    #
    class ResumeGameServerGroupOutput < Struct.new(
      :game_server_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The routing configuration for a fleet alias.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] type
    #   The type of routing strategy for the alias.
    #
    #   Possible routing types include the following:
    #
    #   * **SIMPLE** - The alias resolves to one specific fleet. Use this
    #     type when routing to active fleets.
    #
    #   * **TERMINAL** - The alias does not resolve to a fleet but instead
    #     can be used to display a message to the user. A terminal alias
    #     throws a TerminalRoutingStrategyException with the message
    #     embedded.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that the alias points to. This
    #   value is the fleet ID, not the fleet ARN.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message text to be used with a terminal routing strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RoutingStrategy AWS API Documentation
    #
    class RoutingStrategy < Struct.new(
      :type,
      :fleet_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of instructions that define the set of server processes to run
    # on computes in a fleet. Server processes run either an executable in a
    # custom game build or a Amazon GameLift Servers Realtime script. Amazon
    # GameLift Servers launches the processes, manages their life cycle, and
    # replaces them as needed. Computes check regularly for an updated
    # runtime configuration.
    #
    # An Amazon GameLift Servers instance is limited to 50 processes running
    # concurrently. To calculate the total number of processes defined in a
    # runtime configuration, add the values of the `ConcurrentExecutions`
    # parameter for each server process. Learn more about [ Running Multiple
    # Processes on a Fleet][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html
    #
    # @!attribute [rw] server_processes
    #   A collection of server process configurations that identify what
    #   server processes to run on fleet computes.
    #   @return [Array<Types::ServerProcess>]
    #
    # @!attribute [rw] max_concurrent_game_session_activations
    #   The number of game sessions in status `ACTIVATING` to allow on an
    #   instance or compute. This setting limits the instance resources that
    #   can be used for new game activations at any one time.
    #   @return [Integer]
    #
    # @!attribute [rw] game_session_activation_timeout_seconds
    #   The maximum amount of time (in seconds) allowed to launch a new game
    #   session and have it report ready to host players. During this time,
    #   the game session is in status `ACTIVATING`. If the game session does
    #   not become active before the timeout, it is ended and the game
    #   session status is changed to `TERMINATED`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RuntimeConfiguration AWS API Documentation
    #
    class RuntimeConfiguration < Struct.new(
      :server_processes,
      :max_concurrent_game_session_activations,
      :game_session_activation_timeout_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location in Amazon S3 where build or script files are stored for
    # access by Amazon GameLift Servers.
    #
    # @!attribute [rw] bucket
    #   An Amazon S3 bucket identifier. Thename of the S3 bucket.
    #
    #   <note markdown="1"> Amazon GameLift Servers doesn't support uploading from Amazon S3
    #   buckets with names that contain a dot (.).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name of the zip file that contains the build files or script
    #   files.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name ([ARN][1]) for an IAM role that allows
    #   Amazon GameLift Servers to access the S3 bucket.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] object_version
    #   The version of the file, if object versioning is turned on for the
    #   bucket. Amazon GameLift Servers uses this information when
    #   retrieving files from an S3 bucket that you own. Use this parameter
    #   to specify a specific version of the file. If not set, the latest
    #   version of the file is retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :key,
      :role_arn,
      :object_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Rule that controls how a fleet is scaled. Scaling policies are
    # uniquely identified by the combination of name and fleet ID.
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that is associated with this
    #   scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a fleet's scaling
    #   policy. Policy names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the scaling policy. The scaling policy can be in
    #   force only when in an `ACTIVE` status. Scaling policies can be
    #   suspended for individual fleets. If the policy is suspended for a
    #   fleet, the policy status does not change.
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
    #   The type of adjustment to make to a fleet's instance count.
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
    #   Name of the Amazon GameLift Servers-defined metric that is used to
    #   trigger a scaling adjustment. For detailed descriptions of fleet
    #   metrics, see [Monitor Amazon GameLift Servers with Amazon
    #   CloudWatch][1].
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
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The type of scaling policy to create. For a target-based policy, set
    #   the parameter *MetricName* to 'PercentAvailableGameSessions' and
    #   specify a *TargetConfiguration*. For a rule-based policy set the
    #   following parameters: *MetricName*, *ComparisonOperator*,
    #   *Threshold*, *EvaluationPeriods*, *ScalingAdjustmentType*, and
    #   *ScalingAdjustment*.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   An object that contains settings for a target-based scaling policy.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] update_status
    #   The current status of the fleet's scaling policies in a requested
    #   fleet location. The status `PENDING_UPDATE` indicates that an update
    #   was requested for the fleet but has not yet been completed for the
    #   location.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The fleet location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ScalingPolicy AWS API Documentation
    #
    class ScalingPolicy < Struct.new(
      :fleet_id,
      :fleet_arn,
      :name,
      :status,
      :scaling_adjustment,
      :scaling_adjustment_type,
      :comparison_operator,
      :threshold,
      :evaluation_periods,
      :metric_name,
      :policy_type,
      :target_configuration,
      :update_status,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties describing a Realtime script.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] script_id
    #   A unique identifier for the Realtime script
    #   @return [String]
    #
    # @!attribute [rw] script_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers script resource and uniquely identifies it. ARNs
    #   are unique across all Regions. In a GameLift script ARN, the
    #   resource ID matches the *ScriptId* value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a script. Script names
    #   do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version information that is associated with a build or script.
    #   Version strings do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] size_on_disk
    #   The file size of the uploaded Realtime script, expressed in bytes.
    #   When files are uploaded from an S3 location, this value remains at
    #   "0".
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating when this data object was created. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] storage_location
    #   The location of the Amazon S3 bucket where a zipped file containing
    #   your Realtime scripts is stored. The storage location must specify
    #   the Amazon S3 bucket name, the zip file name (the "key"), and a
    #   role ARN that allows Amazon GameLift Servers to access the Amazon S3
    #   storage location. The S3 bucket must be in the same Region where you
    #   want to create a new script. By default, Amazon GameLift Servers
    #   uploads the latest version of the zip file; if you have S3 object
    #   versioning turned on, you can use the `ObjectVersion` parameter to
    #   specify an earlier version.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Script AWS API Documentation
    #
    class Script < Struct.new(
      :script_id,
      :script_arn,
      :name,
      :version,
      :size_on_disk,
      :creation_time,
      :storage_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to search for active game
    #   sessions. You can use either the fleet ID or ARN value. Each request
    #   must reference either a fleet ID or alias ID, but not both.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   A unique identifier for the alias associated with the fleet to
    #   search for active game sessions. You can use either the alias ID or
    #   ARN value. Each request must reference either a fleet ID or alias
    #   ID, but not both.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A fleet location to search for game sessions. You can specify a
    #   fleet's home Region or a remote location. Use the Amazon Web
    #   Services Region code format, such as `us-west-2`.
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
    #     `gameSessionName`: "`FilterExpression": "gameSessionName =
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
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. The maximum
    #   number of results returned is 20, even if this value is not set or
    #   is set higher than 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not
    #   specify a value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SearchGameSessionsInput AWS API Documentation
    #
    class SearchGameSessionsInput < Struct.new(
      :fleet_id,
      :alias_id,
      :location,
      :filter_expression,
      :sort_expression,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_sessions
    #   A collection of objects containing game session properties for each
    #   session that matches the request.
    #   @return [Array<Types::GameSession>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where to resume retrieving results on the
    #   next call to this operation. If no token is returned, these results
    #   represent the end of the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SearchGameSessionsOutput AWS API Documentation
    #
    class SearchGameSessionsOutput < Struct.new(
      :game_sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of instructions for launching server processes on fleet
    # computes. Server processes run either an executable in a custom game
    # build or a Amazon GameLift Servers Realtime script. Server process
    # configurations are part of a fleet's runtime configuration.
    #
    # @!attribute [rw] launch_path
    #   The location of a game build executable or Realtime script. Game
    #   builds and Realtime scripts are installed on instances at the root:
    #
    #   * Windows (custom game builds only): `C:\game`. Example:
    #     "`C:\game\MyGame\server.exe`"
    #
    #   * Linux: `/local/game`. Examples:
    #     "`/local/game/MyGame/server.exe`" or
    #     "`/local/game/MyRealtimeScript.js`"
    #
    #   <note markdown="1"> Amazon GameLift Servers doesn't support the use of setup scripts
    #   that launch the game executable. For custom game builds, this
    #   parameter must indicate the executable that calls the server SDK
    #   operations `initSDK()` and `ProcessReady()`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   An optional list of parameters to pass to the server executable or
    #   Realtime script on launch.
    #   @return [String]
    #
    # @!attribute [rw] concurrent_executions
    #   The number of server processes using this configuration that run
    #   concurrently on each instance or compute.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ServerProcess AWS API Documentation
    #
    class ServerProcess < Struct.new(
      :launch_path,
      :parameters,
      :concurrent_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to restart actions on. You can use
    #   either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   List of actions to restart on the fleet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] location
    #   The fleet location to restart fleet actions for. Specify a location
    #   in the form of an Amazon Web Services Region code, such as
    #   `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartFleetActionsInput AWS API Documentation
    #
    class StartFleetActionsInput < Struct.new(
      :fleet_id,
      :actions,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to restart actions on.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartFleetActionsOutput AWS API Documentation
    #
    class StartFleetActionsOutput < Struct.new(
      :fleet_id,
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] placement_id
    #   A unique identifier to assign to the new game session placement.
    #   This value is developer-defined. The value must be unique across all
    #   Regions and cannot be reused.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_name
    #   Name of the queue to use to place the new game session. You can use
    #   either the queue name or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   A set of key-value pairs that can store custom data in a game
    #   session. For example: `{"Key": "difficulty", "Value": "novice"}`.
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously
    #   to the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] game_session_name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] player_latencies
    #   A set of values, expressed in milliseconds, that indicates the
    #   amount of latency that a player experiences when connected to Amazon
    #   Web Services Regions. This information is used to try to place the
    #   new game session where it can offer the best possible gameplay
    #   experience for the players.
    #   @return [Array<Types::PlayerLatency>]
    #
    # @!attribute [rw] desired_player_sessions
    #   Set of information on each player to create a player session for.
    #   @return [Array<Types::DesiredPlayerSession>]
    #
    # @!attribute [rw] game_session_data
    #   A set of custom game session properties, formatted as a single
    #   string value. This data is passed to a game server process with a
    #   request to start a new game session. For more information, see
    #   [Start a game session][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @!attribute [rw] priority_configuration_override
    #   A prioritized list of locations to use for the game session
    #   placement and instructions on how to use it. This list overrides a
    #   queue's prioritized location list for this game session placement
    #   request only. You can include Amazon Web Services Regions, local
    #   zones, and custom locations (for Anywhere fleets). You can choose to
    #   limit placements to locations on the override list only, or you can
    #   prioritize locations on the override list first and then fall back
    #   to the queue's other locations if needed. Choose a fallback
    #   strategy to use in the event that Amazon GameLift Servers fails to
    #   place a game session in any of the locations on the priority
    #   override list.
    #   @return [Types::PriorityConfigurationOverride]
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
      :game_session_data,
      :priority_configuration_override)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ticket_id
    #   A unique identifier for a matchmaking ticket. If no ticket ID is
    #   specified here, Amazon GameLift Servers will generate one in the
    #   form of a UUID. Use this identifier to track the match backfill
    #   ticket status and retrieve match results.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   Name of the matchmaker to use for this request. You can use either
    #   the configuration name or ARN value. The ARN of the matchmaker that
    #   was used with the original game session is listed in the
    #   `GameSession` object, `MatchmakerData` property.
    #   @return [String]
    #
    # @!attribute [rw] game_session_arn
    #   A unique identifier for the game session. Use the game session ID.
    #   When using FlexMatch as a standalone matchmaking solution, this
    #   parameter is not needed.
    #   @return [String]
    #
    # @!attribute [rw] players
    #   Match information on all players that are currently assigned to the
    #   game session. This information is used by the matchmaker to find new
    #   players and add them to the existing game.
    #
    #   You can include up to 199 `Players` in a `StartMatchBackfill`
    #   request.
    #
    #   * PlayerID, PlayerAttributes, Team -- This information is maintained
    #     in the `GameSession` object, `MatchmakerData` property, for all
    #     players who are currently assigned to the game session. The
    #     matchmaker data is in JSON syntax, formatted as a string. For more
    #     details, see [ Match Data][1].
    #
    #     The backfill request must specify the team membership for every
    #     player. Do not specify team if you are not using backfill.
    #
    #   * LatencyInMs -- If the matchmaker uses player latency, include a
    #     latency value, in milliseconds, for the Region that the game
    #     session is currently in. Do not include latency values for any
    #     other Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data
    #   @return [Array<Types::Player>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchBackfillInput AWS API Documentation
    #
    class StartMatchBackfillInput < Struct.new(
      :ticket_id,
      :configuration_name,
      :game_session_arn,
      :players)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ticket_id
    #   A unique identifier for a matchmaking ticket. If no ticket ID is
    #   specified here, Amazon GameLift Servers will generate one in the
    #   form of a UUID. Use this identifier to track the matchmaking ticket
    #   status and retrieve match results.
    #   @return [String]
    #
    # @!attribute [rw] configuration_name
    #   Name of the matchmaking configuration to use for this request.
    #   Matchmaking configurations must exist in the same Region as this
    #   request. You can use either the configuration name or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] players
    #   Information on each player to be matched. This information must
    #   include a player ID, and may contain player attributes and latency
    #   data to be used in the matchmaking process. After a successful
    #   match, `Player` objects contain the name of the team the player is
    #   assigned to.
    #
    #   You can include up to 10 `Players` in a `StartMatchmaking` request.
    #   @return [Array<Types::Player>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchmakingInput AWS API Documentation
    #
    class StartMatchmakingInput < Struct.new(
      :ticket_id,
      :configuration_name,
      :players)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to stop actions on. You can use
    #   either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   List of actions to suspend on the fleet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] location
    #   The fleet location to stop fleet actions for. Specify a location in
    #   the form of an Amazon Web Services Region code, such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopFleetActionsInput AWS API Documentation
    #
    class StopFleetActionsInput < Struct.new(
      :fleet_id,
      :actions,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to stop actions on.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopFleetActionsOutput AWS API Documentation
    #
    class StopFleetActionsOutput < Struct.new(
      :fleet_id,
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] placement_id
    #   A unique identifier for a game session placement to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopGameSessionPlacementInput AWS API Documentation
    #
    class StopGameSessionPlacementInput < Struct.new(
      :placement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_placement
    #   Object that describes the canceled game session placement, with
    #   `CANCELLED` status and an end time stamp.
    #   @return [Types::GameSessionPlacement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopGameSessionPlacementOutput AWS API Documentation
    #
    class StopGameSessionPlacementOutput < Struct.new(
      :game_session_placement)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ticket_id
    #   A unique identifier for a matchmaking ticket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopMatchmakingInput AWS API Documentation
    #
    class StopMatchmakingInput < Struct.new(
      :ticket_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopMatchmakingOutput AWS API Documentation
    #
    class StopMatchmakingOutput < Aws::EmptyStructure; end

    # Describes a support container in a container group. A support
    # container might be in a game server container group or a per-instance
    # container group. Support containers don't run game server processes.
    #
    # You can update a support container definition and deploy the updates
    # to an existing fleet. When creating or updating a game server
    # container group definition, use the property
    # [GameServerContainerDefinitionInput][1].
    #
    # **Part of:** [ContainerGroupDefinition][2]
    #
    # **Returned by:** [DescribeContainerGroupDefinition][3],
    # [ListContainerGroupDefinitions][4],
    # [UpdateContainerGroupDefinition][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeContainerGroupDefinition.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitions.html
    # [5]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #
    # @!attribute [rw] container_name
    #   The container definition identifier. Container names are unique
    #   within a container group definition.
    #   @return [String]
    #
    # @!attribute [rw] depends_on
    #   Indicates that the container relies on the status of other
    #   containers in the same container group during its startup and
    #   shutdown sequences. A container might have dependencies on multiple
    #   containers.
    #   @return [Array<Types::ContainerDependency>]
    #
    # @!attribute [rw] mount_points
    #   A mount point that binds a path inside the container to a file or
    #   directory on the host system and lets it access the file or
    #   directory.
    #   @return [Array<Types::ContainerMountPoint>]
    #
    # @!attribute [rw] environment_override
    #   A set of environment variables that's passed to the container on
    #   startup. See the [ContainerDefinition::environment][1] parameter in
    #   the *Amazon Elastic Container Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html#ECS-Type-ContainerDefinition-environment
    #   @return [Array<Types::ContainerEnvironment>]
    #
    # @!attribute [rw] essential
    #   Indicates whether the container is vital to the container group. If
    #   an essential container fails, the entire container group restarts.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_check
    #   A configuration for a non-terminal health check. A support container
    #   automatically restarts if it stops functioning or if it fails this
    #   health check.
    #   @return [Types::ContainerHealthCheck]
    #
    # @!attribute [rw] image_uri
    #   The URI to the image that Amazon GameLift Servers deploys to a
    #   container fleet. For a more specific identifier, see
    #   `ResolvedImageDigest`.
    #   @return [String]
    #
    # @!attribute [rw] memory_hard_limit_mebibytes
    #   The amount of memory that Amazon GameLift Servers makes available to
    #   the container. If memory limits aren't set for an individual
    #   container, the container shares the container group's total memory
    #   allocation.
    #
    #   <b>Related data type: </b> [ContainerGroupDefinition
    #   TotalMemoryLimitMebibytes][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #   @return [Integer]
    #
    # @!attribute [rw] port_configuration
    #   A set of ports that allow access to the container from external
    #   users. Processes running in the container can bind to a one of these
    #   ports. Container ports aren't directly accessed by inbound traffic.
    #   Amazon GameLift Servers maps these container ports to externally
    #   accessible connection ports, which are assigned as needed from the
    #   container fleet's `ConnectionPortRange`.
    #   @return [Types::ContainerPortConfiguration]
    #
    # @!attribute [rw] resolved_image_digest
    #   A unique and immutable identifier for the container image. The
    #   digest is a SHA 256 hash of the container image manifest.
    #   @return [String]
    #
    # @!attribute [rw] vcpu
    #   The number of vCPU units that are reserved for the container. If no
    #   resources are reserved, the container shares the total vCPU limit
    #   for the container group.
    #
    #   <b>Related data type: </b> [ContainerGroupDefinition
    #   TotalVcpuLimit][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SupportContainerDefinition AWS API Documentation
    #
    class SupportContainerDefinition < Struct.new(
      :container_name,
      :depends_on,
      :mount_points,
      :environment_override,
      :essential,
      :health_check,
      :image_uri,
      :memory_hard_limit_mebibytes,
      :port_configuration,
      :resolved_image_digest,
      :vcpu)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a support container in a container group. You can define a
    # support container in either a game server container group or a
    # per-instance container group. Support containers don't run game
    # server processes.
    #
    # This definition includes container configuration, resources, and start
    # instructions. Use this data type when creating or updating a container
    # group definition. For properties of a deployed support container, see
    # [SupportContainerDefinition][1].
    #
    # <b>Use with: </b> [CreateContainerGroupDefinition][2],
    # [UpdateContainerGroupDefinition][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #
    # @!attribute [rw] container_name
    #   A string that uniquely identifies the container definition within a
    #   container group.
    #   @return [String]
    #
    # @!attribute [rw] depends_on
    #   Establishes dependencies between this container and the status of
    #   other containers in the same container group. A container can have
    #   dependencies on multiple different containers.
    #
    #   .
    #
    #   You can use dependencies to establish a startup/shutdown sequence
    #   across the container group. For example, you might specify that
    #   *ContainerB* has a `START` dependency on *ContainerA*. This
    #   dependency means that *ContainerB* can't start until after
    #   *ContainerA* has started. This dependency is reversed on shutdown,
    #   which means that *ContainerB* must shut down before *ContainerA* can
    #   shut down.
    #   @return [Array<Types::ContainerDependency>]
    #
    # @!attribute [rw] mount_points
    #   A mount point that binds a path inside the container to a file or
    #   directory on the host system and lets it access the file or
    #   directory.
    #   @return [Array<Types::ContainerMountPoint>]
    #
    # @!attribute [rw] environment_override
    #   A set of environment variables to pass to the container on startup.
    #   See the [ContainerDefinition::environment][1] parameter in the
    #   *Amazon Elastic Container Service API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html#ECS-Type-ContainerDefinition-environment
    #   @return [Array<Types::ContainerEnvironment>]
    #
    # @!attribute [rw] essential
    #   Flags the container as vital for the container group to function
    #   properly. If an essential container fails, the entire container
    #   group restarts. At least one support container in a per-instance
    #   container group must be essential. When flagging a container as
    #   essential, also configure a health check so that the container can
    #   signal that it's healthy.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_check
    #   Configuration for a non-terminal health check. A container
    #   automatically restarts if it stops functioning. With a health check,
    #   you can define additional reasons to flag a container as unhealthy
    #   and restart it. If an essential container fails a health check, the
    #   entire container group restarts.
    #   @return [Types::ContainerHealthCheck]
    #
    # @!attribute [rw] image_uri
    #   The location of the container image to deploy to a container fleet.
    #   Provide an image in an Amazon Elastic Container Registry public or
    #   private repository. The repository must be in the same Amazon Web
    #   Services account and Amazon Web Services Region where you're
    #   creating the container group definition. For limits on image size,
    #   see [Amazon GameLift Servers endpoints and quotas][1]. You can use
    #   any of the following image URI formats:
    #
    #   * Image ID only: `[AWS account].dkr.ecr.[AWS
    #     region].amazonaws.com/[repository ID]`
    #
    #   * Image ID and digest: `[AWS account].dkr.ecr.[AWS
    #     region].amazonaws.com/[repository ID]@[digest]`
    #
    #   * Image ID and tag: `[AWS account].dkr.ecr.[AWS
    #     region].amazonaws.com/[repository ID]:[tag]`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/gamelift.html
    #   @return [String]
    #
    # @!attribute [rw] memory_hard_limit_mebibytes
    #   A specified amount of memory (in MiB) to reserve for this container.
    #   If you don't specify a container-specific memory limit, the
    #   container shares the container group's total memory allocation.
    #
    #   <b>Related data type: </b>
    #   [ContainerGroupDefinition][1]TotalMemoryLimitMebibytes``
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #   @return [Integer]
    #
    # @!attribute [rw] port_configuration
    #   A set of ports that Amazon GameLift Servers can assign to processes
    #   in a container. The container port configuration must have enough
    #   ports for each container process that accepts inbound traffic
    #   connections. A container port configuration can have can have one or
    #   more container port ranges. Each range specifies starting and ending
    #   values as well as the supported network protocol.
    #
    #   Container ports aren't directly accessed by inbound traffic. Amazon
    #   GameLift Servers maps each container port to an externally
    #   accessible connection port (see the container fleet property
    #   `ConnectionPortRange`).
    #   @return [Types::ContainerPortConfiguration]
    #
    # @!attribute [rw] vcpu
    #   The number of vCPU units to reserve for this container. The
    #   container can use more resources when needed, if available. If you
    #   don't reserve CPU units for this container, it shares the container
    #   group's total vCPU limit.
    #
    #   <b>Related data type: </b> [ContainerGroupDefinition][1]
    #   TotalCpuLimit
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SupportContainerDefinitionInput AWS API Documentation
    #
    class SupportContainerDefinitionInput < Struct.new(
      :container_name,
      :depends_on,
      :mount_points,
      :environment_override,
      :essential,
      :health_check,
      :image_uri,
      :memory_hard_limit_mebibytes,
      :port_configuration,
      :vcpu)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group. Use either the name
    #   or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] suspend_actions
    #   The activity to suspend for this game server group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SuspendGameServerGroupInput AWS API Documentation
    #
    class SuspendGameServerGroupInput < Struct.new(
      :game_server_group_name,
      :suspend_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group
    #   An object that describes the game server group resource, with the
    #   `SuspendedActions` property updated to reflect the suspended
    #   activity.
    #   @return [Types::GameServerGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SuspendGameServerGroupOutput AWS API Documentation
    #
    class SuspendGameServerGroupOutput < Struct.new(
      :game_server_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A label that you can assign to a Amazon GameLift Servers resource.
    #
    # **Learn more**
    #
    # [Tagging Amazon Web Services Resources][1] in the *Amazon Web Services
    # General Reference*
    #
    # [ Amazon Web Services Tagging Strategies][2]
    #
    # **Related actions**
    #
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] key
    #   The key for a developer-defined key value pair for tagging an Amazon
    #   Web Services resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for a developer-defined key value pair for tagging an
    #   Amazon Web Services resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name ([ARN][1]) that uniquely identifies the
    #   Amazon GameLift Servers resource that you want to assign tags to.
    #   Amazon GameLift Servers includes resource ARNs in the data object
    #   for the resource. You can retrieve the ARN by calling a `List` or
    #   `Describe` operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of one or more tags to assign to the specified Amazon
    #   GameLift Servers resource. Tags are developer-defined and structured
    #   as key-value pairs. The maximum tag limit may be lower than stated.
    #   See [ Tagging Amazon Web Services Resources][1] for tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The requested tagging operation did not succeed. This may be due to
    # invalid tag format or the maximum tag limit may have been exceeded.
    # Resolve the issue before retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TaggingFailedException AWS API Documentation
    #
    class TaggingFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a target-based scaling policy. A target-based policy
    # tracks a particular fleet metric specifies a target value for the
    # metric. As player usage changes, the policy triggers Amazon GameLift
    # Servers to adjust capacity so that the metric returns to the target
    # value. The target configuration specifies settings as needed for the
    # target based policy, including the target value.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for a target-based scaling policy as part of a
    # [GameServerGroupAutoScalingPolicy][1] . These settings are used to
    # create a target-based policy that tracks the Amazon GameLift Servers
    # FleetIQ metric `"PercentUtilizedGameServers"` and specifies a target
    # value for the metric. As player usage changes, the policy triggers to
    # adjust the game server group capacity so that the metric returns to
    # the target value.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerGroupAutoScalingPolicy.html
    #
    # @!attribute [rw] target_value
    #   Desired value to use with a game server group target-based scaling
    #   policy.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TargetTrackingConfiguration AWS API Documentation
    #
    class TargetTrackingConfiguration < Struct.new(
      :target_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unable to resolve the routing for a particular alias
    # because it has a terminal `RoutingStrategy` associated with it. The
    # message returned in this exception is the message defined in the
    # routing strategy itself. Such requests should only be retried if the
    # routing strategy for the specified alias is modified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TerminalRoutingStrategyException AWS API Documentation
    #
    class TerminalRoutingStrategyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session to be terminated. A game
    #   session ARN has the following format:
    #   `arn:aws:gamelift:<location>::gamesession/<fleet ID>/<custom ID
    #   string or idempotency token>`.
    #   @return [String]
    #
    # @!attribute [rw] termination_mode
    #   The method to use to terminate the game session. Available methods
    #   include:
    #
    #   * `TRIGGER_ON_PROCESS_TERMINATE` – Prompts the Amazon GameLift
    #     Servers service to send an `OnProcessTerminate()` callback to the
    #     server process and initiate the normal game session shutdown
    #     sequence. The `OnProcessTerminate` method, which is implemented in
    #     the game server code, must include a call to the server SDK action
    #     `ProcessEnding()`, which is how the server process signals to
    #     Amazon GameLift Servers that a game session is ending. If the
    #     server process doesn't call `ProcessEnding()`, the game session
    #     termination won't conclude successfully.
    #
    #   * `FORCE_TERMINATE` – Prompts the Amazon GameLift Servers service to
    #     stop the server process immediately. Amazon GameLift Servers takes
    #     action (depending on the type of fleet) to shut down the server
    #     process without the normal game session shutdown sequence.
    #
    #     <note markdown="1"> This method is not available for game sessions that are running on
    #     Anywhere fleets unless the fleet is deployed with the Amazon
    #     GameLift Servers Agent. In this scenario, a force terminate
    #     request results in an invalid or bad request exception.
    #
    #      </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TerminateGameSessionInput AWS API Documentation
    #
    class TerminateGameSessionInput < Struct.new(
      :game_session_id,
      :termination_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session
    #   Properties describing a game session.
    #
    #   A game session in ACTIVE status can host players. When a game
    #   session ends, its status is set to `TERMINATED`.
    #
    #   Amazon GameLift Servers retains a game session resource for 30 days
    #   after the game session ends. You can reuse idempotency token values
    #   after this time. Game session logs are retained for 14 days.
    #
    #   [All APIs by task][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #   @return [Types::GameSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TerminateGameSessionOutput AWS API Documentation
    #
    class TerminateGameSessionOutput < Struct.new(
      :game_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # The domain name and port information for a UDP endpoint.
    #
    # @!attribute [rw] domain
    #   The domain name of the UDP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number of the UDP endpoint.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UDPEndpoint AWS API Documentation
    #
    class UDPEndpoint < Struct.new(
      :domain,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client failed authentication. Clients should not retry such
    # requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation is not supported in the Region specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UnsupportedRegionException AWS API Documentation
    #
    class UnsupportedRegionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name ([ARN][1]) that uniquely identifies the
    #   Amazon GameLift Servers resource that you want to remove tags from.
    #   Amazon GameLift Servers includes resource ARNs in the data object
    #   for the resource. You can retrieve the ARN by calling a `List` or
    #   `Describe` operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of one or more tag keys to remove from the specified Amazon
    #   GameLift Servers resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] alias_id
    #   A unique identifier for the alias that you want to update. You can
    #   use either the alias ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] routing_strategy
    #   The routing configuration, including routing type and fleet target,
    #   for the alias.
    #   @return [Types::RoutingStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateAliasInput AWS API Documentation
    #
    class UpdateAliasInput < Struct.new(
      :alias_id,
      :name,
      :description,
      :routing_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias
    #   The updated alias resource.
    #   @return [Types::Alias]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateAliasOutput AWS API Documentation
    #
    class UpdateAliasOutput < Struct.new(
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_id
    #   A unique identifier for the build to update. You can use either the
    #   build ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a build. Build names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version information that is associated with a build or script.
    #   Version strings do not need to be unique.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateBuildInput AWS API Documentation
    #
    class UpdateBuildInput < Struct.new(
      :build_id,
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build
    #   The updated build resource.
    #   @return [Types::Build]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateBuildOutput AWS API Documentation
    #
    class UpdateBuildOutput < Struct.new(
      :build)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the container fleet to update. You can use
    #   either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] game_server_container_group_definition_name
    #   The name or ARN value of a new game server container group
    #   definition to deploy on the fleet. If you're updating the fleet to
    #   a specific version of a container group definition, use the ARN
    #   value and include the version number. If you're updating the fleet
    #   to the latest version of a container group definition, you can use
    #   the name value. You can't remove a fleet's game server container
    #   group definition, you can only update or replace it with another
    #   definition.
    #
    #   Update a container group definition by calling
    #   [UpdateContainerGroupDefinition][1]. This operation creates a
    #   [ContainerGroupDefinition][2] resource with an incremented version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #   @return [String]
    #
    # @!attribute [rw] per_instance_container_group_definition_name
    #   The name or ARN value of a new per-instance container group
    #   definition to deploy on the fleet. If you're updating the fleet to
    #   a specific version of a container group definition, use the ARN
    #   value and include the version number. If you're updating the fleet
    #   to the latest version of a container group definition, you can use
    #   the name value.
    #
    #   Update a container group definition by calling
    #   [UpdateContainerGroupDefinition][1]. This operation creates a
    #   [ContainerGroupDefinition][2] resource with an incremented version.
    #
    #   To remove a fleet's per-instance container group definition, leave
    #   this parameter empty and use the parameter `RemoveAttributes`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #   @return [String]
    #
    # @!attribute [rw] game_server_container_groups_per_instance
    #   The number of times to replicate the game server container group on
    #   each fleet instance. By default, Amazon GameLift Servers calculates
    #   the maximum number of game server container groups that can fit on
    #   each instance. You can remove this property value to use the
    #   calculated value, or set it manually. If you set this number
    #   manually, Amazon GameLift Servers uses your value as long as it's
    #   less than the calculated maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_connection_port_range
    #   A revised set of port numbers to open on each fleet instance. By
    #   default, Amazon GameLift Servers calculates an optimal port range
    #   based on your fleet configuration. If you previously set this
    #   parameter manually, you can't reset this to use the calculated
    #   settings.
    #   @return [Types::ConnectionPortRange]
    #
    # @!attribute [rw] instance_inbound_permission_authorizations
    #   A set of ports to add to the container fleet's inbound permissions.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] instance_inbound_permission_revocations
    #   A set of ports to remove from the container fleet's inbound
    #   permissions.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] deployment_configuration
    #   Instructions for how to deploy updates to a container fleet, if the
    #   fleet update initiates a deployment. The deployment configuration
    #   lets you determine how to replace fleet instances and what actions
    #   to take if the deployment fails.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] description
    #   A meaningful description of the container fleet.
    #   @return [String]
    #
    # @!attribute [rw] metric_groups
    #   The name of an Amazon Web Services CloudWatch metric group to add
    #   this fleet to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   The game session protection policy to apply to all new game sessions
    #   that are started in this fleet. Game sessions that already exist are
    #   not affected.
    #   @return [String]
    #
    # @!attribute [rw] game_session_creation_limit_policy
    #   A policy that limits the number of game sessions that each
    #   individual player can create on instances in this fleet. The limit
    #   applies for a specified span of time.
    #   @return [Types::GameSessionCreationLimitPolicy]
    #
    # @!attribute [rw] log_configuration
    #   The method for collecting container logs for the fleet.
    #   @return [Types::LogConfiguration]
    #
    # @!attribute [rw] remove_attributes
    #   If set, this update removes a fleet's per-instance container group
    #   definition. You can't remove a fleet's game server container group
    #   definition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateContainerFleetInput AWS API Documentation
    #
    class UpdateContainerFleetInput < Struct.new(
      :fleet_id,
      :game_server_container_group_definition_name,
      :per_instance_container_group_definition_name,
      :game_server_container_groups_per_instance,
      :instance_connection_port_range,
      :instance_inbound_permission_authorizations,
      :instance_inbound_permission_revocations,
      :deployment_configuration,
      :description,
      :metric_groups,
      :new_game_session_protection_policy,
      :game_session_creation_limit_policy,
      :log_configuration,
      :remove_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_fleet
    #   A collection of container fleet objects for all fleets that match
    #   the request criteria.
    #   @return [Types::ContainerFleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateContainerFleetOutput AWS API Documentation
    #
    class UpdateContainerFleetOutput < Struct.new(
      :container_fleet)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive identifier for the container group definition. The
    #   name value must be unique in an Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] game_server_container_definition
    #   An updated definition for the game server container in this group.
    #   Define a game server container only when the container group type is
    #   `GAME_SERVER`. You can pass in your container definitions as a JSON
    #   file.
    #   @return [Types::GameServerContainerDefinitionInput]
    #
    # @!attribute [rw] support_container_definitions
    #   One or more definitions for support containers in this group. You
    #   can define a support container in any type of container group. You
    #   can pass in your container definitions as a JSON file.
    #   @return [Array<Types::SupportContainerDefinitionInput>]
    #
    # @!attribute [rw] total_memory_limit_mebibytes
    #   The maximum amount of memory (in MiB) to allocate to the container
    #   group. All containers in the group share this memory. If you specify
    #   memory limits for an individual container, the total value must be
    #   greater than any individual container's memory limit.
    #   @return [Integer]
    #
    # @!attribute [rw] total_vcpu_limit
    #   The maximum amount of vCPU units to allocate to the container group
    #   (1 vCPU is equal to 1024 CPU units). All containers in the group
    #   share this memory. If you specify vCPU limits for individual
    #   containers, the total value must be equal to or greater than the sum
    #   of the CPU limits for all containers in the group.
    #   @return [Float]
    #
    # @!attribute [rw] version_description
    #   A description for this update to the container group definition.
    #   @return [String]
    #
    # @!attribute [rw] source_version_number
    #   The container group definition version to update. The new version
    #   starts with values from the source version, and then updates values
    #   included in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] operating_system
    #   The platform that all containers in the group use. Containers in a
    #   group must run on the same operating system.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See
    #   more details in the [Amazon Linux 2 FAQs][1]. For game servers that
    #   are hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateContainerGroupDefinitionInput AWS API Documentation
    #
    class UpdateContainerGroupDefinitionInput < Struct.new(
      :name,
      :game_server_container_definition,
      :support_container_definitions,
      :total_memory_limit_mebibytes,
      :total_vcpu_limit,
      :version_description,
      :source_version_number,
      :operating_system)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_group_definition
    #   The properties of the updated container group definition version.
    #   @return [Types::ContainerGroupDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateContainerGroupDefinitionOutput AWS API Documentation
    #
    class UpdateContainerGroupDefinitionOutput < Struct.new(
      :container_group_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to update attribute metadata for.
    #   You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of a fleet.
    #   @return [String]
    #
    # @!attribute [rw] new_game_session_protection_policy
    #   The game session protection policy to apply to all new game sessions
    #   created in this fleet. Game sessions that already exist are not
    #   affected. You can set protection for individual game sessions using
    #   [UpdateGameSession][1] .
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE`
    #     status, it cannot be terminated during a scale-down event.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSession.html
    #   @return [String]
    #
    # @!attribute [rw] resource_creation_limit_policy
    #   Policy settings that limit the number of game sessions an individual
    #   player can create over a span of time.
    #   @return [Types::ResourceCreationLimitPolicy]
    #
    # @!attribute [rw] metric_groups
    #   The name of a metric group to add this fleet to. Use a metric group
    #   in Amazon CloudWatch to aggregate the metrics from multiple fleets.
    #   Provide an existing metric group name, or create a new metric group
    #   by providing a new name. A fleet can only be in one metric group at
    #   a time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] anywhere_configuration
    #   Amazon GameLift Servers Anywhere configuration options.
    #   @return [Types::AnywhereConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetAttributesInput AWS API Documentation
    #
    class UpdateFleetAttributesInput < Struct.new(
      :fleet_id,
      :name,
      :description,
      :new_game_session_protection_policy,
      :resource_creation_limit_policy,
      :metric_groups,
      :anywhere_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that was updated.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetAttributesOutput AWS API Documentation
    #
    class UpdateFleetAttributesOutput < Struct.new(
      :fleet_id,
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to update capacity settings for.
    #   You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] desired_instances
    #   The number of Amazon EC2 instances you want to maintain in the
    #   specified fleet location. This value must fall between the minimum
    #   and maximum size limits. Changes in desired instance value can take
    #   up to 1 minute to be reflected when viewing the fleet's capacity
    #   settings.
    #   @return [Integer]
    #
    # @!attribute [rw] min_size
    #   The minimum number of instances that are allowed in the specified
    #   fleet location. If this parameter is not set, the default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] max_size
    #   The maximum number of instances that are allowed in the specified
    #   fleet location. If this parameter is not set, the default is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] location
    #   The name of a remote location to update fleet capacity settings for,
    #   in the form of an Amazon Web Services Region code such as
    #   `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetCapacityInput AWS API Documentation
    #
    class UpdateFleetCapacityInput < Struct.new(
      :fleet_id,
      :desired_instances,
      :min_size,
      :max_size,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that was updated.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The remote location being updated, expressed as an Amazon Web
    #   Services Region code, such as `us-west-2`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetCapacityOutput AWS API Documentation
    #
    class UpdateFleetCapacityOutput < Struct.new(
      :fleet_id,
      :fleet_arn,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to update port settings for. You
    #   can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] inbound_permission_authorizations
    #   A collection of port settings to be added to the fleet resource.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] inbound_permission_revocations
    #   A collection of port settings to be removed from the fleet resource.
    #   @return [Array<Types::IpPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetPortSettingsInput AWS API Documentation
    #
    class UpdateFleetPortSettingsInput < Struct.new(
      :fleet_id,
      :inbound_permission_authorizations,
      :inbound_permission_revocations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet that was updated.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers fleet resource and uniquely identifies it. ARNs are
    #   unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetPortSettingsOutput AWS API Documentation
    #
    class UpdateFleetPortSettingsOutput < Struct.new(
      :fleet_id,
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group. Use either the name
    #   or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name ([ARN][1]) for an IAM role that allows
    #   Amazon GameLift Servers to access your Amazon EC2 Auto Scaling
    #   groups.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [String]
    #
    # @!attribute [rw] instance_definitions
    #   An updated list of Amazon EC2 instance types to use in the Auto
    #   Scaling group. The instance definitions must specify at least two
    #   different instance types that are supported by Amazon GameLift
    #   Servers FleetIQ. This updated list replaces the entire current list
    #   of instance definitions for the game server group. For more
    #   information on instance types, see [EC2 Instance Types][1] in the
    #   *Amazon EC2 User Guide*. You can optionally specify capacity
    #   weighting for each instance type. If no weight value is specified
    #   for an instance type, it is set to the default value "1". For more
    #   information about capacity weighting, see [ Instance Weighting for
    #   Amazon EC2 Auto Scaling][2] in the Amazon EC2 Auto Scaling User
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html
    #   @return [Array<Types::InstanceDefinition>]
    #
    # @!attribute [rw] game_server_protection_policy
    #   A flag that indicates whether instances in the game server group are
    #   protected from early termination. Unprotected instances that have
    #   active game servers running might be terminated during a scale-down
    #   event, causing players to be dropped from the game. Protected
    #   instances cannot be terminated while there are active game servers
    #   running except in the event of a forced game server group deletion
    #   (see ). An exception to this is with Spot Instances, which can be
    #   terminated by Amazon Web Services regardless of protection status.
    #   This property is set to `NO_PROTECTION` by default.
    #   @return [String]
    #
    # @!attribute [rw] balancing_strategy
    #   Indicates how Amazon GameLift Servers FleetIQ balances the use of
    #   Spot Instances and On-Demand Instances in the game server group.
    #   Method options include the following:
    #
    #   * `SPOT_ONLY` - Only Spot Instances are used in the game server
    #     group. If Spot Instances are unavailable or not viable for game
    #     hosting, the game server group provides no hosting capacity until
    #     Spot Instances can again be used. Until then, no new instances are
    #     started, and the existing nonviable Spot Instances are terminated
    #     (after current gameplay ends) and are not replaced.
    #
    #   * `SPOT_PREFERRED` - (default value) Spot Instances are used
    #     whenever available in the game server group. If Spot Instances are
    #     unavailable, the game server group continues to provide hosting
    #     capacity by falling back to On-Demand Instances. Existing
    #     nonviable Spot Instances are terminated (after current gameplay
    #     ends) and are replaced with new On-Demand Instances.
    #
    #   * `ON_DEMAND_ONLY` - Only On-Demand Instances are used in the game
    #     server group. No Spot Instances are used, even when available,
    #     while this balancing strategy is in force.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameServerGroupInput AWS API Documentation
    #
    class UpdateGameServerGroupInput < Struct.new(
      :game_server_group_name,
      :role_arn,
      :instance_definitions,
      :game_server_protection_policy,
      :balancing_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group
    #   An object that describes the game server group resource with updated
    #   properties.
    #   @return [Types::GameServerGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameServerGroupOutput AWS API Documentation
    #
    class UpdateGameServerGroupOutput < Struct.new(
      :game_server_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server_group_name
    #   A unique identifier for the game server group where the game server
    #   is running.
    #   @return [String]
    #
    # @!attribute [rw] game_server_id
    #   A custom string that uniquely identifies the game server to update.
    #   @return [String]
    #
    # @!attribute [rw] game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers.
    #   @return [String]
    #
    # @!attribute [rw] utilization_status
    #   Indicates if the game server is available or is currently hosting
    #   gameplay. You can update a game server status from `AVAILABLE` to
    #   `UTILIZED`, but you can't change a the status from `UTILIZED` to
    #   `AVAILABLE`.
    #   @return [String]
    #
    # @!attribute [rw] health_check
    #   Indicates health status of the game server. A request that includes
    #   this parameter updates the game server's *LastHealthCheckTime*
    #   timestamp.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameServerInput AWS API Documentation
    #
    class UpdateGameServerInput < Struct.new(
      :game_server_group_name,
      :game_server_id,
      :game_server_data,
      :utilization_status,
      :health_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_server
    #   Object that describes the newly updated game server.
    #   @return [Types::GameServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameServerOutput AWS API Documentation
    #
    class UpdateGameServerOutput < Struct.new(
      :game_server)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_id
    #   A unique identifier for the game session to update.
    #   @return [String]
    #
    # @!attribute [rw] maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously
    #   to the game session.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] player_session_creation_policy
    #   A policy that determines whether the game session is accepting new
    #   players.
    #   @return [String]
    #
    # @!attribute [rw] protection_policy
    #   Game session protection policy to apply to this game session only.
    #
    #   * `NoProtection` -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * `FullProtection` -- If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   A set of key-value pairs that can store custom data in a game
    #   session. For example: `{"Key": "difficulty", "Value": "novice"}`.
    #   You can use this parameter to modify game properties in an active
    #   game session. This action adds new properties and modifies existing
    #   properties. There is no way to delete properties. For an example,
    #   see [Update the value of a game property][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-update
    #   @return [Array<Types::GameProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionInput AWS API Documentation
    #
    class UpdateGameSessionInput < Struct.new(
      :game_session_id,
      :maximum_player_session_count,
      :name,
      :player_session_creation_policy,
      :protection_policy,
      :game_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session
    #   The updated game session properties.
    #   @return [Types::GameSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionOutput AWS API Documentation
    #
    class UpdateGameSessionOutput < Struct.new(
      :game_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive label that is associated with game session queue.
    #   Queue names must be unique within each Region. You can use either
    #   the queue ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum time, in seconds, that a new game session placement
    #   request remains in the queue. When a request exceeds this time, the
    #   game session placement changes to a `TIMED_OUT` status.
    #   @return [Integer]
    #
    # @!attribute [rw] player_latency_policies
    #   A set of policies that enforce a sliding cap on player latency when
    #   processing game sessions placement requests. Use multiple policies
    #   to gradually relax the cap over time if Amazon GameLift Servers
    #   can't make a placement. Policies are evaluated in order starting
    #   with the lowest maximum latency value. When updating policies,
    #   provide a complete collection of policies.
    #   @return [Array<Types::PlayerLatencyPolicy>]
    #
    # @!attribute [rw] destinations
    #   A list of fleets and/or fleet aliases that can be used to fulfill
    #   game session placement requests in the queue. Destinations are
    #   identified by either a fleet ARN or a fleet alias ARN, and are
    #   listed in order of placement preference. When updating this list,
    #   provide a complete list of destinations.
    #   @return [Array<Types::GameSessionQueueDestination>]
    #
    # @!attribute [rw] filter_configuration
    #   A list of locations where a queue is allowed to place new game
    #   sessions. Locations are specified in the form of Amazon Web Services
    #   Region codes, such as `us-west-2`. If this parameter is not set,
    #   game sessions can be placed in any queue location. To remove an
    #   existing filter configuration, pass in an empty set.
    #   @return [Types::FilterConfiguration]
    #
    # @!attribute [rw] priority_configuration
    #   Custom settings to use when prioritizing destinations and locations
    #   for game session placements. This configuration replaces the FleetIQ
    #   default prioritization process. Priority types that are not
    #   explicitly named will be automatically applied at the end of the
    #   prioritization process. To remove an existing priority
    #   configuration, pass in an empty set.
    #   @return [Types::PriorityConfiguration]
    #
    # @!attribute [rw] custom_event_data
    #   Information to be added to all events that are related to this game
    #   session queue.
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   An SNS topic ARN that is set up to receive game session placement
    #   notifications. See [ Setting up notifications for game session
    #   placement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionQueueInput AWS API Documentation
    #
    class UpdateGameSessionQueueInput < Struct.new(
      :name,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] game_session_queue
    #   An object that describes the newly updated game session queue.
    #   @return [Types::GameSessionQueue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionQueueOutput AWS API Documentation
    #
    class UpdateGameSessionQueueOutput < Struct.new(
      :game_session_queue)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A unique identifier for the matchmaking configuration to update. You
    #   can use either the configuration name or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the matchmaking configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_session_queue_arns
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers game session queue resource and uniquely identifies
    #   it. ARNs are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::gamesessionqueue/<queue name>`. Queues
    #   can be located in any Region. Queues are used to start new Amazon
    #   GameLift Servers-hosted game sessions for matches that are created
    #   with this matchmaking configuration. If `FlexMatchMode` is set to
    #   `STANDALONE`, do not set this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can
    #   remain in process before timing out. Requests that fail due to
    #   timing out can be resubmitted as needed.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match, if acceptance is required.
    #   @return [Integer]
    #
    # @!attribute [rw] acceptance_required
    #   A flag that indicates whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to TRUE. With this option enabled, matchmaking
    #   tickets use the status `REQUIRES_ACCEPTANCE` to indicate when a
    #   completed potential match is waiting for player acceptance.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule_set_name
    #   A unique identifier for the matchmaking rule set to use with this
    #   configuration. You can use either the rule set name or ARN value. A
    #   matchmaking configuration can only use rule sets that are defined in
    #   the same Region.
    #   @return [String]
    #
    # @!attribute [rw] notification_target
    #   An SNS topic ARN that is set up to receive matchmaking
    #   notifications. See [ Setting up notifications for matchmaking][1]
    #   for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    #   @return [String]
    #
    # @!attribute [rw] additional_player_count
    #   The number of player slots in a match to keep open for future
    #   players. For example, if the configuration's rule set specifies a
    #   match for a single 12-person team, and the additional player count
    #   is set to 2, only 10 players are selected for the match. This
    #   parameter is not used if `FlexMatchMode` is set to `STANDALONE`.
    #   @return [Integer]
    #
    # @!attribute [rw] custom_event_data
    #   Information to add to all events related to the matchmaking
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] game_properties
    #   A set of key-value pairs that can store custom data in a game
    #   session. For example: `{"Key": "difficulty", "Value": "novice"}`.
    #   This information is added to the new `GameSession` object that is
    #   created for a successful match. This parameter is not used if
    #   `FlexMatchMode` is set to `STANDALONE`.
    #   @return [Array<Types::GameProperty>]
    #
    # @!attribute [rw] game_session_data
    #   A set of custom game session properties, formatted as a single
    #   string value. This data is passed to a game server process with a
    #   request to start a new game session. For more information, see
    #   [Start a game session][1]. This information is added to the game
    #   session that is created for a successful match. This parameter is
    #   not used if `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #   @return [String]
    #
    # @!attribute [rw] backfill_mode
    #   The method that is used to backfill game sessions created with this
    #   matchmaking configuration. Specify MANUAL when your game manages
    #   backfill requests manually or does not use the match backfill
    #   feature. Specify AUTOMATIC to have GameLift create a match backfill
    #   request whenever a game session has one or more open slots. Learn
    #   more about manual and automatic backfill in [Backfill Existing Games
    #   with FlexMatch][1]. Automatic backfill is not available when
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    #   @return [String]
    #
    # @!attribute [rw] flex_match_mode
    #   Indicates whether this matchmaking configuration is being used with
    #   Amazon GameLift Servers hosting or as a standalone matchmaking
    #   solution.
    #
    #   * **STANDALONE** - FlexMatch forms matches and returns match
    #     information, including players and team assignments, in a [
    #     MatchmakingSucceeded][1] event.
    #
    #   * **WITH\_QUEUE** - FlexMatch forms matches and uses the specified
    #     Amazon GameLift Servers queue to start a game session for the
    #     match.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded
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
      :game_session_data,
      :backfill_mode,
      :flex_match_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The updated matchmaking configuration.
    #   @return [Types::MatchmakingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateMatchmakingConfigurationOutput AWS API Documentation
    #
    class UpdateMatchmakingConfigurationOutput < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet to update runtime configuration
    #   for. You can use either the fleet ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] runtime_configuration
    #   Instructions for launching server processes on fleet computes.
    #   Server processes run either a custom game build executable or a
    #   Amazon GameLift Servers Realtime script. The runtime configuration
    #   lists the types of server processes to run, how to launch them, and
    #   the number of processes to run concurrently.
    #   @return [Types::RuntimeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfigurationInput AWS API Documentation
    #
    class UpdateRuntimeConfigurationInput < Struct.new(
      :fleet_id,
      :runtime_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime_configuration
    #   The runtime configuration currently in use by computes in the fleet.
    #   If the update is successful, all property changes are shown.
    #   @return [Types::RuntimeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfigurationOutput AWS API Documentation
    #
    class UpdateRuntimeConfigurationOutput < Struct.new(
      :runtime_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] script_id
    #   A unique identifier for the Realtime script to update. You can use
    #   either the script ID or ARN value.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive label that is associated with a script. Script names
    #   do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version information that is associated with a build or script.
    #   Version strings do not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] storage_location
    #   The location of the Amazon S3 bucket where a zipped file containing
    #   your Realtime scripts is stored. The storage location must specify
    #   the Amazon S3 bucket name, the zip file name (the "key"), and a
    #   role ARN that allows Amazon GameLift Servers to access the Amazon S3
    #   storage location. The S3 bucket must be in the same Region where you
    #   want to create a new script. By default, Amazon GameLift Servers
    #   uploads the latest version of the zip file; if you have S3 object
    #   versioning turned on, you can use the `ObjectVersion` parameter to
    #   specify an earlier version.
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] zip_file
    #   A data object containing your Realtime scripts and dependencies as a
    #   zip file. The zip file can have one or multiple files. Maximum size
    #   of a zip file is 5 MB.
    #
    #   When using the Amazon Web Services CLI tool to create a script, this
    #   parameter is set to the zip file name. It must be prepended with the
    #   string "fileb://" to indicate that the file data is a binary
    #   object. For example: `--zip-file fileb://myRealtimeScript.zip`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateScriptInput AWS API Documentation
    #
    class UpdateScriptInput < Struct.new(
      :script_id,
      :name,
      :version,
      :storage_location,
      :zip_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] script
    #   The newly created script record with a unique script ID. The new
    #   script's storage location reflects an Amazon S3 location: (1) If
    #   the script was uploaded from an S3 bucket under your account, the
    #   storage location reflects the information that was provided in the
    #   *CreateScript* request; (2) If the script file was uploaded from a
    #   local zip file, the storage location reflects an S3 location
    #   controls by the Amazon GameLift Servers service.
    #   @return [Types::Script]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateScriptOutput AWS API Documentation
    #
    class UpdateScriptOutput < Struct.new(
      :script)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_set_body
    #   A collection of matchmaking rules to validate, formatted as a JSON
    #   string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ValidateMatchmakingRuleSetInput AWS API Documentation
    #
    class ValidateMatchmakingRuleSetInput < Struct.new(
      :rule_set_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] valid
    #   A response indicating whether the rule set is valid.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ValidateMatchmakingRuleSetOutput AWS API Documentation
    #
    class ValidateMatchmakingRuleSetOutput < Struct.new(
      :valid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an authorization for a VPC peering connection between the
    # VPC for an Amazon GameLift Servers fleet and another VPC on an account
    # you have access to. This authorization must exist and be valid for the
    # peering connection to be established. Authorizations are valid for 24
    # hours after they are issued.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] game_lift_aws_account_id
    #   A unique identifier for the Amazon Web Services account that you use
    #   to manage your Amazon GameLift Servers fleet. You can find your
    #   Account ID in the Amazon Web Services Management Console under
    #   account settings.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_aws_account_id
    #   The authorization's peer VPC Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time stamp indicating when this authorization was issued. Format is
    #   a number expressed in Unix time as milliseconds (for example
    #   `"1469498468.057"`).
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   Time stamp indicating when this authorization expires (24 hours
    #   after issuance). Format is a number expressed in Unix time as
    #   milliseconds (for example `"1469498468.057"`).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a peering connection between a VPC on one of your Amazon
    # Web Services accounts and the VPC for your Amazon GameLift Servers
    # fleets. This record may be for an active peering connection or a
    # pending connection that has not yet been established.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @!attribute [rw] fleet_id
    #   A unique identifier for the fleet. This ID determines the ID of the
    #   Amazon GameLift Servers VPC for your fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name ([ARN][1]) associated with the GameLift
    #   fleet resource for this connection.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
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
    #   A unique identifier that is automatically assigned to the connection
    #   record. This ID is referenced in VPC peering connection events, and
    #   is used when deleting a connection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status information about the connection. Status indicates if a
    #   connection is pending, successful, or failed.
    #   @return [Types::VpcPeeringConnectionStatus]
    #
    # @!attribute [rw] peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #   @return [String]
    #
    # @!attribute [rw] game_lift_vpc_id
    #   A unique identifier for the VPC that contains the Amazon GameLift
    #   Servers fleet for this connection. This VPC is managed by Amazon
    #   GameLift Servers and does not appear in your Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/VpcPeeringConnection AWS API Documentation
    #
    class VpcPeeringConnection < Struct.new(
      :fleet_id,
      :fleet_arn,
      :ip_v4_cidr_block,
      :vpc_peering_connection_id,
      :status,
      :peer_vpc_id,
      :game_lift_vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents status information for a VPC peering connection. Status
    # codes and messages are provided from EC2 (see
    # [VpcPeeringConnectionStateReason][1]). Connection status information
    # is also communicated as a fleet event.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

