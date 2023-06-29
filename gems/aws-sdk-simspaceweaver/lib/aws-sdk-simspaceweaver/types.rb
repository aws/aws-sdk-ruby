# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SimSpaceWeaver
  module Types

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon CloudWatch Logs log group for the simulation. For more
    # information about log groups, see [Working with log groups and log
    # streams][1] in the *Amazon CloudWatch Logs User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
    #
    # @!attribute [rw] log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log
    #   group for the simulation. For more information about ARNs, see
    #   [Amazon Resource Names (ARNs)][1] in the *Amazon Web Services
    #   General Reference*. For more information about log groups, see
    #   [Working with log groups and log streams][2] in the *Amazon
    #   CloudWatch Logs User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/CloudWatchLogsLogGroup AWS API Documentation
    #
    class CloudWatchLogsLogGroup < Struct.new(
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination
    #   The Amazon S3 bucket and optional folder (object key prefix) where
    #   SimSpace Weaver creates the snapshot file.
    #
    #   The Amazon S3 bucket must be in the same Amazon Web Services Region
    #   as the simulation.
    #   @return [Types::S3Destination]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/CreateSnapshotInput AWS API Documentation
    #
    class CreateSnapshotInput < Struct.new(
      :destination,
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/CreateSnapshotOutput AWS API Documentation
    #
    class CreateSnapshotOutput < Aws::EmptyStructure; end

    # @!attribute [rw] app
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the domain of the app.
    #   @return [String]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation of the app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DeleteAppInput AWS API Documentation
    #
    class DeleteAppInput < Struct.new(
      :app,
      :domain,
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DeleteAppOutput AWS API Documentation
    #
    class DeleteAppOutput < Aws::EmptyStructure; end

    # @!attribute [rw] simulation
    #   The name of the simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DeleteSimulationInput AWS API Documentation
    #
    class DeleteSimulationInput < Struct.new(
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DeleteSimulationOutput AWS API Documentation
    #
    class DeleteSimulationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] app
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the domain of the app.
    #   @return [String]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation of the app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DescribeAppInput AWS API Documentation
    #
    class DescribeAppInput < Struct.new(
      :app,
      :domain,
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the app.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the domain of the app.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_info
    #   Information about the network endpoint for the custom app. You can
    #   use the endpoint to connect to the custom app.
    #   @return [Types::SimulationAppEndpointInfo]
    #
    # @!attribute [rw] launch_overrides
    #   Options that apply when the app starts. These options override
    #   default behavior.
    #   @return [Types::LaunchOverrides]
    #
    # @!attribute [rw] name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation of the app.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle state of the custom app.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The desired lifecycle state of the custom app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DescribeAppOutput AWS API Documentation
    #
    class DescribeAppOutput < Struct.new(
      :description,
      :domain,
      :endpoint_info,
      :launch_overrides,
      :name,
      :simulation,
      :status,
      :target_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] simulation
    #   The name of the simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DescribeSimulationInput AWS API Documentation
    #
    class DescribeSimulationInput < Struct.new(
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs)][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the simulation was created, expressed as the number of
    #   seconds and milliseconds in UTC since the Unix epoch (0:0:0.000,
    #   January 1, 1970).
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   A universally unique identifier (UUID) for this simulation.
    #   @return [String]
    #
    # @!attribute [rw] live_simulation_state
    #   A collection of additional state information, such as domain and
    #   clock configuration.
    #   @return [Types::LiveSimulationState]
    #
    # @!attribute [rw] logging_configuration
    #   Settings that control how SimSpace Weaver handles your simulation
    #   log data.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] maximum_duration
    #   The maximum running time of the simulation, specified as a number of
    #   minutes (m or M), hours (h or H), or days (d or D). The simulation
    #   stops when it reaches this limit. The maximum value is `14D`, or its
    #   equivalent in the other units. The default value is `14D`. A value
    #   equivalent to `0` makes the simulation immediately transition to
    #   `Stopping` as soon as it reaches `Started`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that the simulation assumes to perform actions. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs)][1] in the
    #   *Amazon Web Services General Reference*. For more information about
    #   IAM roles, see [IAM roles][2] in the *Identity and Access Management
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html
    #   @return [String]
    #
    # @!attribute [rw] schema_error
    #   An error message that SimSpace Weaver returns only if there is a
    #   problem with the simulation schema.
    #   @return [String]
    #
    # @!attribute [rw] schema_s3_location
    #   The location of the simulation schema in Amazon Simple Storage
    #   Service (Amazon S3). For more information about Amazon S3, see the [
    #   *Amazon Simple Storage Service User Guide* ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] snapshot_s3_location
    #   A location in Amazon Simple Storage Service (Amazon S3) where
    #   SimSpace Weaver stores simulation data, such as your app .zip files
    #   and schema file. For more information about Amazon S3, see the [
    #   *Amazon Simple Storage Service User Guide* ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] start_error
    #   An error message that SimSpace Weaver returns only if a problem
    #   occurs when the simulation is in the `STARTING` state.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle state of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The desired lifecycle state of the simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DescribeSimulationOutput AWS API Documentation
    #
    class DescribeSimulationOutput < Struct.new(
      :arn,
      :creation_time,
      :description,
      :execution_id,
      :live_simulation_state,
      :logging_configuration,
      :maximum_duration,
      :name,
      :role_arn,
      :schema_error,
      :schema_s3_location,
      :snapshot_s3_location,
      :start_error,
      :status,
      :target_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of app instances that run the same executable app code
    # and have the same launch options and commands.
    #
    # For more information about domains, see [Key concepts: Domains][1] in
    # the *SimSpace Weaver User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_domains
    #
    # @!attribute [rw] lifecycle
    #   The type of lifecycle management for apps in the domain. Indicates
    #   whether apps in this domain are *managed* (SimSpace Weaver starts
    #   and stops the apps) or *unmanaged* (you must start and stop the
    #   apps).
    #
    #   **Lifecycle types**
    #
    #   * `PerWorker` – Managed: SimSpace Weaver starts one app on each
    #     worker.
    #
    #   * `BySpatialSubdivision` – Managed: SimSpace Weaver starts one app
    #     for each spatial partition.
    #
    #   * `ByRequest` – Unmanaged: You use the `StartApp` API to start the
    #     apps and use the `StopApp` API to stop the apps.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/Domain AWS API Documentation
    #
    class Domain < Struct.new(
      :lifecycle,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that apply when the app starts. These options override default
    # behavior.
    #
    # @!attribute [rw] launch_commands
    #   App launch commands and command line parameters that override the
    #   launch command configured in the simulation schema.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/LaunchOverrides AWS API Documentation
    #
    class LaunchOverrides < Struct.new(
      :launch_commands)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that you want to list apps for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of apps to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If SimSpace Weaver returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an *HTTP 400 ValidationException* error.
    #   @return [String]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation that you want to list apps for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListAppsInput AWS API Documentation
    #
    class ListAppsInput < Struct.new(
      :domain,
      :max_results,
      :next_token,
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps
    #   The list of apps for the given simulation and domain.
    #   @return [Array<Types::SimulationAppMetadata>]
    #
    # @!attribute [rw] next_token
    #   If SimSpace Weaver returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an *HTTP 400 ValidationException* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListAppsOutput AWS API Documentation
    #
    class ListAppsOutput < Struct.new(
      :apps,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of simulations to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If SimSpace Weaver returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an *HTTP 400 ValidationException* error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListSimulationsInput AWS API Documentation
    #
    class ListSimulationsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If SimSpace Weaver returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no
    #   results remain, then `nextToken` is set to `null`. Each pagination
    #   token expires after 24 hours. If you provide a token that isn't
    #   valid, then you receive an *HTTP 400 ValidationException* error.
    #   @return [String]
    #
    # @!attribute [rw] simulations
    #   The list of simulations.
    #   @return [Array<Types::SimulationMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListSimulationsOutput AWS API Documentation
    #
    class ListSimulationsOutput < Struct.new(
      :next_token,
      :simulations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For more information
    #   about ARNs, see [Amazon Resource Names (ARNs)][1] in the *Amazon Web
    #   Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of additional state information, such as domain and clock
    # configuration.
    #
    # @!attribute [rw] clocks
    #   A list of simulation clocks.
    #
    #   <note markdown="1"> At this time, a simulation has only one clock.
    #
    #    </note>
    #   @return [Array<Types::SimulationClock>]
    #
    # @!attribute [rw] domains
    #   A list of domains for the simulation. For more information about
    #   domains, see [Key concepts: Domains][1] in the *SimSpace Weaver User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_domains
    #   @return [Array<Types::Domain>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/LiveSimulationState AWS API Documentation
    #
    class LiveSimulationState < Struct.new(
      :clocks,
      :domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location where SimSpace Weaver sends simulation log data.
    #
    # @!attribute [rw] cloud_watch_logs_log_group
    #   An Amazon CloudWatch Logs log group that stores simulation log data.
    #   For more information about log groups, see [Working with log groups
    #   and log streams][1] in the *Amazon CloudWatch Logs User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
    #   @return [Types::CloudWatchLogsLogGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/LogDestination AWS API Documentation
    #
    class LogDestination < Struct.new(
      :cloud_watch_logs_log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logging configuration for a simulation.
    #
    # @!attribute [rw] destinations
    #   A list of the locations where SimSpace Weaver sends simulation log
    #   data.
    #   @return [Array<Types::LogDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon S3 bucket and optional folder (object key prefix) where
    # SimSpace Weaver creates a file.
    #
    # @!attribute [rw] bucket_name
    #   The name of an Amazon S3 bucket. For more information about buckets,
    #   see [Creating, configuring, and working with Amazon S3 buckets][1]
    #   in the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html
    #   @return [String]
    #
    # @!attribute [rw] object_key_prefix
    #   A string prefix for an Amazon S3 object key. It's usually a folder
    #   name. For more information about folders in Amazon S3, see
    #   [Organizing objects in the Amazon S3 console using folders][1] in
    #   the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-folders.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/S3Destination AWS API Documentation
    #
    class S3Destination < Struct.new(
      :bucket_name,
      :object_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A location in Amazon Simple Storage Service (Amazon S3) where SimSpace
    # Weaver stores simulation data, such as your app .zip files and schema
    # file. For more information about Amazon S3, see the [ *Amazon Simple
    # Storage Service User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
    #
    # @!attribute [rw] bucket_name
    #   The name of an Amazon S3 bucket. For more information about buckets,
    #   see [Creating, configuring, and working with Amazon S3 buckets][1]
    #   in the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   The key name of an object in Amazon S3. For more information about
    #   Amazon S3 objects and object keys, see [Uploading, downloading, and
    #   working with objects in Amazon S3][1] in the *Amazon Simple Storage
    #   Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/uploading-downloading-objects.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket_name,
      :object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the network endpoint that you can use to connect to
    # your custom or service app. For more information about SimSpace Weaver
    # apps, see [Key concepts: Apps][1] in the *SimSpace Weaver User
    # Guide*..
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_apps
    #
    # @!attribute [rw] address
    #   The IP address of the app. SimSpace Weaver dynamically assigns this
    #   IP address when the app starts.
    #   @return [String]
    #
    # @!attribute [rw] ingress_port_mappings
    #   The inbound TCP/UDP port numbers of the app. The combination of an
    #   IP address and a port number form a network endpoint.
    #   @return [Array<Types::SimulationAppPortMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/SimulationAppEndpointInfo AWS API Documentation
    #
    class SimulationAppEndpointInfo < Struct.new(
      :address,
      :ingress_port_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of metadata about the app.
    #
    # @!attribute [rw] domain
    #   The domain of the app. For more information about domains, see [Key
    #   concepts: Domains][1] in the *SimSpace Weaver User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_domains
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation of the app.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the app.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The desired status of the app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/SimulationAppMetadata AWS API Documentation
    #
    class SimulationAppMetadata < Struct.new(
      :domain,
      :name,
      :simulation,
      :status,
      :target_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of TCP/UDP ports for a custom or service app.
    #
    # @!attribute [rw] actual
    #   The TCP/UDP port number of the running app. SimSpace Weaver
    #   dynamically assigns this port number when the app starts. SimSpace
    #   Weaver maps the `Declared` port to the `Actual` port. Clients
    #   connect to the app using the app's IP address and the `Actual` port
    #   number.
    #   @return [Integer]
    #
    # @!attribute [rw] declared
    #   The TCP/UDP port number of the app, declared in the simulation
    #   schema. SimSpace Weaver maps the `Declared` port to the `Actual`
    #   port. The source code for the app should bind to the `Declared`
    #   port.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/SimulationAppPortMapping AWS API Documentation
    #
    class SimulationAppPortMapping < Struct.new(
      :actual,
      :declared)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status information about the simulation clock.
    #
    # @!attribute [rw] status
    #   The current status of the simulation clock.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The desired status of the simulation clock.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/SimulationClock AWS API Documentation
    #
    class SimulationClock < Struct.new(
      :status,
      :target_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of data about the simulation.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs)][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the simulation was created, expressed as the number of
    #   seconds and milliseconds in UTC since the Unix epoch (0:0:0.000,
    #   January 1, 1970).
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The desired status of the simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/SimulationMetadata AWS API Documentation
    #
    class SimulationMetadata < Struct.new(
      :arn,
      :creation_time,
      :name,
      :status,
      :target_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A value that you provide to ensure that repeated calls to this API
    #   operation using the same parameters complete only once. A
    #   `ClientToken` is also known as an *idempotency token*. A
    #   `ClientToken` expires after 24 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the app.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the domain of the app.
    #   @return [String]
    #
    # @!attribute [rw] launch_overrides
    #   Options that apply when the app starts. These options override
    #   default behavior.
    #   @return [Types::LaunchOverrides]
    #
    # @!attribute [rw] name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation of the app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartAppInput AWS API Documentation
    #
    class StartAppInput < Struct.new(
      :client_token,
      :description,
      :domain,
      :launch_overrides,
      :name,
      :simulation)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain of the app.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation of the app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartAppOutput AWS API Documentation
    #
    class StartAppOutput < Struct.new(
      :domain,
      :name,
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] simulation
    #   The name of the simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartClockInput AWS API Documentation
    #
    class StartClockInput < Struct.new(
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartClockOutput AWS API Documentation
    #
    class StartClockOutput < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   A value that you provide to ensure that repeated calls to this API
    #   operation using the same parameters complete only once. A
    #   `ClientToken` is also known as an *idempotency token*. A
    #   `ClientToken` expires after 24 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] maximum_duration
    #   The maximum running time of the simulation, specified as a number of
    #   minutes (m or M), hours (h or H), or days (d or D). The simulation
    #   stops when it reaches this limit. The maximum value is `14D`, or its
    #   equivalent in the other units. The default value is `14D`. A value
    #   equivalent to `0` makes the simulation immediately transition to
    #   `Stopping` as soon as it reaches `Started`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that the simulation assumes to perform actions. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs)][1] in the
    #   *Amazon Web Services General Reference*. For more information about
    #   IAM roles, see [IAM roles][2] in the *Identity and Access Management
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html
    #   @return [String]
    #
    # @!attribute [rw] schema_s3_location
    #   The location of the simulation schema in Amazon Simple Storage
    #   Service (Amazon S3). For more information about Amazon S3, see the [
    #   *Amazon Simple Storage Service User Guide* ][1].
    #
    #   Provide a `SchemaS3Location` to start your simulation from a schema.
    #
    #   If you provide a `SchemaS3Location` then you can't provide a
    #   `SnapshotS3Location`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] snapshot_s3_location
    #   The location of the snapshot .zip file in Amazon Simple Storage
    #   Service (Amazon S3). For more information about Amazon S3, see the [
    #   *Amazon Simple Storage Service User Guide* ][1].
    #
    #   Provide a `SnapshotS3Location` to start your simulation from a
    #   snapshot.
    #
    #   The Amazon S3 bucket must be in the same Amazon Web Services Region
    #   as the simulation.
    #
    #   If you provide a `SnapshotS3Location` then you can't provide a
    #   `SchemaS3Location`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
    #   @return [Types::S3Location]
    #
    # @!attribute [rw] tags
    #   A list of tags for the simulation. For more information about tags,
    #   see [Tagging Amazon Web Services resources][1] in the *Amazon Web
    #   Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartSimulationInput AWS API Documentation
    #
    class StartSimulationInput < Struct.new(
      :client_token,
      :description,
      :maximum_duration,
      :name,
      :role_arn,
      :schema_s3_location,
      :snapshot_s3_location,
      :tags)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs)][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the simulation was created, expressed as the number of
    #   seconds and milliseconds in UTC since the Unix epoch (0:0:0.000,
    #   January 1, 1970).
    #   @return [Time]
    #
    # @!attribute [rw] execution_id
    #   A universally unique identifier (UUID) for this simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartSimulationOutput AWS API Documentation
    #
    class StartSimulationOutput < Struct.new(
      :arn,
      :creation_time,
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app
    #   The name of the app.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The name of the domain of the app.
    #   @return [String]
    #
    # @!attribute [rw] simulation
    #   The name of the simulation of the app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopAppInput AWS API Documentation
    #
    class StopAppInput < Struct.new(
      :app,
      :domain,
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopAppOutput AWS API Documentation
    #
    class StopAppOutput < Aws::EmptyStructure; end

    # @!attribute [rw] simulation
    #   The name of the simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopClockInput AWS API Documentation
    #
    class StopClockInput < Struct.new(
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopClockOutput AWS API Documentation
    #
    class StopClockOutput < Aws::EmptyStructure; end

    # @!attribute [rw] simulation
    #   The name of the simulation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopSimulationInput AWS API Documentation
    #
    class StopSimulationInput < Struct.new(
      :simulation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopSimulationOutput AWS API Documentation
    #
    class StopSimulationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   tags to. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove tags from. For more information about ARNs, see [Amazon
    #   Resource Names (ARNs)][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
