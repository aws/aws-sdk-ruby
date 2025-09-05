# frozen_string_literal: true

# This is generated code!

module Aws::SimSpaceWeaver
  # This module contains the types returned by client operations.
  module Types

    # <p/>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon CloudWatch Logs log group for the simulation. For more information about log groups, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working with log
    #    groups and log streams</a> in the <i>Amazon CloudWatch Logs User Guide</i>.</p>
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log group for the simulation.
    #            For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>. For more information about log groups, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working with log
    #      groups and log streams</a> in the <i>Amazon CloudWatch Logs User Guide</i>.</p>
    #   @return [String]
    class CloudWatchLogsLogGroup < Struct.new(
      :log_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The Amazon S3 bucket and optional folder (object key prefix) where SimSpace Weaver creates the snapshot file.</p>
    #            <p>The Amazon S3 bucket must be in the same Amazon Web Services Region as the simulation.</p>
    #   @return [Types::S3Destination]
    class CreateSnapshotInput < Struct.new(
      :simulation,
      :destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateSnapshotOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation of the app.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The name of the domain of the app.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the app.</p>
    #   @return [String]
    class DeleteAppOperationInput < Struct.new(
      :simulation,
      :domain,
      :app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAppOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation.</p>
    #   @return [String]
    class DeleteSimulationOperationInput < Struct.new(
      :simulation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSimulationOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation of the app.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The name of the domain of the app.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the app.</p>
    #   @return [String]
    class DescribeAppOperationInput < Struct.new(
      :simulation,
      :domain,
      :app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the app.</p>
    #   @return [String]
    # @!attribute simulation
    #   <p>The name of the simulation of the app.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The name of the domain of the app.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current lifecycle state of the custom app.</p>
    #   @return [String]
    # @!attribute target_status
    #   <p>The desired lifecycle state of the custom app.</p>
    #   @return [String]
    # @!attribute launch_overrides
    #   <p>Options that apply when the app starts. These options override default behavior.</p>
    #   @return [Types::LaunchOverrides]
    # @!attribute description
    #   <p>The description of the app.</p>
    #   @return [String]
    # @!attribute endpoint_info
    #   <p>Information about the network endpoint for the custom app. You can use the endpoint to connect to the custom app.</p>
    #   @return [Types::SimulationAppEndpointInfo]
    class DescribeAppOperationOutput < Struct.new(
      :name,
      :simulation,
      :domain,
      :status,
      :target_status,
      :launch_overrides,
      :description,
      :endpoint_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation.</p>
    #   @return [String]
    class DescribeSimulationOperationInput < Struct.new(
      :simulation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the simulation.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>A universally unique identifier (UUID) for this simulation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the simulation.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role
    #      that the simulation assumes to perform actions. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>. For more information about IAM roles,
    #      see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the 
    #      <i>Identity and Access Management User Guide</i>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the simulation was created, expressed as the 
    #      number of seconds and milliseconds in UTC since the Unix epoch (0:0:0.000, January 1, 1970).</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current lifecycle state of the simulation.</p>
    #   @return [String]
    # @!attribute target_status
    #   <p>The desired lifecycle state of the simulation.</p>
    #   @return [String]
    # @!attribute schema_s3_location
    #   <p>The location of the simulation schema in Amazon Simple Storage Service (Amazon S3).
    #      For more information about Amazon S3, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html">
    #                  <i>Amazon Simple Storage Service User Guide</i>
    #               </a>.</p>
    #   @return [Types::S3Location]
    # @!attribute schema_error
    #   <p>An error message that SimSpace Weaver returns only if there is a problem with the simulation
    #            schema.</p>
    #   @deprecated
    #     SchemaError is no longer used, check StartError instead.
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Settings that control how SimSpace Weaver handles your simulation log data.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute live_simulation_state
    #   <p>A collection of additional state information, such as 
    #   domain and clock configuration.</p>
    #   @return [Types::LiveSimulationState]
    # @!attribute maximum_duration
    #   <p>The maximum running time of the simulation,
    #      specified as a number of minutes (m or M), hours (h or H), or days (d or D). The simulation 
    #      stops when it reaches this limit. The maximum value is <code>14D</code>, or its equivalent in the 
    #      other units. The default value is <code>14D</code>. A value equivalent to <code>0</code> makes the
    #      simulation immediately transition to <code>Stopping</code> as soon as it reaches <code>Started</code>.</p>
    #   @return [String]
    # @!attribute snapshot_s3_location
    #   <p>A location in Amazon Simple Storage Service (Amazon S3) where SimSpace Weaver stores simulation data, such as your app .zip
    #            files and schema file. For more information about Amazon S3, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html">
    #                  <i>Amazon Simple Storage Service User Guide</i>
    #               </a>.</p>
    #   @return [Types::S3Location]
    # @!attribute start_error
    #   <p>An error message that SimSpace Weaver returns only if a problem occurs when the simulation is in the <code>STARTING</code> state.</p>
    #   @return [String]
    class DescribeSimulationOperationOutput < Struct.new(
      :name,
      :execution_id,
      :arn,
      :description,
      :role_arn,
      :creation_time,
      :status,
      :target_status,
      :schema_s3_location,
      :schema_error,
      :logging_configuration,
      :live_simulation_state,
      :maximum_duration,
      :snapshot_s3_location,
      :start_error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of app instances that run the same executable app code and have the same
    #          launch options and commands.</p>
    #          <p>For more information about domains, see <a href="https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_domains">Key concepts: Domains</a>
    #    in the <i>SimSpace Weaver User Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The type of lifecycle management for apps in the domain. Indicates whether apps in this
    #            domain are <i>managed</i> (SimSpace Weaver starts and stops the apps) or
    #               <i>unmanaged</i> (you must start and stop the apps).</p>
    #            <p class="title">
    #               <b>Lifecycle types</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PerWorker</code> – Managed: SimSpace Weaver starts one app on each
    #                  worker.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BySpatialSubdivision</code> – Managed: SimSpace Weaver starts one app for
    #                  each spatial partition.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ByRequest</code> – Unmanaged: You use the <code>StartApp</code>
    #                  API to start the apps and use the <code>StopApp</code> API to stop the apps.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Domain < Struct.new(
      :name,
      :lifecycle,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Options that apply when the app starts. These options override default behavior.</p>
    # @!attribute launch_commands
    #   <p>App launch commands and command line parameters that override the launch command
    #            configured in the simulation schema.</p>
    #   @return [Array<String>]
    class LaunchOverrides < Struct.new(
      :launch_commands,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation that you want to list apps for.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The name of the domain that you want to list apps for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of apps to list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If SimSpace Weaver returns <code>nextToken</code>, then there are more results available. 
    #      The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, 
    #      call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, 
    #      then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. 
    #      If you provide a token that isn't valid, then you receive an <i>HTTP 400 ValidationException</i> error.</p>
    #   @return [String]
    class ListAppsOperationInput < Struct.new(
      :simulation,
      :domain,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute apps
    #   <p>The list of apps for the given simulation and domain.</p>
    #   @return [Array<Types::SimulationAppMetadata>]
    # @!attribute next_token
    #   <p>If SimSpace Weaver returns <code>nextToken</code>, then there are more results available. 
    #      The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, 
    #      call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, 
    #      then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. 
    #      If you provide a token that isn't valid, then you receive an <i>HTTP 400 ValidationException</i> error.</p>
    #   @return [String]
    class ListAppsOperationOutput < Struct.new(
      :apps,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of simulations to list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If SimSpace Weaver returns <code>nextToken</code>, then there are more results available. 
    #      The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, 
    #      call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, 
    #      then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. 
    #      If you provide a token that isn't valid, then you receive an <i>HTTP 400 ValidationException</i> error.</p>
    #   @return [String]
    class ListSimulationsOperationInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulations
    #   <p>The list of simulations.</p>
    #   @return [Array<Types::SimulationMetadata>]
    # @!attribute next_token
    #   <p>If SimSpace Weaver returns <code>nextToken</code>, then there are more results available. 
    #      The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, 
    #      call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, 
    #      then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. 
    #      If you provide a token that isn't valid, then you receive an <i>HTTP 400 ValidationException</i> error.</p>
    #   @return [String]
    class ListSimulationsOperationOutput < Struct.new(
      :simulations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    class ListTagsForResourceOperationInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags for the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOperationOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of additional state information, such as 
    # domain and clock configuration.</p>
    # @!attribute domains
    #   <p>A list of domains for the simulation. For more information about domains, see <a href="https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_domains">Key concepts: Domains</a>
    #      in the <i>SimSpace Weaver User Guide</i>.</p>
    #   @return [Array<Types::Domain>]
    # @!attribute clocks
    #   <p>A list of simulation clocks.</p>
    #            <note>
    #               <p>At this time, a simulation has only one clock.</p>
    #            </note>
    #   @return [Array<Types::SimulationClock>]
    class LiveSimulationState < Struct.new(
      :domains,
      :clocks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The location where SimSpace Weaver sends simulation log data.</p>
    # @!attribute cloud_watch_logs_log_group
    #   <p>An Amazon CloudWatch Logs log group that stores simulation log data. For more information about log groups, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working with log
    #      groups and log streams</a> in the <i>Amazon CloudWatch Logs User Guide</i>.</p>
    #   @return [Types::CloudWatchLogsLogGroup]
    class LogDestination < Struct.new(
      :cloud_watch_logs_log_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The logging configuration for a simulation.</p>
    # @!attribute destinations
    #   <p>A list of the locations where SimSpace Weaver sends simulation log data.</p>
    #   @return [Array<Types::LogDestination>]
    class LoggingConfiguration < Struct.new(
      :destinations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon S3 bucket and optional folder (object key prefix) where SimSpace Weaver creates a file.</p>
    # @!attribute bucket_name
    #   <p>The name of an Amazon S3 bucket. For more information about buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html">Creating,
    #               configuring, and working with Amazon S3 buckets</a> in the <i>Amazon Simple Storage Service User
    #               Guide</i>.</p>
    #   @return [String]
    # @!attribute object_key_prefix
    #   <p>A string prefix for an Amazon S3 object key. It's usually a folder name.
    #            For more information about folders in Amazon S3, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-folders.html">Organizing objects in the Amazon S3 console using folders</a>
    #      in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #   @return [String]
    class S3Destination < Struct.new(
      :bucket_name,
      :object_key_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A location in Amazon Simple Storage Service (Amazon S3) where SimSpace Weaver stores simulation data, such as your app .zip
    #          files and schema file. For more information about Amazon S3, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html">
    #                <i>Amazon Simple Storage Service User Guide</i>
    #             </a>.</p>
    # @!attribute bucket_name
    #   <p>The name of an Amazon S3 bucket. For more information about buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html">Creating,
    #               configuring, and working with Amazon S3 buckets</a> in the <i>Amazon Simple Storage Service User
    #               Guide</i>.</p>
    #   @return [String]
    # @!attribute object_key
    #   <p>The key name of an object in Amazon S3. For more information about Amazon S3 objects and object
    #            keys, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/uploading-downloading-objects.html">Uploading,
    #               downloading, and working with objects in Amazon S3</a> in the <i>Amazon Simple Storage Service User
    #               Guide</i>.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :bucket_name,
      :object_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the network endpoint that you can use to connect to your custom or 
    #          service app. For more information about SimSpace Weaver apps, see <a href="https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_apps">Key concepts: Apps</a> 
    #    in the <i>SimSpace Weaver User Guide</i>..</p>
    # @!attribute address
    #   <p>The IP address of the app. SimSpace Weaver dynamically assigns this IP address when the
    #            app starts.</p>
    #   @return [String]
    # @!attribute ingress_port_mappings
    #   <p>The inbound TCP/UDP port numbers of the app. The combination of an IP address and
    #            a port number form a network endpoint.</p>
    #   @return [Array<Types::SimulationAppPortMapping>]
    class SimulationAppEndpointInfo < Struct.new(
      :address,
      :ingress_port_mappings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of metadata about the app.</p>
    # @!attribute name
    #   <p>The name of the app.</p>
    #   @return [String]
    # @!attribute simulation
    #   <p>The name of the simulation of the app.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of the app. For more information about domains, see <a href="https://docs.aws.amazon.com/simspaceweaver/latest/userguide/what-is_key-concepts.html#what-is_key-concepts_domains">Key concepts: Domains</a>
    #      in the <i>SimSpace Weaver User Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the app.</p>
    #   @return [String]
    # @!attribute target_status
    #   <p>The desired status of the app.</p>
    #   @return [String]
    class SimulationAppMetadata < Struct.new(
      :name,
      :simulation,
      :domain,
      :status,
      :target_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of TCP/UDP ports for a custom or service app.</p>
    # @!attribute declared
    #   <p>The TCP/UDP port number of the app, declared in the simulation schema. SimSpace Weaver maps
    #            the <code>Declared</code> port to the <code>Actual</code> port. The source code for the
    #            app should bind to the <code>Declared</code> port.</p>
    #   @return [Integer]
    # @!attribute actual
    #   <p>The TCP/UDP port number of the running app. SimSpace Weaver dynamically assigns this port
    #            number when the app starts. SimSpace Weaver maps the <code>Declared</code> port to the
    #               <code>Actual</code> port. Clients connect to the app using the app's IP address
    #            and the <code>Actual</code> port number.</p>
    #   @return [Integer]
    class SimulationAppPortMapping < Struct.new(
      :declared,
      :actual,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Status information about the simulation clock.</p>
    # @!attribute status
    #   <p>The current status of the simulation clock.</p>
    #   @return [String]
    # @!attribute target_status
    #   <p>The desired status of the simulation clock.</p>
    #   @return [String]
    class SimulationClock < Struct.new(
      :status,
      :target_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of data about the simulation.</p>
    # @!attribute name
    #   <p>The name of the simulation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the simulation was created, expressed as the 
    #      number of seconds and milliseconds in UTC since the Unix epoch (0:0:0.000, January 1, 1970).</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the simulation.</p>
    #   @return [String]
    # @!attribute target_status
    #   <p>The desired status of the simulation.</p>
    #   @return [String]
    class SimulationMetadata < Struct.new(
      :name,
      :arn,
      :creation_time,
      :status,
      :target_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A value that you provide to ensure that repeated calls to this
    #      API operation using the same parameters complete only once. A <code>ClientToken</code> is also known as an
    #      <i>idempotency token</i>. A <code>ClientToken</code> expires after 24 hours.</p>
    #   @return [String]
    # @!attribute simulation
    #   <p>The name of the simulation of the app.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The name of the domain of the app.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the app.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the app.</p>
    #   @return [String]
    # @!attribute launch_overrides
    #   <p>Options that apply when the app starts. These options override default behavior.</p>
    #   @return [Types::LaunchOverrides]
    class StartAppOperationInput < Struct.new(
      :client_token,
      :simulation,
      :domain,
      :name,
      :description,
      :launch_overrides,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the app.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The name of the domain of the app.</p>
    #   @return [String]
    # @!attribute simulation
    #   <p>The name of the simulation of the app.</p>
    #   @return [String]
    class StartAppOperationOutput < Struct.new(
      :name,
      :domain,
      :simulation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation.</p>
    #   @return [String]
    class StartClockOperationInput < Struct.new(
      :simulation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StartClockOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A value that you provide to ensure that repeated calls to this
    #      API operation using the same parameters complete only once. A <code>ClientToken</code> is also known as an
    #      <i>idempotency token</i>. A <code>ClientToken</code> expires after 24 hours.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the simulation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the simulation.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role
    #      that the simulation assumes to perform actions. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>. For more information about IAM roles,
    #      see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the 
    #      <i>Identity and Access Management User Guide</i>.</p>
    #   @return [String]
    # @!attribute schema_s3_location
    #   <p>The location of the simulation schema in Amazon Simple Storage Service (Amazon S3).
    #      For more information about Amazon S3, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html">
    #                  <i>Amazon Simple Storage Service User Guide</i>
    #               </a>.</p>
    #            <p>Provide a <code>SchemaS3Location</code> to start your simulation from a schema.</p>
    #            <p>If you provide a <code>SchemaS3Location</code> then you can't provide a <code>SnapshotS3Location</code>.</p>
    #   @return [Types::S3Location]
    # @!attribute maximum_duration
    #   <p>The maximum running time of the simulation,
    #      specified as a number of minutes (m or M), hours (h or H), or days (d or D). The simulation 
    #      stops when it reaches this limit. The maximum value is <code>14D</code>, or its equivalent in the 
    #      other units. The default value is <code>14D</code>. A value equivalent to <code>0</code> makes the
    #      simulation immediately transition to <code>Stopping</code> as soon as it reaches <code>Started</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags for the simulation. For more information about tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the
    #      <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute snapshot_s3_location
    #   <p>The location of the snapshot .zip file in Amazon Simple Storage Service (Amazon S3).
    #      For more information about Amazon S3, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html">
    #                  <i>Amazon Simple Storage Service User Guide</i>
    #               </a>.</p>
    #            <p>Provide a <code>SnapshotS3Location</code> to start your simulation from a snapshot.</p>
    #            <p>The Amazon S3 bucket must be in the same Amazon Web Services Region as the simulation.</p>
    #            <p>If you provide a <code>SnapshotS3Location</code> then you can't provide a <code>SchemaS3Location</code>.</p>
    #   @return [Types::S3Location]
    class StartSimulationOperationInput < Struct.new(
      :client_token,
      :name,
      :description,
      :role_arn,
      :schema_s3_location,
      :maximum_duration,
      :tags,
      :snapshot_s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>A universally unique identifier (UUID) for this simulation.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when the simulation was created, expressed as the 
    #      number of seconds and milliseconds in UTC since the Unix epoch (0:0:0.000, January 1, 1970).</p>
    #   @return [Time]
    class StartSimulationOperationOutput < Struct.new(
      :arn,
      :execution_id,
      :creation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation of the app.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The name of the domain of the app.</p>
    #   @return [String]
    # @!attribute app
    #   <p>The name of the app.</p>
    #   @return [String]
    class StopAppOperationInput < Struct.new(
      :simulation,
      :domain,
      :app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopAppOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation.</p>
    #   @return [String]
    class StopClockOperationInput < Struct.new(
      :simulation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopClockOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute simulation
    #   <p>The name of the simulation.</p>
    #   @return [String]
    class StopSimulationOperationInput < Struct.new(
      :simulation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopSimulationOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add tags to.
    #            For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to apply to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceOperationInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.
    #            For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
