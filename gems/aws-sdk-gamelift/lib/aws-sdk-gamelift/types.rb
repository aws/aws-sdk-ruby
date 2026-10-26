# frozen_string_literal: true

# This is generated code!

module Aws::GameLift
  # This module contains the types returned by client operations.
  module Types

    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket. The ticket must be in status <code>REQUIRES_ACCEPTANCE</code>; otherwise this
    #               request will fail.</p>
    #   @return [String]
    # @!attribute player_ids
    #   <p>A unique identifier for a player delivering the response. This parameter can include one or multiple player
    #               IDs.</p>
    #   @return [Array<String>]
    # @!attribute acceptance_type
    #   <p>Player response to the proposed match.</p>
    #   @return [String]
    class AcceptMatchInput < Struct.new(
      nil,
      :ticket_id,
      :player_ids,
      :acceptance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AcceptMatchOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties that describe an alias resource.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @!attribute alias_id
    #   <p>A unique identifier for the alias. Alias IDs are unique within a Region.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #   @return [String]
    # @!attribute alias_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers alias resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::alias/alias-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift alias ARN, the resource ID matches the alias ID value.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of an alias.</p>
    #   @return [String]
    # @!attribute routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the alias.
    #           </p>
    #   @return [Types::RoutingStrategy]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time that this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    class Alias < Struct.new(
      nil,
      :alias_id,
      :name,
      :alias_arn,
      :description,
      :routing_strategy,
      :creation_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon GameLift Servers configuration options for your Anywhere fleets.</p>
    # @!attribute cost
    #   <p>The cost to run your fleet per hour. Amazon GameLift Servers uses the provided cost of your fleet to
    #               balance usage in queues. For more information about queues, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html">Setting
    #                   up queues</a> in the <i>Amazon GameLift Servers Developer Guide</i>.</p>
    #   @return [String]
    class AnywhereConfiguration < Struct.new(
      nil,
      :cost,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Values for use in player attribute key-value pairs. This object lets
    #             you specify an attribute value using any of the valid data types: string, number, string
    #             array, or data map. Each <code>AttributeValue</code> object can use only one of the
    #             available properties.</p>
    # @!attribute s
    #   <p>For single string values. Maximum string length is 100 characters.</p>
    #   @return [String]
    # @!attribute n
    #   <p>For number values, expressed as double.</p>
    #   @return [Float]
    # @!attribute sl
    #   <p>For a list of up to 100 strings. Maximum length for each string is 100 characters.
    #               Duplicate values are not recognized; all occurrences of the repeated value after the
    #               first of a repeated value are ignored.</p>
    #   @return [Array<String>]
    # @!attribute sdm
    #   <p>For a map of up to 10 data type:value pairs. Maximum length for each string value is
    #               100 characters. </p>
    #   @return [Hash<String, Float>]
    class AttributeValue < Struct.new(
      nil,
      :s,
      :n,
      :sl,
      :sdm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Web Services account security credentials that allow interactions with Amazon GameLift Servers resources. The
    #             credentials are temporary and valid for a limited time span. You can request fresh
    #             credentials at any time. </p>
    #          <p> Amazon Web Services security credentials consist of three parts: an access key ID, a secret access
    #             key, and a session token. You must use all three parts together to authenticate your
    #             access requests.</p>
    #          <p>You need Amazon Web Services credentials for the following tasks: </p>
    #          <ul>
    #             <li>
    #                <p>To upload a game server build directly to Amazon GameLift Servers S3 storage using <code>CreateBuild</code>. To get access for this
    #             task, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_RequestUploadCredentials.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_RequestUploadCredentials.html</a>.</p>
    #             </li>
    #             <li>
    #                <p>To remotely connect to an active Amazon GameLift Servers fleet instance.
    #                 To get remote access, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess.html</a>.</p>
    #             </li>
    #          </ul>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute access_key_id
    #   <p>The access key ID that identifies the temporary security credentials. </p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret access key that can be used to sign requests.</p>
    #   @return [String]
    # @!attribute session_token
    #   <p>The token that users must pass to the service API to use the temporary credentials. </p>
    #   @return [String]
    class AwsCredentials < Struct.new(
      nil,
      :access_key_id,
      :secret_access_key,
      :session_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties describing a custom game build.</p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @!attribute build_id
    #   <p>A unique identifier for the build.</p>
    #   @return [String]
    # @!attribute build_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers build resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::build/build-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift build ARN, the resource ID matches the
    #                   <i>BuildId</i> value.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. It can be set using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateBuild.html">CreateBuild</a> or
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/UpdateBuild">UpdateBuild</a>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the build.</p>
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
    #   @return [String]
    # @!attribute size_on_disk
    #   <p>File size of the uploaded game build, expressed in bytes. When the build status is
    #                   <code>INITIALIZED</code> or when using a custom Amazon S3 storage location, this value is
    #               0.</p>
    #   @return [Integer]
    # @!attribute operating_system
    #   <p>Operating system that the game server binaries are built to run on. This value
    #               determines the type of fleet resources that you can use for this build.</p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2026. See more details in
    #               the <a href="http://aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>.
    #               For game servers
    #               that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the
    #               game server build to server SDK 5.x, and then deploy to AL2023 instances. See
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html">
    #                   Migrate to server SDK version 5.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute server_sdk_version
    #   <p>The Amazon GameLift Servers Server SDK version used to develop your game server.</p>
    #   @return [String]
    class Build < Struct.new(
      nil,
      :build_id,
      :build_arn,
      :name,
      :version,
      :status,
      :size_on_disk,
      :operating_system,
      :creation_time,
      :server_sdk_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Determines whether a TLS/SSL certificate is generated for a fleet. This feature must
    #             be enabled when creating the fleet. All instances in a fleet share the same certificate.
    #             The certificate can be retrieved by calling the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html">Amazon GameLift Servers Server
    #                 SDK</a> operation <code>GetInstanceCertificate</code>. </p>
    # @!attribute certificate_type
    #   <p>Indicates whether a TLS/SSL certificate is generated for a fleet. </p>
    #            <p>Valid values include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>GENERATED</b> - Generate a TLS/SSL certificate
    #                       for this fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DISABLED</b> - (default) Do not generate a
    #                       TLS/SSL certificate for this fleet. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CertificateConfiguration < Struct.new(
      nil,
      :certificate_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         Filters which game servers may be claimed when calling <code>ClaimGameServer</code>.
    #     </p>
    # @!attribute instance_statuses
    #   <p>List of instance statuses that game servers may be claimed on. If provided, the list must contain the
    #               <code>ACTIVE</code> status.</p>
    #   @return [Array<String>]
    class ClaimFilterOption < Struct.new(
      nil,
      :instance_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running. If you are not specifying a game server to claim, this value identifies
    #               where you want Amazon GameLift Servers FleetIQ to look for an available game server to claim. </p>
    #   @return [String]
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server to claim. If this parameter is left empty, Amazon GameLift Servers FleetIQ searches for an available
    #               game server in the specified game server group.</p>
    #   @return [String]
    # @!attribute game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers. </p>
    #   @return [String]
    # @!attribute filter_option
    #   <p>Object that restricts how a claimed game server is chosen.</p>
    #   @return [Types::ClaimFilterOption]
    class ClaimGameServerInput < Struct.new(
      nil,
      :game_server_group_name,
      :game_server_id,
      :game_server_data,
      :filter_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server
    #   <p>Object that describes the newly claimed game server.</p>
    #   @return [Types::GameServer]
    class ClaimGameServerOutput < Struct.new(
      nil,
      :game_server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon GameLift Servers compute resource for hosting your game servers. Computes in an Amazon GameLift Servers
    #             fleet differ depending on the fleet's compute type property as follows: </p>
    #          <ul>
    #             <li>
    #                <p>For managed EC2 fleets, a compute is an EC2 instance.</p>
    #             </li>
    #             <li>
    #                <p>For Anywhere fleets, a compute is a computing resource that you provide and is
    #                     registered to the fleet.</p>
    #             </li>
    #          </ul>
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the compute belongs to.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet that the compute belongs to.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>A descriptive label for the compute resource. For instances in a managed EC2 fleet, the compute name is the same value as the <code>InstanceId</code>
    #               ID.</p>
    #   @return [String]
    # @!attribute compute_arn
    #   <p>The ARN that is assigned to a compute resource and uniquely identifies it. ARNs are
    #               unique across locations. Instances in managed EC2 fleets are not assigned a Compute
    #               ARN.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of a compute resource. Amazon GameLift Servers requires a DNS name or IP address for a
    #               compute.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS name of a compute resource. Amazon GameLift Servers requires a DNS name or IP address for a
    #               compute.</p>
    #   @return [String]
    # @!attribute compute_status
    #   <p>Current status of the compute. A compute must have an <code>ACTIVE</code> status to
    #               host game sessions. Valid values include <code>PENDING</code>, <code>ACTIVE</code>, <code>TERMINATING</code>, and <code>IMPAIRED</code>.</p>
    #            <note>
    #               <p>While the ComputeStatus enum type is valid for Container based servers, the result may also include other non-enumerated string values such as "Active" for fleets which are not Container-based.</p>
    #            </note>
    #   @return [String]
    # @!attribute location
    #   <p>The name of the custom location you added to the fleet that this compute resource
    #               resides in.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute operating_system
    #   <p>The type of operating system on the compute resource.</p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2026. See more details in
    #               the <a href="http://aws.amazon.com/aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>.
    #               For game servers
    #               that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the
    #               game server build to server SDK 5.x, and then deploy to AL2023 instances. See
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html">
    #                   Migrate to server SDK version 5.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute type
    #   <p>The Amazon EC2 instance type that the fleet uses. For registered computes in an Amazon GameLift Servers Anywhere fleet, this property is empty. </p>
    #   @return [String]
    # @!attribute game_lift_service_sdk_endpoint
    #   <p>The Amazon GameLift Servers SDK endpoint connection for a registered compute resource in an Anywhere
    #               fleet. The game servers on the compute use this endpoint to connect to the Amazon GameLift Servers
    #               service.</p>
    #   @return [String]
    # @!attribute game_lift_agent_endpoint
    #   <p> The endpoint of the Amazon GameLift Servers Agent. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>
    #           The <code>InstanceID</code> of the EC2 instance that is hosting the compute.
    #         </p>
    #   @return [String]
    # @!attribute container_attributes
    #   <p>A set of attributes for each container in the compute. </p>
    #   @return [Array<Types::ContainerAttribute>]
    # @!attribute game_server_container_group_definition_arn
    #   <p>The game server container group definition for the compute.</p>
    #   @return [String]
    class Compute < Struct.new(
      nil,
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
      :game_server_container_group_definition_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a service
    #             resource associated with the request. Resolve the conflict before retrying this
    #             request.</p>
    #          <p></p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The set of port numbers to open on each instance in a container fleet. Connection
    #             ports are used by inbound traffic to connect with processes that are running in
    #             containers on the fleet.</p>
    #          <p>The port range must not overlap with the Amazon GameLift Servers reserved port range
    #             <code>4092-4191</code>. This range is reserved for internal Amazon GameLift Servers
    #             services.</p>
    # @!attribute from_port
    #   <p>Starting value for the port range.</p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>Ending value for the port. Port numbers are end-inclusive. This value must be equal to
    #               or greater than <code>FromPort</code>.</p>
    #   @return [Integer]
    class ConnectionPortRange < Struct.new(
      nil,
      :from_port,
      :to_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A unique identifier for a container in a container fleet compute. </p>
    #          <p>
    #             <b>Returned by:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute.html">DescribeCompute</a>
    #          </p>
    # @!attribute container_name
    #   <p>The identifier for a container that's running in a compute. </p>
    #   @return [String]
    # @!attribute container_runtime_id
    #   <p>The runtime ID for the container that's running in a compute. This value is unique within
    #         the compute.</p>
    #   @return [String]
    class ContainerAttribute < Struct.new(
      nil,
      :container_name,
      :container_runtime_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container's dependency on another container in the same container group. The dependency
    #       impacts how the dependent container is able to start or shut down based on the status of the
    #       other container.</p>
    #          <p>For example, <i>ContainerA</i> is configured with the following dependency: a
    #         <code>START</code> dependency on <i>ContainerB</i>. This means that
    #         <i>ContainerA</i> can't start until <i>ContainerB</i> has
    #       started. It also means that <i>ContainerA</i> must shut down before
    #         <i>ContainerB</i>.</p>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html">GameServerContainerDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html">GameServerContainerDefinitionInput</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html">SupportContainerDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html">SupportContainerDefinitionInput</a>
    #          </p>
    # @!attribute container_name
    #   <p>A descriptive label for the container definition that this container depends on.</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition that the dependency container must reach before the dependent container can
    #         start. Valid conditions include: </p>
    #            <ul>
    #               <li>
    #                  <p>START - The dependency container must have started. </p>
    #               </li>
    #               <li>
    #                  <p>COMPLETE - The dependency container has run to completion (exits). Use this condition with
    #             nonessential containers, such as those that run a script and then exit. The dependency
    #             container can't be an essential container. </p>
    #               </li>
    #               <li>
    #                  <p>SUCCESS - The dependency container has run to completion and exited with a zero status. The
    #             dependency container can't be an essential container. </p>
    #               </li>
    #               <li>
    #                  <p>HEALTHY - The dependency container has passed its Docker health check. Use this condition with
    #             dependency containers that have health checks configured. This condition is confirmed at
    #             container group startup only.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ContainerDependency < Struct.new(
      nil,
      :container_name,
      :condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An environment variable to set inside a container, in the form of a key-value pair.
    #     </p>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html">GameServerContainerDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html">GameServerContainerDefinitionInput</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html">SupportContainerDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html">SupportContainerDefinitionInput</a>
    #          </p>
    # @!attribute name
    #   <p>The environment variable name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The environment variable value.</p>
    #   @return [String]
    class ContainerEnvironment < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon GameLift Servers managed container fleet. </p>
    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet to retrieve. </p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift fleet ARN, the resource ID matches the <code>FleetId</code>
    #               value.</p>
    #   @return [String]
    # @!attribute fleet_role_arn
    #   <p>The unique identifier for an Identity and Access Management (IAM) role with permissions to run your
    #               containers on resources that are managed by Amazon GameLift Servers. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html">Set up an IAM service
    #                   role</a>. This fleet property can't be changed.</p>
    #   @return [String]
    # @!attribute game_server_container_group_definition_name
    #   <p>The name of the fleet's game server container group definition, which describes how to
    #               deploy containers with your game server build and support software onto each fleet
    #               instance. </p>
    #   @return [String]
    # @!attribute game_server_container_group_definition_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to the fleet's game server container group. The ARN value
    #               also identifies the specific container group definition version in use.</p>
    #   @return [String]
    # @!attribute per_instance_container_group_definition_name
    #   <p>The name of the fleet's per-instance container group definition. </p>
    #   @return [String]
    # @!attribute per_instance_container_group_definition_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to the fleet's per-instance container group. The ARN value
    #               also identifies the specific container group definition version in use.</p>
    #   @return [String]
    # @!attribute instance_connection_port_range
    #   <p>The set of port numbers to open on each instance in a container fleet. Connection
    #               ports are used by inbound traffic to connect with processes that are running in
    #               containers on the fleet.</p>
    #            <p>The port range must not overlap with the Amazon GameLift Servers reserved port range
    #               <code>4092-4191</code>. This range is reserved for internal Amazon GameLift Servers
    #               services.</p>
    #   @return [Types::ConnectionPortRange]
    # @!attribute instance_inbound_permissions
    #   <p>The IP address ranges and port settings that allow inbound traffic to access game
    #               server processes and other processes on this fleet. </p>
    #   @return [Array<Types::IpPermission>]
    # @!attribute game_server_container_groups_per_instance
    #   <p>The number of times to replicate the game server container group on each fleet
    #               instance. </p>
    #   @return [Integer]
    # @!attribute maximum_game_server_container_groups_per_instance
    #   <p>The calculated maximum number of game server container groups that can be deployed on
    #               each fleet instance. The calculation depends on the resource needs of the container
    #               group and the CPU and memory resources of the fleet's instance type.</p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instance type to use for all instances in the fleet. Instance type
    #               determines the computing resources and processing power that's available to host your
    #               game servers. This includes CPU, memory, storage, and networking capacity. You
    #               can't update this fleet property.</p>
    #   @return [String]
    # @!attribute billing_type
    #   <p>Indicates whether the fleet uses On-Demand or Spot instances for this fleet. Learn
    #               more about when to use <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot"> On-Demand versus Spot Instances</a>. You can't update this fleet
    #               property.</p>
    #            <p>By default, this property is set to <code>ON_DEMAND</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A meaningful description of the container fleet.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to. Metric groups
    #               aggregate metrics for multiple fleets. </p>
    #   @return [Array<String>]
    # @!attribute new_game_session_protection_policy
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
    #                       <code>ACTIVE</code> status can't be shut down.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute game_session_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that each individual player can create
    #               on instances in this fleet. The limit applies for a specified span of time.</p>
    #   @return [Types::GameSessionCreationLimitPolicy]
    # @!attribute status
    #   <p>The current status of the container fleet.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> -- A new container fleet has been requested.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> -- A new container fleet resource is being created. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> -- A new container fleet resource has been created. No fleet instances
    #                       have been deployed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATING</code> -- New container fleet instances are being deployed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> -- The container fleet has been deployed and is ready to host game
    #                       sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> -- The container fleet is being updated. A deployment is in
    #                       progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED</code> -- The container fleet has been expired. The fleet is scaled down to zero
    #                       instances and cannot host new game sessions.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute deployment_details
    #   <p>Information about the most recent deployment for the container fleet.</p>
    #   @return [Types::DeploymentDetails]
    # @!attribute log_configuration
    #   <p>The method that is used to collect container logs for the fleet. Amazon GameLift Servers saves all
    #               standard output for each container in logs, including game session logs. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLOUDWATCH</code> -- Send logs to an Amazon CloudWatch log group that you define. Each container
    #                   emits a log stream, which is organized in the log group. </p>
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
    #   @return [Types::LogConfiguration]
    # @!attribute location_attributes
    #   <p>Information about the container fleet's remote locations where fleet instances are
    #               deployed.</p>
    #   @return [Array<Types::ContainerFleetLocationAttributes>]
    # @!attribute player_gateway_mode
    #   <p>Indicates whether player gateway is enabled for this container fleet. Player gateway provides benefits such as DDoS protection with negligible impact to latency.</p>
    #            <p>If <code>ENABLED</code> or <code>REQUIRED</code>, game clients can use player gateway to connect with the game server. If <code>DISABLED</code>, game clients cannot use player gateway. Instead, they have to directly connect to the game server.</p>
    #   @return [String]
    class ContainerFleet < Struct.new(
      nil,
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
      :location_attributes,
      :player_gateway_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a location in a multi-location container fleet. </p>
    # @!attribute location
    #   <p>A location identifier.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of fleet activity in the location. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> -- A new container fleet has been requested.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> -- A new container fleet resource is being created.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> -- A new container fleet resource has been created. No
    #                       fleet instances have been deployed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATING</code> -- New container fleet instances are being
    #                       deployed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> -- The container fleet has been deployed and is ready to
    #                       host game sessions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> -- The container fleet is being updated. A
    #                       deployment is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPIRED</code> -- The container fleet has been expired. The fleet is
    #                       scaled down to zero instances and cannot host new game sessions.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute player_gateway_status
    #   <p>The current status of player gateway in this location for this container fleet. Note, even if a container fleet has PlayerGatewayMode configured as <code>ENABLED</code>, player gateway might not be available in a specific location. For more information about locations where player gateway is supported, see <a href="https://docs.aws.amazon.com/gameliftservers/latest/developerguide/gamelift-regions.html">Amazon GameLift Servers service locations</a>.</p>
    #            <p>Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> -- Player gateway is available for this container fleet location.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> -- Player gateway is not available for this container fleet location.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ContainerFleetLocationAttributes < Struct.new(
      nil,
      :location,
      :status,
      :player_gateway_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties that describe a container group resource. You can update all properties of
    #       a container group definition. Updates to a container group definition are saved as
    #       new versions. </p>
    #          <p>
    #             <b>Used with:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a>
    #          </p>
    #          <p>
    #             <b>Returned by:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeContainerGroupDefinition.html">DescribeContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitions.html">ListContainerGroupDefinitions</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>
    #          </p>
    # @!attribute container_group_definition_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to an Amazon GameLift Servers <code>ContainerGroupDefinition</code> resource. It uniquely identifies
    #   the resource across all Amazon Web Services Regions. Format is
    #   <code>arn:aws:gamelift:[region]::containergroupdefinition/[container group definition name]:[version]</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute operating_system
    #   <p>The platform that all containers in the container group definition run on.</p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2026. See more details in the <a href="http://aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>. For game
    #         servers that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the game
    #           server build to server SDK 5.x, and then deploy to AL2023 instances. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html"> Migrate to
    #             server SDK version 5.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive identifier for the container group definition. The name value is unique in an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute container_group_type
    #   <p>The type of container group. Container group type determines how Amazon GameLift Servers deploys the
    #         container group on each fleet instance.</p>
    #   @return [String]
    # @!attribute total_memory_limit_mebibytes
    #   <p>The amount of memory (in MiB) on a fleet instance to allocate for the container group. All
    #         containers in the group share these resources. </p>
    #            <p>You can set a limit for each container definition in the group. If individual containers
    #         have limits, this total value must be greater than any individual container's memory
    #         limit.</p>
    #   @return [Integer]
    # @!attribute total_vcpu_limit
    #   <p>The amount of vCPU units on a fleet instance to allocate for the container group (1 vCPU
    #         is equal to 1024 CPU units). All containers in the group share these resources. You can set a
    #         vCPU reservation for each container definition in the group. If individual containers have
    #         reservations, this total value must be equal to or greater than the sum of the reservations
    #         for each container in the group.</p>
    #            <p>For a game server container group, if this property is set, Amazon GameLift Servers uses this value to
    #         calculate how many game server container groups fit on an instance. If this property isn't set,
    #         the group's containers can use up to the instance's available vCPU, and Amazon GameLift Servers uses the sum of
    #         the containers' <code>Vcpu</code> values to calculate how many game server container groups fit
    #         on an instance.</p>
    #   @return [Float]
    # @!attribute game_server_container_definition
    #   <p>The definition for the game server container in this group. This property is used only
    #         when the container group type is <code>GAME_SERVER</code>. This container definition specifies
    #         a container image with the game server build. </p>
    #   @return [Types::GameServerContainerDefinition]
    # @!attribute support_container_definitions
    #   <p>The set of definitions for support containers in this group. A container group definition
    #         might have zero support container definitions. Support containers can be used in any type of
    #         container group.</p>
    #   @return [Array<Types::SupportContainerDefinition>]
    # @!attribute version_number
    #   <p>Indicates the version of a particular container group definition. This number is
    #         incremented automatically when you update a container group definition. You can view, update,
    #         or delete individual versions or the entire container group definition.</p>
    #   @return [Integer]
    # @!attribute version_description
    #   <p>An optional description that was provided for a container group definition update. Each
    #         version can have a unique description.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the container group definition resource. Values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COPYING</code> -- Amazon GameLift Servers is in the process of making copies of all container
    #             images that are defined in the group. While in this state, the resource can't be used to
    #             create a container fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> -- Amazon GameLift Servers has copied the registry images for all containers that
    #             are defined in the group. You can use a container group definition in this status to
    #             create a container fleet. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> -- Amazon GameLift Servers failed to create a valid container group definition
    #             resource. For more details on the cause of the failure, see <code>StatusReason</code>. A
    #             container group definition resource in failed status will be deleted within a few
    #             minutes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about a container group definition that's in <code>FAILED</code>
    #         status. Possible reasons include:</p>
    #            <ul>
    #               <li>
    #                  <p>An internal issue prevented Amazon GameLift Servers from creating
    #           the container group definition resource. Delete the failed resource and call
    #           <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a> again. </p>
    #               </li>
    #               <li>
    #                  <p>An access-denied message means that you don't have permissions to access the container image on ECR. See
    #           <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-iam-policy-examples.html">
    #             IAM permission examples</a>
    #           for help setting up required IAM permissions for Amazon GameLift Servers.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>ImageUri</code> value for at least one
    #         of the containers in the container group definition was invalid or not found in the current
    #         Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>At least one
    #           of the container images referenced in the container group definition exceeds the
    #           allowed size. For size limits, see <a href="https://docs.aws.amazon.com/general/latest/gr/gamelift.html">
    #             Amazon GameLift Servers endpoints and quotas</a>.</p>
    #               </li>
    #               <li>
    #                  <p>At least one of the container images referenced in the
    #           container group definition uses a different operating system than the one defined for the container group.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ContainerGroupDefinition < Struct.new(
      nil,
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
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the port mappings for a single container in a container group. Each mapping
    #             shows how a container port maps to a connection port on the fleet instance.</p>
    #          <p>
    #             <b>Returned by:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeContainerGroupPortMappings.html">DescribeContainerGroupPortMappings</a>
    #          </p>
    # @!attribute container_name
    #   <p>The name of the container, as defined in the container group definition.</p>
    #   @return [String]
    # @!attribute container_runtime_id
    #   <p>The runtime ID for the container that's running in a compute. This value is unique
    #               within the compute.</p>
    #   @return [String]
    # @!attribute container_port_mappings
    #   <p>A list of <code>ContainerPortMapping</code> objects that describe the port mappings
    #               for this container.</p>
    #   @return [Array<Types::ContainerPortMapping>]
    class ContainerGroupPortMapping < Struct.new(
      nil,
      :container_name,
      :container_runtime_id,
      :container_port_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Instructions on when and how to check the health of a support container in a container
    #       fleet. These properties override any Docker health checks that are set in the container image.
    #       For more information on container health checks, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_HealthCheck.html#ECS-Type-HealthCheck-command">HealthCheck command</a> in the <i>Amazon Elastic Container Service API</i>. Game server
    #       containers don't have a health check parameter; Amazon GameLift Servers automatically handles health checks
    #       for these containers.</p>
    #          <p>The following example instructs the container to initiate a health check command every 60
    #       seconds and wait 10 seconds for it to succeed. If it fails, retry the command 3 times before
    #       flagging the container as unhealthy. It also tells the container to wait 100 seconds after
    #       launch before counting failed health checks.</p>
    #          <p>
    #             <code>{"Command": [ "CMD-SHELL", "ps cax | grep "processmanager" || exit 1" ], "Interval":
    #         60, "Timeout": 10, "Retries": 3, "StartPeriod": 100 }</code>
    #          </p>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html">SupportContainerDefinition</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html">SupportContainerDefinitionInput</a>
    #          </p>
    # @!attribute command
    #   <p>A string array that specifies the command that the container runs to determine if it's
    #         healthy.</p>
    #   @return [Array<String>]
    # @!attribute interval
    #   <p>The time period (in seconds) between each health check.</p>
    #   @return [Integer]
    # @!attribute retries
    #   <p>The number of times to retry a failed health check before flagging the container
    #         unhealthy. The first run of the command does not count as a retry.</p>
    #   @return [Integer]
    # @!attribute start_period
    #   <p>The optional grace period (in seconds) to give a container time to bootstrap before the
    #         first failed health check counts toward the number of retries.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The time period (in seconds) to wait for a health check to succeed before counting a
    #         failed health check. </p>
    #   @return [Integer]
    class ContainerHealthCheck < Struct.new(
      nil,
      :command,
      :interval,
      :retries,
      :start_period,
      :timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A unique identifier for a container in a compute on a managed container fleet instance.
    #       This information makes it possible to remotely connect to a specific container on a fleet
    #       instance.</p>
    #          <p>
    #             <b>Related to:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerAttribute.html">ContainerAttribute</a>
    #          </p>
    #          <p>
    #             <b>Use with: </b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess.html">GetComputeAccess</a>
    #          </p>
    # @!attribute container_name
    #   <p>The identifier for a container that's running in a compute. </p>
    #   @return [String]
    # @!attribute container_runtime_id
    #   <p>The runtime ID for the container that's running in a compute. This value is unique within
    #         the compute. It is returned as a <code>ContainerAttribute</code> value in a
    #           <code>Compute</code> object.</p>
    #   @return [String]
    class ContainerIdentifier < Struct.new(
      nil,
      :container_name,
      :container_runtime_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A mount point that binds a container to a file or directory on the host system. </p>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html">GameServerContainerDefinition</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html">SupportContainerDefinition</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html</a>
    #          </p>
    # @!attribute instance_path
    #   <p>The path to the source file or directory. </p>
    #   @return [String]
    # @!attribute container_path
    #   <p>The mount path on the container. If this property isn't set, the instance path is
    #         used.</p>
    #   @return [String]
    # @!attribute access_level
    #   <p>The type of access for the container.</p>
    #   @return [String]
    class ContainerMountPoint < Struct.new(
      nil,
      :instance_path,
      :container_path,
      :access_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of port ranges that can be opened on the container. A process that's running in the
    #       container can bind to a port number, making it accessible to inbound traffic when it's mapped
    #       to a container fleet's connection port.</p>
    #          <p>Each container port range specifies a network protocol. When the configuration supports
    #       more than one protocol, we recommend that you use a different range for each protocol. If your
    #       ranges have overlapping port numbers, Amazon GameLift Servers maps a duplicated container port number to
    #       different connection ports. For example, if you include 1935 in port ranges for both TCP and
    #       UDP, it might result in the following mappings: </p>
    #          <ul>
    #             <li>
    #                <p>container port 1935 (tcp) => connection port 2001</p>
    #             </li>
    #             <li>
    #                <p>container port 1935 (udp) => connection port 2002</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html">GameServerContainerDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html">GameServerContainerDefinitionInput</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html">SupportContainerDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html">SupportContainerDefinitionInput</a>
    #          </p>
    # @!attribute container_port_ranges
    #   <p>A set of one or more container port number ranges. The ranges can't overlap if the ranges'
    #         network protocols are the same. Overlapping ranges with different protocols is allowed but not
    #         recommended. </p>
    #   @return [Array<Types::ContainerPortRange>]
    class ContainerPortConfiguration < Struct.new(
      nil,
      :container_port_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a mapping between a container port and a connection port on a fleet
    #             instance. You define container ports in a container group definition. Amazon GameLift Servers assigns
    #             connection ports when it deploys the container group to an instance.</p>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupPortMapping.html">ContainerGroupPortMapping</a>
    #          </p>
    # @!attribute container_port
    #   <p>The port number on the container. This port is defined in the container group
    #               definition. Container port numbers must be unique within a container group
    #               definition.</p>
    #   @return [Integer]
    # @!attribute connection_port
    #   <p>The port number on the fleet instance that maps to the container port. Connection
    #               ports are assigned by Amazon GameLift Servers when the container group is deployed to an
    #               instance.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The network protocol for the port mapping. Valid values are <code>TCP</code> or
    #               <code>UDP</code>.</p>
    #   @return [String]
    class ContainerPortMapping < Struct.new(
      nil,
      :container_port,
      :connection_port,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of one or more port numbers that can be opened on the container, and the supported
    #       network protocol. </p>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerPortConfiguration.html">ContainerPortConfiguration</a>
    #          </p>
    # @!attribute from_port
    #   <p>A starting value for the range of allowed port numbers.</p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>An ending value for the range of allowed port numbers.
    #       Port numbers are end-inclusive.
    #       This value must be equal to or greater than <code>FromPort</code>.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The network protocol that these ports support. </p>
    #   @return [String]
    class ContainerPortRange < Struct.new(
      nil,
      :from_port,
      :to_port,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the alias.</p>
    #   @return [String]
    # @!attribute routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the alias.
    #           </p>
    #   @return [Types::RoutingStrategy]
    # @!attribute tags
    #   <p>A list of labels to assign to the new alias resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateAliasInput < Struct.new(
      nil,
      :name,
      :description,
      :routing_strategy,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The newly created alias resource.</p>
    #   @return [Types::Alias]
    class CreateAliasOutput < Struct.new(
      nil,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. You can change this value later. </p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. You can change this value later. </p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>Information indicating where your game build files are stored. Use this parameter only
    #               when creating a build with files stored in an Amazon S3 bucket that you own. The storage
    #               location must specify an Amazon S3 bucket name and key. The location must also specify a role
    #               ARN that you set up to allow Amazon GameLift Servers to access your Amazon S3 bucket. The S3 bucket and your
    #               new build must be in the same Region.</p>
    #            <p>If a <code>StorageLocation</code> is specified, the size of your file can be found in
    #               your Amazon S3 bucket. Amazon GameLift Servers will report a <code>SizeOnDisk</code> of 0. </p>
    #   @return [Types::S3Location]
    # @!attribute operating_system
    #   <p>The operating system that your game server binaries run on. This value determines the
    #               type of fleet resources that you use for this build. If your game build contains
    #               multiple executables, they all must run on the same operating system. You must specify a
    #               valid operating system in this request. There is no default value. You can't change a
    #               build's operating system later.</p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2026. See more details in
    #               the <a href="http://aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>.
    #               For game servers
    #                   that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the
    #                   game server build to server SDK 5.x, and then deploy to AL2023 instances. See
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html">
    #                   Migrate to server SDK version 5.</a>
    #               </p>
    #            </note>
    #            <note>
    #               <p>Windows Server 2016 will reach end of support on 1/12/2027.
    #               For game servers
    #               that are hosted on Windows Server 2016 and use server SDK version 4.x for Amazon GameLift Servers, first update the
    #               game server build to server SDK 5.x, and then deploy to Windows Server 2022 instances. See
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html">
    #                   Migrate to server SDK version 5.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of labels to assign to the new build resource. Tags are developer defined
    #               key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html">TagResource</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html">UntagResource</a>, and
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html">ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit
    #               may be lower than stated. See the Amazon Web Services General Reference for actual tagging
    #               limits.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute server_sdk_version
    #   <p>A server SDK version you used when integrating your game server build with Amazon GameLift Servers. For more information see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-custom-intro.html">Integrate games
    #                   with custom game servers</a>. By default Amazon GameLift Servers sets this value to
    #                   <code>4.0.2</code>.</p>
    #   @return [String]
    class CreateBuildInput < Struct.new(
      nil,
      :name,
      :version,
      :storage_location,
      :operating_system,
      :tags,
      :server_sdk_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute build
    #   <p>The newly created build resource, including a unique build ID and status. </p>
    #   @return [Types::Build]
    # @!attribute upload_credentials
    #   <p>This element is returned only when the operation is called without a storage location.
    #               It contains credentials to use when you are uploading a build file to an Amazon S3 bucket
    #               that is owned by Amazon GameLift Servers. Credentials have a limited life span. To refresh these
    #               credentials, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_RequestUploadCredentials.html">RequestUploadCredentials</a>. </p>
    #   @return [Types::AwsCredentials]
    # @!attribute storage_location
    #   <p>Amazon S3 location for your game build file, including bucket name and key.</p>
    #   @return [Types::S3Location]
    class CreateBuildOutput < Struct.new(
      nil,
      :build,
      :upload_credentials,
      :storage_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_role_arn
    #   <p>The unique identifier for an Identity and Access Management (IAM) role with permissions to run your
    #               containers on resources that are managed by Amazon GameLift Servers. Use an IAM service role with the
    #                   <code>GameLiftContainerFleetPolicy</code> managed policy attached. For more
    #               information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html">Set up an IAM service
    #                   role</a>. You can't change this fleet property after the fleet is
    #               created.</p>
    #            <p>IAM role ARN values use the following pattern: <code>arn:aws:iam::[Amazon Web Services account]:role/[role name]</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A meaningful description of the container fleet.</p>
    #   @return [String]
    # @!attribute game_server_container_group_definition_name
    #   <p>A container group definition resource that describes how to deploy containers with
    #               your game server build and support software onto each fleet instance. You can specify
    #               the container group definition's name to use the latest version. Alternatively, provide
    #               an ARN value with a specific version number.</p>
    #            <p>Create a container group definition by calling
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a>.
    #               This operation creates a
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a> resource. </p>
    #   @return [String]
    # @!attribute per_instance_container_group_definition_name
    #   <p>The name of a container group definition resource that describes a set of auxiliary
    #               software. A fleet instance has one process for executables in this container group. A
    #               per-instance container group is optional. You can update the fleet to add or remove a
    #               per-instance container group at any time. You can specify the container group
    #               definition's name to use the latest version. Alternatively, provide an ARN value with a
    #               specific version number. </p>
    #            <p>Create a container group definition by calling
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html</a>.
    #               This operation creates a
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html</a> resource.</p>
    #   @return [String]
    # @!attribute instance_connection_port_range
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
    #                           container group definition] + [# of container ports in the per instance
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
    #            <p>The port range must not overlap with the Amazon GameLift Servers reserved port range
    #               <code>4092-4191</code>. This range is reserved for internal Amazon GameLift Servers
    #               services.</p>
    #   @return [Types::ConnectionPortRange]
    # @!attribute instance_inbound_permissions
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
    #                           definition] + [# of container ports in the per instance container group
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
    #            <p>The port range must not overlap with the Amazon GameLift Servers reserved port range
    #               <code>4092-4191</code>. This range is reserved for internal Amazon GameLift Servers
    #               services.</p>
    #   @return [Array<Types::IpPermission>]
    # @!attribute game_server_container_groups_per_instance
    #   <p>The number of times to replicate the game server container group on each fleet
    #               instance. </p>
    #            <p>By default, Amazon GameLift Servers calculates the maximum number of game server container groups that
    #               can fit on each instance. This calculation is based on the CPU and memory resources of
    #               the fleet's instance type. To use the calculated maximum, don't set this parameter. If
    #               you set this number manually, Amazon GameLift Servers uses your value as long as it's less than the
    #               calculated maximum.</p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instance type to use for all instances in the fleet. For multi-location
    #               fleets, the instance type must be available in the home region and all remote locations.
    #               Instance type determines the computing resources and processing power that's available
    #               to host your game servers. This includes CPU, memory, storage, and networking
    #               capacity. </p>
    #            <p>By default, Amazon GameLift Servers uses the <code>c5.large</code> instance type. If this instance
    #               type does not have sufficient resources for your container groups, you can choose a
    #               different instance type that better fits your needs. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance Types</a> for detailed descriptions
    #               of Amazon EC2 instance types.</p>
    #            <p>You can't update this fleet property later.</p>
    #   @return [String]
    # @!attribute billing_type
    #   <p>Indicates whether to use On-Demand or Spot instances for this fleet. Learn more about
    #               when to use <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot"> On-Demand versus Spot Instances</a>. This fleet property can't be changed after the fleet is created.</p>
    #            <p>By default, this property is set to <code>ON_DEMAND</code>.</p>
    #            <p>You can't update this fleet property later.</p>
    #   @return [String]
    # @!attribute locations
    #   <p>A set of locations to deploy container fleet instances to. You can add any Amazon Web Services
    #               Region or Local Zone that's supported by Amazon GameLift Servers. Provide a list of one or more Amazon Web Services
    #               Region codes, such as <code>us-west-2</code>, or Local Zone names. Also include the
    #               fleet's home Region, which is the Amazon Web Services Region where the fleet is created. For a list of
    #               supported Regions and Local Zones, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html"> Amazon GameLift Servers service
    #                   locations</a> for managed hosting.</p>
    #   @return [Array<Types::LocationConfiguration>]
    # @!attribute metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to. You can use a metric group
    #               to aggregate metrics for multiple fleets. You can specify an existing metric
    #               group name or use a new name to create a new metric group. Each fleet can have only one metric group,
    #               but you can change this value at any time. </p>
    #   @return [Array<String>]
    # @!attribute new_game_session_protection_policy
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
    #   @return [String]
    # @!attribute game_session_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that each individual player can create
    #               on instances in this fleet. The limit applies for a specified span of time.</p>
    #   @return [Types::GameSessionCreationLimitPolicy]
    # @!attribute log_configuration
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
    #            <p>Amazon GameLift Servers requires permissions to send logs to other Amazon Web Services services in your account. These permissions are included in the IAM fleet role for this container fleet (see <code>FleetRoleArn</code>).</p>
    #   @return [Types::LogConfiguration]
    # @!attribute tags
    #   <p>A list of labels to assign to the new fleet resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute player_gateway_mode
    #   <p>Configures player gateway for your fleet. Player gateway provides benefits such as DDoS protection by rate limiting and validating traffic before it reaches game servers, hiding game server IP addresses from players, and providing updated endpoints when relay endpoints become unhealthy.</p>
    #            <p>
    #               <b>How it works:</b> When enabled, game clients connect to relay endpoints instead of to your game servers. Player gateway validates player gateway tokens and routes traffic to the appropriate game server. Your game backend calls <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetPlayerConnectionDetails.html">GetPlayerConnectionDetails</a> to retrieve relay endpoints and player gateway tokens for your game clients. To learn more about this topic, see <a href="https://docs.aws.amazon.com/gameliftservers/latest/developerguide/ddos-protection-intro.html">DDoS protection with Amazon GameLift Servers player gateway</a>.</p>
    #            <p>Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> (default) -- Game clients connect to the game server endpoint. Use this when you do not intend to integrate your game with player gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> -- Player gateway is available in fleet locations where it is supported. Your game backend can call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetPlayerConnectionDetails.html">GetPlayerConnectionDetails</a> to obtain a player gateway token and endpoints for game clients.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUIRED</code> -- Player gateway is available in fleet locations where it is supported, and the fleet can only use locations that support this feature. Attempting to add a remote location to your fleet which does not support player gateway will result in an <code>InvalidRequestException</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateContainerFleetInput < Struct.new(
      nil,
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
      :tags,
      :player_gateway_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_fleet
    #   <p>The properties for the new container fleet, including current status. All fleets are
    #               initially placed in <code>PENDING</code> status. </p>
    #   @return [Types::ContainerFleet]
    class CreateContainerFleetOutput < Struct.new(
      nil,
      :container_fleet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive identifier for the container group definition. The name value must be unique in an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute container_group_type
    #   <p>The type of container group being defined. Container group type determines how Amazon GameLift Servers
    #         deploys the container group on each fleet instance.</p>
    #            <p>Default value: <code>GAME_SERVER</code>
    #            </p>
    #   @return [String]
    # @!attribute total_memory_limit_mebibytes
    #   <p>The maximum amount of memory (in MiB) to allocate to the container group. All containers in
    #         the group share this memory. If you specify memory limits for an individual container, the
    #         total value must be greater than any individual container's memory limit.</p>
    #            <p>Default value: 1024</p>
    #   @return [Integer]
    # @!attribute total_vcpu_limit
    #   <p>The maximum amount of vCPU units to allocate to the container group (1 vCPU is equal to 1024
    #         CPU units). All containers in the group share these resources. If you set vCPU reservations for
    #         individual containers, the total value must be equal to or greater than the sum of the
    #         <code>Vcpu</code> values for all containers in the group.</p>
    #            <p>This property is required for a per-instance container group.</p>
    #            <p>For a game server container group, Amazon GameLift Servers requires either a total vCPU limit or a
    #         <code>Vcpu</code> value for the game server container. If you set a total vCPU limit for a
    #         game server container group, Amazon GameLift Servers uses this value to calculate how many game server
    #         container groups fit on an instance. If you don't set a total vCPU limit, the group's
    #         containers can use up to the instance's available vCPU, and Amazon GameLift Servers uses the sum of the
    #         containers' <code>Vcpu</code> values to calculate how many game server container groups fit
    #         on an instance.</p>
    #   @return [Float]
    # @!attribute game_server_container_definition
    #   <p>The definition for the game server container in this group. Define a game server container
    #         only when the container group type is <code>GAME_SERVER</code>. Game server containers specify
    #         a container image with your game server build. You can pass in your container definitions as a
    #         JSON file.</p>
    #   @return [Types::GameServerContainerDefinitionInput]
    # @!attribute support_container_definitions
    #   <p>One or more definition for support containers in this group. You can define a support
    #         container in any type of container group. You can pass in your container definitions as a JSON
    #         file.</p>
    #   @return [Array<Types::SupportContainerDefinitionInput>]
    # @!attribute operating_system
    #   <p>The platform that all containers in the group use. Containers in a group must run on the
    #         same operating system.</p>
    #            <p>Default value: <code>AMAZON_LINUX_2023</code>
    #            </p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2026. See more details in the <a href="http://aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>. For game
    #       servers that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the game
    #           server build to server SDK 5.x, and then deploy to AL2023 instances. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html"> Migrate to
    #             server SDK version 5.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute version_description
    #   <p>A description for the initial version of this container group definition. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of labels to assign to the container group definition resource. Tags are
    #         developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource management,
    #         access management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #           <i>Amazon Web Services General Reference</i>. </p>
    #   @return [Array<Types::Tag>]
    class CreateContainerGroupDefinitionInput < Struct.new(
      nil,
      :name,
      :container_group_type,
      :total_memory_limit_mebibytes,
      :total_vcpu_limit,
      :game_server_container_definition,
      :support_container_definitions,
      :operating_system,
      :version_description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_group_definition
    #   <p>The properties of the new container group definition resource. You can use this resource to
    #         create a container fleet.</p>
    #   @return [Types::ContainerGroupDefinition]
    class CreateContainerGroupDefinitionOutput < Struct.new(
      nil,
      :container_group_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the fleet.</p>
    #   @return [String]
    # @!attribute build_id
    #   <p>The unique identifier for a custom game server build to be deployed to a fleet with
    #               compute type <code>EC2</code>. You can use either the build ID or ARN. The build must be
    #               uploaded to Amazon GameLift Servers and in <code>READY</code> status. This fleet property can't be changed after the fleet is created.</p>
    #   @return [String]
    # @!attribute script_id
    #   <p>The unique identifier for a Realtime configuration script to be deployed to a fleet with
    #               compute type <code>EC2</code>. You can use either the script ID or ARN. Scripts must be
    #               uploaded to Amazon GameLift Servers prior to creating the fleet. This fleet property can't be changed after the fleet is created.</p>
    #   @return [String]
    # @!attribute server_launch_path
    #   <p>
    #               <b>This parameter is no longer used.</b> Specify a server
    #               launch path using the <code>RuntimeConfiguration</code> parameter. Requests that use
    #               this parameter instead continue to be valid.</p>
    #   @return [String]
    # @!attribute server_launch_parameters
    #   <p>
    #               <b>This parameter is no longer used.</b> Specify server
    #               launch parameters using the <code>RuntimeConfiguration</code> parameter. Requests that
    #               use this parameter instead continue to be valid.</p>
    #   @return [String]
    # @!attribute log_paths
    #   <p>
    #               <b>This parameter is no longer used.</b> To specify where
    #               Amazon GameLift Servers should store log files once a server process shuts down, use the Amazon GameLift Servers server
    #               API <code>ProcessReady()</code> and specify one or more directory paths in
    #                   <code>logParameters</code>. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-initialize">Initialize the server process</a> in the <i>Amazon GameLift Servers Developer
    #                   Guide</i>. </p>
    #   @return [Array<String>]
    # @!attribute ec2_instance_type
    #   <p>The Amazon GameLift Servers-supported Amazon EC2 instance type to use with managed EC2 fleets.
    #               Instance type determines the computing resources that will be used to host your game
    #               servers, including CPU, memory, storage, and networking capacity. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance Types</a> for
    #               detailed descriptions of Amazon EC2 instance types.</p>
    #   @return [String]
    # @!attribute ec2_inbound_permissions
    #   <p>The IP address ranges and port settings that allow inbound traffic to access game
    #               server processes and other processes on this fleet. Set this parameter for managed EC2 fleets. You can leave this parameter empty when creating the fleet, but you must call
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetPortSettings">https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetPortSettings</a> to set it before players can connect to game sessions.
    #               As a best practice, we recommend
    #               opening ports for remote access only when you need them and closing them when you're finished.
    #               For Amazon GameLift Servers Realtime fleets, Amazon GameLift Servers automatically sets TCP and UDP ranges.</p>
    #   @return [Array<Types::IpPermission>]
    # @!attribute new_game_session_protection_policy
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
    #   @return [String]
    # @!attribute runtime_configuration
    #   <p>Instructions for how to launch and run server processes on the fleet. Set runtime
    #               configuration for managed EC2 fleets. For an Anywhere fleet, set this
    #               parameter only if the fleet is running the Amazon GameLift Servers Agent. The runtime configuration
    #               defines one or more server process configurations. Each server process identifies a game
    #               executable or Realtime script file and the number of processes to run concurrently. </p>
    #            <note>
    #               <p>This parameter replaces the parameters <code>ServerLaunchPath</code> and
    #                       <code>ServerLaunchParameters</code>, which are still supported for backward
    #                   compatibility.</p>
    #            </note>
    #   @return [Types::RuntimeConfiguration]
    # @!attribute resource_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that an individual player can create
    #               on instances in this fleet within a specified span of time.</p>
    #   @return [Types::ResourceCreationLimitPolicy]
    # @!attribute metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to. A metric group is
    #               used to aggregate the metrics for multiple fleets. You can specify an existing metric
    #               group name or set a new name to create a new metric group. A fleet can be included in
    #               only one metric group at a time. </p>
    #   @return [Array<String>]
    # @!attribute peer_vpc_aws_account_id
    #   <p>Used when peering your Amazon GameLift Servers fleet with a VPC, the unique identifier for the Amazon Web Services
    #               account that owns the VPC. You can find your account ID in the Amazon Web Services Management Console under account
    #               settings. </p>
    #   @return [String]
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    #   @return [String]
    # @!attribute fleet_type
    #   <p>Indicates whether to use On-Demand or Spot instances for this fleet. By default, this
    #               property is set to <code>ON_DEMAND</code>. Learn more about when to use <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot"> On-Demand versus Spot Instances</a>. This fleet property can't be changed after the fleet is created.</p>
    #   @return [String]
    # @!attribute instance_role_arn
    #   <p>A unique identifier for an IAM role that manages access to your Amazon Web Services services.
    #           With an instance role ARN set, any application that runs on an instance in this fleet can assume the role,
    #           including install scripts, server processes, and daemons (background processes). Create a role or look up a role's
    #           ARN by using the <a href="https://console.aws.amazon.com/iam/">IAM dashboard</a> in the Amazon Web Services Management Console.
    #           Learn more about using on-box credentials for your game servers at
    #           <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html">
    #           Access external resources from a game server</a>. This fleet property can't be changed after the fleet is created.</p>
    #   @return [String]
    # @!attribute certificate_configuration
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
    #   @return [Types::CertificateConfiguration]
    # @!attribute locations
    #   <p>A set of remote locations to deploy additional instances to and manage as a
    #               multi-location fleet. Use this parameter when creating a fleet in Amazon Web Services Regions that
    #               support multiple locations. You can add any Amazon Web Services Region or Local Zone that's supported
    #               by Amazon GameLift Servers. Provide a list of one or more Amazon Web Services Region codes, such as
    #                   <code>us-west-2</code>, or Local Zone names. When using this parameter, Amazon GameLift Servers
    #               requires you to include your home location in the request. For a list of supported
    #               Regions and Local Zones, see
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html">
    #                   Amazon GameLift Servers service locations</a> for managed hosting.</p>
    #   @return [Array<Types::LocationConfiguration>]
    # @!attribute tags
    #   <p>A list of labels to assign to the new fleet resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute compute_type
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
    #   @return [String]
    # @!attribute anywhere_configuration
    #   <p>Amazon GameLift Servers Anywhere configuration options.</p>
    #   @return [Types::AnywhereConfiguration]
    # @!attribute instance_role_credentials_provider
    #   <p>Prompts Amazon GameLift Servers to generate a shared credentials file for the IAM role
    #               that's defined in <code>InstanceRoleArn</code>. The shared credentials file is stored on
    #               each fleet instance and refreshed as needed. Use shared credentials for applications
    #               that are deployed along with the game server executable, if the game server is
    #               integrated with server SDK version 5.x. For more information about using shared
    #               credentials, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html"> Communicate
    #                   with other Amazon Web Services resources from your fleets</a>.</p>
    #   @return [String]
    # @!attribute player_gateway_mode
    #   <p>Configures player gateway for your fleet. Player gateway provides benefits such as DDoS protection by rate limiting and validating traffic before it reaches game servers, hiding game server IP addresses from players, and providing updated endpoints when relay endpoints become unhealthy. Note, player gateway is only available for fleets using server SDK 5.x or later game server builds.</p>
    #            <p>
    #               <b>How it works:</b> When enabled, game clients connect to relay endpoints instead of to your game servers. Player gateway validates player gateway tokens and routes traffic to the appropriate game server. Your game backend calls <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetPlayerConnectionDetails.html">GetPlayerConnectionDetails</a> to retrieve relay endpoints and player gateway tokens for your game clients. To learn more about this topic, see <a href="https://docs.aws.amazon.com/gameliftservers/latest/developerguide/ddos-protection-intro.html">DDoS protection with Amazon GameLift Servers player gateway</a>.</p>
    #            <p>Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> (default) -- Game clients connect to the game server endpoint. Use this when you do not intend to integrate your game with player gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> -- Player gateway is available in fleet locations where it is supported. Your game backend can call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetPlayerConnectionDetails.html">GetPlayerConnectionDetails</a> to obtain a player gateway token and endpoints for game clients.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REQUIRED</code> -- Player gateway is available in fleet locations where it is supported, and the fleet can only use locations that support this feature. Attempting to add a remote location to your fleet which does not support player gateway will result in an <code>InvalidRequestException</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute player_gateway_configuration
    #   <p>Configuration settings for player gateway. Use this to specify advanced options for how player gateway handles connections.</p>
    #   @return [Types::PlayerGatewayConfiguration]
    class CreateFleetInput < Struct.new(
      nil,
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
      :instance_role_credentials_provider,
      :player_gateway_mode,
      :player_gateway_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to add locations to. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    # @!attribute locations
    #   <p>A list of locations to deploy additional instances to and manage as part of the fleet.
    #               You can add any Amazon GameLift Servers-supported Amazon Web Services Region as a remote location, in the form of an
    #               Amazon Web Services Region code such as <code>us-west-2</code>. </p>
    #   @return [Array<Types::LocationConfiguration>]
    class CreateFleetLocationsInput < Struct.new(
      nil,
      :fleet_id,
      :locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was updated with new locations.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>
    #   @return [String]
    # @!attribute location_states
    #   <p>The remote locations that are being added to the fleet, and the life-cycle status of
    #               each location. For new locations, the status is set to <code>NEW</code>. During location
    #               creation, Amazon GameLift Servers updates each location's status as instances are deployed there and
    #               prepared for game hosting. This list does not include the fleet home Region or any
    #               remote locations that were already added to the fleet.</p>
    #   @return [Array<Types::LocationState>]
    class CreateFleetLocationsOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :location_states,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_attributes
    #   <p>The properties for the new fleet, including the current status. All fleets are placed
    #               in <code>NEW</code> status on creation. </p>
    #   @return [Types::FleetAttributes]
    # @!attribute location_states
    #   <p>The fleet's locations and life-cycle status of each location. For new fleets, the
    #               status of all locations is set to <code>NEW</code>. During fleet creation, Amazon GameLift Servers
    #               updates each location status as instances are deployed there and prepared for game
    #               hosting. This list includes an entry for the fleet's home Region. For fleets with no
    #               remote locations, only one entry, representing the home Region, is returned.</p>
    #   @return [Array<Types::LocationState>]
    class CreateFleetOutput < Struct.new(
      nil,
      :fleet_attributes,
      :location_states,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>An identifier for the new game server group. This value is used to generate unique ARN
    #               identifiers for the Amazon EC2 Auto Scaling group and the Amazon GameLift Servers FleetIQ game server group. The name
    #               must be unique per Region per Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift Servers to access your Amazon EC2 Auto Scaling groups.</p>
    #   @return [String]
    # @!attribute min_size
    #   <p>The minimum number of instances allowed in the Amazon EC2 Auto Scaling group. During
    #               automatic scaling events, Amazon GameLift Servers FleetIQ and Amazon EC2 do not scale down the group below this
    #               minimum. In production, this value should be set to at least 1. After the Auto Scaling
    #               group is created, update this value directly in the Auto Scaling group using the Amazon Web Services
    #               console or APIs.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum number of instances allowed in the Amazon EC2 Auto Scaling group. During
    #               automatic scaling events, Amazon GameLift Servers FleetIQ and EC2 do not scale up the group above this maximum.
    #               After the Auto Scaling group is created, update this value directly in the Auto Scaling
    #               group using the Amazon Web Services console or APIs.</p>
    #   @return [Integer]
    # @!attribute launch_template
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
    #   @return [Types::LaunchTemplateSpecification]
    # @!attribute instance_definitions
    #   <p>The Amazon EC2 instance types and sizes to use in the Auto Scaling group. The instance
    #               definitions must specify at least two different instance types that are supported by
    #               Amazon GameLift Servers FleetIQ. For more information on instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">EC2 Instance Types</a> in the
    #                   <i>Amazon Elastic Compute Cloud User Guide</i>. You can optionally specify capacity
    #               weighting for each instance type. If no weight value is specified for an instance type,
    #               it is set to the default value "1". For more information about capacity weighting, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html"> Instance Weighting for
    #                   Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>
    #   @return [Array<Types::InstanceDefinition>]
    # @!attribute auto_scaling_policy
    #   <p>Configuration settings to define a scaling policy for the Auto Scaling group that is
    #               optimized for game hosting. The scaling policy uses the metric
    #                   <code>"PercentUtilizedGameServers"</code> to maintain a buffer of idle game servers
    #               that can immediately accommodate new games and players. After the Auto Scaling group is
    #               created, update this value directly in the Auto Scaling group using the Amazon Web Services console or
    #               APIs.</p>
    #   @return [Types::GameServerGroupAutoScalingPolicy]
    # @!attribute balancing_strategy
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
    #   @return [String]
    # @!attribute game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected
    #               from early termination. Unprotected instances that have active game servers running might
    #               be terminated during a scale-down event, causing players to be dropped from the game.
    #               Protected instances cannot be terminated while there are active game servers running except
    #               in the event of a forced game server group deletion. An exception to this is with Spot
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>
    #   @return [String]
    # @!attribute vpc_subnets
    #   <p>A list of virtual private cloud (VPC) subnets to use with instances in the game server
    #               group. By default, all Amazon GameLift Servers FleetIQ-supported Availability Zones are used. You can use this
    #               parameter to specify VPCs that you've set up. This property cannot be updated after the
    #               game server group is created, and the corresponding Auto Scaling group will always use
    #               the property value that is set with this request, even if the Auto Scaling group is
    #               updated directly.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of labels to assign to the new game server group resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource
    #               management, access management, and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateGameServerGroupInput < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group
    #   <p>The newly created game server group object, including the new ARN value for the Amazon GameLift Servers FleetIQ
    #               game server group and the object's status. The Amazon EC2 Auto Scaling group ARN is initially
    #               null, since the group has not yet been created. This value is added once the game server
    #               group status reaches <code>ACTIVE</code>. </p>
    #   @return [Types::GameServerGroup]
    class CreateGameServerGroupOutput < Struct.new(
      nil,
      :game_server_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to create a game session in. You can use either the fleet ID or ARN value. Each
    #               request must reference either a fleet ID or alias ID, but not both.</p>
    #   @return [String]
    # @!attribute alias_id
    #   <p>A unique identifier for the alias associated with the fleet to create a game session in. You can use either the
    #               alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but
    #               not both.</p>
    #   @return [String]
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #   @return [String]
    # @!attribute game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.
    #             For an example, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-create">Create a game session with custom properties</a>.
    #           </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::GameProperty>]
    # @!attribute creator_id
    #   <p>A unique identifier for a player or entity creating the game session. </p>
    #            <p>If you add a resource creation limit policy to a fleet, the
    #                   <code>CreateGameSession</code> operation requires a <code>CreatorId</code>. Amazon GameLift Servers
    #               limits the number of game session creation requests with the same <code>CreatorId</code>
    #               in a specified time period.</p>
    #            <p>If your fleet doesn't have a resource creation limit policy and you provide a
    #                   <code>CreatorId</code> in your <code>CreateGameSession</code> requests, Amazon GameLift Servers
    #               limits requests to one request per <code>CreatorId</code> per second.</p>
    #            <p>To not limit <code>CreateGameSession</code> requests with the same
    #                   <code>CreatorId</code>, don't provide a <code>CreatorId</code> in your
    #                   <code>CreateGameSession</code> request.</p>
    #   @return [String]
    # @!attribute game_session_id
    #   <p>
    #               <i>This parameter is deprecated. Use <code>IdempotencyToken</code>
    #                   instead.</i>
    #            </p>
    #            <p>Custom string that uniquely identifies a request for a new game session. Maximum token
    #               length is 48 characters. If provided, this string is included in the new game session's
    #               ID.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>Custom string that uniquely identifies the new game session request. This is useful
    #               for ensuring that game session requests with the same idempotency token are processed
    #               only once. Subsequent requests with the same string return the original
    #                   <code>GameSession</code> object, with an updated status. Maximum token length is 48
    #               characters. If provided, this string is included in the new game session's ID.
    #               The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>. Idempotency tokens remain in use for 30 days after a game session has ended;
    #               game session objects are retained for this time period and then deleted.</p>
    #   @return [String]
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>.</p>
    #   @return [String]
    # @!attribute location
    #   <p>A fleet's remote location to place the new game session in. If this parameter is not
    #               set, the new game session is placed in the fleet's home Region. Specify a remote
    #               location with an Amazon Web Services Region code such as <code>us-west-2</code>. When using an
    #               Anywhere fleet, this parameter is required and must be set to the Anywhere fleet's
    #               custom location.</p>
    #   @return [String]
    class CreateGameSessionInput < Struct.new(
      nil,
      :fleet_id,
      :alias_id,
      :maximum_player_session_count,
      :name,
      :game_properties,
      :creator_id,
      :game_session_id,
      :idempotency_token,
      :game_session_data,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session
    #   <p>Object that describes the newly created game session record.</p>
    #   @return [Types::GameSession]
    class CreateGameSessionOutput < Struct.new(
      nil,
      :game_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>
    #   @return [String]
    # @!attribute timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status. If you don't specify a request timeout, the queue uses a default value.</p>
    #            <note>
    #               <p>The minimum value is 10 and the maximum value is 600.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute player_latency_policies
    #   <p>A set of policies that enforce a sliding cap on player latency when processing game sessions placement requests.
    #   	Use multiple policies to gradually relax the cap over time if Amazon GameLift Servers can't make a placement.
    #   	    Policies are evaluated in order starting with the lowest maximum latency value.</p>
    #   @return [Array<Types::PlayerLatencyPolicy>]
    # @!attribute destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference.</p>
    #   @return [Array<Types::GameSessionQueueDestination>]
    # @!attribute filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is
    #               not set, game sessions can be placed in any queue location. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly
    #               named will be automatically applied at the end of the prioritization process. </p>
    #   @return [Types::PriorityConfiguration]
    # @!attribute custom_event_data
    #   <p>Information to be added to all events that are related to this game session
    #               queue.</p>
    #   @return [String]
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html"> Setting up
    #                   notifications for game session placement</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of labels to assign to the new game session queue resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource
    #               management, access management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateGameSessionQueueInput < Struct.new(
      nil,
      :name,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_queue
    #   <p>An object that describes the newly created game session queue.</p>
    #   @return [Types::GameSessionQueue]
    class CreateGameSessionQueueOutput < Struct.new(
      nil,
      :game_session_queue,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute location_name
    #   <p>A descriptive name for the custom location.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of labels to assign to the new resource. Tags are developer-defined key-value
    #               pairs. Tagging Amazon Web Services resources is useful for resource management, access management,
    #               and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateLocationInput < Struct.new(
      nil,
      :location_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute location
    #   <p>The details of the custom location you created.</p>
    #   @return [Types::LocationModel]
    class CreateLocationOutput < Struct.new(
      nil,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the matchmaking configuration. This name is used to identify the configuration associated with a matchmaking
    #               request or ticket.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the matchmaking configuration. </p>
    #   @return [String]
    # @!attribute game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               Amazon GameLift Servers-hosted game sessions for matches that are created with this matchmaking
    #               configuration. A matchmaking configuration supports only one queue; if you specify
    #               more than one ARN, the request fails with an <code>InvalidRequestException</code>.
    #               If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not set this
    #               parameter. </p>
    #   @return [Array<String>]
    # @!attribute request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    #   @return [Integer]
    # @!attribute acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required. </p>
    #   @return [Integer]
    # @!attribute acceptance_required
    #   <p>A flag that determines whether a match that was created with this configuration must
    #               be accepted by the matched players. To require acceptance, set to <code>TRUE</code>.
    #               With this option enabled, matchmaking tickets use the status
    #                   <code>REQUIRES_ACCEPTANCE</code> to indicate when a completed potential match is
    #               waiting for player acceptance. </p>
    #   @return [Boolean]
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
    #               value. A matchmaking configuration can only use rule sets that are defined in the same
    #               Region.</p>
    #   @return [String]
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #                   Setting up notifications for matchmaking</a> for more information.</p>
    #   @return [String]
    # @!attribute additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
    #                   <code>STANDALONE</code>.</p>
    #   @return [Integer]
    # @!attribute custom_event_data
    #   <p>Information to be added to all events related to this matchmaking configuration.
    #           </p>
    #   @return [String]
    # @!attribute game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>. This information is added to the new <code>GameSession</code> object that is
    #               created for a successful match. This parameter is not used if <code>FlexMatchMode</code>
    #               is set to <code>STANDALONE</code>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::GameProperty>]
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>. This information is added to the new <code>GameSession</code> object that is
    #               created for a successful match. This parameter is not used if <code>FlexMatchMode</code>
    #               is set to <code>STANDALONE</code>.</p>
    #   @return [String]
    # @!attribute backfill_mode
    #   <p>The method used to backfill game sessions that are created with this matchmaking
    #               configuration. Specify <code>MANUAL</code> when your game manages backfill requests
    #               manually or does not use the match backfill feature. Specify <code>AUTOMATIC</code> to
    #               have Amazon GameLift Servers create a backfill request whenever a game session has one or more open
    #               slots. Learn more about manual and automatic backfill in <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html"> Backfill Existing Games
    #                   with FlexMatch</a>. Automatic backfill is not available when
    #                   <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #   @return [String]
    # @!attribute flex_match_mode
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
    #   @return [String]
    # @!attribute tags
    #   <p>A list of labels to assign to the new matchmaking configuration resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource
    #               management, access management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateMatchmakingConfigurationInput < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>Object that describes the newly created matchmaking configuration.</p>
    #   @return [Types::MatchmakingConfiguration]
    class CreateMatchmakingConfigurationOutput < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the matchmaking rule set. A matchmaking configuration identifies the rule set it uses by this name
    #               value. Note that the rule set name is different from the optional <code>name</code>
    #               field in the rule set body.</p>
    #   @return [String]
    # @!attribute rule_set_body
    #   <p>A collection of matchmaking rules, formatted as a JSON string. Comments are not
    #               allowed in JSON, but most elements support a description field.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of labels to assign to the new matchmaking rule set resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource
    #               management, access management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateMatchmakingRuleSetInput < Struct.new(
      nil,
      :name,
      :rule_set_body,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_set
    #   <p>The newly created matchmaking rule set.</p>
    #   @return [Types::MatchmakingRuleSet]
    class CreateMatchmakingRuleSetOutput < Struct.new(
      nil,
      :rule_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions to add a player to. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute player_id
    #   <p>A unique identifier for a player. Player IDs are developer-defined.</p>
    #   @return [String]
    # @!attribute player_data
    #   <p>Developer-defined information related to a player. Amazon GameLift Servers does not use this data, so it can be formatted as needed for use in the game.</p>
    #   @return [String]
    class CreatePlayerSessionInput < Struct.new(
      nil,
      :game_session_id,
      :player_id,
      :player_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute player_session
    #   <p>Object that describes the newly created player session record.</p>
    #   @return [Types::PlayerSession]
    class CreatePlayerSessionOutput < Struct.new(
      nil,
      :player_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions to add players to. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute player_ids
    #   <p>List of unique identifiers for the players to be added.</p>
    #   @return [Array<String>]
    # @!attribute player_data_map
    #   <p>Map of string pairs, each specifying a player ID and a set of developer-defined
    #               information related to the player. Amazon GameLift Servers does not use this data, so it can be formatted
    #               as needed for use in the game. Any player data strings for player IDs that are not
    #               included in the <code>PlayerIds</code> parameter are ignored. </p>
    #   @return [Hash<String, String>]
    class CreatePlayerSessionsInput < Struct.new(
      nil,
      :game_session_id,
      :player_ids,
      :player_data_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute player_sessions
    #   <p>A collection of player session objects created for the added players.</p>
    #   @return [Array<Types::PlayerSession>]
    class CreatePlayerSessionsOutput < Struct.new(
      nil,
      :player_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique. You can use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateScript.html">UpdateScript</a> to
    #               change this value later. </p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateScript.html">UpdateScript</a> to
    #               change this value later. </p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift Servers to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift Servers uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    #   @return [Types::S3Location]
    # @!attribute zip_file
    #   <p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
    #               file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
    #            <p>When using the Amazon Web Services CLI tool to create a script, this parameter is set to the zip
    #               file name. It must be prepended with the string "fileb://" to indicate that the file
    #               data is a binary object. For example: <code>--zip-file
    #                   fileb://myRealtimeScript.zip</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of labels to assign to the new script resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html">TagResource</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html">UntagResource</a>, and
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html">ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit
    #               may be lower than stated. See the Amazon Web Services General Reference for actual tagging
    #               limits.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute node_js_version
    #   <p>The Node.js version used for execution of your Realtime script. The valid values are
    #               <code>10.x | 24.x</code>. By default, <code>NodeJsVersion</code> is <code>10.x</code>.
    #               This value cannot be updated later.
    #           </p>
    #            <note>
    #               <p>Node.js 10 will reach end of support on September 30, 2026. See more details
    #               in the <a href="http://aws.amazon.com/gamelift/faq/nodejs10/">Node.js 10 FAQs</a>. For migration guidance,
    #               see <a href="https://docs.aws.amazon.com/gamelift/latest/realtimeguide/realtime-script.html#realtime-script-nodejs-migration">
    #                   Migrating from Node.js 10 to 24</a>.</p>
    #            </note>
    #   @return [String]
    class CreateScriptInput < Struct.new(
      nil,
      :name,
      :version,
      :storage_location,
      :zip_file,
      :tags,
      :node_js_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute script
    #   <p>The newly created script record with a unique script ID and ARN. The new script's
    #               storage location reflects an Amazon S3 location: (1) If the script was uploaded from an S3
    #               bucket under your account, the storage location reflects the information that was
    #               provided in the <i>CreateScript</i> request; (2) If the script file was
    #               uploaded from a local zip file, the storage location reflects an S3 location controlled by
    #               the Amazon GameLift Servers service.</p>
    #   @return [Types::Script]
    class CreateScriptOutput < Struct.new(
      nil,
      :script,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your Amazon GameLift Servers fleet.
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    #   @return [String]
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    #   @return [String]
    class CreateVpcPeeringAuthorizationInput < Struct.new(
      nil,
      :game_lift_aws_account_id,
      :peer_vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_peering_authorization
    #   <p>Details on the requested VPC peering authorization, including expiration.</p>
    #   @return [Types::VpcPeeringAuthorization]
    class CreateVpcPeeringAuthorizationOutput < Struct.new(
      nil,
      :vpc_peering_authorization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet. You can use either the fleet ID or ARN value. This tells Amazon GameLift Servers which GameLift
    #               VPC to peer with. </p>
    #   @return [String]
    # @!attribute peer_vpc_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account with the VPC that you want to peer your
    #               Amazon GameLift Servers fleet with. You can find your Account ID in the Amazon Web Services Management Console under account
    #               settings.</p>
    #   @return [String]
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    #   @return [String]
    class CreateVpcPeeringConnectionInput < Struct.new(
      nil,
      :fleet_id,
      :peer_vpc_aws_account_id,
      :peer_vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateVpcPeeringConnectionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>A unique identifier of the alias that you want to delete. You can use either the alias
    #               ID or ARN value.</p>
    #   @return [String]
    class DeleteAliasInput < Struct.new(
      nil,
      :alias_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute build_id
    #   <p>A unique identifier for the build to delete. You can use either the build ID or ARN value. </p>
    #   @return [String]
    class DeleteBuildInput < Struct.new(
      nil,
      :build_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet to delete. You can use either the fleet ID
    #               or ARN value.</p>
    #   @return [String]
    class DeleteContainerFleetInput < Struct.new(
      nil,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteContainerFleetOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique identifier for the container group definition to delete. You can use either the <code>Name</code> or <code>ARN</code>
    #         value.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The specific version to delete.</p>
    #   @return [Integer]
    # @!attribute version_count_to_retain
    #   <p>The number of most recent versions to keep while deleting all older versions.</p>
    #   @return [Integer]
    class DeleteContainerGroupDefinitionInput < Struct.new(
      nil,
      :name,
      :version_number,
      :version_count_to_retain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteContainerGroupDefinitionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    class DeleteFleetInput < Struct.new(
      nil,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to delete locations for. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    # @!attribute locations
    #   <p>The list of fleet locations to delete. Specify locations in the form of an Amazon Web Services
    #               Region code, such as <code>us-west-2</code>.</p>
    #   @return [Array<String>]
    class DeleteFleetLocationsInput < Struct.new(
      nil,
      :fleet_id,
      :locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that location attributes are being deleted for.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute location_states
    #   <p>The remote locations that are being deleted, with each location status set to
    #                   <code>DELETING</code>.</p>
    #   @return [Array<Types::LocationState>]
    class DeleteFleetLocationsOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :location_states,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    #   @return [String]
    # @!attribute delete_option
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
    #   @return [String]
    class DeleteGameServerGroupInput < Struct.new(
      nil,
      :game_server_group_name,
      :delete_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group
    #   <p>An object that describes the deleted game server group resource, with status updated
    #               to <code>DELETE_SCHEDULED</code>. </p>
    #   @return [Types::GameServerGroup]
    class DeleteGameServerGroupOutput < Struct.new(
      nil,
      :game_server_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>
    #   @return [String]
    class DeleteGameSessionQueueInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteGameSessionQueueOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute location_name
    #   <p>The location name of the custom location to be deleted.</p>
    #   @return [String]
    class DeleteLocationInput < Struct.new(
      nil,
      :location_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLocationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the matchmaking configuration. You can use either the configuration name or ARN value.</p>
    #   @return [String]
    class DeleteMatchmakingConfigurationInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMatchmakingConfigurationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the matchmaking rule set to be deleted. (Note: The rule set name is different from the optional "name"
    #               field in the rule set body.) You can use either the rule set name or ARN value.</p>
    #   @return [String]
    class DeleteMatchmakingRuleSetInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMatchmakingRuleSetOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    class DeleteScalingPolicyInput < Struct.new(
      nil,
      :name,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script to delete. You can use either the script ID or ARN value.</p>
    #   @return [String]
    class DeleteScriptInput < Struct.new(
      nil,
      :script_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your Amazon GameLift Servers fleet.
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    #   @return [String]
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    #   @return [String]
    class DeleteVpcPeeringAuthorizationInput < Struct.new(
      nil,
      :game_lift_aws_account_id,
      :peer_vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVpcPeeringAuthorizationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet. This fleet specified must match the fleet referenced in the VPC peering
    #               connection record. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    # @!attribute vpc_peering_connection_id
    #   <p>A unique identifier for a VPC peering connection.</p>
    #   @return [String]
    class DeleteVpcPeeringConnectionInput < Struct.new(
      nil,
      :fleet_id,
      :vpc_peering_connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteVpcPeeringConnectionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Set of rules for processing a deployment for a container fleet update.</p>
    # @!attribute protection_strategy
    #   <p>Determines how fleet deployment activity affects active game sessions on the fleet.
    #               With protection, a deployment honors game session protection, and delays actions that
    #               would interrupt a protected active game session until the game session ends. Without
    #               protection, deployment activity can shut down all running tasks, including active game
    #               sessions, regardless of game session protection. </p>
    #   @return [String]
    # @!attribute minimum_healthy_percentage
    #   <p>Sets a minimum level of healthy tasks to maintain during deployment activity. </p>
    #   @return [Integer]
    # @!attribute impairment_strategy
    #   <p>Determines what actions to take if a deployment fails. If the fleet is multi-location,
    #               this strategy applies across all fleet locations. With a rollback strategy, updated
    #               fleet instances are rolled back to the last successful deployment. Alternatively, you
    #               can maintain a few impaired containers for the purpose of debugging, while all other
    #               tasks return to the last successful deployment.</p>
    #   @return [String]
    class DeploymentConfiguration < Struct.new(
      nil,
      :protection_strategy,
      :minimum_healthy_percentage,
      :impairment_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the most recent deployment for the container fleet.</p>
    # @!attribute latest_deployment_id
    #   <p>A unique identifier for a fleet deployment.</p>
    #   @return [String]
    class DeploymentDetails < Struct.new(
      nil,
      :latest_deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet the compute resource is currently registered to.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>The unique identifier of the compute resource to deregister. For an Anywhere fleet
    #               compute, use the registered compute name.</p>
    #   @return [String]
    class DeregisterComputeInput < Struct.new(
      nil,
      :fleet_id,
      :compute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterComputeOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    #   @return [String]
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server to deregister.</p>
    #   @return [String]
    class DeregisterGameServerInput < Struct.new(
      nil,
      :game_server_group_name,
      :game_server_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The unique identifier for the fleet alias that you want to retrieve. You can use
    #               either the alias ID or ARN value. </p>
    #   @return [String]
    class DescribeAliasInput < Struct.new(
      nil,
      :alias_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The requested alias resource.</p>
    #   @return [Types::Alias]
    class DescribeAliasOutput < Struct.new(
      nil,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute build_id
    #   <p>A unique identifier for the build to retrieve properties for. You can use either the build ID or ARN value.
    #           </p>
    #   @return [String]
    class DescribeBuildInput < Struct.new(
      nil,
      :build_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute build
    #   <p>Set of properties describing the requested build.</p>
    #   @return [Types::Build]
    class DescribeBuildOutput < Struct.new(
      nil,
      :build,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the compute belongs to. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>The unique identifier of the compute resource to retrieve properties for. For a
    #               managed container fleet or Anywhere fleet, use a compute name. For an EC2 fleet, use an
    #               instance ID. To retrieve a fleet's compute identifiers, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html">ListCompute</a>.</p>
    #   @return [String]
    class DescribeComputeInput < Struct.new(
      nil,
      :fleet_id,
      :compute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compute
    #   <p>The set of properties for the requested compute resource.</p>
    #   @return [Types::Compute]
    class DescribeComputeOutput < Struct.new(
      nil,
      :compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet to retrieve. You can use either the fleet
    #               ID or ARN value.</p>
    #   @return [String]
    class DescribeContainerFleetInput < Struct.new(
      nil,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_fleet
    #   <p>The properties for the requested container fleet, including current status.</p>
    #   @return [Types::ContainerFleet]
    class DescribeContainerFleetOutput < Struct.new(
      nil,
      :container_fleet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique identifier for the container group definition to retrieve properties for. You can use either the <code>Name</code> or
    #           <code>ARN</code> value.</p>
    #   @return [String]
    # @!attribute version_number
    #   <p>The specific version to retrieve.</p>
    #   @return [Integer]
    class DescribeContainerGroupDefinitionInput < Struct.new(
      nil,
      :name,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_group_definition
    #   <p>The properties of the requested container group definition resource.</p>
    #   @return [Types::ContainerGroupDefinition]
    class DescribeContainerGroupDefinitionOutput < Struct.new(
      nil,
      :container_group_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute container_group_type
    #   <p>The type of container group to retrieve port mappings for.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GAME_SERVER</code> -- Get port mappings for a game server
    #                   container group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PER_INSTANCE</code> -- Get port mappings for a per-instance
    #                   container group.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute compute_name
    #   <p>A unique identifier for the compute resource for which to retrieve port mappings. For a
    #               container fleet, a compute represents a game server container group running on a fleet
    #               instance. You can use either the compute name or ARN value.</p>
    #            <p>When <code>ContainerGroupType</code> is <code>GAME_SERVER</code>, this parameter is
    #               required.</p>
    #            <p>When <code>ContainerGroupType</code> is <code>PER_INSTANCE</code>, do not provide
    #               this parameter. If you provide a compute name with <code>PER_INSTANCE</code>, the
    #               request fails with an <code>InvalidRequestException</code>.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>A unique identifier for the fleet instance to retrieve port mappings for.</p>
    #            <p>When <code>ContainerGroupType</code> is <code>PER_INSTANCE</code>, this parameter is
    #               required.</p>
    #            <p>When <code>ContainerGroupType</code> is <code>GAME_SERVER</code>, this parameter is
    #               optional. If you provide an instance ID, it must match the instance that's running the
    #               specified compute. If the instance ID doesn't match, the request fails with an
    #               <code>InvalidRequestException</code>.</p>
    #   @return [String]
    # @!attribute container_name
    #   <p>A container name to filter the results. When provided, the operation returns port
    #               mappings for the specified container only. If no container with the specified name
    #               exists in the container group, the request fails with a
    #               <code>NotFoundException</code>.</p>
    #            <p>If not provided, the operation returns port mappings for all containers in the container
    #               group.</p>
    #   @return [String]
    class DescribeContainerGroupPortMappingsInput < Struct.new(
      nil,
      :fleet_id,
      :container_group_type,
      :compute_name,
      :instance_id,
      :container_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift fleet ARN, the resource ID matches the <code>FleetId</code>
    #               value.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the fleet instance, expressed as an Amazon Web Services Region code, such as
    #               <code>us-west-2</code>.</p>
    #   @return [String]
    # @!attribute container_group_definition_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to the container group definition. The ARN value also
    #               identifies the specific container group definition version in use.</p>
    #   @return [String]
    # @!attribute container_group_type
    #   <p>The type of container group that was specified in the request. Valid values are <code>GAME_SERVER</code> or <code>PER_INSTANCE</code>.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>A unique identifier for the compute resource running the game server container group.
    #               Returned when <code>ContainerGroupType</code> is <code>GAME_SERVER</code>.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>A unique identifier for the fleet instance. For <code>GAME_SERVER</code> requests,
    #               this is the instance running the specified compute. For <code>PER_INSTANCE</code>
    #               requests, this is the instance specified in the request.</p>
    #   @return [String]
    # @!attribute container_group_port_mappings
    #   <p>A list of <code>ContainerGroupPortMapping</code> objects that describe the port
    #               mappings for each container in the container group.</p>
    #   @return [Array<Types::ContainerGroupPortMapping>]
    class DescribeContainerGroupPortMappingsOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :location,
      :container_group_definition_arn,
      :container_group_type,
      :compute_name,
      :instance_id,
      :container_group_port_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ec2_instance_type
    #   <p>Name of an Amazon EC2 instance type that is supported in Amazon GameLift Servers. A fleet instance type
    #               determines the computing resources of each instance in the fleet, including CPU, memory,
    #               storage, and networking capacity. Do not specify a value for this parameter to retrieve
    #               limits for all instance types.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The name of a remote location to request instance limits for, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>.</p>
    #   @return [String]
    class DescribeEC2InstanceLimitsInput < Struct.new(
      nil,
      :ec2_instance_type,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ec2_instance_limits
    #   <p>The maximum number of instances for the specified instance type.</p>
    #   @return [Array<Types::EC2InstanceLimit>]
    class DescribeEC2InstanceLimitsOutput < Struct.new(
      nil,
      :ec2_instance_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_ids
    #   <p>A list of unique fleet identifiers to retrieve attributes for. You can use either the
    #               fleet ID or ARN value. To retrieve attributes for all current fleets, do not include
    #               this parameter. </p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #   @return [String]
    class DescribeFleetAttributesInput < Struct.new(
      nil,
      :fleet_ids,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_attributes
    #   <p>A collection of objects containing attribute metadata for each requested fleet ID.
    #               Attribute objects are returned only for fleets that currently exist.</p>
    #   @return [Array<Types::FleetAttributes>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeFleetAttributesOutput < Struct.new(
      nil,
      :fleet_attributes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_ids
    #   <p>A unique identifier for the fleet to retrieve capacity information for. You can use either the fleet ID or ARN
    #               value. Leave this parameter empty to retrieve capacity information for all
    #               fleets.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #   @return [String]
    class DescribeFleetCapacityInput < Struct.new(
      nil,
      :fleet_ids,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_capacity
    #   <p>A collection of objects that contains capacity information for each requested fleet
    #               ID. Capacity objects are returned only for fleets that currently exist. Changes in
    #               desired instance value can take up to 1 minute to be reflected.</p>
    #   @return [Array<Types::FleetCapacity>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeFleetCapacityOutput < Struct.new(
      nil,
      :fleet_capacity,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>A unique identifier for the deployment to return information for. </p>
    #   @return [String]
    class DescribeFleetDeploymentInput < Struct.new(
      nil,
      :fleet_id,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_deployment
    #   <p>The requested deployment information.</p>
    #   @return [Types::FleetDeployment]
    # @!attribute locational_deployments
    #   <p>If the deployment is for a multi-location fleet, the requests returns the deployment
    #               status in each fleet location.</p>
    #   @return [Hash<String, Types::LocationalDeployment>]
    class DescribeFleetDeploymentOutput < Struct.new(
      nil,
      :fleet_deployment,
      :locational_deployments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to get event logs for. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The earliest date to retrieve event logs for. If no start time is specified, this call
    #               returns entries starting from when the fleet was created to the specified end time.
    #               Format is a number expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The most recent date to retrieve event logs for. If no end time is specified, this
    #               call returns entries from the specified start time up to the present. Format is a number
    #               expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
    #   @return [Time]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class DescribeFleetEventsInput < Struct.new(
      nil,
      :fleet_id,
      :start_time,
      :end_time,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>A collection of objects containing event log entries for the specified fleet.</p>
    #   @return [Array<Types::Event>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeFleetEventsOutput < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve remote locations for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute locations
    #   <p>A list of fleet locations to retrieve information for. Specify locations in the form
    #               of an Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This limit is not currently enforced.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class DescribeFleetLocationAttributesInput < Struct.new(
      nil,
      :fleet_id,
      :locations,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that location attributes were requested for.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute location_attributes
    #   <p> Location-specific information on the requested fleet's remote locations.</p>
    #   @return [Array<Types::LocationAttributes>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeFleetLocationAttributesOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :location_attributes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to request location capacity for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The fleet location to retrieve capacity information for. Specify a location in the
    #               form of an Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    #   @return [String]
    class DescribeFleetLocationCapacityInput < Struct.new(
      nil,
      :fleet_id,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_capacity
    #   <p>Resource capacity information for the requested fleet location. Capacity objects are
    #               returned only for fleets and locations that currently exist. Changes in desired instance
    #               value can take up to 1 minute to be reflected.</p>
    #   @return [Types::FleetCapacity]
    class DescribeFleetLocationCapacityOutput < Struct.new(
      nil,
      :fleet_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to request location utilization for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The fleet location to retrieve utilization information for. Specify a location in the
    #               form of an Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    #   @return [String]
    class DescribeFleetLocationUtilizationInput < Struct.new(
      nil,
      :fleet_id,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_utilization
    #   <p>Utilization information for the requested fleet location. Utilization objects are
    #               returned only for fleets and locations that currently exist.</p>
    #   @return [Types::FleetUtilization]
    class DescribeFleetLocationUtilizationOutput < Struct.new(
      nil,
      :fleet_utilization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve port settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute location
    #   <p>A remote location to check for status of port setting updates. Use the Amazon Web Services Region
    #               code format, such as <code>us-west-2</code>.</p>
    #   @return [String]
    class DescribeFleetPortSettingsInput < Struct.new(
      nil,
      :fleet_id,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was requested. </p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute inbound_permissions
    #   <p>The port settings for the requested fleet ID.</p>
    #   @return [Array<Types::IpPermission>]
    # @!attribute update_status
    #   <p>The current status of updates to the fleet's port settings in the requested fleet
    #               location. A status of <code>PENDING_UPDATE</code> indicates that an update was requested
    #               for the fleet but has not yet been completed for the location.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The requested fleet location, expressed as an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>. </p>
    #   @return [String]
    class DescribeFleetPortSettingsOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :inbound_permissions,
      :update_status,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_ids
    #   <p>A unique identifier for the fleet to retrieve utilization data for. You can use either the fleet ID or ARN value.
    #               To retrieve attributes for all current fleets, do not include this parameter. </p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #   @return [String]
    class DescribeFleetUtilizationInput < Struct.new(
      nil,
      :fleet_ids,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_utilization
    #   <p>A collection of objects containing utilization information for each requested fleet
    #               ID. Utilization objects are returned only for fleets that currently exist.</p>
    #   @return [Array<Types::FleetUtilization>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeFleetUtilizationOutput < Struct.new(
      nil,
      :fleet_utilization,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    #   @return [String]
    class DescribeGameServerGroupInput < Struct.new(
      nil,
      :game_server_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group
    #   <p>An object with the property settings for the requested game server group resource.
    #           </p>
    #   @return [Types::GameServerGroup]
    class DescribeGameServerGroupOutput < Struct.new(
      nil,
      :game_server_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    #   @return [String]
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server information to be retrieved.</p>
    #   @return [String]
    class DescribeGameServerInput < Struct.new(
      nil,
      :game_server_group_name,
      :game_server_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    #   @return [String]
    # @!attribute instance_ids
    #   <p>The Amazon EC2 instance IDs that you want to retrieve status on. Amazon EC2 instance IDs use a
    #               17-character format, for example: <code>i-1234567890abcdef0</code>. To retrieve all
    #               instances in the game server group, leave this parameter empty. </p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class DescribeGameServerInstancesInput < Struct.new(
      nil,
      :game_server_group_name,
      :instance_ids,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_instances
    #   <p>The collection of requested game server instances.</p>
    #   @return [Array<Types::GameServerInstance>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeGameServerInstancesOutput < Struct.new(
      nil,
      :game_server_instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server
    #   <p>Object that describes the requested game server.</p>
    #   @return [Types::GameServer]
    class DescribeGameServerOutput < Struct.new(
      nil,
      :game_server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve all game sessions active on the fleet. You can use either the fleet
    #               ID or ARN value.</p>
    #   @return [String]
    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions to retrieve. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute alias_id
    #   <p>A unique identifier for the alias associated with the fleet to retrieve all game sessions for. You can use either
    #               the alias ID or ARN value.</p>
    #   @return [String]
    # @!attribute location
    #   <p>A fleet location to get game session details for. You can specify a fleet's home
    #               Region or a remote location. Use the Amazon Web Services Region code format, such as
    #                   <code>us-west-2</code>. </p>
    #   @return [String]
    # @!attribute status_filter
    #   <p>Game session status to filter results on. Possible game session statuses include
    #                   <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code> and
    #                   <code>TERMINATING</code> (the last two are transitory). </p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class DescribeGameSessionDetailsInput < Struct.new(
      nil,
      :fleet_id,
      :game_session_id,
      :alias_id,
      :location,
      :status_filter,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_details
    #   <p>A collection of properties for each game session that matches the request.</p>
    #   @return [Array<Types::GameSessionDetail>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeGameSessionDetailsOutput < Struct.new(
      nil,
      :game_session_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute placement_id
    #   <p>A unique identifier for a game session placement to retrieve.</p>
    #   @return [String]
    class DescribeGameSessionPlacementInput < Struct.new(
      nil,
      :placement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_placement
    #   <p>Object that describes the requested game session placement.</p>
    #   @return [Types::GameSessionPlacement]
    class DescribeGameSessionPlacementOutput < Struct.new(
      nil,
      :game_session_placement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>A list of queue names to retrieve information for. You can use either the queue ID or
    #               ARN value. To request settings for all queues, leave this parameter empty. </p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. You can request up to 50 results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class DescribeGameSessionQueuesInput < Struct.new(
      nil,
      :names,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_queues
    #   <p>A collection of objects that describe the requested game session queues.</p>
    #   @return [Array<Types::GameSessionQueue>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeGameSessionQueuesOutput < Struct.new(
      nil,
      :game_session_queues,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve game sessions for. You can use either the fleet ID or ARN value.
    #           </p>
    #   @return [String]
    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions to retrieve. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute alias_id
    #   <p>A unique identifier for the alias associated with the fleet to retrieve game sessions for. You can use either the
    #               alias ID or ARN value.</p>
    #   @return [String]
    # @!attribute location
    #   <p>A fleet location to get game sessions for. You can specify a fleet's home Region or a
    #               remote location. Use the Amazon Web Services Region code format, such as <code>us-west-2</code>.
    #           </p>
    #   @return [String]
    # @!attribute status_filter
    #   <p>Game session status to filter results on. You can filter on the following states:
    #                   <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code>, and
    #                   <code>TERMINATING</code>. The last two are transitory and used for only very brief
    #               periods of time. </p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class DescribeGameSessionsInput < Struct.new(
      nil,
      :fleet_id,
      :game_session_id,
      :alias_id,
      :location,
      :status_filter,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_sessions
    #   <p>A collection of properties for each game session that matches the request.</p>
    #   @return [Array<Types::GameSession>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeGameSessionsOutput < Struct.new(
      nil,
      :game_sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve instance information for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>A unique identifier for an instance to retrieve. Specify an instance ID or leave blank
    #               to retrieve all instances in the fleet.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The name of a location to retrieve instance information for, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>. </p>
    #   @return [String]
    class DescribeInstancesInput < Struct.new(
      nil,
      :fleet_id,
      :instance_id,
      :limit,
      :next_token,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p>A collection of objects containing properties for each instance returned.</p>
    #   @return [Array<Types::Instance>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeInstancesOutput < Struct.new(
      nil,
      :instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>A unique identifier for the matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To
    #               request all existing configurations, leave this parameter empty.</p>
    #   @return [Array<String>]
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to
    #               retrieve all matchmaking configurations that use this rule set.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is limited to 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class DescribeMatchmakingConfigurationsInput < Struct.new(
      nil,
      :names,
      :rule_set_name,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations
    #   <p>A collection of requested matchmaking configurations.</p>
    #   @return [Array<Types::MatchmakingConfiguration>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeMatchmakingConfigurationsOutput < Struct.new(
      nil,
      :configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ticket_ids
    #   <p>A unique identifier for a matchmaking ticket. You can include up to 10 ID values. </p>
    #   @return [Array<String>]
    class DescribeMatchmakingInput < Struct.new(
      nil,
      :ticket_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ticket_list
    #   <p>A collection of existing matchmaking ticket objects matching the request.</p>
    #   @return [Array<Types::MatchmakingTicket>]
    class DescribeMatchmakingOutput < Struct.new(
      nil,
      :ticket_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>A list of one or more matchmaking rule set names to retrieve details for. (Note: The
    #               rule set name is different from the optional "name" field in the rule set body.) You can
    #               use either the rule set name or ARN value. </p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class DescribeMatchmakingRuleSetsInput < Struct.new(
      nil,
      :names,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_sets
    #   <p>A collection of requested matchmaking rule set objects. </p>
    #   @return [Array<Types::MatchmakingRuleSet>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeMatchmakingRuleSetsOutput < Struct.new(
      nil,
      :rule_sets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions to retrieve player sessions for. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute player_id
    #   <p>A unique identifier for a player to retrieve player sessions for.</p>
    #   @return [String]
    # @!attribute player_session_id
    #   <p>A unique identifier for a player session to retrieve.</p>
    #   @return [String]
    # @!attribute player_session_status_filter
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
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.</p>
    #   @return [String]
    class DescribePlayerSessionsInput < Struct.new(
      nil,
      :game_session_id,
      :player_id,
      :player_session_id,
      :player_session_status_filter,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute player_sessions
    #   <p>A collection of objects containing properties for each player session that matches the
    #               request.</p>
    #   @return [Array<Types::PlayerSession>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribePlayerSessionsOutput < Struct.new(
      nil,
      :player_sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to get the runtime configuration for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    class DescribeRuntimeConfigurationInput < Struct.new(
      nil,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_configuration
    #   <p>Instructions that describe how server processes are launched and maintained on
    #               computes in the fleet.</p>
    #   @return [Types::RuntimeConfiguration]
    class DescribeRuntimeConfigurationOutput < Struct.new(
      nil,
      :runtime_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet for which to retrieve scaling policies. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute status_filter
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
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    # @!attribute location
    #   <p> The fleet location. If you don't specify this value, the response contains the
    #               scaling policies of every location in the fleet. </p>
    #   @return [String]
    class DescribeScalingPoliciesInput < Struct.new(
      nil,
      :fleet_id,
      :status_filter,
      :limit,
      :next_token,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scaling_policies
    #   <p>A collection of objects containing the scaling policies matching the request.</p>
    #   @return [Array<Types::ScalingPolicy>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class DescribeScalingPoliciesOutput < Struct.new(
      nil,
      :scaling_policies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script to retrieve properties for. You can use either the script ID or ARN
    #               value.</p>
    #   @return [String]
    class DescribeScriptInput < Struct.new(
      nil,
      :script_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute script
    #   <p>A set of properties describing the requested script.</p>
    #   @return [Types::Script]
    class DescribeScriptOutput < Struct.new(
      nil,
      :script,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeVpcPeeringAuthorizationsInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_peering_authorizations
    #   <p>A collection of objects that describe all valid VPC peering operations for the current
    #               Amazon Web Services account.</p>
    #   @return [Array<Types::VpcPeeringAuthorization>]
    class DescribeVpcPeeringAuthorizationsOutput < Struct.new(
      nil,
      :vpc_peering_authorizations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    class DescribeVpcPeeringConnectionsInput < Struct.new(
      nil,
      :fleet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_peering_connections
    #   <p>A collection of VPC peering connection records that match the request.</p>
    #   @return [Array<Types::VpcPeeringConnection>]
    class DescribeVpcPeeringConnectionsOutput < Struct.new(
      nil,
      :vpc_peering_connections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Player information for use when creating player sessions using a game session
    #             placement request.</p>
    # @!attribute player_id
    #   <p>A unique identifier for a player to associate with the player session.</p>
    #   @return [String]
    # @!attribute player_data
    #   <p>Developer-defined information related to a player. Amazon GameLift Servers does not use this data, so it can be formatted as needed for use in the game.</p>
    #   @return [String]
    class DesiredPlayerSession < Struct.new(
      nil,
      :player_id,
      :player_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource capacity settings. Fleet capacity is measured in Amazon EC2 instances. Pending and
    #             terminating counts are non-zero when the fleet capacity is adjusting to a scaling event
    #             or if access to resources is temporarily affected.</p>
    # @!attribute desired
    #   <p>Requested number of active instances. Amazon GameLift Servers takes action as needed to maintain the
    #               desired number of instances. Capacity is scaled up or down by changing the desired
    #               instances. A change in the desired instances value can take up to 1 minute to be
    #               reflected when viewing a fleet's capacity settings. </p>
    #   @return [Integer]
    # @!attribute minimum
    #   <p>The minimum instance count value allowed.</p>
    #   @return [Integer]
    # @!attribute maximum
    #   <p>The maximum instance count value allowed.</p>
    #   @return [Integer]
    # @!attribute pending
    #   <p>Number of instances that are starting but not yet active.</p>
    #   @return [Integer]
    # @!attribute active
    #   <p>Actual number of instances that are ready to host game sessions.</p>
    #   @return [Integer]
    # @!attribute idle
    #   <p>Number of active instances that are not currently hosting a game session.</p>
    #   @return [Integer]
    # @!attribute terminating
    #   <p>Number of instances that are no longer active but haven't yet been terminated.</p>
    #   @return [Integer]
    class EC2InstanceCounts < Struct.new(
      nil,
      :desired,
      :minimum,
      :maximum,
      :pending,
      :active,
      :idle,
      :terminating,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon GameLift Servers service limits for an Amazon EC2 instance type and current utilization. Amazon GameLift Servers
    #             allows Amazon Web Services accounts a maximum number of instances, per instance type, per Amazon Web Services Region
    #             or location, for use with Amazon GameLift Servers. You can request a limit increase for your account by
    #             using the <b>Service limits</b> page in the Amazon GameLift Servers
    #             console.</p>
    # @!attribute ec2_instance_type
    #   <p>The name of an Amazon EC2 instance type. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance Types</a> for detailed
    #               descriptions. </p>
    #   @return [String]
    # @!attribute current_instances
    #   <p>The number of instances for the specified type and location that are currently being
    #               used by the Amazon Web Services account. </p>
    #   @return [Integer]
    # @!attribute instance_limit
    #   <p>The number of instances that is allowed for the specified instance type and
    #               location.</p>
    #   @return [Integer]
    # @!attribute location
    #   <p>An Amazon Web Services Region code, such as <code>us-west-2</code>. </p>
    #   @return [String]
    class EC2InstanceLimit < Struct.new(
      nil,
      :ec2_instance_type,
      :current_instances,
      :instance_limit,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Log entry describing an event that involves Amazon GameLift Servers resources (such as a fleet). In
    #             addition to tracking activity, event codes and messages can provide additional
    #             information for troubleshooting and debugging problems.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute event_id
    #   <p>A unique identifier for a fleet event.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>A unique identifier for an event resource, such as a fleet ID.</p>
    #   @return [String]
    # @!attribute event_code
    #   <p>The type of event being logged. </p>
    #            <p>
    #               <b>Fleet state transition events:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>FLEET_CREATED -- A fleet resource was successfully created with a status of
    #                           <code>NEW</code>. Event messaging includes the fleet ID.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_DOWNLOADING -- Fleet status changed from <code>NEW</code> to
    #                           <code>DOWNLOADING</code>. Amazon GameLift Servers is downloading the compressed build and
    #                       running install scripts.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_VALIDATING -- Fleet status changed from <code>DOWNLOADING</code>
    #                       to <code>VALIDATING</code>. Amazon GameLift Servers has successfully installed build and is now
    #                       validating the build files.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_BUILDING -- Fleet status changed from <code>VALIDATING</code> to
    #                           <code>BUILDING</code>. Amazon GameLift Servers has successfully verified the build files and
    #                       is now launching a fleet instance.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_ACTIVATING -- Fleet status changed from <code>BUILDING</code> to
    #                           <code>ACTIVATING</code>. Amazon GameLift Servers is launching a game server process on the
    #                       fleet instance and is testing its connectivity with the Amazon GameLift Servers service.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_ACTIVE -- The fleet's status changed from <code>ACTIVATING</code>
    #                       to <code>ACTIVE</code>. The fleet is now ready to host game sessions.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_STATE_ERROR -- The Fleet's status changed to <code>ERROR</code>.
    #                       Describe the fleet event message for more details.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Fleet creation events (ordered by fleet creation
    #                   activity):</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>FLEET_BINARY_DOWNLOAD_FAILED -- The build failed to download to the fleet
    #                       instance.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_CREATION_EXTRACTING_BUILD -- The game server build was successfully
    #                       downloaded to an instance, and Amazon GameLift Servers is now extracting the build files from the
    #                       uploaded build. Failure at this stage prevents a fleet from moving to ACTIVE
    #                       status. Logs for this stage display a list of the files that are extracted and
    #                       saved on the instance. Access the logs by using the URL in
    #                           <i>PreSignedLogUrl</i>.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_CREATION_RUNNING_INSTALLER -- The game server build files were
    #                       successfully extracted, and Amazon GameLift Servers is now running the build's install script
    #                       (if one is included). Failure in this stage prevents a fleet from moving to
    #                       ACTIVE status. Logs for this stage list the installation steps and whether or
    #                       not the install completed successfully. Access the logs by using the URL in
    #                           <i>PreSignedLogUrl</i>.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_CREATION_COMPLETED_INSTALLER -- The game server build files were
    #                       successfully installed and validation of the installation will begin
    #                       soon.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_CREATION_FAILED_INSTALLER -- The installer failed while attempting to
    #                       install the build files. This event indicates that the failure occurred before
    #                       Amazon GameLift Servers could start validation. </p>
    #               </li>
    #               <li>
    #                  <p>FLEET_CREATION_VALIDATING_RUNTIME_CONFIG -- The build process was successful,
    #                       and GameLift is now verifying that the game server launch paths, which are
    #                       specified in the fleet's runtime configuration, exist. If any listed launch path
    #                       exists, Amazon GameLift Servers tries to launch a game server process and waits for the process
    #                       to report ready. Failures in this stage prevent a fleet from moving to
    #                           <code>ACTIVE</code> status. Logs for this stage list the launch paths in the
    #                       runtime configuration and indicate whether each is found. Access the logs by
    #                       using the URL in <i>PreSignedLogUrl</i>.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND -- Validation of the runtime
    #                       configuration failed because the executable specified in a launch path does not
    #                       exist on the instance.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE -- Validation of the runtime
    #                       configuration failed because the executable specified in a launch path failed to
    #                       run on the fleet instance.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_VALIDATION_TIMED_OUT -- Validation of the fleet at the end of creation
    #                       timed out. Try fleet creation again.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_ACTIVATION_FAILED -- The fleet failed to successfully complete one of
    #                       the steps in the fleet activation process. This event code indicates that the
    #                       game build was successfully downloaded to a fleet instance, built, and
    #                       validated, but was not able to start a server process. For more information, see
    #                           <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation">Debug Fleet Creation Issues</a>.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_ACTIVATION_FAILED_NO_INSTANCES -- Fleet creation was not able to obtain
    #                       any instances based on the input fleet attributes. Try again at a different time
    #                       or choose a different combination of fleet attributes such as fleet type,
    #                       instance type, etc.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_INITIALIZATION_FAILED -- A generic exception occurred during fleet
    #                       creation. Describe the fleet event message for more details.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>VPC peering events:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>FLEET_VPC_PEERING_SUCCEEDED -- A VPC peering connection has been established
    #                       between the VPC for an Amazon GameLift Servers fleet and a VPC in your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_VPC_PEERING_FAILED -- A requested VPC peering connection has failed.
    #                       Event details and status information provide additional detail. A common reason
    #                       for peering failure is that the two VPCs have overlapping CIDR blocks of IPv4
    #                       addresses. To resolve this, change the CIDR block for the VPC in your Amazon Web Services
    #                       account. For more information on VPC peering failures, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html">https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>FLEET_VPC_PEERING_DELETED -- A VPC peering connection has been successfully
    #                       deleted.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Spot instance events:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p> INSTANCE_INTERRUPTED -- A spot instance was interrupted by EC2 with a
    #                       two-minute notification.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_RECYCLED -- A spot instance was determined to have a high risk
    #                       of interruption and is scheduled to be recycled once it has no active
    #                       game sessions.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Server process events:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>SERVER_PROCESS_INVALID_PATH -- The game server executable or script could not
    #                       be found based on the Fleet runtime configuration. Check that the launch path is
    #                       correct based on the operating system of the Fleet.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT -- The server process did not call
    #                           <code>InitSDK()</code> within the time expected (5 minutes). Check your game
    #                       session log to see why <code>InitSDK()</code> was not called in time. This event
    #                       is not emitted for managed container fleets and Anywhere fleets unless they're
    #                       deployed with the Amazon GameLift Servers Agent.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_PROCESS_READY_TIMEOUT -- The server process did not call
    #                           <code>ProcessReady()</code> within the time expected  (5 minutes) after
    #                       calling <code>InitSDK()</code>. Check your game session log to see why
    #                           <code>ProcessReady()</code> was not called in time.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_CRASHED -- The server process exited without calling
    #                           <code>ProcessEnding()</code>. Check your game session log to see why
    #                           <code>ProcessEnding()</code> was not called.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_TERMINATED_UNHEALTHY -- The server process did not report a
    #                       valid health check for too long and was therefore terminated by GameLift. Check
    #                       your game session log to see if the thread became stuck processing a synchronous
    #                       task for too long.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_FORCE_TERMINATED -- The server process did not exit cleanly
    #                       within the time expected after <code>OnProcessTerminate()</code> was sent. Check
    #                       your game session log to see why termination took longer than expected.</p>
    #               </li>
    #               <li>
    #                  <p>SERVER_PROCESS_PROCESS_EXIT_TIMEOUT -- The server process did not exit cleanly
    #                       within the time expected (30 seconds) after calling
    #                       <code>ProcessEnding()</code>. Check your game session log to see why termination
    #                       took longer than expected.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Game session events:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>GAME_SESSION_ACTIVATION_TIMEOUT -- GameSession failed to activate within the
    #                       expected time. Check your game session log to see why
    #                           <code>ActivateGameSession()</code> took longer to complete than
    #                       expected.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Other fleet events:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>FLEET_SCALING_EVENT -- A change was made to the fleet's capacity settings
    #                       (desired instances, minimum/maximum scaling limits). Event messaging includes
    #                       the new capacity settings.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED -- A change was made to the
    #                       fleet's game session protection policy setting. Event messaging includes both
    #                       the old and new policy setting. </p>
    #               </li>
    #               <li>
    #                  <p>FLEET_DELETED -- A request to delete a fleet was initiated.</p>
    #               </li>
    #               <li>
    #                  <p>FLEET_EXPIRED -- The fleet has been expired. The fleet is scaled down to zero
    #                       instances and can no longer host game sessions.</p>
    #               </li>
    #               <li>
    #                  <p> GENERIC_EVENT -- An unspecified event has occurred.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Additional information related to the event.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>Time stamp indicating when this event occurred. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute pre_signed_log_url
    #   <p>Location of stored logs with additional detail that is related to the event. This is
    #               useful for debugging issues. The URL is valid for 15 minutes. You can also access fleet
    #               creation logs through the Amazon GameLift Servers console.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of times that this event occurred.</p>
    #   @return [Integer]
    class Event < Struct.new(
      nil,
      :event_id,
      :resource_id,
      :event_code,
      :message,
      :event_time,
      :pre_signed_log_url,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of fleet locations where a game session queue can place new game sessions. You
    #             can use a filter to temporarily exclude specific locations from receiving placements.
    #             For queues that have multi-location fleets, you can use a filter configuration to allow
    #             placement with some, but not all, of a fleet's locations.</p>
    # @!attribute allowed_locations
    #   <p> A list of locations to allow game session placement in, in the form of Amazon Web Services Region
    #               codes such as <code>us-west-2</code>. </p>
    #   @return [Array<String>]
    class FilterConfiguration < Struct.new(
      nil,
      :allowed_locations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon GameLift Servers fleet of game hosting resources. Attributes differ based on
    #             the fleet's compute type, as follows:</p>
    #          <ul>
    #             <li>
    #                <p>EC2 fleet attributes identify a <code>Build</code> resource (for fleets with
    #                     customer game server builds) or a <code>Script</code> resource (for Amazon GameLift Servers Realtime fleets).</p>
    #             </li>
    #             <li>
    #                <p>Amazon GameLift Servers Anywhere fleets have an abbreviated set of attributes, because most fleet configurations
    #                 are set directly on the fleet's computes. Attributes include fleet identifiers and descriptive
    #                 properties, creation/termination time, and fleet status.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Returned by:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetAttributes">https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetAttributes</a>
    #          </p>
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. In a GameLift fleet ARN, the resource ID matches the <code>FleetId</code>
    #               value.</p>
    #   @return [String]
    # @!attribute fleet_type
    #   <p>Indicates whether the fleet uses On-Demand or Spot instances. For more information,
    #               see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot"> On-Demand versus Spot Instances</a>. This fleet property can't be changed after the fleet is created.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instance type that the fleet uses. Instance type determines the computing
    #               resources of each instance in the fleet, including CPU, memory, storage, and networking
    #               capacity. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance
    #                   Types</a> for detailed descriptions. This attribute is used with fleets where
    #               <code>ComputeType</code> is <code>EC2</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the fleet.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute termination_time
    #   <p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Current status of the fleet. Possible fleet statuses include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>NEW -- A new fleet resource has been defined and Amazon GameLift Servers has started creating the fleet.
    #                       Desired instances is set to 1. </p>
    #               </li>
    #               <li>
    #                  <p>DOWNLOADING/VALIDATING/BUILDING -- Amazon GameLift Servers is downloading the game server build,
    #                       running install scripts, and then validating the build files. When complete,
    #                       Amazon GameLift Servers launches a fleet instance. </p>
    #               </li>
    #               <li>
    #                  <p>ACTIVATING -- Amazon GameLift Servers is launching a game server process and testing its
    #                       connectivity with the Amazon GameLift Servers service.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE -- The fleet is now ready to host game sessions.</p>
    #               </li>
    #               <li>
    #                  <p>ERROR -- An error occurred when downloading,
    #                       validating, building, or activating the fleet.</p>
    #               </li>
    #               <li>
    #                  <p>EXPIRED -- The fleet has been expired. The fleet is scaled down to zero
    #                       instances and cannot host new game sessions.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING -- Hosts are responding to a delete fleet request.</p>
    #               </li>
    #               <li>
    #                  <p>TERMINATED -- The fleet no longer exists.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute build_id
    #   <p>A unique identifier for the build resource that is deployed on instances in this fleet. This attribute is used with
    #           fleets where <code>ComputeType</code> is "EC2".</p>
    #   @return [String]
    # @!attribute build_arn
    #   <p> The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the Amazon GameLift Servers build resource that is deployed on instances in
    #               this fleet. In a GameLift build ARN, the resource ID matches the <code>BuildId</code>
    #               value. This attribute is used with fleets where <code>ComputeType</code> is "EC2".</p>
    #   @return [String]
    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script resource that is deployed on instances in this fleet.
    #               This attribute is used with fleets where <code>ComputeType</code> is "EC2".</p>
    #   @return [String]
    # @!attribute script_arn
    #   <p> The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift script resource that is deployed on instances
    #               in this fleet. In a GameLift script ARN, the resource ID matches the
    #                   <code>ScriptId</code> value.</p>
    #   @return [String]
    # @!attribute server_launch_path
    #   <p>
    #               <b>This parameter is no longer used.</b> Server launch paths
    #               are now defined using the fleet's <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/RuntimeConfiguration.html">RuntimeConfiguration</a>. Requests that use this parameter continue to be
    #               valid.</p>
    #   @return [String]
    # @!attribute server_launch_parameters
    #   <p>
    #               <b>This parameter is no longer used.</b> Server launch
    #               parameters are now defined using the fleet's runtime configuration. Requests that use
    #               this parameter continue to be valid.</p>
    #   @return [String]
    # @!attribute log_paths
    #   <p>
    #               <b>This parameter is no longer used.</b> Game session log
    #               paths are now defined using the Amazon GameLift Servers server API <code>ProcessReady()</code>
    #               <code>logParameters</code>. See more information in the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process">Server API Reference</a>. </p>
    #   @return [Array<String>]
    # @!attribute new_game_session_protection_policy
    #   <p>The type of game session protection to set on all new instances that are started in
    #               the fleet. This attribute is used with fleets where <code>ComputeType</code> is
    #               <code>EC2</code>.</p>
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
    #   @return [String]
    # @!attribute operating_system
    #   <p>The operating system of the fleet's computing resources. A fleet's operating system is
    #               determined by the OS of the build or script that is deployed on this fleet. This
    #               attribute is used with fleets where <code>ComputeType</code> is
    #               <code>EC2</code>.</p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2026. See more details in
    #               the <a href="http://aws.amazon.com/aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>.
    #               For game servers
    #               that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the
    #               game server build to server SDK 5.x, and then deploy to AL2023 instances. See
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html">
    #                   Migrate to server SDK version 5.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute resource_creation_limit_policy
    #   <p>A policy that puts limits on the number of game sessions that a player can create
    #               within a specified span of time. With this policy, you can control players' ability to
    #               consume available resources.</p>
    #            <p>The policy is evaluated when a player tries to create a new game session. On receiving
    #               a <code>CreateGameSession</code> request, Amazon GameLift Servers checks that the player (identified by
    #                   <code>CreatorId</code>) has created fewer than the game session limit in the specified
    #               time period.</p>
    #            <p>The purpose of this policy is to prevent a single player from consuming a large share of
    #               available hosting resources. For example, setting <code>NewGameSessionsPerCreator</code> to
    #               <code>4</code> and <code>PolicyPeriodInMinutes</code> to <code>10</code> limits each player
    #               to creating 4 game sessions every 10 minutes. Setting these values too high (for example,
    #               200 game sessions every 1000 minutes) still allows a single player to rapidly consume
    #               resources. We recommend keeping these values small.</p>
    #   @return [Types::ResourceCreationLimitPolicy]
    # @!attribute metric_groups
    #   <p>Name of a metric group that metrics for this fleet are added to. In Amazon CloudWatch,
    #               you can view aggregated metrics for fleets that are in a metric group. A fleet can be
    #               included in only one metric group at a time. This attribute is used with fleets where
    #               <code>ComputeType</code> is <code>EC2</code>.</p>
    #   @return [Array<String>]
    # @!attribute stopped_actions
    #   <p>A list of fleet activity that has been suspended using <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html">StopFleetActions</a>. This includes fleet auto-scaling. This attribute is used
    #               with fleets where <code>ComputeType</code> is <code>EC2</code>.</p>
    #   @return [Array<String>]
    # @!attribute instance_role_arn
    #   <p>A unique identifier for an IAM role that manages access to your Amazon Web Services services.
    #           With an instance role ARN set, any application that runs on an instance in this fleet can assume the role,
    #           including install scripts, server processes, and daemons (background processes). Create a role or look up a role's
    #           ARN by using the <a href="https://console.aws.amazon.com/iam/">IAM dashboard</a> in the Amazon Web Services Management Console.
    #           Learn more about using on-box credentials for your game servers at
    #           <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html">
    #           Access external resources from a game server</a>. This attribute is used with fleets where <code>ComputeType</code> is
    #               <code>EC2</code>.</p>
    #   @return [String]
    # @!attribute certificate_configuration
    #   <p>Determines whether a TLS/SSL certificate is generated for a fleet. This feature must be enabled when creating the fleet.
    #               All instances in a fleet share the same certificate.</p>
    #   @return [Types::CertificateConfiguration]
    # @!attribute compute_type
    #   <p>The type of compute resource used to host your game servers. You can use your own
    #               compute resources with Amazon GameLift Servers Anywhere or use Amazon EC2 instances with managed
    #               Amazon GameLift Servers.</p>
    #   @return [String]
    # @!attribute anywhere_configuration
    #   <p>A set of attributes that are specific to an Anywhere fleet.</p>
    #   @return [Types::AnywhereConfiguration]
    # @!attribute instance_role_credentials_provider
    #   <p>Indicates that fleet instances maintain a shared credentials file for the IAM role defined in <code>InstanceRoleArn</code>. Shared credentials allow
    #               applications that are deployed with the game server executable to communicate with other
    #               Amazon Web Services resources. This property is used only when the game server is integrated with the
    #               server SDK version 5.x. For more information about using shared credentials, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html"> Communicate
    #                   with other Amazon Web Services resources from your fleets</a>. This attribute is used with
    #                   fleets where <code>ComputeType</code> is <code>EC2</code>.</p>
    #   @return [String]
    # @!attribute player_gateway_mode
    #   <p>Indicates whether player gateway is enabled for this fleet. Player gateway provides benefits such as DDoS protection with negligible impact to latency.</p>
    #            <p>If <code>ENABLED</code> or <code>REQUIRED</code>, game clients can use player gateway to connect with the game server. If <code>DISABLED</code>, game clients cannot use player gateway. Instead, they have to directly connect to the game server.</p>
    #   @return [String]
    # @!attribute player_gateway_configuration
    #   <p>Configuration settings for player gateway on this fleet.</p>
    #   @return [Types::PlayerGatewayConfiguration]
    class FleetAttributes < Struct.new(
      nil,
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
      :instance_role_credentials_provider,
      :player_gateway_mode,
      :player_gateway_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Current resource capacity settings for managed EC2 fleets and managed container fleets. For
    #             multi-location fleets, location values might refer to a fleet's remote location or its
    #             home Region. </p>
    #          <p>
    #             <b>Returned by:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html">DescribeFleetCapacity</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html">DescribeFleetLocationCapacity</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html">UpdateFleetCapacity</a>
    #          </p>
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet associated with the location.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instance type that is used for instances in a fleet. Instance type
    #               determines the computing resources in use, including CPU, memory, storage, and
    #               networking capacity. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud
    #                   Instance Types</a> for detailed descriptions.</p>
    #   @return [String]
    # @!attribute instance_counts
    #   <p>The current number of instances in the fleet, listed by instance status. Counts for pending and
    #               terminating instances might be non-zero if the fleet is adjusting to a scaling event
    #               or if access to resources is temporarily affected.</p>
    #   @return [Types::EC2InstanceCounts]
    # @!attribute location
    #   <p>The fleet location for the instance count information, expressed as an Amazon Web Services Region
    #               code, such as <code>us-west-2</code>. </p>
    #   @return [String]
    # @!attribute game_server_container_group_counts
    #   <p>The number and status of game server container groups deployed in a container fleet. </p>
    #   @return [Types::GameServerContainerGroupCounts]
    # @!attribute managed_capacity_configuration
    #   <p>Configuration settings for managed capacity scaling.</p>
    #   @return [Types::ManagedCapacityConfiguration]
    class FleetCapacity < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :instance_type,
      :instance_counts,
      :location,
      :game_server_container_group_counts,
      :managed_capacity_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified fleet has no available instances to fulfill a
    #                 <code>CreateGameSession</code> request. Clients can retry such requests immediately
    #             or after a waiting period.</p>
    # @!attribute message
    #   @return [String]
    class FleetCapacityExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a container fleet deployment with updates to the fleet. </p>
    # @!attribute deployment_id
    #   <p>A unique identifier for the deployment. </p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet. </p>
    #   @return [String]
    # @!attribute game_server_binary_arn
    #   <p>The unique identifier for the version of the game server container group definition
    #               that is being deployed.</p>
    #   @return [String]
    # @!attribute rollback_game_server_binary_arn
    #   <p>The unique identifier for the version of the game server container group definition to
    #               roll back to if deployment fails. Amazon GameLift Servers sets this property to the container group definition
    #               version that the fleet used when it was last active.</p>
    #   @return [String]
    # @!attribute per_instance_binary_arn
    #   <p>The unique identifier for the version of the per-instance container group definition
    #               that is being deployed. </p>
    #   @return [String]
    # @!attribute rollback_per_instance_binary_arn
    #   <p>The unique identifier for the version of the per-instance container group definition
    #               to roll back to if deployment fails. Amazon GameLift Servers sets this property to the container group definition
    #               version that the fleet used when it was last active.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The status of fleet deployment activity in the location. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> -- The deployment is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPAIRED</code> -- The deployment failed and the fleet has some impaired
    #                       containers. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETE</code> -- The deployment has completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLBACK_IN_PROGRESS</code> -- The deployment failed and rollback has
    #                       been initiated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLBACK_IN_COMPLETE</code> -- The deployment failed and rollback has
    #                       been completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> -- The deployment was cancelled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute deployment_configuration
    #   <p>Instructions for how to deploy updates to a container fleet and what actions to take
    #               if the deployment fails.</p>
    #   @return [Types::DeploymentConfiguration]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    class FleetDeployment < Struct.new(
      nil,
      :deployment_id,
      :fleet_id,
      :game_server_binary_arn,
      :rollback_game_server_binary_arn,
      :per_instance_binary_arn,
      :rollback_per_instance_binary_arn,
      :deployment_status,
      :deployment_configuration,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Current resource utilization statistics in a specified fleet or location. The location
    #             value might refer to a fleet's remote location or its home region.</p>
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet associated with the location.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute active_server_process_count
    #   <p>The number of server processes in <code>ACTIVE</code> status that are currently
    #               running across all instances in the fleet location. </p>
    #   @return [Integer]
    # @!attribute active_game_session_count
    #   <p>The number of active game sessions that are currently being hosted across all
    #               instances in the fleet location.</p>
    #   @return [Integer]
    # @!attribute current_player_session_count
    #   <p>The number of active player sessions that are currently being hosted across all
    #               instances in the fleet location.</p>
    #   @return [Integer]
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players allowed across all game sessions that are currently
    #               being hosted across all instances in the fleet location.</p>
    #   @return [Integer]
    # @!attribute location
    #   <p>The fleet location for the fleet utilization information, expressed as an Amazon Web Services Region
    #               code, such as <code>us-west-2</code>. </p>
    #   @return [String]
    class FleetUtilization < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :active_server_process_count,
      :active_game_session_count,
      :current_player_session_count,
      :maximum_player_session_count,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This key-value pair can store custom data about a game session. For example, you might
    #             use a <code>GameProperty</code> to track a game session's map, level of difficulty, or
    #             remaining time. The difficulty level could be specified like this: <code>{"Key":
    #                 "difficulty", "Value":"Novice"}</code>. </p>
    #          <p> You can set game properties when creating a game session. You can also modify game
    #             properties of an active game session. When searching for game sessions, you can filter
    #             on game property keys and values. You can't delete game properties from a game session. </p>
    #          <p>For examples of working with game properties, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties">Create a game session with properties</a>. </p>
    # @!attribute key
    #   <p>The game property identifier.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute value
    #   <p>The game property value.</p>
    #   @return [String]
    class GameProperty < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties describing a game server that
    #             is running on an instance in a game server group. </p>
    #          <p>A game server is created by a successful call to <code>RegisterGameServer</code> and
    #             deleted by calling <code>DeregisterGameServer</code>. A game server is claimed to host a
    #             game session by calling <code>ClaimGameServer</code>. </p>
    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    #   @return [String]
    # @!attribute game_server_group_arn
    #   <p>The ARN identifier for the game server group where the game server is located.</p>
    #   @return [String]
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server. Game server IDs are developer-defined and are unique across all game
    #               server groups in an Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The unique identifier for the instance where the game server is running. This ID is
    #               available in the instance metadata. EC2 instance IDs
    #               use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>
    #   @return [String]
    # @!attribute connection_info
    #   <p>The port and IP address that must be used to establish a client connection to the game
    #               server.</p>
    #   @return [String]
    # @!attribute game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers.</p>
    #   @return [String]
    # @!attribute claim_status
    #   <p>Indicates when an available game server has been reserved for gameplay but has not yet
    #               started hosting a game. Once it is claimed, the game server remains in
    #                   <code>CLAIMED</code> status for a maximum of one minute. During this time, game
    #               clients connect to the game server to start the game and trigger the game server to
    #               update its utilization status. After one minute, the game server claim status reverts to
    #               null.</p>
    #   @return [String]
    # @!attribute utilization_status
    #   <p>Indicates whether the game server is currently available for new games or is busy.
    #               Possible statuses include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The game server is available to be claimed. A game
    #                       server that has been claimed remains in this status until it reports game
    #                       hosting activity. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UTILIZED</code> - The game server is currently hosting a game session
    #                       with players. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute registration_time
    #   <p>Timestamp that indicates when the game server registered. The format is a number expressed in Unix
    #               time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute last_claim_time
    #   <p>Timestamp that indicates the last time the game server was claimed. The format is a
    #               number expressed in Unix time as milliseconds (for example
    #               <code>"1469498468.057"</code>). This value is used to calculate when a claimed game
    #               server's status should revert to null.</p>
    #   @return [Time]
    # @!attribute last_health_check_time
    #   <p>Timestamp that indicates the last time the game server was updated with health status.
    #               The format is a number expressed in Unix time as milliseconds (for example
    #                   <code>"1469498468.057"</code>). After game server registration, this property is
    #               only changed when a game server update specifies a health check value.</p>
    #   @return [Time]
    class GameServer < Struct.new(
      nil,
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
      :last_health_check_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the game server container in an existing game server container group. A game
    #       server container identifies a container image with your game server build. A game server
    #       container is automatically considered essential; if an essential container fails, the entire
    #       container group restarts.</p>
    #          <p>You can update a container definition and deploy the updates to an existing fleet. When
    #       creating or updating a game server container group definition, use the property
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput">https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput</a>. </p>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a>
    #          </p>
    #          <p>
    #             <b>Returned by:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeContainerGroupDefinition.html">DescribeContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitions.html">ListContainerGroupDefinitions</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitionVersions.html">ListContainerGroupDefinitionVersions</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>
    #          </p>
    # @!attribute container_name
    #   <p>The container definition identifier. Container names are unique within a container group
    #         definition.</p>
    #   @return [String]
    # @!attribute depends_on
    #   <p>Indicates that the container relies on the status of other containers in the same
    #         container group during startup and shutdown sequences. A container might have dependencies on
    #         multiple containers.</p>
    #   @return [Array<Types::ContainerDependency>]
    # @!attribute mount_points
    #   <p>A mount point that binds a path inside the container to a file or directory on the host
    #         system and lets it access the file or directory.</p>
    #   @return [Array<Types::ContainerMountPoint>]
    # @!attribute environment_override
    #   <p>A set of environment variables that's passed to the container on startup. See the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html#ECS-Type-ContainerDefinition-environment">ContainerDefinition::environment</a> parameter in the <i>Amazon Elastic Container Service API
    #           Reference</i>.</p>
    #   @return [Array<Types::ContainerEnvironment>]
    # @!attribute image_uri
    #   <p>The URI to the image that Amazon GameLift Servers uses when deploying this container to a container fleet.
    #         For a more specific identifier, see <code>ResolvedImageDigest</code>. </p>
    #   @return [String]
    # @!attribute port_configuration
    #   <p>The set of ports that are available to bind to processes in the container. For example, a
    #         game server process requires a container port to allow game clients to connect to it.
    #         Container ports aren't directly accessed by inbound traffic. Amazon GameLift Servers maps these container
    #         ports to externally accessible connection ports, which are assigned as needed from the
    #         container fleet's <code>ConnectionPortRange</code>. </p>
    #   @return [Types::ContainerPortConfiguration]
    # @!attribute resolved_image_digest
    #   <p>A unique and immutable identifier for the container image. The digest is a SHA 256 hash of
    #         the container image manifest. </p>
    #   @return [String]
    # @!attribute server_sdk_version
    #   <p>The Amazon GameLift Servers server SDK version that the game server is integrated with. Only game servers
    #         using 5.2.0 or higher are compatible with container fleets.</p>
    #   @return [String]
    # @!attribute linux_capabilities
    #   <p>Linux-specific modifications that are applied to the default Docker container configuration, such as Linux capabilities. For more information see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_LinuxCapabilities.html">LinuxCapabilities</a>.</p>
    #   @return [Types::LinuxCapabilities]
    # @!attribute vcpu
    #   <p>The number of vCPU units reserved for the game server container. The container can use
    #         more vCPU when it's available, up to the container group's total vCPU limit if one is set. If
    #         the container group has a total vCPU limit and the request doesn't set this value, Amazon GameLift Servers
    #         calculates the game server container's vCPU as the total vCPU limit minus the sum of the vCPU
    #         units reserved for the group's support containers.</p>
    #            <p>A game server container group needs either a total vCPU limit or this value. If the
    #         container group doesn't have a total vCPU limit, the group's containers can use up to the
    #         instance's available vCPU, and Amazon GameLift Servers uses the sum of the group's container
    #         <code>Vcpu</code> values to calculate how many game server container groups fit on an
    #         instance.</p>
    #            <p>
    #               <b>Related data type: </b>
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a>
    #               <code>TotalVcpuLimit</code>
    #            </p>
    #   @return [Float]
    class GameServerContainerDefinition < Struct.new(
      nil,
      :container_name,
      :depends_on,
      :mount_points,
      :environment_override,
      :image_uri,
      :port_configuration,
      :resolved_image_digest,
      :server_sdk_version,
      :linux_capabilities,
      :vcpu,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for a container that runs your game server executable. This
    #       definition includes container configuration, resources, and start instructions. Use this data
    #       type when creating or updating a game server container group definition. For properties of a
    #       deployed container, see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html">GameServerContainerDefinition</a>. A game server
    #       container is automatically considered essential; if an essential container fails, the entire
    #       container group restarts.</p>
    #          <p>
    #             <b>Use with: </b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>
    #          </p>
    # @!attribute container_name
    #   <p>A string that uniquely identifies the container definition within a container
    #         group.</p>
    #   @return [String]
    # @!attribute depends_on
    #   <p>Establishes dependencies between this container and the status of other containers in the
    #         same container group. A container can have dependencies on multiple different containers. </p>
    #            <p>You can use dependencies to establish a startup/shutdown sequence across the container
    #         group. For example, you might specify that <i>ContainerB</i> has a
    #           <code>START</code> dependency on <i>ContainerA</i>. This dependency means that
    #           <i>ContainerB</i> can't start until after <i>ContainerA</i> has
    #         started. This dependency is reversed on shutdown, which means that
    #           <i>ContainerB</i> must shut down before <i>ContainerA</i> can
    #         shut down. </p>
    #   @return [Array<Types::ContainerDependency>]
    # @!attribute mount_points
    #   <p>A mount point that binds a path inside the container to a file or directory on the host
    #         system and lets it access the file or directory.</p>
    #   @return [Array<Types::ContainerMountPoint>]
    # @!attribute environment_override
    #   <p>A set of environment variables to pass to the container on startup. See the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html#ECS-Type-ContainerDefinition-environment">ContainerDefinition::environment</a> parameter in the <i>Amazon Elastic Container Service API
    #           Reference</i>. </p>
    #   @return [Array<Types::ContainerEnvironment>]
    # @!attribute image_uri
    #   <p>The location of the container image to deploy to a container fleet. Provide an image in an
    #         Amazon Elastic Container Registry public or private repository. The repository must be in the same Amazon Web Services account and
    #         Amazon Web Services Region where you're creating the container group definition. For limits on image size,
    #         see <a href="https://docs.aws.amazon.com/general/latest/gr/gamelift.html">Amazon GameLift Servers endpoints and
    #           quotas</a>. You can use any of the following image URI formats: </p>
    #            <ul>
    #               <li>
    #                  <p>Image ID only: <code>[AWS account].dkr.ecr.[AWS region].amazonaws.com/[repository
    #             ID]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Image ID and digest: <code>[AWS account].dkr.ecr.[AWS
    #             region].amazonaws.com/[repository ID]@[digest]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Image ID and tag: <code>[AWS account].dkr.ecr.[AWS region].amazonaws.com/[repository
    #             ID]:[tag]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute port_configuration
    #   <p>A set of ports that Amazon GameLift Servers can assign to processes in a container. The container port
    #         configuration must have enough ports for each container process that accepts inbound traffic
    #         connections. For example, a game server process requires a container port to allow game
    #         clients to connect to it. A container port configuration can have one or more
    #         container port ranges. Each range specifies starting and ending values as well as the
    #         supported network protocol.</p>
    #            <p>Container ports aren't directly accessed by inbound traffic. Amazon GameLift Servers maps each container
    #         port to an externally accessible connection port (see the container fleet property
    #           <code>ConnectionPortRange</code>). </p>
    #   @return [Types::ContainerPortConfiguration]
    # @!attribute server_sdk_version
    #   <p>The Amazon GameLift Servers server SDK version that the game server is integrated with. Only game servers
    #         using 5.2.0 or higher are compatible with container fleets.</p>
    #   @return [String]
    # @!attribute linux_capabilities
    #   <p>Linux-specific modifications that are applied to the default Docker container configuration, such as Linux capabilities. For more information see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_LinuxCapabilities.html">LinuxCapabilities</a>.</p>
    #   @return [Types::LinuxCapabilities]
    # @!attribute vcpu
    #   <p>The number of vCPU units reserved for the game server container. The container can use
    #         more vCPU when it's available, up to the container group's total vCPU limit if one is set. If
    #         the container group has a total vCPU limit and the request doesn't set this value, Amazon GameLift Servers
    #         calculates the game server container's vCPU as the total vCPU limit minus the sum of the vCPU
    #         units reserved for the group's support containers.</p>
    #            <p>A game server container group needs either a total vCPU limit or this value. If the
    #         container group doesn't have a total vCPU limit, the group's containers can use up to the
    #         instance's available vCPU, and Amazon GameLift Servers uses the sum of the group's container
    #         <code>Vcpu</code> values to calculate how many game server container groups fit on an
    #         instance.</p>
    #            <p>
    #               <b>Related data type: </b>
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a>
    #               <code>TotalVcpuLimit</code>
    #            </p>
    #   @return [Float]
    class GameServerContainerDefinitionInput < Struct.new(
      nil,
      :container_name,
      :depends_on,
      :mount_points,
      :environment_override,
      :image_uri,
      :port_configuration,
      :server_sdk_version,
      :linux_capabilities,
      :vcpu,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number and status of game server container groups that are deployed across a container fleet.
    #             Combine this count with the number of server processes that each game server container group runs
    #             to learn how many game sessions the fleet is capable of hosting concurrently. For example, if a
    #         fleet has 50 game server container groups, and the game server container in each group runs 1 game server
    #         process, then the fleet has the capacity to host 50 game sessions at a time. </p>
    #          <p>
    #             <b>Returned by:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html</a>, <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html">https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html</a>
    #          </p>
    # @!attribute pending
    #   <p> The number of container groups that are starting up but haven't yet registered. </p>
    #   @return [Integer]
    # @!attribute active
    #   <p>
    #               The number of container groups that have active game sessions.
    #           </p>
    #   @return [Integer]
    # @!attribute idle
    #   <p>
    #               The number of container groups that have no active game sessions.
    #           </p>
    #   @return [Integer]
    # @!attribute terminating
    #   <p> The number of container groups that are in the process of shutting down. </p>
    #   @return [Integer]
    class GameServerContainerGroupCounts < Struct.new(
      nil,
      :pending,
      :active,
      :idle,
      :terminating,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties that describe a game
    #             server group resource. A game server group manages certain properties related to a
    #             corresponding Amazon EC2 Auto Scaling group. </p>
    #          <p>A game server group is created by a successful call to
    #                 <code>CreateGameServerGroup</code> and deleted by calling
    #                 <code>DeleteGameServerGroup</code>. Game server group activity can be temporarily
    #             suspended and resumed by calling <code>SuspendGameServerGroup</code> and
    #                 <code>ResumeGameServerGroup</code>, respectively. </p>
    # @!attribute game_server_group_name
    #   <p>A developer-defined identifier for the game server group. The name is unique for each
    #               Region in each Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute game_server_group_arn
    #   <p>A generated unique ID for the game server group.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift Servers to access your Amazon EC2 Auto Scaling groups.</p>
    #   @return [String]
    # @!attribute instance_definitions
    #   <p>The set of Amazon EC2 instance types that Amazon GameLift Servers FleetIQ can use when balancing and automatically
    #               scaling instances in the corresponding Auto Scaling group. </p>
    #   @return [Array<Types::InstanceDefinition>]
    # @!attribute balancing_strategy
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
    #   @return [String]
    # @!attribute game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected
    #               from early termination. Unprotected instances that have active game servers running might
    #               be terminated during a scale-down event, causing players to be dropped from the game.
    #               Protected instances cannot be terminated while there are active game servers running except
    #               in the event of a forced game server group deletion. An exception to this is with Spot
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. </p>
    #   @return [String]
    # @!attribute auto_scaling_group_arn
    #   <p>A generated unique ID for the Amazon EC2 Auto Scaling group that is associated with this
    #               game server group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the game server group. Possible statuses include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NEW</code> - Amazon GameLift Servers FleetIQ has validated the <code>CreateGameServerGroup()</code>
    #                       request. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATING</code> - Amazon GameLift Servers FleetIQ is setting up a game server group, which
    #                       includes creating an Auto Scaling group in your Amazon Web Services account. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The game server group has been successfully created.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_SCHEDULED</code> - A request to delete the game server group has
    #                       been received. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - Amazon GameLift Servers FleetIQ has received a valid
    #                           <code>DeleteGameServerGroup()</code> request and is processing it. Amazon GameLift Servers FleetIQ
    #                       must first complete and release hosts before it deletes the Auto Scaling group
    #                       and the game server group. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The game server group has been successfully deleted.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The asynchronous processes of activating or deleting a
    #                       game server group has failed, resulting in an error state.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about the current game server group status. This information
    #               might provide additional insight on groups that are in <code>ERROR</code> status.</p>
    #   @return [String]
    # @!attribute suspended_actions
    #   <p>A list of activities that are currently suspended for this game server group. If this
    #               property is empty, all activities are occurring.</p>
    #   @return [Array<String>]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>A timestamp that indicates when this game server group was last updated.</p>
    #   @return [Time]
    class GameServerGroup < Struct.new(
      nil,
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
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration
    #             settings for intelligent automatic scaling that uses target tracking. These settings are
    #             used to add an Auto Scaling policy when creating the corresponding Auto Scaling group.
    #             After the Auto Scaling group is created, all updates to Auto Scaling policies, including
    #             changing this policy and adding or removing other policies, is done directly on the Auto
    #             Scaling group. </p>
    # @!attribute estimated_instance_warmup
    #   <p>Length of time, in seconds, it takes for a new instance to start new game server
    #               processes and register with Amazon GameLift Servers FleetIQ. Specifying a warm-up time can be useful, particularly
    #               with game servers that take a long time to start up, because it avoids prematurely
    #               starting new instances. </p>
    #   @return [Integer]
    # @!attribute target_tracking_configuration
    #   <p>Settings for a target-based scaling policy applied to Auto Scaling group. These
    #               settings are used to create a target-based policy that tracks the Amazon GameLift Servers FleetIQ metric
    #                   <code>"PercentUtilizedGameServers"</code> and specifies a target value for the
    #               metric. As player usage changes, the policy triggers to adjust the game server group
    #               capacity so that the metric returns to the target value. </p>
    #   @return [Types::TargetTrackingConfiguration]
    class GameServerGroupAutoScalingPolicy < Struct.new(
      nil,
      :estimated_instance_warmup,
      :target_tracking_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Additional properties,
    #             including status, that describe an EC2 instance in a game server group. Instance
    #             configurations are set with game server group properties (see
    #                 <code>DescribeGameServerGroup</code>) and with the EC2 launch template that was used
    #             when creating the game server group. </p>
    #          <p>Retrieve game server instances for a game server group by calling
    #                 <code>DescribeGameServerInstances</code>. </p>
    # @!attribute game_server_group_name
    #   <p>A developer-defined identifier for the game server group that includes the game server
    #               instance. The name is unique for each Region in each Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute game_server_group_arn
    #   <p>A generated unique identifier for the game server group that includes the game server
    #               instance. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The unique identifier for the instance where the game server is running. This ID is
    #               available in the instance metadata. EC2 instance IDs
    #               use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>
    #   @return [String]
    # @!attribute instance_status
    #   <p>Current status of the game server instance</p>
    #   @return [String]
    class GameServerInstance < Struct.new(
      nil,
      :game_server_group_name,
      :game_server_group_arn,
      :instance_id,
      :instance_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties describing a game session.</p>
    #          <p>A game session in ACTIVE status can host players. When a game session ends, its status
    #             is set to <code>TERMINATED</code>. </p>
    #          <p>Amazon GameLift Servers retains a game session resource for 30 days after the game session ends. You
    #             can reuse idempotency token values after this time. Game session logs are retained for
    #             14 days.</p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the game session is running on.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift fleet that this game session is running on. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute termination_time
    #   <p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute current_player_session_count
    #   <p>Number of players currently in the game session.</p>
    #   @return [Integer]
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>Current status of the game session. A game session must have an <code>ACTIVE</code>
    #               status to have player sessions.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Provides additional information about game session status. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INTERRUPTED</code> -- The game session was hosted on an EC2 Spot instance that was
    #                       reclaimed, causing the active game session to be stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRIGGERED_ON_PROCESS_TERMINATE</code> – The game session was stopped by calling
    #                           <code>TerminateGameSession</code> with the termination mode
    #                           <code>TRIGGER_ON_PROCESS_TERMINATE</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_TERMINATED</code> – The game session was stopped by calling
    #                           <code>TerminateGameSession</code> with the termination mode
    #                           <code>FORCE_TERMINATE</code>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::GameProperty>]
    # @!attribute ip_address
    #   <p>The IP address of the game session. To connect to a Amazon GameLift Servers game server, an app needs both the IP address and port number.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number for the game session. To connect to a Amazon GameLift Servers game server, an app needs both the IP address and port number.</p>
    #   @return [Integer]
    # @!attribute player_session_creation_policy
    #   <p>Indicates whether the game session is accepting new players.</p>
    #   @return [String]
    # @!attribute creator_id
    #   <p>A unique identifier for a player. This ID is used to enforce a resource protection policy (if one exists),
    #               that limits the number of game sessions a player can create.</p>
    #   @return [String]
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>.</p>
    #   @return [String]
    # @!attribute matchmaker_data
    #   <p>Information about the matchmaking process that resulted in the game session, if
    #               matchmaking was used. Data is in JSON syntax, formatted as a string. Information
    #               includes the matchmaker ID as well as player attributes and team assignments. For more
    #               details on matchmaker data, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data">Match
    #                   Data</a>. Matchmaker data is updated whenever new players are added during a
    #               successful backfill (see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchBackfill.html">StartMatchBackfill</a>).  </p>
    #   @return [String]
    # @!attribute location
    #   <p>The fleet location where the game session is running. This value might specify the
    #               fleet's home Region or a remote location. Location is expressed as an Amazon Web Services Region code
    #               such as <code>us-west-2</code>. </p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>A descriptive label for the compute resource. The compute resource that is hosting the game session. For EC2 fleets, this is the EC2 instance ID. For Container fleets, each game server container group on a fleet instance is assigned a compute name. For Anywhere fleets, this is the custom compute name.</p>
    #   @return [String]
    # @!attribute player_gateway_status
    #   <p>Indicates whether player gateway is available for use for this game session. Note, even if a fleet has PlayerGatewayMode configured as <code>ENABLED</code>, player gateway might not be available in a specific location. For more information about locations where player gateway is supported, see <a href="https://docs.aws.amazon.com/gameliftservers/latest/developerguide/gamelift-regions.html">Amazon GameLift Servers service locations</a>.</p>
    #            <p>Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> -- Player gateway is available for routing player connections for this game session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> -- Player gateway is not available for this game session.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GameSession < Struct.new(
      nil,
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
      :location,
      :compute_name,
      :player_gateway_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection information for a new game session that is created in response to a start
    #             matchmaking request. Once a match is made, the FlexMatch engine creates a new game session
    #             for it. This information, including the game session endpoint and player sessions for
    #             each player in the original matchmaking request, is added to the matchmaking
    #             ticket.</p>
    # @!attribute game_session_arn
    #   <p>An identifier for the game session that is unique across all regions. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the game session. To connect to a Amazon GameLift Servers game server, an app needs both the IP address and port number.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number for the game session. To connect to a Amazon GameLift Servers game server, an app needs both the IP address and port number.</p>
    #   @return [Integer]
    # @!attribute matched_player_sessions
    #   <p>A collection of player session IDs, one for each player ID that was included in the
    #               original matchmaking request. </p>
    #   @return [Array<Types::MatchedPlayerSession>]
    # @!attribute player_gateway_status
    #   <p>The current status of player gateway for the game session. Note, even if a fleet has PlayerGatewayMode configured as <code>ENABLED</code>, player gateway might not be available in a specific location. For more information about locations where player gateway is supported, see <a href="https://docs.aws.amazon.com/gameliftservers/latest/developerguide/gamelift-regions.html">supported locations</a>.</p>
    #            <p>Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> -- Player gateway is available for this game session.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> -- Player gateway is not available for this game session.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GameSessionConnectionInfo < Struct.new(
      nil,
      :game_session_arn,
      :ip_address,
      :dns_name,
      :port,
      :matched_player_sessions,
      :player_gateway_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A policy that puts limits on the number of game sessions that a player can create
    #             within a specified span of time. With this policy, you can control players' ability to
    #             consume available resources.</p>
    #          <p>The policy is evaluated when a player tries to create a new game session. On receiving
    #             a <code>CreateGameSession</code> request, Amazon GameLift Servers checks that the player (identified by
    #             <code>CreatorId</code>) has created fewer than the game session limit in the specified
    #             time period.</p>
    # @!attribute new_game_sessions_per_creator
    #   <p>A policy that puts limits on the number of game sessions that a player can create
    #               within a specified span of time. With this policy, you can control players' ability to
    #               consume available resources.</p>
    #            <p>The policy evaluates when a player tries to create a new game session. On receiving a
    #                   <code>CreateGameSession</code> request, Amazon GameLift Servers checks that the player (identified
    #               by <code>CreatorId</code>) has created fewer than the game session limit in the specified
    #               time period.</p>
    #   @return [Integer]
    # @!attribute policy_period_in_minutes
    #   <p>The time span used in evaluating the resource creation limit policy. </p>
    #   @return [Integer]
    class GameSessionCreationLimitPolicy < Struct.new(
      nil,
      :new_game_sessions_per_creator,
      :policy_period_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A game session's properties plus the protection policy currently in force.</p>
    # @!attribute game_session
    #   <p>Object that describes a game session.</p>
    #   @return [Types::GameSession]
    # @!attribute protection_policy
    #   <p>Current status of protection for the game session.</p>
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
    #   @return [String]
    class GameSessionDetail < Struct.new(
      nil,
      :game_session,
      :protection_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The game instance is currently full and cannot allow the requested player(s) to join.
    #             Clients can retry such requests immediately or after a waiting period.</p>
    # @!attribute message
    #   @return [String]
    class GameSessionFullException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a potential game session placement, including the full details of the
    #             original placement request and the current status. </p>
    #          <note>
    #             <p>If the game session placement status is <code>PENDING</code>, the properties for game
    #                 session ID/ARN, region, IP address/DNS, and port aren't final. A game session is not
    #                 active and ready to accept players until placement status reaches
    #                     <code>FULFILLED</code>. When the placement is in <code>PENDING</code> status,
    #                 Amazon GameLift Servers may attempt to place a game session multiple times before succeeding. With
    #                 each attempt it creates a <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameSession">https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameSession</a> object and updates this
    #                 placement object with the new game session properties.</p>
    #          </note>
    # @!attribute placement_id
    #   <p>A unique identifier for a game session placement.</p>
    #   @return [String]
    # @!attribute game_session_queue_name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the game session placement request.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PENDING</b> -- The placement request is
    #                       in the queue waiting to be processed. Game session properties are not
    #                       yet final. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FULFILLED</b> -- A new game session has been
    #                       successfully placed. Game session properties are now final.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CANCELLED</b> -- The placement request was
    #                       canceled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TIMED_OUT</b> -- A new game session was not
    #                       successfully created before the time limit expired. You can resubmit the
    #                       placement request as needed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b> -- Amazon GameLift Servers is not able to complete the
    #                       process of placing the game session. Common reasons are the game session
    #                       terminated before the placement process was completed, or an unexpected internal
    #                       error.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::GameProperty>]
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #   @return [Integer]
    # @!attribute game_session_name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #   @return [String]
    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>. This value is the same as <code>GameSessionArn</code>. This value isn't final until placement status is
    #               <code>FULFILLED</code>.</p>
    #   @return [String]
    # @!attribute game_session_arn
    #   <p>An identifier for the game session that is unique across all regions. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>. This value is the same as <code>GameSessionId</code>. This value isn't final until placement status is
    #                   <code>FULFILLED</code>.</p>
    #   @return [String]
    # @!attribute game_session_region
    #   <p>Name of the Region where the game session created by this placement request is
    #               running. This value isn't final until placement status is <code>FULFILLED</code>.</p>
    #   @return [String]
    # @!attribute player_latencies
    #   <p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to a fleet location (Amazon Web Services Regions or custom locations for Amazon GameLift Servers Anywhere fleets).</p>
    #   @return [Array<Types::PlayerLatency>]
    # @!attribute start_time
    #   <p>Time stamp indicating when this request was placed in the queue. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Time stamp indicating when this request was completed, canceled, or timed out.</p>
    #   @return [Time]
    # @!attribute ip_address
    #   <p>The IP address of the game session. To connect to a Amazon GameLift Servers game server, an app needs both the IP address and port number. This value isn't final until placement status is <code>FULFILLED</code>. </p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number for the game session. To connect to a Amazon GameLift Servers game server, an app needs both the IP address and port number. This value isn't final until placement status is
    #               <code>FULFILLED</code>.</p>
    #   @return [Integer]
    # @!attribute placed_player_sessions
    #   <p>A collection of information on player sessions created in response to the game session
    #               placement request. These player sessions are created only after a new game session is
    #               successfully placed (placement status is <code>FULFILLED</code>). This information
    #               includes the player ID, provided in the placement request, and a corresponding player
    #               session ID.</p>
    #   @return [Array<Types::PlacedPlayerSession>]
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>.</p>
    #   @return [String]
    # @!attribute matchmaker_data
    #   <p>Information on the matchmaking process for this game. Data is in JSON syntax,
    #               formatted as a string. It identifies the matchmaking configuration used to create the
    #               match, and contains data on all players assigned to the match, including player
    #               attributes and team assignments. For more details on matchmaker data, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data">Match
    #                   Data</a>.</p>
    #   @return [String]
    # @!attribute priority_configuration_override
    #   <p>An alternative priority list of locations that's included with a game session
    #               placement request. When provided, the list overrides a queue's location order list for
    #               this game session placement request only. The list might include Amazon Web Services Regions, local
    #               zones, and custom locations (for Anywhere fleets). The fallback strategy tells Amazon GameLift Servers
    #               what action to take (if any) in the event that it failed to place a new game session. </p>
    #   @return [Types::PriorityConfigurationOverride]
    # @!attribute player_gateway_status
    #   <p>The current status of player gateway for the game session placement. Note, even if a fleet has PlayerGatewayMode configured as <code>ENABLED</code>, player gateway might not be available in a specific location. For more information about locations where player gateway is supported, see <a href="https://docs.aws.amazon.com/gameliftservers/latest/developerguide/gamelift-regions.html">Amazon GameLift Servers service locations</a>.</p>
    #            <p>Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> -- Player gateway is available for this game session placement.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> -- Player gateway is not available for this game session placement.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GameSessionPlacement < Struct.new(
      nil,
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
      :priority_configuration_override,
      :player_gateway_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a game session placement mechanism that processes requests for new
    #             game sessions. A queue can be used on its own or as part of a matchmaking
    #             solution.</p>
    # @!attribute name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>
    #   @return [String]
    # @!attribute game_session_queue_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. In a Amazon GameLift Servers game session queue ARN, the resource ID matches the
    #                   <i>Name</i> value.</p>
    #   @return [String]
    # @!attribute timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>
    #            <note>
    #               <p>The minimum value is 10 and the maximum value is 600.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute player_latency_policies
    #   <p>A set of policies that enforce a sliding cap on player latency when processing game sessions placement requests.
    #   	Use multiple policies to gradually relax the cap over time if Amazon GameLift Servers can't make a placement.
    #   	    Policies are evaluated in order starting with the lowest maximum latency value. </p>
    #   @return [Array<Types::PlayerLatencyPolicy>]
    # @!attribute destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference.</p>
    #   @return [Array<Types::GameSessionQueueDestination>]
    # @!attribute filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is
    #               not set, game sessions can be placed in any queue location. </p>
    #   @return [Types::FilterConfiguration]
    # @!attribute priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly
    #               named will be automatically applied at the end of the prioritization process. </p>
    #   @return [Types::PriorityConfiguration]
    # @!attribute custom_event_data
    #   <p> Information that is added to all events that are related to this game session
    #               queue.</p>
    #   @return [String]
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html"> Setting up
    #                   notifications for game session placement</a>.</p>
    #   @return [String]
    class GameSessionQueue < Struct.new(
      nil,
      :name,
      :game_session_queue_arn,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A fleet or alias designated in a game session queue. Queues fulfill requests for new
    #             game sessions by placing a new game session on any of the queue's destinations. </p>
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) that is assigned to fleet or fleet alias. ARNs, which
    #               include a fleet ID or alias ID and a Region name, provide a unique identifier across all
    #               Regions.</p>
    #   @return [String]
    class GameSessionQueueDestination < Struct.new(
      nil,
      :destination_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that holds the compute resource that you want to connect to. You can use either the
    #               fleet ID or ARN value.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>A unique identifier for the compute resource that you want to connect to. For an EC2
    #               fleet, use an instance ID. For a managed container fleet, use a compute name. You can
    #               retrieve a fleet's compute names by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html">ListCompute</a>.</p>
    #   @return [String]
    class GetComputeAccessInput < Struct.new(
      nil,
      :fleet_id,
      :compute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>The ID of the fleet that holds the compute resource to be accessed.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>The identifier of the compute resource to be accessed.  This value might be either a
    #               compute name or an instance ID.</p>
    #   @return [String]
    # @!attribute compute_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to an Amazon GameLift Servers compute resource and uniquely identifies it.
    #               ARNs are unique across all Regions. Format is
    #                   <code>arn:aws:gamelift:<region>::compute/compute-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>A set of temporary Amazon Web Services credentials for use when connecting to the
    #               compute resource with Amazon EC2 Systems Manager (SSM).</p>
    #   @return [Types::AwsCredentials]
    # @!attribute target
    #   <p>The instance ID where the compute resource is running.</p>
    #   @return [String]
    # @!attribute container_identifiers
    #   <p>For a managed container fleet, a list of containers on the compute. Use the container
    #               runtime ID with Docker commands to connect to a specific container. </p>
    #   @return [Array<Types::ContainerIdentifier>]
    class GetComputeAccessOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :compute_name,
      :compute_arn,
      :credentials,
      :target,
      :container_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the compute is registered to.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>The name of the compute resource you are requesting the authentication token for. For
    #               an Anywhere fleet compute, use the registered compute name. For an EC2 fleet instance,
    #               use the instance ID.</p>
    #   @return [String]
    class GetComputeAuthTokenInput < Struct.new(
      nil,
      :fleet_id,
      :compute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the compute is registered to.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>The name of the compute resource that the authentication token is issued to.</p>
    #   @return [String]
    # @!attribute compute_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to an Amazon GameLift Servers compute resource and uniquely identifies it.
    #               ARNs are unique across all Regions. Format is
    #                   <code>arn:aws:gamelift:<region>::compute/compute-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>A valid temporary authentication token.</p>
    #   @return [String]
    # @!attribute expiration_timestamp
    #   <p>The amount of time until the authentication token is no longer valid.</p>
    #   @return [Time]
    class GetComputeAuthTokenOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :compute_name,
      :compute_arn,
      :auth_token,
      :expiration_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions to get logs for. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    class GetGameSessionLogUrlInput < Struct.new(
      nil,
      :game_session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute pre_signed_url
    #   <p>Location of the requested game session logs, available for download. This URL is valid
    #               for 15 minutes, after which S3 will reject any download request using this URL. You can
    #               request a new URL any time within the 14-day period that the logs are retained.</p>
    #   @return [String]
    class GetGameSessionLogUrlOutput < Struct.new(
      nil,
      :pre_signed_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that contains the instance you want to access. You can request access to
    #               instances in EC2 fleets with the following statuses: <code>ACTIVATING</code>,
    #                   <code>ACTIVE</code>, or <code>ERROR</code>. Use either a fleet ID or an ARN value. </p>
    #            <note>
    #               <p>You can access fleets in <code>ERROR</code> status for a short period of time before Amazon GameLift Servers deletes them.</p>
    #            </note>
    #   @return [String]
    # @!attribute instance_id
    #   <p>A unique identifier for the instance you want to access. You can access an instance in any status.</p>
    #   @return [String]
    class GetInstanceAccessInput < Struct.new(
      nil,
      :fleet_id,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_access
    #   <p>The connection information for a fleet instance, including IP address and access
    #               credentials.</p>
    #   @return [Types::InstanceAccess]
    class GetInstanceAccessOutput < Struct.new(
      nil,
      :instance_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions for which to retrieve player connection details. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute player_ids
    #   <p>List of unique identifiers for players. Connection details are returned for each player in this list.</p>
    #   @return [Array<String>]
    class GetPlayerConnectionDetailsInput < Struct.new(
      nil,
      :game_session_id,
      :player_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions for which the player connection details were retrieved. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute player_connection_details
    #   <p>A collection of player connection detail objects, one for each requested player.</p>
    #   @return [Array<Types::PlayerConnectionDetail>]
    class GetPlayerConnectionDetailsOutput < Struct.new(
      nil,
      :game_session_id,
      :player_connection_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A game session with this custom ID string already exists in this fleet. Resolve this
    #             conflict before retrying this request.</p>
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatchException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a virtual computing instance that runs game server processes and hosts game
    #             sessions. In Amazon GameLift Servers, one or more instances make up a managed EC2 fleet.</p>
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the instance belongs to.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>A unique identifier for the instance.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>IP address that is assigned to the instance.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #   @return [String]
    # @!attribute operating_system
    #   <p>Operating system that is running on this EC2 instance. </p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2026. See more details in
    #               the <a href="http://aws.amazon.com/aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>.
    #               For game servers
    #               that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the
    #               game server build to server SDK 5.x, and then deploy to AL2023 instances. See
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html">
    #                   Migrate to server SDK version 5.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute type
    #   <p>EC2 instance type that defines the computing resources of this instance. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the instance. Possible statuses include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PENDING</b> -- The instance is in the process of
    #                       being created and launching server processes as defined in the fleet's run-time
    #                       configuration. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The instance has been successfully
    #                       created and at least one server process has successfully launched and reported
    #                       back to Amazon GameLift Servers that it is ready to host a game session. The instance is now
    #                       considered ready to host game sessions. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TERMINATING</b> -- The instance is in the process
    #                       of shutting down. This may happen to reduce capacity during a scaling down event
    #                       or to recycle resources in the event of a problem.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The fleet location of the instance, expressed as an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>. </p>
    #   @return [String]
    class Instance < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :instance_id,
      :ip_address,
      :dns_name,
      :operating_system,
      :type,
      :status,
      :creation_time,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information and credentials that you can use to remotely connect to an instance in an
    #             EC2 managed fleet. This data type is returned in response to a call to
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess">https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess</a>. </p>
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet containing the instance to be accessed.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>A unique identifier for the instance to be accessed.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>IP address assigned to the instance.</p>
    #   @return [String]
    # @!attribute operating_system
    #   <p>Operating system that is running on the instance.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>Security credentials that are required to access the instance.</p>
    #   @return [Types::InstanceCredentials]
    class InstanceAccess < Struct.new(
      nil,
      :fleet_id,
      :instance_id,
      :ip_address,
      :operating_system,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of credentials that allow remote access to an instance in an EC2 managed fleet.
    #             These credentials are returned in response to a call to
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess">https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess</a>, which requests access for instances that are running
    #             game servers with the Amazon GameLift Servers server SDK version 4.x or earlier.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute user_name
    #   <p>A user name for logging in.</p>
    #   @return [String]
    # @!attribute secret
    #   <p>Secret string. For Windows instances, the secret is a password for use with Windows
    #               Remote Desktop. For Linux instances, it's a private key for use with SSH.</p>
    #   @return [String]
    class InstanceCredentials < Struct.new(
      nil,
      :user_name,
      :secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An allowed instance type for a
    #             game server group. All game server groups must have at least two instance types defined
    #             for it. Amazon GameLift Servers FleetIQ periodically evaluates each defined instance type for viability. It then
    #             updates the Auto Scaling group with the list of viable instance types.</p>
    # @!attribute instance_type
    #   <p>An Amazon EC2 instance type designation.</p>
    #   @return [String]
    # @!attribute weighted_capacity
    #   <p>Instance weighting that indicates how much this instance type contributes to the total
    #               capacity of a game server group. Instance weights are used by Amazon GameLift Servers FleetIQ to calculate the
    #               instance type's cost per unit hour and better identify the most cost-effective options.
    #               For detailed information on weighting instance capacity, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html">Instance
    #                   Weighting</a> in the <i>Amazon Elastic Compute Cloud Auto Scaling User Guide</i>.
    #               Default value is "1".</p>
    #   @return [String]
    class InstanceDefinition < Struct.new(
      nil,
      :instance_type,
      :weighted_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an unrecoverable internal failure while processing the
    #             request. Clients can retry such requests immediately or after a waiting period.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a resource
    #             associated with the request and/or the fleet. Resolve the conflict before
    #             retrying.</p>
    # @!attribute message
    #   @return [String]
    class InvalidFleetStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a resource
    #             associated with the request and/or the game instance. Resolve the conflict before
    #             retrying.</p>
    # @!attribute message
    #   @return [String]
    class InvalidGameSessionStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameter values in the request are invalid. Correct the invalid parameter
    #             values before retrying.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A range of IP addresses and port settings that allow inbound traffic to connect to
    #             processes on an instance in a fleet. Processes are assigned an IP address/port number
    #             combination, which must fall into the fleet's allowed ranges.
    #             </p>
    #          <p>For Amazon GameLift Servers Realtime fleets, Amazon GameLift Servers automatically opens two port ranges, one for TCP messaging
    #             and one for UDP.</p>
    # @!attribute from_port
    #   <p>A starting value for a range of allowed port numbers.</p>
    #            <p>For fleets using Linux builds, only ports <code>22</code> and <code>1026-60000</code> are valid.</p>
    #            <p>For fleets using Windows builds, only ports <code>1026-60000</code> are valid.</p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>An ending value for a range of allowed port numbers. Port numbers are end-inclusive.
    #               This value must be equal to or greater than <code>FromPort</code>.</p>
    #            <p>For fleets using Linux builds, only ports <code>22</code> and <code>1026-60000</code> are valid.</p>
    #            <p>For fleets using Windows builds, only ports <code>1026-60000</code> are valid.</p>
    #   @return [Integer]
    # @!attribute ip_range
    #   <p>A range of allowed IP addresses. This value must be expressed in CIDR notation.
    #               Example: "<code>000.000.000.000/[subnet mask]</code>" or optionally the shortened
    #               version "<code>0.0.0.0/[subnet mask]</code>".</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The network communication protocol used by the fleet.</p>
    #   @return [String]
    class IpPermission < Struct.new(
      nil,
      :from_port,
      :to_port,
      :ip_range,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon Elastic Compute Cloud launch
    #             template that contains configuration settings and game server code to be deployed to all
    #             instances in a game server group. The launch template is specified when creating a new
    #             game server group. </p>
    # @!attribute launch_template_id
    #   <p>A unique identifier for an existing Amazon EC2 launch template.</p>
    #   @return [String]
    # @!attribute launch_template_name
    #   <p>A readable identifier for an existing Amazon EC2 launch template. </p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the Amazon EC2 launch template to use. If no version is specified, the
    #               default version will be used. With Amazon EC2, you can specify a default version for a launch
    #               template. If none is set, the default is the first version created.</p>
    #   @return [String]
    class LaunchTemplateSpecification < Struct.new(
      nil,
      :launch_template_id,
      :launch_template_name,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause the resource to exceed the allowed service limit.
    #             Resolve the issue before retrying.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of Linux capabilities that are added to a container's default Docker configuration
    #       for a container defined in the <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a>. For more detailed information about these Linux
    #       capabilities, see the <a href="https://man7.org/linux/man-pages/man7/capabilities.7.html">capabilities(7)</a> Linux manual page.</p>
    #          <p>
    #             <b>Modifying capabilities on an existing container:</b> To
    #       remove a capability, update the <code>Include</code> list with only the needed capabilities.
    #       To revert back to default capabilities, omit <code>LinuxCapabilities</code> within the
    #       ContainerDefinition.</p>
    #          <p>
    #             <b>Part of: </b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinition.html">GameServerContainerDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html">GameServerContainerDefinitionInput</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html">SupportContainerDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinitionInput.html">SupportContainerDefinitionInput</a>
    #          </p>
    #          <p>
    #             <b>Returned by: </b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeContainerGroupDefinition.html">DescribeContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitions.html">ListContainerGroupDefinitions</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitionVersions.html">ListContainerGroupDefinitionVersions</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>
    #          </p>
    # @!attribute include
    #   <p>The list of Linux capabilities to add to the container's default configuration.
    #         Specify each capability as a string from the set of supported capability names (for example,
    #         <code>NET_BIND_SERVICE</code> or <code>SYS_PTRACE</code>).</p>
    #   @return [Array<String>]
    class LinuxCapabilities < Struct.new(
      nil,
      :include,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_strategy_type
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
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListAliasesInput < Struct.new(
      nil,
      :routing_strategy_type,
      :name,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute aliases
    #   <p>A collection of alias resources that match the request parameters.</p>
    #   @return [Array<Types::Alias>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListAliasesOutput < Struct.new(
      nil,
      :aliases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
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
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListBuildsInput < Struct.new(
      nil,
      :status,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute builds
    #   <p>A collection of build resources that match the request.</p>
    #   @return [Array<Types::Build>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListBuildsOutput < Struct.new(
      nil,
      :builds,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to retrieve compute resources for.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The name of a location to retrieve compute resources for. For an Amazon GameLift Servers Anywhere
    #               fleet, use a custom location. For a managed fleet, provide a
    #               Amazon Web Services Region or Local Zone code (for example: <code>us-west-2</code> or
    #               <code>us-west-2-lax-1</code>).</p>
    #   @return [String]
    # @!attribute container_group_definition_name
    #   <p>For computes in a managed container fleet, the name of the deployed container group
    #               definition. </p>
    #   @return [String]
    # @!attribute compute_status
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
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListComputeInput < Struct.new(
      nil,
      :fleet_id,
      :location,
      :container_group_definition_name,
      :compute_status,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compute_list
    #   <p>A list of compute resources in the specified fleet.</p>
    #   @return [Array<Types::Compute>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListComputeOutput < Struct.new(
      nil,
      :compute_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_group_definition_name
    #   <p>The container group definition to filter the list on. Use this parameter to retrieve
    #               only those fleets that use the specified container group definition. You can specify the
    #               container group definition's name to get fleets with the latest versions. Alternatively,
    #               provide an ARN value to get fleets with a specific version number.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListContainerFleetsInput < Struct.new(
      nil,
      :container_group_definition_name,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_fleets
    #   <p>A collection of container fleet objects for all fleets that match the request
    #               criteria.</p>
    #   @return [Array<Types::ContainerFleet>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListContainerFleetsOutput < Struct.new(
      nil,
      :container_fleets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique identifier for the container group definition to retrieve properties for. You can use either the <code>Name</code> or
    #         <code>ARN</code> value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListContainerGroupDefinitionVersionsInput < Struct.new(
      nil,
      :name,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_group_definitions
    #   <p>A result set of container group definitions that match the request.</p>
    #   @return [Array<Types::ContainerGroupDefinition>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListContainerGroupDefinitionVersionsOutput < Struct.new(
      nil,
      :container_group_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_group_type
    #   <p>The type of container group to retrieve. Container group type determines how Amazon GameLift Servers
    #         deploys the container group on each fleet instance.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListContainerGroupDefinitionsInput < Struct.new(
      nil,
      :container_group_type,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_group_definitions
    #   <p>A result set of container group definitions that match the request.</p>
    #   @return [Array<Types::ContainerGroupDefinition>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListContainerGroupDefinitionsOutput < Struct.new(
      nil,
      :container_group_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListFleetDeploymentsInput < Struct.new(
      nil,
      :fleet_id,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_deployments
    #   <p>The requested deployment information.</p>
    #   @return [Array<Types::FleetDeployment>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListFleetDeploymentsOutput < Struct.new(
      nil,
      :fleet_deployments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute build_id
    #   <p>A unique identifier for the build to request fleets for. Use this parameter to return only fleets using a
    #               specified build. Use either the build ID or ARN value.</p>
    #   @return [String]
    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script to request fleets for. Use this parameter to return only fleets using a
    #               specified script. Use either the script ID or ARN value.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListFleetsInput < Struct.new(
      nil,
      :build_id,
      :script_id,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_ids
    #   <p>A set of fleet IDs that match the list request.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListFleetsOutput < Struct.new(
      nil,
      :fleet_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute limit
    #   <p>The game server groups' limit.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of
    #               results.</p>
    #   @return [String]
    class ListGameServerGroupsInput < Struct.new(
      nil,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_groups
    #   <p>The game server groups' game server groups.</p>
    #   @return [Array<Types::GameServerGroup>]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of
    #               results.</p>
    #   @return [String]
    class ListGameServerGroupsOutput < Struct.new(
      nil,
      :game_server_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>An identifier for the game server group to retrieve a list of game servers from. Use
    #               either the name or ARN value.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Indicates how to sort the returned data based on game server registration timestamp.
    #               Use <code>ASCENDING</code> to retrieve oldest game servers first, or use
    #                   <code>DESCENDING</code> to retrieve newest game servers first. If this parameter is
    #               left empty, game servers are returned in no particular order.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListGameServersInput < Struct.new(
      nil,
      :game_server_group_name,
      :sort_order,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_servers
    #   <p>A collection of game server objects that match the request.</p>
    #   @return [Array<Types::GameServer>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListGameServersOutput < Struct.new(
      nil,
      :game_servers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters the list for <code>AWS</code> or <code>CUSTOM</code> locations. Use this
    #               parameter to narrow down results to only Amazon Web Services-managed locations (Amazon EC2 or container) or
    #               only your custom locations (such as an Amazon GameLift Servers Anywhere fleet).</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListLocationsInput < Struct.new(
      nil,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute locations
    #   <p>A collection of locations, including both Amazon Web Services and custom locations. Each location
    #               includes a name and ping beacon information that can be used to measure network latency
    #               between player devices and the location.</p>
    #   @return [Array<Types::LocationModel>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListLocationsOutput < Struct.new(
      nil,
      :locations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class ListScriptsInput < Struct.new(
      nil,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scripts
    #   <p>A set of properties describing the requested script.</p>
    #   @return [Array<Types::Script>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class ListScriptsOutput < Struct.new(
      nil,
      :scripts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that uniquely identifies
    #               the Amazon GameLift Servers resource that you want to retrieve tags for. Amazon GameLift Servers includes resource ARNs in
    #               the data object for the resource. You can retrieve the ARN by calling a
    #                   <code>List</code> or <code>Describe</code> operation for the resource type. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The collection of tags assigned to the resource. </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a location in a multi-location fleet.</p>
    # @!attribute location_state
    #   <p>A fleet location and its current life-cycle state.</p>
    #   @return [Types::LocationState]
    # @!attribute stopped_actions
    #   <p>A list of fleet actions that have been suspended in the fleet location.</p>
    #   @return [Array<String>]
    # @!attribute update_status
    #   <p>The status of fleet activity updates to the location. The status
    #                   <code>PENDING_UPDATE</code> indicates that <code>StopFleetActions</code> or
    #                   <code>StartFleetActions</code> has been requested but the update has not yet been
    #               completed for the location.</p>
    #   @return [String]
    class LocationAttributes < Struct.new(
      nil,
      :location_state,
      :stopped_actions,
      :update_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A remote location where a multi-location fleet can deploy game servers for game
    #             hosting. </p>
    # @!attribute location
    #   <p>An Amazon Web Services Region code, such as <code>us-west-2</code>. For a list of supported Regions
    #               and Local Zones, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html"> Amazon GameLift Servers service
    #                   locations</a> for managed hosting.</p>
    #   @return [String]
    class LocationConfiguration < Struct.new(
      nil,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties of a location, which can include its name, ARN (for custom locations), and
    #             ping beacon information.</p>
    # @!attribute location_name
    #   <p>The location's name.</p>
    #   @return [String]
    # @!attribute location_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a custom location resource and uniquely identifies it.
    #               ARNs are unique across all Regions. Format is
    #                   <code>arn:aws:gamelift:<region>::location/location-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute ping_beacon
    #   <p>Information about the UDP ping beacon for this location. Ping beacons are fixed endpoints that you can use to measure network
    #                   latency between a player device and an Amazon GameLift Servers hosting location.</p>
    #   @return [Types::PingBeacon]
    class LocationModel < Struct.new(
      nil,
      :location_name,
      :location_arn,
      :ping_beacon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A fleet location and its life-cycle state. A location state object might be used to
    #             describe a fleet's remote location or home Region. Life-cycle state tracks the progress
    #             of launching the first instance in a new location and preparing it for game hosting, and
    #             then removing all instances and deleting the location from the fleet.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>NEW</b> -- A new fleet location has been defined and desired
    #                     instances is set to 1. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>DOWNLOADING/VALIDATING/BUILDING/ACTIVATING</b> --
    #                     Amazon GameLift Servers is setting up the new fleet location, creating new instances with the game build
    #                     or Realtime script and starting server processes.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>ACTIVE</b> -- Hosts can now accept game
    #                     sessions.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>ERROR</b> -- An error occurred when downloading,
    #                     validating, building, or activating the fleet location.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>DELETING</b> -- Hosts are responding to a delete
    #                     fleet location request.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>TERMINATED</b> -- The fleet location no longer
    #                     exists.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>NOT_FOUND</b> -- The fleet location was not found. This could be because the custom location was removed or not created.
    #                 </p>
    #             </li>
    #          </ul>
    # @!attribute location
    #   <p>The fleet location, expressed as an Amazon Web Services Region code such as <code>us-west-2</code>.
    #           </p>
    #   @return [String]
    # @!attribute status
    #   <p>The life-cycle status of a fleet location. </p>
    #   @return [String]
    # @!attribute player_gateway_status
    #   <p>The current status of player gateway in this location for this fleet. Note, even if a fleet has PlayerGatewayMode configured as <code>ENABLED</code>, player gateway might not be available in a specific location. For more information about locations where player gateway is supported, see <a href="https://docs.aws.amazon.com/gameliftservers/latest/developerguide/gamelift-regions.html">Amazon GameLift Servers service locations</a>.</p>
    #            <p>Possible values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> -- Player gateway is available for this fleet location.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> -- Player gateway is not available for this fleet location.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LocationState < Struct.new(
      nil,
      :location,
      :status,
      :player_gateway_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For a multi-location container fleet, describes the progress of a deployment across
    #             all fleet locations. </p>
    # @!attribute deployment_status
    #   <p>The status of fleet deployment activity in the location. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> -- The deployment is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPAIRED</code> -- The deployment failed and the fleet has some impaired
    #                       containers. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETE</code> -- The deployment has completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLBACK_IN_PROGRESS</code> -- The deployment failed and rollback has
    #                       been initiated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLBACK_IN_COMPLETE</code> -- The deployment failed and rollback has
    #                       been completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code> -- The deployment was cancelled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LocationalDeployment < Struct.new(
      nil,
      :deployment_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A method for collecting container logs for the fleet. Amazon GameLift Servers saves all standard
    #             output for each container in logs, including game session logs. You can select from the
    #             following methods: </p>
    # @!attribute log_destination
    #   <p>The type of log collection to use for a fleet.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLOUDWATCH</code> -- (default value) Send logs to an Amazon CloudWatch log group that you define. Each container emits a log stream, which is organized in the log group. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> -- Store logs in an Amazon S3 bucket that you define. This bucket must reside in the fleet's home Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> -- Don't collect container logs.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>If log destination is <code>S3</code>, logs are sent to the specified Amazon S3 bucket name.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>If log destination is <code>CLOUDWATCH</code>, logs are sent to the specified log group in Amazon CloudWatch.</p>
    #   @return [String]
    class LogConfiguration < Struct.new(
      nil,
      :log_destination,
      :s3_bucket_name,
      :log_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use ManagedCapacityConfiguration with the "SCALE_TO_AND_FROM_ZERO" ZeroCapacityStrategy to enable Amazon
    #             GameLift Servers to fully manage the MinSize value, switching between 0 and 1 based on game session
    #             activity. This is ideal for eliminating compute costs during periods of no game activity.
    #             It is particularly beneficial during development when you're away from your desk, iterating on builds
    #             for extended periods, in production environments serving low-traffic locations, or for games with long,
    #             predictable downtime windows. By automatically managing capacity between 0 and 1 instances, you avoid paying
    #             for idle instances while maintaining the ability to serve game sessions when demand arrives. Note that while
    #             scale-out is triggered immediately upon receiving a game session request, actual game session availability
    #             depends on your server process startup time, so this approach works best with multi-location Fleets where
    #             cold-start latency is tolerable. With a "MANUAL" ZeroCapacityStrategy Amazon GameLift Servers will not
    #             modify Fleet MinSize values automatically and will not scale out from zero instances in response to game
    #             sessions.
    #         </p>
    # @!attribute zero_capacity_strategy
    #   <p>The strategy Amazon GameLift Servers will use to automatically scale your capacity to and from zero
    #               instances in response to game session activity. Game session activity refers to any active running sessions
    #               or game session requests.</p>
    #            <p>Possible ZeroCapacityStrategy types include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>MANUAL</b> -- (default value) Amazon GameLift Servers will not update
    #                   capacity to and from zero on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SCALE_TO_AND_FROM_ZERO</b> --  Amazon GameLift Servers will automatically
    #                   scale out MinSize and DesiredInstances from 0 to 1 in response to a game session request, and will scale
    #                   in MinSize and DesiredInstances to 0 after a period with no game session activity. The duration of
    #                   this scale in period can be configured using ScaleInAfterInactivityMinutes. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scale_in_after_inactivity_minutes
    #   <p>Length of time, in minutes, that Amazon GameLift Servers will wait before scaling in your MinSize and
    #               DesiredInstances to 0 after a period with no game session activity. Default: 30 minutes.</p>
    #   @return [Integer]
    class ManagedCapacityConfiguration < Struct.new(
      nil,
      :zero_capacity_strategy,
      :scale_in_after_inactivity_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a new player session that is created as a result of a successful FlexMatch
    #             match. A successful match automatically creates new player sessions for every player ID
    #             in the original matchmaking request. </p>
    #          <p>When players connect to the match's game session, they must include both player ID and
    #             player session ID in order to claim their assigned player slot.</p>
    # @!attribute player_id
    #   <p>A unique identifier for a player </p>
    #   @return [String]
    # @!attribute player_session_id
    #   <p>A unique identifier for a player session. PlayerSessionId will only be populated for player sessions that are in ACTIVE or RESERVED status when the ticket is completed.</p>
    #   @return [String]
    class MatchedPlayerSession < Struct.new(
      nil,
      :player_id,
      :player_session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Guidelines for use with FlexMatch to match players into games. All matchmaking requests
    #             must specify a matchmaking configuration.</p>
    # @!attribute name
    #   <p>A unique identifier for the matchmaking configuration. This name is used to identify the configuration associated with a matchmaking
    #               request or ticket.</p>
    #   @return [String]
    # @!attribute configuration_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers matchmaking configuration resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::matchmakingconfiguration/<matchmaking configuration name></code>. In a Amazon GameLift Servers configuration ARN, the resource ID matches the
    #                   <i>Name</i> value.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A descriptive label that is associated with matchmaking configuration.</p>
    #   @return [String]
    # @!attribute game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               Amazon GameLift Servers-hosted game sessions for matches that are created with this matchmaking
    #               configuration. This property is not set when <code>FlexMatchMode</code> is set to
    #                   <code>STANDALONE</code>.</p>
    #   @return [Array<String>]
    # @!attribute request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    #   @return [Integer]
    # @!attribute acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required. If any player rejects the match or fails to accept before the
    #               timeout, the ticket continues to look for an acceptable match.</p>
    #   @return [Integer]
    # @!attribute acceptance_required
    #   <p>A flag that indicates whether a match that was created with this configuration must be
    #               accepted by the matched players. To require acceptance, set to TRUE. When this option is
    #               enabled, matchmaking tickets use the status <code>REQUIRES_ACCEPTANCE</code> to indicate
    #               when a completed potential match is waiting for player acceptance.</p>
    #   @return [Boolean]
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. A matchmaking configuration can only use rule
    #               sets that are defined in the same Region.</p>
    #   @return [String]
    # @!attribute rule_set_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift matchmaking rule set resource that this
    #               configuration uses.</p>
    #   @return [String]
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications.</p>
    #   @return [String]
    # @!attribute additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used when <code>FlexMatchMode</code> is set to
    #                   <code>STANDALONE</code>.</p>
    #   @return [Integer]
    # @!attribute custom_event_data
    #   <p>Information to attach to all events related to the matchmaking configuration. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>. This information is added to the new <code>GameSession</code> object that is
    #               created for a successful match. This parameter is not used when
    #                   <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::GameProperty>]
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>. This information is added to the new <code>GameSession</code> object that is
    #               created for a successful match. This parameter is not used when
    #                   <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #   @return [String]
    # @!attribute backfill_mode
    #   <p>The method used to backfill game sessions created with this matchmaking configuration.
    #               MANUAL indicates that the game makes backfill requests or does not use the match
    #               backfill feature. AUTOMATIC indicates that GameLift creates backfill requests whenever a
    #               game session has one or more open slots. Learn more about manual and automatic backfill
    #               in <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html">Backfill existing games with FlexMatch</a>. Automatic backfill is not available
    #               when <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #   @return [String]
    # @!attribute flex_match_mode
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
    #   @return [String]
    class MatchmakingConfiguration < Struct.new(
      nil,
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
      :flex_match_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Set of rule statements, used with FlexMatch, that determine how to build your player
    #             matches. Each rule set describes a type of group to be created and defines the
    #             parameters for acceptable player matches.</p>
    #          <p>A rule set may define the following elements for a match. For detailed information and
    #             examples showing how to construct a rule set, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a FlexMatch rule
    #                 set</a>. </p>
    #          <ul>
    #             <li>
    #                <p>Teams -- Required. A rule set must define one or multiple teams for the match
    #                     and set minimum and maximum team sizes. For example, a rule set might describe a
    #                     4x4 match that requires all eight slots to be filled. </p>
    #             </li>
    #             <li>
    #                <p>Player attributes -- Optional. These attributes specify a set of player
    #                     characteristics to evaluate when looking for a match. Matchmaking requests that
    #                     use a rule set with player attributes must provide the corresponding attribute
    #                     values. For example, an attribute might specify a player's skill or
    #                     level.</p>
    #             </li>
    #             <li>
    #                <p>Rules -- Optional. Rules define how to evaluate potential players for a match
    #                     based on player attributes. A rule might specify minimum requirements for
    #                     individual players, teams, or entire matches. For example, a rule might require
    #                     each player to meet a certain skill level, each team to have at least one player
    #                     in a certain role, or the match to have a minimum average skill level, or may
    #                     describe an entire group--such as all teams must be evenly matched or have at
    #                     least one player in a certain role. </p>
    #             </li>
    #             <li>
    #                <p>Expansions -- Optional. Expansions allow you to relax the rules after a period
    #                     of time when no acceptable matches are found. This feature lets you balance
    #                     getting players into games in a reasonable amount of time instead of making them
    #                     wait indefinitely for the best possible match. For example, you might use an
    #                     expansion to increase the maximum skill variance between players after 30
    #                     seconds.</p>
    #             </li>
    #          </ul>
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set</p>
    #   @return [String]
    # @!attribute rule_set_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers matchmaking rule set resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::matchmakingruleset/<ruleset name></code>. In a GameLift rule set ARN, the resource ID matches the
    #                   <i>RuleSetName</i> value.</p>
    #   @return [String]
    # @!attribute rule_set_body
    #   <p>A collection of matchmaking rules, formatted as a JSON string. Comments are not
    #               allowed in JSON, but most elements support a description field.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    class MatchmakingRuleSet < Struct.new(
      nil,
      :rule_set_name,
      :rule_set_arn,
      :rule_set_body,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Ticket generated to track the progress of a matchmaking request. Each ticket is
    #             uniquely identified by a ticket ID, supplied by the requester, when creating a
    #             matchmaking request.</p>
    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket.</p>
    #   @return [String]
    # @!attribute configuration_name
    #   <p>Name of the matchmaking configuration that is used with this ticket. Matchmaking
    #               configurations determine how players are grouped into a match and how a new game session
    #               is created for the match.</p>
    #   @return [String]
    # @!attribute configuration_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift matchmaking configuration resource that is used
    #               with this ticket.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the matchmaking request.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>QUEUED</b> -- The matchmaking request has been
    #                       received and is currently waiting to be processed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SEARCHING</b> -- The matchmaking request is
    #                       currently being processed. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>REQUIRES_ACCEPTANCE</b> -- A match has been
    #                       proposed and the players must accept the match. This status is used only with
    #                       requests that use a matchmaking configuration with a player acceptance
    #                       requirement.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PLACING</b> -- The FlexMatch engine has matched
    #                       players and is in the process of placing a new game session for the
    #                       match.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPLETED</b> -- Players have been matched and a
    #                       game session is ready to host the players. A ticket in this state contains the
    #                       necessary connection information for players.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b> -- The matchmaking request was not
    #                       completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CANCELLED</b> -- The matchmaking request was
    #                       canceled. This may be the result of a <code>StopMatchmaking</code> operation or
    #                       a proposed match that one or more players failed to accept.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TIMED_OUT</b> -- The matchmaking request was not
    #                       successful within the duration specified in the matchmaking configuration.
    #                   </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Matchmaking requests that fail to successfully complete (statuses FAILED,
    #                   CANCELLED, TIMED_OUT) can be resubmitted as new requests with new ticket IDs.</p>
    #            </note>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Code to explain the current status. For example, a status reason may indicate when a
    #               ticket has returned to <code>SEARCHING</code> status after a proposed match fails to
    #               receive player acceptances.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Additional information about the current status.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Time stamp indicating when this matchmaking request was received. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Time stamp indicating when the matchmaking request stopped being processed due to
    #               successful completion, timeout, or cancellation. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute players
    #   <p>A set of <code>Player</code> objects, each representing a player to find matches for.
    #               Players are identified by a unique player ID and may include latency data for use during
    #               matchmaking. If the ticket is in status <code>COMPLETED</code>, the <code>Player</code>
    #               objects include the team the players were assigned to in the resulting match.</p>
    #   @return [Array<Types::Player>]
    # @!attribute game_session_connection_info
    #   <p>Connection information for a new game session. Once a match is made, the FlexMatch
    #               engine creates a new game session for it. This information is added to the matchmaking
    #               ticket, which you can retrieve by calling <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeMatchmaking.html">DescribeMatchmaking</a> .</p>
    #   @return [Types::GameSessionConnectionInfo]
    # @!attribute estimated_wait_time
    #   <p>Average amount of time (in seconds) that players are currently waiting for a match. If
    #               there is not enough recent data, this property may be empty.</p>
    #   @return [Integer]
    class MatchmakingTicket < Struct.new(
      nil,
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
      :estimated_wait_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource was not found. The resource was either not created yet or deleted.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The operation failed because Amazon GameLift Servers has not yet finished validating this compute. We
    #             recommend attempting 8 to 10 retries over 3 to 5 minutes with <a href="http://aws.amazon.com/blogs/https:/aws.amazon.com/blogs/architecture/exponential-backoff-and-jitter/">exponential
    #                 backoffs and jitter</a>. </p>
    # @!attribute message
    #   @return [String]
    class NotReadyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified game server group has no available game servers to fulfill a
    #                 <code>ClaimGameServer</code> request. Clients can retry such requests immediately or
    #             after a waiting period.</p>
    # @!attribute message
    #   @return [String]
    class OutOfCapacityException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a UDP ping beacon that can be used to measure network latency
    #             between a player device and an Amazon GameLift Servers hosting location.</p>
    # @!attribute udp_endpoint
    #   <p>The domain name and port of the UDP ping beacon. Your
    #                   game client can send UDP messages to this endpoint and receive responses to measure
    #                   network latency.</p>
    #   @return [Types::UDPEndpoint]
    class PingBeacon < Struct.new(
      nil,
      :udp_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a player session. This object contains only the player ID and player
    #             session ID. To retrieve full details on a player session, call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribePlayerSessions.html">DescribePlayerSessions</a> with the player session ID.</p>
    # @!attribute player_id
    #   <p>A unique identifier for a player that is associated with this player session.</p>
    #   @return [String]
    # @!attribute player_session_id
    #   <p>A unique identifier for a player session.</p>
    #   @return [String]
    class PlacedPlayerSession < Struct.new(
      nil,
      :player_id,
      :player_session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a player in matchmaking. When starting a matchmaking request, a player has
    #             a player ID, attributes, and may have latency data. Team information is added after a
    #             match has been successfully completed.</p>
    # @!attribute player_id
    #   <p>A unique identifier for a player</p>
    #   @return [String]
    # @!attribute player_attributes
    #   <p>A collection of key:value pairs containing player information for use in matchmaking.
    #               Player attribute keys must match the <i>playerAttributes</i> used in a
    #               matchmaking rule set. Example: <code>"PlayerAttributes": {"skill": {"N": "23"},
    #                   "gameMode": {"S": "deathmatch"}}</code>.</p>
    #            <p>You can provide up to 10 <code>PlayerAttributes</code>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute team
    #   <p>Name of the team that the player is assigned to in a match. Team names are defined in
    #               a matchmaking rule set.</p>
    #   @return [String]
    # @!attribute latency_in_ms
    #   <p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to a fleet location (Amazon Web Services Regions or custom locations for Amazon GameLift Servers Anywhere fleets). If this property is present, FlexMatch considers placing the match only in
    #               Regions for which latency is reported. </p>
    #            <p>If a matchmaker has a rule that evaluates player latency, players must report latency
    #               in order to be matched. If no latency is reported in this scenario, FlexMatch assumes that
    #               no Regions are available to the player and the ticket is not matchable. </p>
    #   @return [Hash<String, Integer>]
    class Player < Struct.new(
      nil,
      :player_id,
      :player_attributes,
      :team,
      :latency_in_ms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection information for a game client to connect to a game session. This object contains the IP address(es), port(s), and authentication details your game client needs to establish a connection.</p>
    #          <p>
    #             <b>With player gateway enabled:</b> Contains relay endpoints and a player gateway token. Your game client must prepend player gateway token to each payload for validation and connection through relay endpoints.</p>
    #          <p>
    #             <b>With player gateway disabled:</b> Contains game server endpoint. Player gateway token and expiration fields are empty.</p>
    # @!attribute player_id
    #   <p>A unique identifier for a player associated with this connection.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>List of connection endpoints for the game client. Your game client uses these IP address(es) and port(s) to connect to the game session.</p>
    #            <p>When player gateway is enabled, these are relay endpoints with benefits such as DDoS protection. When disabled, this is the game server endpoint.</p>
    #   @return [Array<Types::PlayerConnectionEndpoint>]
    # @!attribute player_gateway_token
    #   <p>Access token that your game client must prepend to all traffic sent through player gateway. Player gateway verifies identity and authorizes connection based on this token.</p>
    #            <p>This value is empty when player gateway is disabled.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>When player gateway is enabled, this is the timestamp indicating when player gateway token expires. Your game backend should call <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetPlayerConnectionDetails.html">GetPlayerConnectionDetails</a> to retrieve fresh connection information for your game clients before this time. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>). </p>
    #            <p>This value is empty when player gateway is disabled.</p>
    #   @return [Time]
    class PlayerConnectionDetail < Struct.new(
      nil,
      :player_id,
      :endpoints,
      :player_gateway_token,
      :expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Network address(es) and port(s) for connecting to a game session. </p>
    # @!attribute ip_address
    #   <p>IP address for connecting to the game session. When player gateway is enabled, this is a player gateway IP address. When player gateway is disabled, this is the game server IP address.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Port number for connecting to the game session. When player gateway is enabled, this is a player gateway port. When player gateway is disabled, this is the game server port.</p>
    #   @return [Integer]
    class PlayerConnectionEndpoint < Struct.new(
      nil,
      :ip_address,
      :port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for player gateway. Use these settings to specify advanced options for how player gateway handles connections.</p>
    # @!attribute game_server_ip_protocol_supported
    #   <p>The IP protocol that your game servers support for player connections through player gateway. If the value is set to <code>IPv4</code>, GameLift will install and execute a lightweight IP translation software on fleet instances to receive and transform incoming IPv6 traffic to IPv4. If the value is set to <code>DUAL_STACK</code>, the lightweight IP translation software will not be installed on fleet instances. <code>DUAL_STACK</code> provides slightly better performance than <code>IPv4</code>.</p>
    #   @return [String]
    class PlayerGatewayConfiguration < Struct.new(
      nil,
      :game_server_ip_protocol_supported,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Regional latency information for a player, used when requesting a new game session.
    #             This value indicates the amount of time lag that exists when the player is connected to
    #             a fleet in the specified location (an Amazon Web Services Region or a custom location for Amazon GameLift Servers Anywhere fleets). The relative difference between a player's latency
    #             values for multiple locations are used to determine which fleets are best suited to place
    #             a new game session for the player. </p>
    # @!attribute player_id
    #   <p>A unique identifier for a player associated with the latency data.</p>
    #   @return [String]
    # @!attribute region_identifier
    #   <p>Name of the Region or custom location that is associated with the latency value. For
    #               Amazon GameLift Servers Anywhere fleets, use the custom location name.</p>
    #   @return [String]
    # @!attribute latency_in_milliseconds
    #   <p>Amount of time that represents the time lag experienced by the player when connected
    #               to the specified Region.</p>
    #   @return [Float]
    class PlayerLatency < Struct.new(
      nil,
      :player_id,
      :region_identifier,
      :latency_in_milliseconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sets a latency cap for individual players when placing a game session. With a latency
    #             policy in force, a game session cannot be placed in a fleet location where a player
    #             reports latency higher than the cap. Latency policies are used only with placement
    #             requests that provide player latency information. Player latency policies can be stacked
    #             to gradually relax latency requirements over time. </p>
    # @!attribute maximum_individual_player_latency_milliseconds
    #   <p>The maximum latency value that is allowed for any player, in milliseconds. All
    #               policies must have a value set for this property.</p>
    #   @return [Integer]
    # @!attribute policy_duration_seconds
    #   <p>The length of time, in seconds, that the policy is enforced while placing a new game
    #               session. A null value for this property means that the policy is enforced until the
    #               queue times out.</p>
    #   @return [Integer]
    class PlayerLatencyPolicy < Struct.new(
      nil,
      :maximum_individual_player_latency_milliseconds,
      :policy_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a player session. Player sessions are created either for a specific game
    #             session, or as part of a game session placement or matchmaking request. A player session
    #             can represent a reserved player slot in a game session (when status is
    #                 <code>RESERVED</code>) or actual player activity in a game session (when status is
    #                 <code>ACTIVE</code>). A player session object, including player data, is
    #             automatically passed to a game session when the player connects to the game session and
    #             is validated. After the game session ends, player session information is retained for
    #             30 days and then removed.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @!attribute player_session_id
    #   <p>A unique identifier for a player session.</p>
    #   @return [String]
    # @!attribute player_id
    #   <p>A unique identifier for a player that is associated with this player session.</p>
    #   @return [String]
    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions that the player session is connected to. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the player's game session is running on.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p> The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift fleet that the player's game session is
    #               running on. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute termination_time
    #   <p>A time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Current status of the player session.</p>
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
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the game session. To connect to a Amazon GameLift Servers game server, an app needs both the IP address and port number.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS identifier assigned to the instance that is running the game session. Values have
    #               the following format:</p>
    #            <ul>
    #               <li>
    #                  <p>TLS-enabled fleets: <code><unique identifier>.<region identifier>.amazongamelift.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Non-TLS-enabled fleets: <code>ec2-<unique identifier>.compute.amazonaws.com</code>. (See
    #               <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses">Amazon EC2 Instance IP Addressing</a>.)</p>
    #               </li>
    #            </ul>
    #            <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Port number for the game session. To connect to a Amazon GameLift Servers server process, an app needs
    #               both the IP address and port number.</p>
    #   @return [Integer]
    # @!attribute player_data
    #   <p>Developer-defined information related to a player. Amazon GameLift Servers does not use this data, so it can be formatted as needed for use in the game. </p>
    #   @return [String]
    class PlayerSession < Struct.new(
      nil,
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
      :player_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Custom prioritization settings to use with a game session queue. Prioritization
    #             settings determine how the queue selects a game hosting resource to start a new game
    #             session. This configuration replaces the default prioritization process for
    #             queues.</p>
    #          <p>By default, a queue makes game session placements based on the following
    #             criteria:</p>
    #          <ul>
    #             <li>
    #                <p>When a game session request does not include player latency data, Amazon GameLift Servers
    #                     places game sessions based on the following priorities: (1) the queue's default
    #                     destination order, and (2) for multi-location fleets, an alphabetic list of
    #                     locations.</p>
    #             </li>
    #             <li>
    #                <p>When a game session request includes player latency data, Amazon GameLift Servers re-orders
    #                     the queue's destinations to make placements where the average player latency is
    #                     lowest. It reorders based on the following priorities: (1) the lowest average
    #                     latency across all players, (2) the lowest hosting cost, (3) the queue's default
    #                     destination order, and (4) for multi-location fleets, an alphabetic list of
    #                     locations.</p>
    #             </li>
    #          </ul>
    # @!attribute priority_order
    #   <p>A custom sequence to use when prioritizing where to place new game sessions. Each
    #               priority type is listed once.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LATENCY</code> -- Amazon GameLift Servers prioritizes locations where the average player
    #                       latency is lowest. Player latency data is provided in each game session
    #                       placement request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COST</code> -- Amazon GameLift Servers prioritizes queue destinations with the lowest
    #                       current hosting costs. Cost is evaluated based on the destination's location,
    #                       instance type, and fleet type (Spot or On-Demand).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESTINATION</code> -- Amazon GameLift Servers prioritizes based on the list order of
    #                       destinations in the queue configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCATION</code> -- Amazon GameLift Servers prioritizes based on the provided order of
    #                       locations, as defined in <code>LocationOrder</code>. </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute location_order
    #   <p>The prioritization order to use for fleet locations, when the
    #                   <code>PriorityOrder</code> property includes <code>LOCATION</code>. Locations can
    #               include Amazon Web Services Region codes (such as <code>us-west-2</code>), local zones, and custom
    #               locations (for Anywhere fleets). Each location must be listed only once. For details, see
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html">Amazon GameLift Servers service locations.</a>
    #            </p>
    #   @return [Array<String>]
    class PriorityConfiguration < Struct.new(
      nil,
      :priority_order,
      :location_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An alternate list of prioritized locations for use with a game session queue. When
    #             this property is included in a <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html">StartGameSessionPlacement</a> request, the alternate list overrides the queue's
    #             default location priorities, as defined in the queue's <a href="gamelift/latest/apireference/API_PriorityConfiguration.html">PriorityConfiguration</a> setting (<i>LocationOrder</i>). The
    #             override is valid for an individual placement request only. Use this property only with
    #             queues that have a <code>PriorityConfiguration</code> setting that prioritizes
    #                 <code>LOCATION</code> first. </p>
    #          <note>
    #             <p>A priority configuration override list does not override a queue's
    #                 FilterConfiguration setting, if the queue has one. Filter configurations are used to
    #                 limit placements to a subset of the locations in a queue's destinations. If the
    #                 override list includes a location that's not in the
    #                     <code>FilterConfiguration</code> allowed list, Amazon GameLift Servers won't attempt to place a
    #                 game session there.</p>
    #          </note>
    # @!attribute placement_fallback_strategy
    #   <p>Instructions for how to proceed if placement fails in every location on the priority
    #               override list. Valid strategies include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT_AFTER_SINGLE_PASS</code> -- After attempting to place a new game session in
    #                       every location on the priority override list, try to place a game session in
    #                       queue's other locations. This is the default behavior.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> -- Limit placements to locations on the priority override list only. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location_order
    #   <p>A prioritized list of hosting locations. The list can include Amazon Web Services Regions (such as
    #                   <code>us-west-2</code>), local zones, and custom locations (for Anywhere fleets).
    #               Each location must be listed only once. For details, see
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html">Amazon GameLift Servers service locations.</a>
    #            </p>
    #   @return [Array<String>]
    class PriorityConfigurationOverride < Struct.new(
      nil,
      :placement_fallback_strategy,
      :location_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to apply this policy to. You can use either the fleet ID or ARN value. The fleet
    #               cannot be in any of the following statuses: ERROR or DELETING.</p>
    #   @return [String]
    # @!attribute scaling_adjustment
    #   <p>Amount of adjustment to make, based on the scaling adjustment type.</p>
    #   @return [Integer]
    # @!attribute scaling_adjustment_type
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
    #   @return [String]
    # @!attribute threshold
    #   <p>Metric value used to trigger a scaling event.</p>
    #   @return [Float]
    # @!attribute comparison_operator
    #   <p>Comparison operator to use when measuring the metric against the threshold
    #               value.</p>
    #   @return [String]
    # @!attribute evaluation_periods
    #   <p>Length of time (in minutes) the metric must be at or beyond the threshold before a
    #               scaling event is triggered.</p>
    #   @return [Integer]
    # @!attribute metric_name
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
    #                       sessions that a fleet could host simultaneously, given current capacity.</p>
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
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of scaling policy to create. For a target-based policy, set the parameter
    #                   <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a
    #                   <i>TargetConfiguration</i>. For a rule-based policy set the following
    #               parameters: <i>MetricName</i>, <i>ComparisonOperator</i>,
    #                   <i>Threshold</i>, <i>EvaluationPeriods</i>,
    #                   <i>ScalingAdjustmentType</i>, and
    #                   <i>ScalingAdjustment</i>.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>An object that contains settings for a target-based scaling policy.</p>
    #   @return [Types::TargetConfiguration]
    class PutScalingPolicyInput < Struct.new(
      nil,
      :name,
      :fleet_id,
      :scaling_adjustment,
      :scaling_adjustment_type,
      :threshold,
      :comparison_operator,
      :evaluation_periods,
      :metric_name,
      :policy_type,
      :target_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>
    #   @return [String]
    class PutScalingPolicyOutput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to register the compute to. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    # @!attribute compute_name
    #   <p>A descriptive label for the compute resource.</p>
    #   @return [String]
    # @!attribute certificate_path
    #   <p>The path to a TLS certificate on your compute resource. Amazon GameLift Servers doesn't validate the
    #               path and certificate.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS name of the compute resource. Amazon GameLift Servers requires either a DNS name or IP
    #               address.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the compute resource. Amazon GameLift Servers requires either a DNS name or IP
    #               address. When registering an Anywhere fleet, an IP address is required.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The name of a custom location to associate with the compute resource being registered.
    #               This parameter is required when registering a compute for an Anywhere fleet.</p>
    #   @return [String]
    class RegisterComputeInput < Struct.new(
      nil,
      :fleet_id,
      :compute_name,
      :certificate_path,
      :dns_name,
      :ip_address,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute compute
    #   <p>The details of the compute resource you registered.</p>
    #   @return [Types::Compute]
    class RegisterComputeOutput < Struct.new(
      nil,
      :compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    #   @return [String]
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server to register. Game server IDs are developer-defined and must be unique
    #               across all game server groups in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The unique identifier for the instance where the game server is running. This ID is
    #               available in the instance metadata. EC2 instance IDs
    #               use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>
    #   @return [String]
    # @!attribute connection_info
    #   <p>Information that is needed to make inbound client connections to the game server. This
    #               might include the IP address and port, DNS name, and other information.</p>
    #   @return [String]
    # @!attribute game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers. </p>
    #   @return [String]
    class RegisterGameServerInput < Struct.new(
      nil,
      :game_server_group_name,
      :game_server_id,
      :instance_id,
      :connection_info,
      :game_server_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server
    #   <p>Object that describes the newly registered game server.</p>
    #   @return [Types::GameServer]
    class RegisterGameServerOutput < Struct.new(
      nil,
      :game_server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute build_id
    #   <p>A unique identifier for the build to get credentials for. You can use either the build ID or ARN value. </p>
    #   @return [String]
    class RequestUploadCredentialsInput < Struct.new(
      nil,
      :build_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute upload_credentials
    #   <p>Amazon Web Services credentials required when uploading a game build to the storage location. These
    #               credentials have a limited lifespan and are valid only for the build they were issued
    #               for.</p>
    #   @return [Types::AwsCredentials]
    # @!attribute storage_location
    #   <p>Amazon S3 path and key, identifying where the game build files are
    #               stored.</p>
    #   @return [Types::S3Location]
    class RequestUploadCredentialsOutput < Struct.new(
      nil,
      :upload_credentials,
      :storage_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The unique identifier of the alias that you want to retrieve a fleet ID for. You can
    #               use either the alias ID or ARN value.</p>
    #   @return [String]
    class ResolveAliasInput < Struct.new(
      nil,
      :alias_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>The fleet identifier that the alias is pointing to.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p> The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift fleet resource that this alias points to.
    #           </p>
    #   @return [String]
    class ResolveAliasOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A policy that puts limits on the number of game sessions that a player can create
    #             within a specified span of time. With this policy, you can control players' ability to
    #             consume available resources.</p>
    #          <p>The policy is evaluated when a player tries to create a new game session. On receiving
    #             a <code>CreateGameSession</code> request, Amazon GameLift Servers checks that the player (identified by
    #                 <code>CreatorId</code>) has created fewer than the game session limit in the specified
    #             time period.</p>
    #          <p>The purpose of this policy is to prevent a single player from consuming a large share of
    #             available hosting resources. For example, setting <code>NewGameSessionsPerCreator</code> to
    #             <code>4</code> and <code>PolicyPeriodInMinutes</code> to <code>10</code> limits each player
    #             to creating 4 game sessions every 10 minutes. Setting these values too high (for example,
    #             200 game sessions every 1000 minutes) still allows a single player to rapidly consume
    #             resources. We recommend keeping these values small.</p>
    # @!attribute new_game_sessions_per_creator
    #   <p>A policy that puts limits on the number of game sessions that a player can create
    #               within a specified span of time. With this policy, you can control players' ability to
    #               consume available resources.</p>
    #            <p>The policy is evaluated when a player tries to create a new game session. On receiving
    #               a <code>CreateGameSession</code> request, Amazon GameLift Servers checks that the player (identified by
    #                   <code>CreatorId</code>) has created fewer than the game session limit in the specified
    #               time period.</p>
    #   @return [Integer]
    # @!attribute policy_period_in_minutes
    #   <p>The time span used in evaluating the resource creation limit policy. </p>
    #   @return [Integer]
    class ResourceCreationLimitPolicy < Struct.new(
      nil,
      :new_game_sessions_per_creator,
      :policy_period_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    #   @return [String]
    # @!attribute resume_actions
    #   <p>The activity to resume for this game server group.</p>
    #   @return [Array<String>]
    class ResumeGameServerGroupInput < Struct.new(
      nil,
      :game_server_group_name,
      :resume_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group
    #   <p>An object that describes the game server group resource, with the
    #                   <code>SuspendedActions</code> property updated to reflect the resumed
    #               activity.</p>
    #   @return [Types::GameServerGroup]
    class ResumeGameServerGroupOutput < Struct.new(
      nil,
      :game_server_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The routing configuration for a fleet alias.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @!attribute type
    #   <p>The type of routing strategy for the alias.</p>
    #            <p>Possible routing types include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>SIMPLE</b> - The alias resolves to one specific
    #                       fleet. Use this type when routing to active fleets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TERMINAL</b> - The alias does not resolve to a
    #                       fleet but instead can be used to display a message to the user. A terminal alias
    #                       throws a TerminalRoutingStrategyException with the message embedded.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that the alias points to. This value is the fleet ID, not the fleet ARN.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message text to be used with a terminal routing strategy.</p>
    #   @return [String]
    class RoutingStrategy < Struct.new(
      nil,
      :type,
      :fleet_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of instructions that define the set of server processes to run on computes in a
    #             fleet. Server processes run either an executable in a custom game build or a Amazon GameLift Servers Realtime
    #             script. Amazon GameLift Servers launches the processes, manages their life cycle, and replaces them as
    #             needed. Computes check regularly for an updated runtime configuration. </p>
    #          <p>An Amazon GameLift Servers instance is limited to 50 processes running concurrently. To calculate the
    #             total number of processes defined in a runtime configuration, add the values of the
    #                 <code>ConcurrentExecutions</code> parameter for each server process. Learn more
    #             about <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html"> Running Multiple
    #                 Processes on a Fleet</a>.</p>
    # @!attribute server_processes
    #   <p>A collection of server process configurations that identify what server processes to
    #               run on fleet computes.</p>
    #   @return [Array<Types::ServerProcess>]
    # @!attribute max_concurrent_game_session_activations
    #   <p>The number of game sessions in status <code>ACTIVATING</code> to allow on an
    #               instance or compute. This setting limits the instance resources that can be
    #               used for new game activations at any one time.</p>
    #   @return [Integer]
    # @!attribute game_session_activation_timeout_seconds
    #   <p>The maximum amount of time (in seconds) allowed to launch a new game session and have
    #               it report ready to host players. During this time, the game session is in status
    #                   <code>ACTIVATING</code>. If the game session does not become active before the
    #               timeout, it is ended and the game session status is changed to
    #               <code>TERMINATED</code>.</p>
    #   @return [Integer]
    class RuntimeConfiguration < Struct.new(
      nil,
      :server_processes,
      :max_concurrent_game_session_activations,
      :game_session_activation_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location in Amazon S3 where build or script files are stored for access by
    #             Amazon GameLift Servers.</p>
    # @!attribute bucket
    #   <p>An Amazon S3 bucket identifier. The name of the S3 bucket.</p>
    #            <note>
    #               <p>Amazon GameLift Servers doesn't support uploading from Amazon S3 buckets with names that contain a dot
    #                   (.).</p>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>The name of the zip file that contains the build files or script files. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift Servers to access the S3 bucket.</p>
    #   @return [String]
    # @!attribute object_version
    #   <p>The version of the file, if object versioning is turned on for the bucket. Amazon GameLift Servers uses
    #               this information when retrieving files from an S3 bucket that you own. Use this
    #               parameter to specify a specific version of the file. If not set, the latest version of
    #               the file is retrieved. </p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :key,
      :role_arn,
      :object_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified by
    #             the combination of name and fleet ID.</p>
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that is associated with this scaling policy.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the scaling policy. The scaling policy can be in force only when in
    #               an <code>ACTIVE</code> status. Scaling policies can be suspended for individual fleets.
    #               If the policy is suspended for a fleet, the policy status does not change.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The scaling policy can be used for
    #                       auto-scaling a fleet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPDATE_REQUESTED</b> -- A request to update the
    #                       scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UPDATING</b> -- A change is being made to the
    #                       scaling policy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETE_REQUESTED</b> -- A request to delete the
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
    #   @return [String]
    # @!attribute scaling_adjustment
    #   <p>Amount of adjustment to make, based on the scaling adjustment type.</p>
    #   @return [Integer]
    # @!attribute scaling_adjustment_type
    #   <p>The type of adjustment to make to a fleet's instance count.</p>
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
    #                       Positive values scale up while negative values scale down.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute comparison_operator
    #   <p>Comparison operator to use when measuring a metric against the threshold value.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>Metric value used to trigger a scaling event.</p>
    #   @return [Float]
    # @!attribute evaluation_periods
    #   <p>Length of time (in minutes) the metric must be at or beyond the threshold before a
    #               scaling event is triggered.</p>
    #   @return [Integer]
    # @!attribute metric_name
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
    #                       sessions that a fleet could host simultaneously, given current capacity.</p>
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
    #   @return [String]
    # @!attribute policy_type
    #   <p>The type of scaling policy to create. For a target-based policy, set the parameter
    #                   <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a
    #                   <i>TargetConfiguration</i>. For a rule-based policy set the following
    #               parameters: <i>MetricName</i>, <i>ComparisonOperator</i>,
    #                   <i>Threshold</i>, <i>EvaluationPeriods</i>,
    #                   <i>ScalingAdjustmentType</i>, and
    #                   <i>ScalingAdjustment</i>.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>An object that contains settings for a target-based scaling policy.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute update_status
    #   <p>The current status of the fleet's scaling policies in a requested fleet location. The
    #               status <code>PENDING_UPDATE</code> indicates that an update was requested for the fleet
    #               but has not yet been completed for the location.</p>
    #   @return [String]
    # @!attribute location
    #   <p> The fleet location. </p>
    #   @return [String]
    class ScalingPolicy < Struct.new(
      nil,
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
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties describing a Realtime script.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script</p>
    #   @return [String]
    # @!attribute script_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers script resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift script ARN, the resource ID matches the
    #                   <i>ScriptId</i> value.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #   @return [String]
    # @!attribute size_on_disk
    #   <p>The file size of the uploaded Realtime script, expressed in bytes. When files are
    #               uploaded from an S3 location, this value remains at "0".</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift Servers to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift Servers uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    #   @return [Types::S3Location]
    # @!attribute node_js_version
    #   <p>The Node.js version used for execution of your Realtime script. The valid values are
    #               <code>10.x | 24.x</code>. By default, <code>NodeJsVersion</code> is <code>10.x</code>.
    #               This value cannot be updated later.
    #           </p>
    #            <note>
    #               <p>Node.js 10 will reach end of support on September 30, 2026. See more details
    #               in the <a href="http://aws.amazon.com/gamelift/faq/nodejs10/">Node.js 10 FAQs</a>. For migration guidance,
    #               see <a href="https://docs.aws.amazon.com/gamelift/latest/realtimeguide/realtime-script.html#realtime-script-nodejs-migration">
    #                   Migrating from Node.js 10 to 24</a>.</p>
    #            </note>
    #   @return [String]
    class Script < Struct.new(
      nil,
      :script_id,
      :script_arn,
      :name,
      :version,
      :size_on_disk,
      :creation_time,
      :storage_location,
      :node_js_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to search for active game sessions. You can use either the fleet ID or ARN
    #               value. Each request must reference either a fleet ID or alias ID, but not both.</p>
    #   @return [String]
    # @!attribute alias_id
    #   <p>A unique identifier for the alias associated with the fleet to search for active game sessions. You can use either
    #               the alias ID or ARN value. Each request must reference either a fleet ID or alias ID,
    #               but not both.</p>
    #   @return [String]
    # @!attribute location
    #   <p>A fleet location to search for game sessions. You can specify a fleet's home Region or
    #               a remote location. Use the Amazon Web Services Region code format, such as <code>us-west-2</code>.
    #           </p>
    #   @return [String]
    # @!attribute filter_expression
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
    #   @return [String]
    # @!attribute sort_expression
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
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set or
    #               is set higher than 20. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #   @return [String]
    class SearchGameSessionsInput < Struct.new(
      nil,
      :fleet_id,
      :alias_id,
      :location,
      :filter_expression,
      :sort_expression,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_sessions
    #   <p>A collection of objects containing game session properties for each session that
    #               matches the request.</p>
    #   @return [Array<Types::GameSession>]
    # @!attribute next_token
    #   <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    #   @return [String]
    class SearchGameSessionsOutput < Struct.new(
      nil,
      :game_sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of instructions for launching server processes on fleet computes. Server
    #             processes run either an executable in a custom game build or a Amazon GameLift Servers Realtime script. Server
    #             process configurations are part of a fleet's runtime configuration.</p>
    # @!attribute launch_path
    #   <p>The location of a game build executable or Realtime script. Game builds and Realtime
    #               scripts are installed on instances at the root: </p>
    #            <ul>
    #               <li>
    #                  <p>Windows (custom game builds only): <code>C:\game</code>. Example:
    #                           "<code>C:\game\MyGame\server.exe</code>" </p>
    #               </li>
    #               <li>
    #                  <p>Linux: <code>/local/game</code>. Examples:
    #                           "<code>/local/game/MyGame/server.exe</code>" or
    #                           "<code>/local/game/MyRealtimeScript.js</code>"</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Amazon GameLift Servers doesn't support the use of setup scripts that launch the game executable.
    #                   For custom game builds, this parameter must indicate the executable that calls the
    #                   server SDK operations <code>initSDK()</code> and <code>ProcessReady()</code>.
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute parameters
    #   <p>An optional list of parameters to pass to the server executable or Realtime script on
    #               launch.</p>
    #   @return [String]
    # @!attribute concurrent_executions
    #   <p>The number of server processes using this configuration that run concurrently on each
    #               instance or compute.</p>
    #   @return [Integer]
    class ServerProcess < Struct.new(
      nil,
      :launch_path,
      :parameters,
      :concurrent_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to restart actions on. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>List of actions to restart on the fleet.</p>
    #   @return [Array<String>]
    # @!attribute location
    #   <p>The fleet location to restart fleet actions for. Specify a location in the form of an
    #               Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    #   @return [String]
    class StartFleetActionsInput < Struct.new(
      nil,
      :fleet_id,
      :actions,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to restart actions on.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    class StartFleetActionsOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute placement_id
    #   <p>A unique identifier to assign to the new game session placement. This value is
    #               developer-defined. The value must be unique across all Regions and cannot be
    #               reused.</p>
    #   @return [String]
    # @!attribute game_session_queue_name
    #   <p>Name of the queue to use to place the new game session. You can use either the queue
    #               name or ARN value. </p>
    #   @return [String]
    # @!attribute game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::GameProperty>]
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #   @return [Integer]
    # @!attribute game_session_name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #   @return [String]
    # @!attribute player_latencies
    #   <p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to a fleet location (Amazon Web Services Regions or custom locations for Amazon GameLift Servers Anywhere fleets). This information is used to try to place the new game session where it
    #               can offer the best possible gameplay experience for the players.
    #               </p>
    #   @return [Array<Types::PlayerLatency>]
    # @!attribute desired_player_sessions
    #   <p>Set of information on each player to create a player session for.</p>
    #   @return [Array<Types::DesiredPlayerSession>]
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>.</p>
    #   @return [String]
    # @!attribute priority_configuration_override
    #   <p>A prioritized list of locations to use for the game session placement and instructions
    #               on how to use it. This list overrides a queue's prioritized location list for this game
    #               session placement request only. You can include Amazon Web Services Regions, local zones, and custom
    #               locations (for Anywhere fleets). You can choose to limit placements to locations on the
    #               override list only, or you can prioritize locations on the override list first and then
    #               fall back to the queue's other locations if needed. Choose a fallback strategy to use in
    #               the event that Amazon GameLift Servers fails to place a game session in any of the locations on the
    #               priority override list. </p>
    #   @return [Types::PriorityConfigurationOverride]
    class StartGameSessionPlacementInput < Struct.new(
      nil,
      :placement_id,
      :game_session_queue_name,
      :game_properties,
      :maximum_player_session_count,
      :game_session_name,
      :player_latencies,
      :desired_player_sessions,
      :game_session_data,
      :priority_configuration_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_placement
    #   <p>Object that describes the newly created game session placement. This object includes
    #               all the information provided in the request, as well as start/end time stamps and
    #               placement status. </p>
    #   @return [Types::GameSessionPlacement]
    class StartGameSessionPlacementOutput < Struct.new(
      nil,
      :game_session_placement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift Servers will generate one in the form of a
    #               UUID. Use this identifier to track the match backfill ticket status and retrieve match
    #               results.</p>
    #   @return [String]
    # @!attribute configuration_name
    #   <p>Name of the matchmaker to use for this request. You can use either the configuration
    #               name or ARN value. The ARN of the matchmaker that was used with the original game
    #               session is listed in the <code>GameSession</code> object, <code>MatchmakerData</code>
    #               property.</p>
    #   @return [String]
    # @!attribute game_session_arn
    #   <p>An identifier for the game session that is unique across all regions. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>. When using FlexMatch as a standalone matchmaking
    #               solution, this parameter is not needed. </p>
    #   @return [String]
    # @!attribute players
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
    #   @return [Array<Types::Player>]
    class StartMatchBackfillInput < Struct.new(
      nil,
      :ticket_id,
      :configuration_name,
      :game_session_arn,
      :players,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute matchmaking_ticket
    #   <p>Ticket representing the backfill matchmaking request. This object includes the
    #               information in the request, ticket status, and match results as generated during the
    #               matchmaking process.</p>
    #   @return [Types::MatchmakingTicket]
    class StartMatchBackfillOutput < Struct.new(
      nil,
      :matchmaking_ticket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift Servers will generate one in the form of a
    #               UUID. Use this identifier to track the matchmaking ticket status and retrieve match
    #               results.</p>
    #   @return [String]
    # @!attribute configuration_name
    #   <p>Name of the matchmaking configuration to use for this request. Matchmaking
    #               configurations must exist in the same Region as this request. You can use either the
    #               configuration name or ARN value.</p>
    #   @return [String]
    # @!attribute players
    #   <p>Information on each player to be matched. This information must include a player ID,
    #               and may contain player attributes and latency data to be used in the matchmaking
    #               process. After a successful match, <code>Player</code> objects contain the name of the
    #               team the player is assigned to.</p>
    #            <p>You can include up to 10 <code>Players</code> in a <code>StartMatchmaking</code>
    #               request.</p>
    #   @return [Array<Types::Player>]
    class StartMatchmakingInput < Struct.new(
      nil,
      :ticket_id,
      :configuration_name,
      :players,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute matchmaking_ticket
    #   <p>Ticket representing the matchmaking request. This object includes the information
    #               included in the request, ticket status, and match results as generated during the
    #               matchmaking process.</p>
    #   @return [Types::MatchmakingTicket]
    class StartMatchmakingOutput < Struct.new(
      nil,
      :matchmaking_ticket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to stop actions on. You can use either the fleet ID or ARN value.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>List of actions to suspend on the fleet. </p>
    #   @return [Array<String>]
    # @!attribute location
    #   <p>The fleet location to stop fleet actions for. Specify a location in the form of an
    #               Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    #   @return [String]
    class StopFleetActionsInput < Struct.new(
      nil,
      :fleet_id,
      :actions,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to stop actions on.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    class StopFleetActionsOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute placement_id
    #   <p>A unique identifier for a game session placement to stop.</p>
    #   @return [String]
    class StopGameSessionPlacementInput < Struct.new(
      nil,
      :placement_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_placement
    #   <p>Object that describes the canceled game session placement, with <code>CANCELLED</code>
    #               status and an end time stamp. </p>
    #   @return [Types::GameSessionPlacement]
    class StopGameSessionPlacementOutput < Struct.new(
      nil,
      :game_session_placement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ticket_id
    #   <p>A unique identifier for a matchmaking ticket.</p>
    #   @return [String]
    class StopMatchmakingInput < Struct.new(
      nil,
      :ticket_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopMatchmakingOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a support container in a container group. A support container might be in a game
    #       server container group or a per-instance container group. Support containers don't run game
    #       server processes.</p>
    #          <p>You can update a support container definition and deploy the updates to an existing fleet.
    #       When creating or updating a game server container group definition, use the property
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerContainerDefinitionInput.html">GameServerContainerDefinitionInput</a>. </p>
    #          <p>
    #             <b>Part of:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a>
    #          </p>
    #          <p>
    #             <b>Returned by:</b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeContainerGroupDefinition.html">DescribeContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitions.html">ListContainerGroupDefinitions</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitionVersions.html">ListContainerGroupDefinitionVersions</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>
    #          </p>
    # @!attribute container_name
    #   <p>The container definition identifier. Container names are unique within a container group
    #         definition. </p>
    #   @return [String]
    # @!attribute depends_on
    #   <p>Indicates that the container relies on the status of other containers in the same
    #         container group during its startup and shutdown sequences. A container might have dependencies
    #         on multiple containers.</p>
    #   @return [Array<Types::ContainerDependency>]
    # @!attribute mount_points
    #   <p>A mount point that binds a path inside the container to a file or directory on the host
    #         system and lets it access the file or directory.</p>
    #   @return [Array<Types::ContainerMountPoint>]
    # @!attribute environment_override
    #   <p>A set of environment variables that's passed to the container on startup. See the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html#ECS-Type-ContainerDefinition-environment">ContainerDefinition::environment</a> parameter in the <i>Amazon Elastic Container Service API
    #           Reference</i>.</p>
    #   @return [Array<Types::ContainerEnvironment>]
    # @!attribute essential
    #   <p>Indicates whether the container is vital to the container group. If an essential container
    #         fails, the entire container group restarts.</p>
    #   @return [Boolean]
    # @!attribute health_check
    #   <p>A configuration for a non-terminal health check. A support container automatically
    #         restarts if it stops functioning or if it fails this health check. </p>
    #   @return [Types::ContainerHealthCheck]
    # @!attribute image_uri
    #   <p>The URI to the image that Amazon GameLift Servers deploys to a container fleet. For a more specific
    #         identifier, see <code>ResolvedImageDigest</code>. </p>
    #   @return [String]
    # @!attribute memory_hard_limit_mebibytes
    #   <p>The amount of memory that Amazon GameLift Servers makes available to the container. If memory limits
    #         aren't set for an individual container, the container shares the container group's total
    #         memory allocation.</p>
    #            <p>
    #               <b>Related data type: </b>
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition TotalMemoryLimitMebibytes</a>
    #            </p>
    #   @return [Integer]
    # @!attribute port_configuration
    #   <p>A set of ports that allow access to the container from external users. Processes running
    #         in the container can bind to one of these ports. Container ports aren't directly accessed by
    #         inbound traffic. Amazon GameLift Servers maps these container ports to externally accessible connection ports,
    #         which are assigned as needed from the container fleet's
    #         <code>ConnectionPortRange</code>.</p>
    #   @return [Types::ContainerPortConfiguration]
    # @!attribute resolved_image_digest
    #   <p>A unique and immutable identifier for the container image. The digest is a SHA 256 hash of
    #         the container image manifest. </p>
    #   @return [String]
    # @!attribute vcpu
    #   <p>The number of vCPU units that are reserved for the container. If no resources are
    #         reserved, the container shares the total vCPU limit for the container group.</p>
    #            <p>
    #               <b>Related data type: </b>
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition TotalVcpuLimit</a>
    #            </p>
    #   @return [Float]
    # @!attribute linux_capabilities
    #   <p>Linux-specific modifications that are applied to the default Docker container configuration, such as Linux capabilities. For more information see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_LinuxCapabilities.html">LinuxCapabilities</a>.</p>
    #   @return [Types::LinuxCapabilities]
    class SupportContainerDefinition < Struct.new(
      nil,
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
      :vcpu,
      :linux_capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a support container in a container group. You can define a support container in
    #       either a game server container group or a per-instance container group. Support containers
    #       don't run game server processes.</p>
    #          <p>This definition includes container configuration, resources, and start instructions. Use
    #       this data type when creating or updating a container group definition. For properties of a
    #       deployed support container, see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_SupportContainerDefinition.html">SupportContainerDefinition</a>.</p>
    #          <p>
    #             <b>Use with: </b>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html">CreateContainerGroupDefinition</a>,
    #       <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html">UpdateContainerGroupDefinition</a>
    #          </p>
    # @!attribute container_name
    #   <p>A string that uniquely identifies the container definition within a container
    #         group.</p>
    #   @return [String]
    # @!attribute depends_on
    #   <p>Establishes dependencies between this container and the status of other containers in the
    #         same container group. A container can have dependencies on multiple different containers. </p>
    #            <p>You can use dependencies to establish a startup/shutdown sequence across the container
    #         group. For example, you might specify that <i>ContainerB</i> has a
    #           <code>START</code> dependency on <i>ContainerA</i>. This dependency means that
    #           <i>ContainerB</i> can't start until after <i>ContainerA</i> has
    #         started. This dependency is reversed on shutdown, which means that
    #           <i>ContainerB</i> must shut down before <i>ContainerA</i> can
    #         shut down. </p>
    #   @return [Array<Types::ContainerDependency>]
    # @!attribute mount_points
    #   <p>A mount point that binds a path inside the container to a file or directory on the host
    #         system and lets it access the file or directory.</p>
    #   @return [Array<Types::ContainerMountPoint>]
    # @!attribute environment_override
    #   <p>A set of environment variables to pass to the container on startup. See the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html#ECS-Type-ContainerDefinition-environment">ContainerDefinition::environment</a> parameter in the <i>Amazon Elastic Container Service API
    #           Reference</i>. </p>
    #   @return [Array<Types::ContainerEnvironment>]
    # @!attribute essential
    #   <p>Flags the container as vital for the container group to function properly. If an essential
    #         container fails, the entire container group restarts. At least one support container in a
    #         per-instance container group must be essential. When flagging a container as essential, also
    #         configure a health check so that the container can signal that it's healthy. </p>
    #   @return [Boolean]
    # @!attribute health_check
    #   <p>Configuration for a non-terminal health check. A container automatically restarts if it
    #         stops functioning. With a health check, you can define additional reasons to flag a container
    #         as unhealthy and restart it. If an essential container fails a health check, the entire
    #         container group restarts. </p>
    #   @return [Types::ContainerHealthCheck]
    # @!attribute image_uri
    #   <p>The location of the container image to deploy to a container fleet. Provide an image in an
    #         Amazon Elastic Container Registry public or private repository. The repository must be in the same Amazon Web Services account and
    #         Amazon Web Services Region where you're creating the container group definition. For limits on image size,
    #         see <a href="https://docs.aws.amazon.com/general/latest/gr/gamelift.html">Amazon GameLift Servers endpoints and
    #           quotas</a>. You can use any of the following image URI formats: </p>
    #            <ul>
    #               <li>
    #                  <p>Image ID only: <code>[AWS account].dkr.ecr.[AWS region].amazonaws.com/[repository
    #             ID]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Image ID and digest: <code>[AWS account].dkr.ecr.[AWS
    #             region].amazonaws.com/[repository ID]@[digest]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Image ID and tag: <code>[AWS account].dkr.ecr.[AWS region].amazonaws.com/[repository
    #             ID]:[tag]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute memory_hard_limit_mebibytes
    #   <p>A specified amount of memory (in MiB) to reserve for this container. If you don't specify
    #         a container-specific memory limit, the container shares the container group's total memory
    #         allocation. </p>
    #            <p>
    #               <b>Related data type: </b>
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a>
    #               <code>TotalMemoryLimitMebibytes</code>
    #            </p>
    #   @return [Integer]
    # @!attribute port_configuration
    #   <p>A set of ports that Amazon GameLift Servers can assign to processes in a container. The container port
    #         configuration must have enough ports for each container process that accepts inbound traffic
    #         connections. A container port configuration can have one or more container port
    #         ranges. Each range specifies starting and ending values as well as the supported network
    #         protocol.</p>
    #            <p>Container ports aren't directly accessed by inbound traffic. Amazon GameLift Servers maps each container
    #         port to an externally accessible connection port (see the container fleet property
    #           <code>ConnectionPortRange</code>). </p>
    #   @return [Types::ContainerPortConfiguration]
    # @!attribute vcpu
    #   <p>The number of vCPU units to reserve for this container. The container can use more
    #         resources when needed, if available. If you don't reserve vCPU units for this container, it
    #         shares the container group's total vCPU limit.</p>
    #            <p>
    #               <b>Related data type: </b>
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html">ContainerGroupDefinition</a> TotalVcpuLimit
    #       </p>
    #   @return [Float]
    # @!attribute linux_capabilities
    #   <p>Linux-specific modifications that are applied to the default Docker container configuration, such as Linux capabilities. For more information see <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_LinuxCapabilities.html">LinuxCapabilities</a>.</p>
    #   @return [Types::LinuxCapabilities]
    class SupportContainerDefinitionInput < Struct.new(
      nil,
      :container_name,
      :depends_on,
      :mount_points,
      :environment_override,
      :essential,
      :health_check,
      :image_uri,
      :memory_hard_limit_mebibytes,
      :port_configuration,
      :vcpu,
      :linux_capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    #   @return [String]
    # @!attribute suspend_actions
    #   <p>The activity to suspend for this game server group.</p>
    #   @return [Array<String>]
    class SuspendGameServerGroupInput < Struct.new(
      nil,
      :game_server_group_name,
      :suspend_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group
    #   <p>An object that describes the game server group resource, with the
    #                   <code>SuspendedActions</code> property updated to reflect the suspended
    #               activity.</p>
    #   @return [Types::GameServerGroup]
    class SuspendGameServerGroupOutput < Struct.new(
      nil,
      :game_server_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A label that you can assign to a Amazon GameLift Servers resource. </p>
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
    # @!attribute key
    #   <p>The key for a developer-defined key value pair for tagging an Amazon Web Services resource. </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for a developer-defined key value pair for tagging an Amazon Web Services resource. </p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that uniquely identifies
    #               the Amazon GameLift Servers resource that you want to assign tags to. Amazon GameLift Servers includes resource ARNs in
    #               the data object for the resource. You can retrieve the ARN by calling a
    #                   <code>List</code> or <code>Describe</code> operation for the resource type. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of one or more tags to assign to the specified Amazon GameLift Servers resource. Tags are
    #               developer-defined and structured as key-value pairs. The maximum tag limit may be lower
    #               than stated. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">
    #                   Tagging Amazon Web Services Resources</a> for tagging limits.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested tagging operation did not succeed. This may be due to invalid tag format
    #             or the maximum tag limit may have been exceeded. Resolve the issue before
    #             retrying.</p>
    # @!attribute message
    #   @return [String]
    class TaggingFailedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for a target-based scaling policy. A target-based policy tracks a particular
    #             fleet metric and specifies a target value for the metric. As player usage changes, the
    #             policy triggers Amazon GameLift Servers to adjust capacity so that the metric returns to the target
    #             value. The target configuration specifies settings as needed for the target based
    #             policy, including the target value. </p>
    # @!attribute target_value
    #   <p>Desired value to use with a target-based scaling policy. The value must be relevant
    #               for whatever metric the scaling policy is using. For example, in a policy using the
    #               metric PercentAvailableGameSessions, the target value should be the preferred size of
    #               the fleet's buffer (the percent of capacity that should be idle and ready for new game
    #               sessions).</p>
    #   @return [Float]
    class TargetConfiguration < Struct.new(
      nil,
      :target_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for a
    #             target-based scaling policy as part of a <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameServerGroupAutoScalingPolicy.html">GameServerGroupAutoScalingPolicy</a> . These settings are used to create a
    #             target-based policy that tracks the Amazon GameLift Servers FleetIQ metric
    #                 <code>"PercentUtilizedGameServers"</code> and specifies a target value for the
    #             metric. As player usage changes, the policy triggers to adjust the game server group
    #             capacity so that the metric returns to the target value. </p>
    # @!attribute target_value
    #   <p>Desired value to use with a game server group target-based scaling policy. </p>
    #   @return [Float]
    class TargetTrackingConfiguration < Struct.new(
      nil,
      :target_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is unable to resolve the routing for a particular alias because it has a
    #             terminal <code>RoutingStrategy</code> associated with it. The message returned in this
    #             exception is the message defined in the routing strategy itself. Such requests should
    #             only be retried if the routing strategy for the specified alias is modified. </p>
    # @!attribute message
    #   @return [String]
    class TerminalRoutingStrategyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions to be terminated. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute termination_mode
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
    #   @return [String]
    class TerminateGameSessionInput < Struct.new(
      nil,
      :game_session_id,
      :termination_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session
    #   <p>Properties describing a game session.</p>
    #            <p>A game session in ACTIVE status can host players. When a game session ends, its status
    #               is set to <code>TERMINATED</code>. </p>
    #            <p>Amazon GameLift Servers retains a game session resource for 30 days after the game session ends. You
    #               can reuse idempotency token values after this time. Game session logs are retained for
    #               14 days.</p>
    #            <p>
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #            </p>
    #   @return [Types::GameSession]
    class TerminateGameSessionOutput < Struct.new(
      nil,
      :game_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The domain name and port information for a UDP endpoint.</p>
    # @!attribute domain
    #   <p>The domain name of the UDP endpoint.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number of the UDP endpoint. For Amazon GameLift Servers ping
    #                   beacons, this is typically port 7770.</p>
    #   @return [Integer]
    class UDPEndpoint < Struct.new(
      nil,
      :domain,
      :port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client failed authentication. Clients should not retry such requests.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation is not supported in the Region specified.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedRegionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that uniquely identifies
    #               the Amazon GameLift Servers resource that you want to remove tags from. Amazon GameLift Servers includes resource ARNs in
    #               the data object for the resource. You can retrieve the ARN by calling a
    #                   <code>List</code> or <code>Describe</code> operation for the resource type. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of one or more tag keys to remove from the specified Amazon GameLift Servers resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>A unique identifier for the alias that you want to update. You can use either the
    #               alias ID or ARN value.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the alias.</p>
    #   @return [String]
    # @!attribute routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the
    #               alias.</p>
    #   @return [Types::RoutingStrategy]
    class UpdateAliasInput < Struct.new(
      nil,
      :alias_id,
      :name,
      :description,
      :routing_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias
    #   <p>The updated alias resource.</p>
    #   @return [Types::Alias]
    class UpdateAliasOutput < Struct.new(
      nil,
      :alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute build_id
    #   <p>A unique identifier for the build to update. You can use either the build ID or ARN value. </p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. </p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #   @return [String]
    class UpdateBuildInput < Struct.new(
      nil,
      :build_id,
      :name,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute build
    #   <p>The updated build resource.</p>
    #   @return [Types::Build]
    class UpdateBuildOutput < Struct.new(
      nil,
      :build,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the container fleet to update. You can use either the fleet ID
    #               or ARN value.</p>
    #   @return [String]
    # @!attribute game_server_container_group_definition_name
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
    #   @return [String]
    # @!attribute per_instance_container_group_definition_name
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
    #   @return [String]
    # @!attribute game_server_container_groups_per_instance
    #   <p>The number of times to replicate the game server container group on each fleet
    #               instance. By default, Amazon GameLift Servers calculates the maximum number of game server container
    #               groups that can fit on each instance. You can remove this property value to use the
    #               calculated value, or set it manually. If you set this number manually, Amazon GameLift Servers uses your
    #               value as long as it's less than the calculated maximum.</p>
    #   @return [Integer]
    # @!attribute instance_connection_port_range
    #   <p>A revised set of port numbers to open on each fleet instance. By default, Amazon GameLift Servers
    #               calculates an optimal port range based on your fleet configuration. If you previously
    #               set this parameter manually, you can't reset this to use the calculated settings.</p>
    #            <p>The port range must not overlap with the Amazon GameLift Servers reserved port range
    #               <code>4092-4191</code>. This range is reserved for internal Amazon GameLift Servers
    #               services.</p>
    #   @return [Types::ConnectionPortRange]
    # @!attribute instance_inbound_permission_authorizations
    #   <p>A set of ports to add to the container fleet's inbound permissions.</p>
    #            <p>The port range must not overlap with the Amazon GameLift Servers reserved port range
    #               <code>4092-4191</code>. This range is reserved for internal Amazon GameLift Servers
    #               services.</p>
    #   @return [Array<Types::IpPermission>]
    # @!attribute instance_inbound_permission_revocations
    #   <p>A set of ports to remove from the container fleet's inbound permissions.</p>
    #   @return [Array<Types::IpPermission>]
    # @!attribute deployment_configuration
    #   <p>Instructions for how to deploy updates to a container fleet, if the fleet update
    #               initiates a deployment. The deployment configuration lets you determine how to replace
    #               fleet instances and what actions to take if the deployment fails.</p>
    #   @return [Types::DeploymentConfiguration]
    # @!attribute description
    #   <p>A meaningful description of the container fleet.</p>
    #   @return [String]
    # @!attribute metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to.  </p>
    #   @return [Array<String>]
    # @!attribute new_game_session_protection_policy
    #   <p>The game session protection policy to apply to all new game sessions that are started
    #               in this fleet. Game sessions that already exist are not affected. </p>
    #   @return [String]
    # @!attribute game_session_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that each individual player can create
    #               on instances in this fleet. The limit applies for a specified span of time.</p>
    #   @return [Types::GameSessionCreationLimitPolicy]
    # @!attribute log_configuration
    #   <p>The method for collecting container logs for the fleet. </p>
    #   @return [Types::LogConfiguration]
    # @!attribute remove_attributes
    #   <p>If set, this update removes a fleet's per-instance container group definition. You
    #               can't remove a fleet's game server container group definition.</p>
    #   @return [Array<String>]
    class UpdateContainerFleetInput < Struct.new(
      nil,
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
      :remove_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_fleet
    #   <p>A collection of container fleet objects for all fleets that match the request
    #               criteria.</p>
    #   @return [Types::ContainerFleet]
    class UpdateContainerFleetOutput < Struct.new(
      nil,
      :container_fleet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive identifier for the container group definition. The name value must be unique in an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute game_server_container_definition
    #   <p>An updated definition for the game server container in this group. Define a game server
    #         container only when the container group type is <code>GAME_SERVER</code>. You can pass in your
    #         container definitions as a JSON file.</p>
    #   @return [Types::GameServerContainerDefinitionInput]
    # @!attribute support_container_definitions
    #   <p>One or more definitions for support containers in this group. You can define a support
    #         container in any type of container group. You can pass in your container definitions as a JSON
    #         file.</p>
    #   @return [Array<Types::SupportContainerDefinitionInput>]
    # @!attribute total_memory_limit_mebibytes
    #   <p>The maximum amount of memory (in MiB) to allocate to the container group. All containers in
    #         the group share this memory. If you specify memory limits for an individual container, the
    #         total value must be greater than any individual container's memory limit.</p>
    #   @return [Integer]
    # @!attribute total_vcpu_limit
    #   <p>The maximum amount of vCPU units to allocate to the container group (1 vCPU is equal to 1024
    #         CPU units). All containers in the group share these resources. If you set vCPU reservations for
    #         individual containers, the total value must be equal to or greater than the sum of the
    #         <code>Vcpu</code> values for all containers in the group.</p>
    #            <p>For a game server container group, Amazon GameLift Servers requires either a total vCPU limit or a
    #         <code>Vcpu</code> value for the game server container. If the container group has a total vCPU
    #         limit, Amazon GameLift Servers uses this value to calculate how many game server container groups fit on an
    #         instance. If the container group doesn't have a total vCPU limit, its containers can use up to
    #         the instance's available vCPU, and Amazon GameLift Servers uses the sum of the containers' <code>Vcpu</code>
    #         values to calculate how many game server container groups fit on an instance. To remove the
    #         total vCPU limit, omit this parameter and set <code>RemoveAttributes</code> to
    #         <code>TOTAL_VCPU_LIMIT</code>.</p>
    #   @return [Float]
    # @!attribute version_description
    #   <p>A description for this update to the container group definition. </p>
    #   @return [String]
    # @!attribute source_version_number
    #   <p>The container group definition version to update. The new version starts with values from
    #         the source version, and then updates values included in this request. </p>
    #   @return [Integer]
    # @!attribute operating_system
    #   <p>The platform that all containers in the group use. Containers in a group must run on the
    #         same operating system.</p>
    #            <note>
    #               <p>Amazon Linux 2 (AL2) will reach end of support on 6/30/2026. See more details in the <a href="http://aws.amazon.com/amazon-linux-2/faqs/">Amazon Linux 2 FAQs</a>. For game
    #         servers that are hosted on AL2 and use server SDK version 4.x for Amazon GameLift Servers, first update the game
    #           server build to server SDK 5.x, and then deploy to AL2023 instances. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html"> Migrate to
    #             server SDK version 5.</a>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute remove_attributes
    #   <p>If set, this update removes the container group's total vCPU limit, and the group's
    #         containers can use up to the instance's available vCPU. You can't remove the total vCPU limit
    #         from a per-instance container group. A game server container group needs either a total vCPU
    #         limit or a <code>Vcpu</code> value for the game server container. You can't set
    #         <code>TotalVcpuLimit</code> in the same request.</p>
    #   @return [Array<String>]
    class UpdateContainerGroupDefinitionInput < Struct.new(
      nil,
      :name,
      :game_server_container_definition,
      :support_container_definitions,
      :total_memory_limit_mebibytes,
      :total_vcpu_limit,
      :version_description,
      :source_version_number,
      :operating_system,
      :remove_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_group_definition
    #   <p>The properties of the updated container group definition version.</p>
    #   @return [Types::ContainerGroupDefinition]
    class UpdateContainerGroupDefinitionOutput < Struct.new(
      nil,
      :container_group_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to update attribute metadata for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of a fleet.</p>
    #   @return [String]
    # @!attribute new_game_session_protection_policy
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
    #   @return [String]
    # @!attribute resource_creation_limit_policy
    #   <p>Policy settings that limit the number of game sessions an individual player can create
    #               over a span of time. </p>
    #   @return [Types::ResourceCreationLimitPolicy]
    # @!attribute metric_groups
    #   <p>The name of a metric group to add this fleet to. Use a metric group in Amazon
    #               CloudWatch to aggregate the metrics from multiple fleets. Provide an existing metric
    #               group name, or create a new metric group by providing a new name. A fleet can only be in
    #               one metric group at a time.</p>
    #   @return [Array<String>]
    # @!attribute anywhere_configuration
    #   <p>Amazon GameLift Servers Anywhere configuration options.</p>
    #   @return [Types::AnywhereConfiguration]
    class UpdateFleetAttributesInput < Struct.new(
      nil,
      :fleet_id,
      :name,
      :description,
      :new_game_session_protection_policy,
      :resource_creation_limit_policy,
      :metric_groups,
      :anywhere_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was updated.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    class UpdateFleetAttributesOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to update capacity settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute desired_instances
    #   <p>The number of Amazon EC2 instances you want to maintain in the specified fleet location.
    #               This value must fall between the minimum and maximum size limits. Changes in desired
    #               instance value can take up to 1 minute to be reflected when viewing the fleet's capacity
    #               settings.</p>
    #   @return [Integer]
    # @!attribute min_size
    #   <p>The minimum number of instances that are allowed in the specified fleet location. If
    #               this parameter is not set, the default is 0. This parameter cannot be set when using a
    #               ManagedCapacityConfiguration where ZeroCapacityStrategy has a value of SCALE_TO_AND_FROM_ZERO.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum number of instances that are allowed in the specified fleet location. If
    #               this parameter is not set, the default is 1.</p>
    #   @return [Integer]
    # @!attribute location
    #   <p>The name of a remote location to update fleet capacity settings for, in the form of an
    #               Amazon Web Services Region code such as <code>us-west-2</code>.</p>
    #   @return [String]
    # @!attribute managed_capacity_configuration
    #   <p>Configuration for Amazon GameLift Servers-managed capacity scaling options.</p>
    #   @return [Types::ManagedCapacityConfiguration]
    class UpdateFleetCapacityInput < Struct.new(
      nil,
      :fleet_id,
      :desired_instances,
      :min_size,
      :max_size,
      :location,
      :managed_capacity_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was updated.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>
    #   @return [String]
    # @!attribute location
    #   <p>The remote location being updated, expressed as an Amazon Web Services Region code, such as
    #               <code>us-west-2</code>.</p>
    #   @return [String]
    # @!attribute managed_capacity_configuration
    #   <p>Configuration for Amazon GameLift Servers-managed capacity scaling options.</p>
    #   @return [Types::ManagedCapacityConfiguration]
    class UpdateFleetCapacityOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :location,
      :managed_capacity_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to update port settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute inbound_permission_authorizations
    #   <p>A collection of port settings to be added to the fleet resource.</p>
    #   @return [Array<Types::IpPermission>]
    # @!attribute inbound_permission_revocations
    #   <p>A collection of port settings to be removed from the fleet resource.</p>
    #   @return [Array<Types::IpPermission>]
    class UpdateFleetPortSettingsInput < Struct.new(
      nil,
      :fleet_id,
      :inbound_permission_authorizations,
      :inbound_permission_revocations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet that was updated.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>.</p>
    #   @return [String]
    class UpdateFleetPortSettingsOutput < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the name or ARN value.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift Servers to access your Amazon EC2 Auto Scaling groups.</p>
    #   @return [String]
    # @!attribute instance_definitions
    #   <p>An updated list of Amazon EC2 instance types to use in the Auto Scaling group. The instance
    #               definitions must specify at least two different instance types that are supported by
    #               Amazon GameLift Servers FleetIQ. This updated list replaces the entire current list of instance definitions for
    #               the game server group. For more information on instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">EC2 Instance
    #                   Types</a> in the <i>Amazon EC2 User Guide</i>. You can optionally
    #               specify capacity weighting for each instance type. If no weight value is specified for
    #               an instance type, it is set to the default value "1". For more information about
    #               capacity weighting, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html"> Instance Weighting for
    #                   Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>
    #   @return [Array<Types::InstanceDefinition>]
    # @!attribute game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected
    #               from early termination. Unprotected instances that have active game servers running might
    #               be terminated during a scale-down event, causing players to be dropped from the game.
    #               Protected instances cannot be terminated while there are active game servers running except
    #               in the event of a forced game server group deletion. An exception to this is with Spot
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>
    #   @return [String]
    # @!attribute balancing_strategy
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
    #   @return [String]
    class UpdateGameServerGroupInput < Struct.new(
      nil,
      :game_server_group_name,
      :role_arn,
      :instance_definitions,
      :game_server_protection_policy,
      :balancing_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group
    #   <p>An object that describes the game server group resource with updated properties.
    #           </p>
    #   @return [Types::GameServerGroup]
    class UpdateGameServerGroupOutput < Struct.new(
      nil,
      :game_server_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.</p>
    #   @return [String]
    # @!attribute game_server_id
    #   <p>A custom string that uniquely identifies the game server to update.</p>
    #   @return [String]
    # @!attribute game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers. </p>
    #   @return [String]
    # @!attribute utilization_status
    #   <p>Indicates if the game server is available or is currently hosting gameplay. You can
    #               update a game server status from <code>AVAILABLE</code> to <code>UTILIZED</code>, but
    #               you can't change the status from <code>UTILIZED</code> to
    #               <code>AVAILABLE</code>.</p>
    #   @return [String]
    # @!attribute health_check
    #   <p>Indicates health status of the game server. A request that includes this parameter
    #               updates the game server's <i>LastHealthCheckTime</i> timestamp. </p>
    #   @return [String]
    class UpdateGameServerInput < Struct.new(
      nil,
      :game_server_group_name,
      :game_server_id,
      :game_server_data,
      :utilization_status,
      :health_check,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_server
    #   <p>Object that describes the newly updated game server.</p>
    #   @return [Types::GameServer]
    class UpdateGameServerOutput < Struct.new(
      nil,
      :game_server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_id
    #   <p>An identifier for the game session that is unique across all regions to update. The value is always a full ARN in the following format: For Home Region game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<ID string></code>. For Remote Location game session - <code>arn:aws:gamelift:<home_region>::gamesession/<fleet ID>/<location>/<ID string></code>.</p>
    #   @return [String]
    # @!attribute maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #   @return [String]
    # @!attribute player_session_creation_policy
    #   <p>A policy that determines whether the game session is accepting new players.</p>
    #   @return [String]
    # @!attribute protection_policy
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
    #   @return [String]
    # @!attribute game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>.
    #           You can use this parameter to modify game properties in an active game session.
    #           This action adds new properties and modifies existing properties.
    #           There is no way to delete properties.
    #           For an example, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-update">Update the value of a game property</a>.
    #         </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::GameProperty>]
    class UpdateGameSessionInput < Struct.new(
      nil,
      :game_session_id,
      :maximum_player_session_count,
      :name,
      :player_session_creation_policy,
      :protection_policy,
      :game_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session
    #   <p>The updated game session properties.</p>
    #   @return [Types::GameSession]
    class UpdateGameSessionOutput < Struct.new(
      nil,
      :game_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>
    #   @return [String]
    # @!attribute timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>
    #            <note>
    #               <p>The minimum value is 10 and the maximum value is 600.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute player_latency_policies
    #   <p>A set of policies that enforce a sliding cap on player latency when processing game sessions placement requests.
    #   	Use multiple policies to gradually relax the cap over time if Amazon GameLift Servers can't make a placement.
    #   	    Policies are evaluated in order starting with the lowest maximum latency value. When updating policies, provide a complete collection of policies.</p>
    #   @return [Array<Types::PlayerLatencyPolicy>]
    # @!attribute destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference. When updating this list, provide a complete list of destinations.</p>
    #   @return [Array<Types::GameSessionQueueDestination>]
    # @!attribute filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is
    #               not set, game sessions can be placed in any queue location. To remove an existing filter configuration, pass in an empty set.</p>
    #   @return [Types::FilterConfiguration]
    # @!attribute priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly
    #               named will be automatically applied at the end of the prioritization process. To remove an existing priority configuration, pass in an empty set.</p>
    #   @return [Types::PriorityConfiguration]
    # @!attribute custom_event_data
    #   <p>Information to be added to all events that are related to this game session
    #               queue.</p>
    #   @return [String]
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html"> Setting up
    #                   notifications for game session placement</a>.</p>
    #   @return [String]
    class UpdateGameSessionQueueInput < Struct.new(
      nil,
      :name,
      :timeout_in_seconds,
      :player_latency_policies,
      :destinations,
      :filter_configuration,
      :priority_configuration,
      :custom_event_data,
      :notification_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute game_session_queue
    #   <p>An object that describes the newly updated game session queue.</p>
    #   @return [Types::GameSessionQueue]
    class UpdateGameSessionQueueOutput < Struct.new(
      nil,
      :game_session_queue,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique identifier for the matchmaking configuration to update. You can use either the configuration name or ARN value. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the matchmaking configuration.</p>
    #   @return [String]
    # @!attribute game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a Amazon GameLift Servers game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               Amazon GameLift Servers-hosted game sessions for matches that are created with this matchmaking
    #               configuration. A matchmaking configuration supports only one queue; if you specify
    #               more than one ARN, the request fails with an <code>InvalidRequestException</code>.
    #               If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not set this
    #               parameter.</p>
    #   @return [Array<String>]
    # @!attribute request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    #   @return [Integer]
    # @!attribute acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required.</p>
    #   @return [Integer]
    # @!attribute acceptance_required
    #   <p>A flag that indicates whether a match that was created with this configuration must be
    #               accepted by the matched players. To require acceptance, set to TRUE. With this option
    #               enabled, matchmaking tickets use the status <code>REQUIRES_ACCEPTANCE</code> to indicate
    #               when a completed potential match is waiting for player acceptance. </p>
    #   @return [Boolean]
    # @!attribute rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
    #               value. A matchmaking configuration can only use rule sets that are defined in the same
    #               Region.</p>
    #   @return [String]
    # @!attribute notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #                   Setting up notifications for matchmaking</a> for more information.</p>
    #   @return [String]
    # @!attribute additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
    #                   <code>STANDALONE</code>.</p>
    #   @return [Integer]
    # @!attribute custom_event_data
    #   <p>Information to add to all events related to the matchmaking configuration. </p>
    #   @return [String]
    # @!attribute game_properties
    #   <p>A set of key-value pairs that can store custom data in a game session.
    #     For example: <code>{"Key": "difficulty", "Value": "novice"}</code>. This information is added to the new <code>GameSession</code> object that is
    #               created for a successful match. This parameter is not used if <code>FlexMatchMode</code>
    #               is set to <code>STANDALONE</code>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Avoid using periods (".") in property keys if you plan to search for game sessions by properties. Property keys containing periods cannot be searched and will be filtered out from search results due to search index limitations.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you use SearchGameSessions API, there is a limit of 500 game property keys across all game sessions and all fleets per region. If the limit is exceeded, there will potentially be game session entries missing from SearchGameSessions API results.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::GameProperty>]
    # @!attribute game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process with a request to start a new game session. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>. This information is added to the game session
    #               that is created for a successful match. This parameter is not used if
    #                   <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #   @return [String]
    # @!attribute backfill_mode
    #   <p>The method that is used to backfill game sessions created with this matchmaking
    #               configuration. Specify MANUAL when your game manages backfill requests manually or does
    #               not use the match backfill feature. Specify AUTOMATIC to have GameLift create a match backfill
    #               request whenever a game session has one or more open
    #               slots. Learn more about manual and automatic backfill in <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html">Backfill Existing Games
    #                   with FlexMatch</a>. Automatic backfill is not available when
    #                   <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #   @return [String]
    # @!attribute flex_match_mode
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
    #   @return [String]
    class UpdateMatchmakingConfigurationInput < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>The updated matchmaking configuration.</p>
    #   @return [Types::MatchmakingConfiguration]
    class UpdateMatchmakingConfigurationOutput < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet to update runtime configuration for. You can use either the fleet ID or ARN
    #               value.</p>
    #   @return [String]
    # @!attribute runtime_configuration
    #   <p>Instructions for launching server processes on fleet computes. Server processes run
    #               either a custom game build executable or a Amazon GameLift Servers Realtime script. The runtime configuration lists
    #               the types of server processes to run, how to launch them, and the number of processes to
    #               run concurrently.</p>
    #   @return [Types::RuntimeConfiguration]
    class UpdateRuntimeConfigurationInput < Struct.new(
      nil,
      :fleet_id,
      :runtime_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_configuration
    #   <p>The runtime configuration currently in use by computes in the fleet. If the update is
    #               successful, all property changes are shown. </p>
    #   @return [Types::RuntimeConfiguration]
    class UpdateRuntimeConfigurationOutput < Struct.new(
      nil,
      :runtime_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute script_id
    #   <p>A unique identifier for the Realtime script to update. You can use either the script ID or ARN value.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift Servers to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift Servers uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    #   @return [Types::S3Location]
    # @!attribute zip_file
    #   <p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
    #               file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
    #            <p>When using the Amazon Web Services CLI tool to create a script, this parameter is set to the zip
    #               file name. It must be prepended with the string "fileb://" to indicate that the file
    #               data is a binary object. For example: <code>--zip-file
    #                   fileb://myRealtimeScript.zip</code>.</p>
    #   @return [String]
    class UpdateScriptInput < Struct.new(
      nil,
      :script_id,
      :name,
      :version,
      :storage_location,
      :zip_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute script
    #   <p>The newly created script record with a unique script ID. The new script's storage
    #               location reflects an Amazon S3 location: (1) If the script was uploaded from an S3 bucket
    #               under your account, the storage location reflects the information that was provided in
    #               the <i>CreateScript</i> request; (2) If the script file was uploaded from
    #               a local zip file, the storage location reflects an S3 location controlled by the Amazon GameLift Servers
    #               service.</p>
    #   @return [Types::Script]
    class UpdateScriptOutput < Struct.new(
      nil,
      :script,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_set_body
    #   <p>A collection of matchmaking rules to validate, formatted as a JSON string.</p>
    #   @return [String]
    class ValidateMatchmakingRuleSetInput < Struct.new(
      nil,
      :rule_set_body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute valid
    #   <p>A response indicating whether the rule set is valid.</p>
    #   @return [Boolean]
    class ValidateMatchmakingRuleSetOutput < Struct.new(
      nil,
      :valid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an authorization for a VPC peering connection between the VPC for an
    #             Amazon GameLift Servers fleet and another VPC on an account you have access to. This authorization
    #             must exist and be valid for the peering connection to be established. Authorizations are
    #             valid for 24 hours after they are issued.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @!attribute game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your Amazon GameLift Servers fleet.
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    #   @return [String]
    # @!attribute peer_vpc_aws_account_id
    #   <p>The authorization's peer VPC Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Time stamp indicating when this authorization was issued. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    # @!attribute expiration_time
    #   <p>Time stamp indicating when this authorization expires (24 hours after issuance).
    #               Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    #   @return [Time]
    class VpcPeeringAuthorization < Struct.new(
      nil,
      :game_lift_aws_account_id,
      :peer_vpc_aws_account_id,
      :peer_vpc_id,
      :creation_time,
      :expiration_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a peering connection between a VPC on one of your Amazon Web Services accounts and the
    #             VPC for your Amazon GameLift Servers fleets. This record may be for an active peering connection or a
    #             pending connection that has not yet been established.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #          <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    # @!attribute fleet_id
    #   <p>A unique identifier for the fleet. This ID determines the ID of the Amazon GameLift Servers VPC for your fleet.</p>
    #   @return [String]
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) associated with the GameLift fleet resource for this connection. </p>
    #   @return [String]
    # @!attribute ip_v4_cidr_block
    #   <p>CIDR block of IPv4 addresses assigned to the VPC peering connection for the GameLift
    #               VPC. The peered VPC also has an IPv4 CIDR block associated with it; these blocks cannot
    #               overlap or the peering connection cannot be created. </p>
    #   @return [String]
    # @!attribute vpc_peering_connection_id
    #   <p>A unique identifier that is automatically assigned to the connection record. This ID
    #               is referenced in VPC peering connection events, and is used when deleting a
    #               connection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status information about the connection. Status indicates if a connection is
    #               pending, successful, or failed.</p>
    #   @return [Types::VpcPeeringConnectionStatus]
    # @!attribute peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift Servers fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Servers Fleets</a>.</p>
    #   @return [String]
    # @!attribute game_lift_vpc_id
    #   <p>A unique identifier for the VPC that contains the Amazon GameLift Servers fleet for this connection.
    #               This VPC is managed by Amazon GameLift Servers and does not appear in your Amazon Web Services account. </p>
    #   @return [String]
    class VpcPeeringConnection < Struct.new(
      nil,
      :fleet_id,
      :fleet_arn,
      :ip_v4_cidr_block,
      :vpc_peering_connection_id,
      :status,
      :peer_vpc_id,
      :game_lift_vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents status information for a VPC peering connection. Status codes and messages
    #             are provided from EC2 (see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html">VpcPeeringConnectionStateReason</a>). Connection status information is also
    #             communicated as a fleet event.</p>
    # @!attribute code
    #   <p>Code indicating the status of a VPC peering connection.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Additional messaging associated with the connection status. </p>
    #   @return [String]
    class VpcPeeringConnectionStatus < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
