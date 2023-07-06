# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS

  class DBCluster

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :db_cluster_identifier :id

    # For all database engines except Amazon Aurora, `AllocatedStorage`
    # specifies the allocated storage size in gibibytes (GiB). For Aurora,
    # `AllocatedStorage` always returns 1, because Aurora DB cluster storage
    # size isn't fixed, but instead automatically adjusts as needed.
    # @return [Integer]
    def allocated_storage
      data[:allocated_storage]
    end

    # The list of Availability Zones (AZs) where instances in the DB cluster
    # can be created.
    # @return [Array<String>]
    def availability_zones
      data[:availability_zones]
    end

    # The number of days for which automatic DB snapshots are retained.
    # @return [Integer]
    def backup_retention_period
      data[:backup_retention_period]
    end

    # If present, specifies the name of the character set that this cluster
    # is associated with.
    # @return [String]
    def character_set_name
      data[:character_set_name]
    end

    # The name of the initial database that was specified for the DB cluster
    # when it was created, if one was provided. This same name is returned
    # for the life of the DB cluster.
    # @return [String]
    def database_name
      data[:database_name]
    end

    # The name of the DB cluster parameter group for the DB cluster.
    # @return [String]
    def db_cluster_parameter_group
      data[:db_cluster_parameter_group]
    end

    # Information about the subnet group associated with the DB cluster,
    # including the name, description, and subnets in the subnet group.
    # @return [String]
    def db_subnet_group
      data[:db_subnet_group]
    end

    # The current state of this DB cluster.
    # @return [String]
    def status
      data[:status]
    end

    # The time when a stopped DB cluster is restarted automatically.
    # @return [Time]
    def automatic_restart_time
      data[:automatic_restart_time]
    end

    # The progress of the operation as a percentage.
    # @return [String]
    def percent_progress
      data[:percent_progress]
    end

    # The earliest time to which a database can be restored with
    # point-in-time restore.
    # @return [Time]
    def earliest_restorable_time
      data[:earliest_restorable_time]
    end

    # The connection endpoint for the primary instance of the DB cluster.
    # @return [String]
    def endpoint
      data[:endpoint]
    end

    # The reader endpoint for the DB cluster. The reader endpoint for a DB
    # cluster load-balances connections across the Aurora Replicas that are
    # available in a DB cluster. As clients request new connections to the
    # reader endpoint, Aurora distributes the connection requests among the
    # Aurora Replicas in the DB cluster. This functionality can help balance
    # your read workload across multiple Aurora Replicas in your DB cluster.
    #
    # If a failover occurs, and the Aurora Replica that you are connected to
    # is promoted to be the primary instance, your connection is dropped. To
    # continue sending your read workload to other Aurora Replicas in the
    # cluster, you can then reconnect to the reader endpoint.
    # @return [String]
    def reader_endpoint
      data[:reader_endpoint]
    end

    # The custom endpoints associated with the DB cluster.
    # @return [Array<String>]
    def custom_endpoints
      data[:custom_endpoints]
    end

    # Indicates whether the DB cluster has instances in multiple
    # Availability Zones.
    # @return [Boolean]
    def multi_az
      data[:multi_az]
    end

    # The database engine used for this DB cluster.
    # @return [String]
    def engine
      data[:engine]
    end

    # The version of the database engine.
    # @return [String]
    def engine_version
      data[:engine_version]
    end

    # The latest time to which a database can be restored with point-in-time
    # restore.
    # @return [Time]
    def latest_restorable_time
      data[:latest_restorable_time]
    end

    # The port that the database engine is listening on.
    # @return [Integer]
    def port
      data[:port]
    end

    # The master username for the DB cluster.
    # @return [String]
    def master_username
      data[:master_username]
    end

    # The list of option group memberships for this DB cluster.
    # @return [Array<Types::DBClusterOptionGroupStatus>]
    def db_cluster_option_group_memberships
      data[:db_cluster_option_group_memberships]
    end

    # The daily time range during which automated backups are created if
    # automated backups are enabled, as determined by the
    # `BackupRetentionPeriod`.
    # @return [String]
    def preferred_backup_window
      data[:preferred_backup_window]
    end

    # The weekly time range during which system maintenance can occur, in
    # Universal Coordinated Time (UTC).
    # @return [String]
    def preferred_maintenance_window
      data[:preferred_maintenance_window]
    end

    # The identifier of the source DB cluster if this DB cluster is a read
    # replica.
    # @return [String]
    def replication_source_identifier
      data[:replication_source_identifier]
    end

    # Contains one or more identifiers of the read replicas associated with
    # this DB cluster.
    # @return [Array<String>]
    def read_replica_identifiers
      data[:read_replica_identifiers]
    end

    # The list of DB instances that make up the DB cluster.
    # @return [Array<Types::DBClusterMember>]
    def db_cluster_members
      data[:db_cluster_members]
    end

    # The list of VPC security groups that the DB cluster belongs to.
    # @return [Array<Types::VpcSecurityGroupMembership>]
    def vpc_security_groups
      data[:vpc_security_groups]
    end

    # The ID that Amazon Route 53 assigns when you create a hosted zone.
    # @return [String]
    def hosted_zone_id
      data[:hosted_zone_id]
    end

    # Indicates whether the DB cluster is encrypted.
    # @return [Boolean]
    def storage_encrypted
      data[:storage_encrypted]
    end

    # If `StorageEncrypted` is enabled, the Amazon Web Services KMS key
    # identifier for the encrypted DB cluster.
    #
    # The Amazon Web Services KMS key identifier is the key ARN, key ID,
    # alias ARN, or alias name for the KMS key.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The Amazon Web Services Region-unique, immutable identifier for the DB
    # cluster. This identifier is found in Amazon Web Services CloudTrail
    # log entries whenever the KMS key for the DB cluster is accessed.
    # @return [String]
    def db_cluster_resource_id
      data[:db_cluster_resource_id]
    end

    # The Amazon Resource Name (ARN) for the DB cluster.
    # @return [String]
    def db_cluster_arn
      data[:db_cluster_arn]
    end

    # A list of the Amazon Web Services Identity and Access Management (IAM)
    # roles that are associated with the DB cluster. IAM roles that are
    # associated with a DB cluster grant permission for the DB cluster to
    # access other Amazon Web Services on your behalf.
    # @return [Array<Types::DBClusterRole>]
    def associated_roles
      data[:associated_roles]
    end

    # Indicates whether the mapping of Amazon Web Services Identity and
    # Access Management (IAM) accounts to database accounts is enabled.
    # @return [Boolean]
    def iam_database_authentication_enabled
      data[:iam_database_authentication_enabled]
    end

    # The ID of the clone group with which the DB cluster is associated.
    # @return [String]
    def clone_group_id
      data[:clone_group_id]
    end

    # The time when the DB cluster was created, in Universal Coordinated
    # Time (UTC).
    # @return [Time]
    def cluster_create_time
      data[:cluster_create_time]
    end

    # The earliest time to which a DB cluster can be backtracked.
    # @return [Time]
    def earliest_backtrack_time
      data[:earliest_backtrack_time]
    end

    # The target backtrack window, in seconds. If this value is set to `0`,
    # backtracking is disabled for the DB cluster. Otherwise, backtracking
    # is enabled.
    # @return [Integer]
    def backtrack_window
      data[:backtrack_window]
    end

    # The number of change records stored for Backtrack.
    # @return [Integer]
    def backtrack_consumed_change_records
      data[:backtrack_consumed_change_records]
    end

    # A list of log types that this DB cluster is configured to export to
    # CloudWatch Logs.
    #
    # Log types vary by DB engine. For information about the log types for
    # each DB engine, see [Amazon RDS Database Log Files][1] in the *Amazon
    # Aurora User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html
    # @return [Array<String>]
    def enabled_cloudwatch_logs_exports
      data[:enabled_cloudwatch_logs_exports]
    end

    # The current capacity of an Aurora Serverless v1 DB cluster. The
    # capacity is `0` (zero) when the cluster is paused.
    #
    # For more information about Aurora Serverless v1, see [Using Amazon
    # Aurora Serverless v1][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    # @return [Integer]
    def capacity
      data[:capacity]
    end

    # The DB engine mode of the DB cluster, either `provisioned` or
    # `serverless`.
    #
    # For more information, see [ CreateDBCluster][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html
    # @return [String]
    def engine_mode
      data[:engine_mode]
    end

    # The scaling configuration for an Aurora DB cluster in `serverless` DB
    # engine mode.
    #
    # For more information, see [Using Amazon Aurora Serverless v1][1] in
    # the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html
    # @return [Types::ScalingConfigurationInfo]
    def scaling_configuration_info
      data[:scaling_configuration_info]
    end

    # Indicates whether the DB cluster has deletion protection enabled. The
    # database can't be deleted when deletion protection is enabled.
    # @return [Boolean]
    def deletion_protection
      data[:deletion_protection]
    end

    # Indicates whether the HTTP endpoint for an Aurora Serverless v1 DB
    # cluster is enabled.
    #
    # When enabled, the HTTP endpoint provides a connectionless web service
    # API for running SQL queries on the Aurora Serverless v1 DB cluster.
    # You can also query your database from inside the RDS console with the
    # query editor.
    #
    # For more information, see [Using the Data API for Aurora Serverless
    # v1][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    # @return [Boolean]
    def http_endpoint_enabled
      data[:http_endpoint_enabled]
    end

    # The mode of the database activity stream. Database events such as a
    # change or access generate an activity stream event. The database
    # session can handle these events either synchronously or
    # asynchronously.
    # @return [String]
    def activity_stream_mode
      data[:activity_stream_mode]
    end

    # The status of the database activity stream.
    # @return [String]
    def activity_stream_status
      data[:activity_stream_status]
    end

    # The Amazon Web Services KMS key identifier used for encrypting
    # messages in the database activity stream.
    #
    # The Amazon Web Services KMS key identifier is the key ARN, key ID,
    # alias ARN, or alias name for the KMS key.
    # @return [String]
    def activity_stream_kms_key_id
      data[:activity_stream_kms_key_id]
    end

    # The name of the Amazon Kinesis data stream used for the database
    # activity stream.
    # @return [String]
    def activity_stream_kinesis_stream_name
      data[:activity_stream_kinesis_stream_name]
    end

    # Indicates whether tags are copied from the DB cluster to snapshots of
    # the DB cluster.
    # @return [Boolean]
    def copy_tags_to_snapshot
      data[:copy_tags_to_snapshot]
    end

    # Indicates whether the DB cluster is a clone of a DB cluster owned by a
    # different Amazon Web Services account.
    # @return [Boolean]
    def cross_account_clone
      data[:cross_account_clone]
    end

    # The Active Directory Domain membership records associated with the DB
    # cluster.
    # @return [Array<Types::DomainMembership>]
    def domain_memberships
      data[:domain_memberships]
    end

    # A list of tags. For more information, see [Tagging Amazon RDS
    # Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [Array<Types::Tag>]
    def tag_list
      data[:tag_list]
    end

    # The status of write forwarding for a secondary cluster in an Aurora
    # global database.
    # @return [String]
    def global_write_forwarding_status
      data[:global_write_forwarding_status]
    end

    # Specifies whether write forwarding is enabled for a secondary cluster
    # in an Aurora global database. Because write forwarding takes time to
    # enable, check the value of `GlobalWriteForwardingStatus` to confirm
    # that the request has completed before using the write forwarding
    # feature for this cluster.
    # @return [Boolean]
    def global_write_forwarding_requested
      data[:global_write_forwarding_requested]
    end

    # Information about pending changes to the DB cluster. This information
    # is returned only when there are pending changes. Specific changes are
    # identified by subelements.
    # @return [Types::ClusterPendingModifiedValues]
    def pending_modified_values
      data[:pending_modified_values]
    end

    # The name of the compute and memory capacity class of the DB instance.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    # @return [String]
    def db_cluster_instance_class
      data[:db_cluster_instance_class]
    end

    # The storage type associated with the DB cluster.
    # @return [String]
    def storage_type
      data[:storage_type]
    end

    # The Provisioned IOPS (I/O operations per second) value.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    # @return [Integer]
    def iops
      data[:iops]
    end

    # Indicates whether the DB cluster is publicly accessible.
    #
    # When the DB cluster is publicly accessible, its Domain Name System
    # (DNS) endpoint resolves to the private IP address from within the DB
    # cluster's virtual private cloud (VPC). It resolves to the public IP
    # address from outside of the DB cluster's VPC. Access to the DB
    # cluster is ultimately controlled by the security group it uses. That
    # public access isn't permitted if the security group assigned to the
    # DB cluster doesn't permit it.
    #
    # When the DB cluster isn't publicly accessible, it is an internal DB
    # cluster with a DNS name that resolves to a private IP address.
    #
    # For more information, see CreateDBCluster.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    # @return [Boolean]
    def publicly_accessible
      data[:publicly_accessible]
    end

    # Indicates whether minor version patches are applied automatically.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    # @return [Boolean]
    def auto_minor_version_upgrade
      data[:auto_minor_version_upgrade]
    end

    # The interval, in seconds, between points when Enhanced Monitoring
    # metrics are collected for the DB cluster.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    # @return [Integer]
    def monitoring_interval
      data[:monitoring_interval]
    end

    # The ARN for the IAM role that permits RDS to send Enhanced Monitoring
    # metrics to Amazon CloudWatch Logs.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    # @return [String]
    def monitoring_role_arn
      data[:monitoring_role_arn]
    end

    # Indicates whether Performance Insights is enabled for the DB cluster.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    # @return [Boolean]
    def performance_insights_enabled
      data[:performance_insights_enabled]
    end

    # The Amazon Web Services KMS key identifier for encryption of
    # Performance Insights data.
    #
    # The Amazon Web Services KMS key identifier is the key ARN, key ID,
    # alias ARN, or alias name for the KMS key.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    # @return [String]
    def performance_insights_kms_key_id
      data[:performance_insights_kms_key_id]
    end

    # The number of days to retain Performance Insights data.
    #
    # This setting is only for non-Aurora Multi-AZ DB clusters.
    #
    # Valid Values:
    #
    # * `7`
    #
    # * *month* * 31, where *month* is a number of months from 1-23.
    #   Examples: `93` (3 months * 31), `341` (11 months * 31), `589` (19
    #   months * 31)
    #
    # * `731`
    #
    # Default: `7` days
    # @return [Integer]
    def performance_insights_retention_period
      data[:performance_insights_retention_period]
    end

    # The scaling configuration for an Aurora Serverless v2 DB cluster.
    #
    # For more information, see [Using Amazon Aurora Serverless v2][1] in
    # the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    # @return [Types::ServerlessV2ScalingConfigurationInfo]
    def serverless_v2_scaling_configuration
      data[:serverless_v2_scaling_configuration]
    end

    # The network type of the DB instance.
    #
    # The network type is determined by the `DBSubnetGroup` specified for
    # the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    # or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    # For more information, see [ Working with a DB instance in a VPC][1] in
    # the *Amazon Aurora User Guide.*
    #
    # This setting is only for Aurora DB clusters.
    #
    # Valid Values: `IPV4 | DUAL`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    # @return [String]
    def network_type
      data[:network_type]
    end

    # Reserved for future use.
    # @return [String]
    def db_system_id
      data[:db_system_id]
    end

    # The secret managed by RDS in Amazon Web Services Secrets Manager for
    # the master user password.
    #
    # For more information, see [Password management with Amazon Web
    # Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    # [Password management with Amazon Web Services Secrets Manager][2] in
    # the *Amazon Aurora User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    # @return [Types::MasterUserSecret]
    def master_user_secret
      data[:master_user_secret]
    end

    # The next time you can modify the DB cluster to use the `aurora-iopt1`
    # storage type.
    #
    # This setting is only for Aurora DB clusters.
    # @return [Time]
    def io_optimized_next_allowed_modification_time
      data[:io_optimized_next_allowed_modification_time]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBCluster}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_cluster.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_db_clusters(db_cluster_identifier: @id)
      end
      @data = resp.db_clusters[0]
      self
    end
    alias :reload :load

    # @return [Types::DBCluster]
    #   Returns the data for this {DBCluster}. Calls
    #   {Client#describe_db_clusters} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::RDS::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Plugins::UserAgent.feature('resource') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   dbcluster = db_cluster.create({
    #     availability_zones: ["String"],
    #     backup_retention_period: 1,
    #     character_set_name: "String",
    #     database_name: "String",
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     db_subnet_group_name: "String",
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     master_username: "String",
    #     master_user_password: "String",
    #     option_group_name: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     replication_source_identifier: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     enable_iam_database_authentication: false,
    #     backtrack_window: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     engine_mode: "String",
    #     scaling_configuration: {
    #       min_capacity: 1,
    #       max_capacity: 1,
    #       auto_pause: false,
    #       seconds_until_auto_pause: 1,
    #       timeout_action: "String",
    #       seconds_before_timeout: 1,
    #     },
    #     deletion_protection: false,
    #     global_cluster_identifier: "String",
    #     enable_http_endpoint: false,
    #     copy_tags_to_snapshot: false,
    #     domain: "String",
    #     domain_iam_role_name: "String",
    #     enable_global_write_forwarding: false,
    #     db_cluster_instance_class: "String",
    #     allocated_storage: 1,
    #     storage_type: "String",
    #     iops: 1,
    #     publicly_accessible: false,
    #     auto_minor_version_upgrade: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0,
    #     },
    #     network_type: "String",
    #     db_system_id: "String",
    #     manage_master_user_password: false,
    #     master_user_secret_kms_key_id: "String",
    #     source_region: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :availability_zones
    #   A list of Availability Zones (AZs) where DB instances in the DB
    #   cluster can be created.
    #
    #   For information on Amazon Web Services Regions and Availability Zones,
    #   see [Choosing the Regions and Availability Zones][1] in the *Amazon
    #   Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Default: `1`
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35.
    #
    #   ^
    # @option options [String] :character_set_name
    #   The name of the character set (`CharacterSet`) to associate the DB
    #   cluster with.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    # @option options [String] :database_name
    #   The name for your database of up to 64 alphanumeric characters. If you
    #   don't provide a name, Amazon RDS doesn't create a database in the DB
    #   cluster you are creating.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If you don't specify a value, then the default DB cluster
    #   parameter group for the specified DB engine and version is used.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DB cluster parameter
    #     group.
    #
    #   ^
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB cluster.
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DB subnet group.
    #
    #   * Must not be `default`.
    #
    #   Example: `mydbsubnetgroup`
    # @option options [required, String] :engine
    #   The database engine to use for this DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Valid Values: `aurora-mysql | aurora-postgresql | mysql | postgres`
    # @option options [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   To list all of the available engine versions for Aurora MySQL version
    #   2 (5.7-compatible) and version 3 (MySQL 8.0-compatible), use the
    #   following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   You can supply either `5.7` or `8.0` to use the default engine version
    #   for Aurora MySQL version 2 or version 3, respectively.
    #
    #   To list all of the available engine versions for Aurora PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for MySQL, use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine postgres --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   For information about a specific engine, see the following topics:
    #
    #   * Aurora MySQL - see [Database engine updates for Amazon Aurora
    #     MySQL][1] in the *Amazon Aurora User Guide*.
    #
    #   * Aurora PostgreSQL - see [Amazon Aurora PostgreSQL releases and
    #     engine versions][2] in the *Amazon Aurora User Guide*.
    #
    #   * RDS for MySQL - see [Amazon RDS for MySQL][3] in the *Amazon RDS
    #     User Guide*.
    #
    #   * RDS for PostgreSQL - see [Amazon RDS for PostgreSQL][4] in the
    #     *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts
    # @option options [Integer] :port
    #   The port number on which the instances in the DB cluster accept
    #   connections.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Valid Values: `1150-65535`
    #
    #   Default:
    #
    #   * RDS for MySQL and Aurora MySQL - `3306`
    #
    #   * RDS for PostgreSQL and Aurora PostgreSQL - `5432`
    # @option options [String] :master_username
    #   The name of the master user for the DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Can't be a reserved word for the chosen database engine.
    # @option options [String] :master_user_password
    #   The password for the master database user.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must contain from 8 to 41 characters.
    #
    #   * Can contain any printable ASCII character except "/", """, or
    #     "@".
    #
    #   * Can't be specified if `ManageMasterUserPassword` is turned on.
    # @option options [String] :option_group_name
    #   The option group to associate the DB cluster with.
    #
    #   DB clusters are associated with a default option group that can't be
    #   modified.
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region. To view the time
    #   blocks available, see [ Backup window][1] in the *Amazon Aurora User
    #   Guide*.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow
    # @option options [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week. To see the time blocks available, see [
    #   Adjusting the Preferred DB Cluster Maintenance Window][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * Days must be one of `Mon | Tue | Wed | Thu | Fri | Sat | Sun`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    # @option options [String] :replication_source_identifier
    #   The Amazon Resource Name (ARN) of the source DB instance or DB cluster
    #   if this DB cluster is created as a read replica.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Array<Types::Tag>] :tags
    #   Tags to assign to the DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   When a KMS key isn't specified in `KmsKeyId`:
    #
    #   * If `ReplicationSourceIdentifier` identifies an encrypted source,
    #     then Amazon RDS uses the KMS key used to encrypt the source.
    #     Otherwise, Amazon RDS uses your default KMS key.
    #
    #   * If the `StorageEncrypted` parameter is enabled and
    #     `ReplicationSourceIdentifier` isn't specified, then Amazon RDS uses
    #     your default KMS key.
    #
    #   There is a default KMS key for your Amazon Web Services account. Your
    #   Amazon Web Services account has a different default KMS key for each
    #   Amazon Web Services Region.
    #
    #   If you create a read replica of an encrypted DB cluster in another
    #   Amazon Web Services Region, make sure to set `KmsKeyId` to a KMS key
    #   identifier that is valid in the destination Amazon Web Services
    #   Region. This KMS key is used to encrypt the read replica in that
    #   Amazon Web Services Region.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :pre_signed_url
    #   When you are replicating a DB cluster from one Amazon Web Services
    #   GovCloud (US) Region to another, an URL that contains a Signature
    #   Version 4 signed request for the `CreateDBCluster` operation to be
    #   called in the source Amazon Web Services Region where the DB cluster
    #   is replicated from. Specify `PreSignedUrl` only when you are
    #   performing cross-Region replication from an encrypted DB cluster.
    #
    #   The presigned URL must be a valid request for the `CreateDBCluster`
    #   API operation that can run in the source Amazon Web Services Region
    #   that contains the encrypted DB cluster to copy.
    #
    #   The presigned URL request must contain the following parameter values:
    #
    #   * `KmsKeyId` - The KMS key identifier for the KMS key to use to
    #     encrypt the copy of the DB cluster in the destination Amazon Web
    #     Services Region. This should refer to the same KMS key for both the
    #     `CreateDBCluster` operation that is called in the destination Amazon
    #     Web Services Region, and the operation contained in the presigned
    #     URL.
    #
    #   * `DestinationRegion` - The name of the Amazon Web Services Region
    #     that Aurora read replica will be created in.
    #
    #   * `ReplicationSourceIdentifier` - The DB cluster identifier for the
    #     encrypted DB cluster to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source Amazon Web Services
    #     Region. For example, if you are copying an encrypted DB cluster from
    #     the us-west-2 Amazon Web Services Region, then your
    #     `ReplicationSourceIdentifier` would look like Example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (Amazon Web Services
    #   Signature Version 4)][1] and [ Signature Version 4 Signing
    #   Process][2].
    #
    #   <note markdown="1"> If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can run in the source Amazon Web Services Region.
    #
    #    </note>
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # @option options [Boolean] :enable_iam_database_authentication
    #   Specifies whether to enable mapping of Amazon Web Services Identity
    #   and Access Management (IAM) accounts to database accounts. By default,
    #   mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
    # @option options [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to `0`.
    #
    #   Valid for Cluster Type: Aurora MySQL DB clusters only
    #
    #   Default: `0`
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The following values are valid for each DB engine:
    #
    #   * Aurora MySQL - `audit | error | general | slowquery`
    #
    #   * Aurora PostgreSQL - `postgresql`
    #
    #   * RDS for MySQL - `error | general | slowquery`
    #
    #   * RDS for PostgreSQL - `postgresql | upgrade`
    #
    #   For more information about exporting CloudWatch Logs for Amazon RDS,
    #   see [Publishing Database Logs to Amazon CloudWatch Logs][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][2] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [String] :engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned` or
    #   `serverless`.
    #
    #   The `serverless` engine mode only applies for Aurora Serverless v1 DB
    #   clusters.
    #
    #   For information about limitations and requirements for Serverless DB
    #   clusters, see the following sections in the *Amazon Aurora User
    #   Guide*:
    #
    #   * [Limitations of Aurora Serverless v1][1]
    #
    #   * [Requirements for Aurora Serverless v2][2]
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.requirements.html
    # @option options [Types::ScalingConfiguration] :scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling properties
    #   of the DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    # @option options [Boolean] :deletion_protection
    #   Specifies whether the DB cluster has deletion protection enabled. The
    #   database can't be deleted when deletion protection is enabled. By
    #   default, deletion protection isn't enabled.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :global_cluster_identifier
    #   The global cluster ID of an Aurora cluster that becomes the primary
    #   cluster in the new global database cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    # @option options [Boolean] :enable_http_endpoint
    #   Specifies whether to enable the HTTP endpoint for an Aurora Serverless
    #   v1 DB cluster. By default, the HTTP endpoint is disabled.
    #
    #   When enabled, the HTTP endpoint provides a connectionless web service
    #   API for running SQL queries on the Aurora Serverless v1 DB cluster.
    #   You can also query your database from inside the RDS console with the
    #   query editor.
    #
    #   For more information, see [Using the Data API for Aurora Serverless
    #   v1][1] in the *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    # @option options [Boolean] :copy_tags_to_snapshot
    #   Specifies whether to copy all tags from the DB cluster to snapshots of
    #   the DB cluster. The default is not to copy them.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :domain
    #   The Active Directory directory ID to create the DB cluster in.
    #
    #   For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
    #   authentication to authenticate users that connect to the DB cluster.
    #
    #   For more information, see [Kerberos authentication][1] in the *Amazon
    #   Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    # @option options [String] :domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the Directory
    #   Service.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    # @option options [Boolean] :enable_global_write_forwarding
    #   Specifies whether to enable this DB cluster to forward write
    #   operations to the primary cluster of a global cluster (Aurora global
    #   database). By default, write operations are not allowed on Aurora DB
    #   clusters that are secondary clusters in an Aurora global database.
    #
    #   You can set this value only on Aurora DB clusters that are members of
    #   an Aurora global database. With this parameter enabled, a secondary
    #   cluster can forward writes to the current primary cluster, and the
    #   resulting changes are replicated back to this cluster. For the primary
    #   DB cluster of an Aurora global database, this value is used
    #   immediately if the primary is demoted by a global cluster API
    #   operation, but it does nothing until then.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    # @option options [String] :db_cluster_instance_class
    #   The compute and memory capacity of each DB instance in the Multi-AZ DB
    #   cluster, for example `db.m6gd.xlarge`. Not all DB instance classes are
    #   available in all Amazon Web Services Regions, or for all database
    #   engines.
    #
    #   For the full list of DB instance classes and availability for your
    #   engine, see [DB instance class][1] in the *Amazon RDS User Guide*.
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [Integer] :allocated_storage
    #   The amount of storage in gibibytes (GiB) to allocate to each DB
    #   instance in the Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    # @option options [String] :storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   For information on storage types for Aurora DB clusters, see [Storage
    #   configurations for Amazon Aurora DB clusters][1]. For information on
    #   storage types for Multi-AZ DB clusters, see [Settings for creating
    #   Multi-AZ DB clusters][2].
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #
    #   When specified for a Multi-AZ DB cluster, a value for the `Iops`
    #   parameter is required.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Valid Values:
    #
    #   * Aurora DB clusters - `aurora | aurora-iopt1`
    #
    #   * Multi-AZ DB clusters - `io1`
    #
    #   Default:
    #
    #   * Aurora DB clusters - `aurora`
    #
    #   * Multi-AZ DB clusters - `io1`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.StorageReliability.html#aurora-storage-type
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/create-multi-az-db-cluster.html#create-multi-az-db-cluster-settings
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for each DB instance in the Multi-AZ DB
    #   cluster.
    #
    #   For information about valid IOPS values, see [Provisioned IOPS
    #   storage][1] in the *Amazon RDS User Guide*.
    #
    #   This setting is required to create a Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Constraints:
    #
    #   * Must be a multiple between .5 and 50 of the storage amount for the
    #     DB cluster.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    # @option options [Boolean] :publicly_accessible
    #   Specifies whether the DB cluster is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB cluster isn't publicly accessible, it is an internal DB
    #   cluster with a DNS name that resolves to a private IP address.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB cluster is public.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Specifies whether minor engine upgrades are applied automatically to
    #   the DB cluster during the maintenance window. By default, minor engine
    #   upgrades are applied automatically.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB cluster. To turn off collecting
    #   Enhanced Monitoring metrics, specify `0`.
    #
    #   If `MonitoringRoleArn` is specified, also set `MonitoringInterval` to
    #   a value other than `0`.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Valid Values: `0 | 1 | 5 | 10 | 15 | 30 | 60`
    #
    #   Default: `0`
    # @option options [String] :monitoring_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that permits RDS to
    #   send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An example
    #   is `arn:aws:iam:123456789012:role/emaccess`. For information on
    #   creating a monitoring role, see [Setting up and enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than `0`, supply a
    #   `MonitoringRoleArn` value.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    # @option options [Boolean] :enable_performance_insights
    #   Specifies whether to turn on Performance Insights for the DB cluster.
    #
    #   For more information, see [ Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    # @option options [String] :performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you don't specify a value for `PerformanceInsightsKMSKeyId`, then
    #   Amazon RDS uses your default KMS key. There is a default KMS key for
    #   your Amazon Web Services account. Your Amazon Web Services account has
    #   a different default KMS key for each Amazon Web Services Region.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    # @option options [Integer] :performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Valid Values:
    #
    #   * `7`
    #
    #   * *month* * 31, where *month* is a number of months from 1-23.
    #     Examples: `93` (3 months * 31), `341` (11 months * 31), `589` (19
    #     months * 31)
    #
    #   * `731`
    #
    #   Default: `7` days
    #
    #   If you specify a retention period that isn't valid, such as `94`,
    #   Amazon RDS issues an error.
    # @option options [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    # @option options [String] :network_type
    #   The network type of the DB cluster.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    # @option options [String] :db_system_id
    #   Reserved for future use.
    # @option options [Boolean] :manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    #   [Password management with Amazon Web Services Secrets Manager][2] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Can't manage the master user password with Amazon Web Services
    #     Secrets Manager if `MasterUserPassword` is specified.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    # @option options [String] :master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that is
    #   automatically generated and managed in Amazon Web Services Secrets
    #   Manager.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   If you don't specify `MasterUserSecretKmsKeyId`, then the
    #   `aws/secretsmanager` KMS key is used to encrypt the secret. If the
    #   secret is in a different Amazon Web Services account, then you can't
    #   use the `aws/secretsmanager` KMS key to encrypt the secret, and you
    #   must use a customer managed KMS key.
    #
    #   There is a default KMS key for your Amazon Web Services account. Your
    #   Amazon Web Services account has a different default KMS key for each
    #   Amazon Web Services Region.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    # @return [DBCluster]
    def create(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_cluster(options)
      end
      DBCluster.new(
        id: resp.data.db_cluster.db_cluster_identifier,
        data: resp.data.db_cluster,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbclustersnapshot = db_cluster.create_snapshot({
    #     db_cluster_snapshot_identifier: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot. This parameter is stored as
    #   a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1-snapshot1`
    # @option options [Array<Types::Tag>] :tags
    #   The tags to be assigned to the DB cluster snapshot.
    # @return [DBClusterSnapshot]
    def create_snapshot(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_cluster_snapshot(options)
      end
      DBClusterSnapshot.new(
        cluster_id: resp.data.db_cluster_snapshot.db_cluster_identifier,
        snapshot_id: resp.data.db_cluster_snapshot.db_cluster_snapshot_identifier,
        data: resp.data.db_cluster_snapshot,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbcluster = db_cluster.delete({
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :skip_final_snapshot
    #   A value that indicates whether to skip the creation of a final DB
    #   cluster snapshot before the DB cluster is deleted. If skip is
    #   specified, no DB cluster snapshot is created. If skip isn't
    #   specified, a DB cluster snapshot is created before the DB cluster is
    #   deleted. By default, skip isn't specified, and the DB cluster
    #   snapshot is created. By default, this parameter is disabled.
    #
    #   <note markdown="1"> You must specify a `FinalDBSnapshotIdentifier` parameter if
    #   `SkipFinalSnapshot` is disabled.
    #
    #    </note>
    # @option options [String] :final_db_snapshot_identifier
    #   The DB cluster snapshot identifier of the new DB cluster snapshot
    #   created when `SkipFinalSnapshot` is disabled.
    #
    #   <note markdown="1"> Specifying this parameter and also skipping the creation of a final DB
    #   cluster snapshot with the `SkipFinalShapshot` parameter results in an
    #   error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    # @return [DBCluster]
    def delete(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.delete_db_cluster(options)
      end
      DBCluster.new(
        id: resp.data.db_cluster.db_cluster_identifier,
        data: resp.data.db_cluster,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbcluster = db_cluster.failover({
    #     target_db_instance_identifier: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :target_db_instance_identifier
    #   The name of the DB instance to promote to the primary DB instance.
    #
    #   Specify the DB instance identifier for an Aurora Replica or a Multi-AZ
    #   readable standby in the DB cluster, for example
    #   `mydbcluster-replica1`.
    #
    #   This setting isn't supported for RDS for MySQL Multi-AZ DB clusters.
    # @return [DBCluster]
    def failover(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.failover_db_cluster(options)
      end
      DBCluster.new(
        id: resp.data.db_cluster.db_cluster_identifier,
        data: resp.data.db_cluster,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbcluster = db_cluster.modify({
    #     new_db_cluster_identifier: "String",
    #     apply_immediately: false,
    #     backup_retention_period: 1,
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     port: 1,
    #     master_user_password: "String",
    #     option_group_name: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     enable_iam_database_authentication: false,
    #     backtrack_window: 1,
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"],
    #     },
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     db_instance_parameter_group_name: "String",
    #     domain: "String",
    #     domain_iam_role_name: "String",
    #     scaling_configuration: {
    #       min_capacity: 1,
    #       max_capacity: 1,
    #       auto_pause: false,
    #       seconds_until_auto_pause: 1,
    #       timeout_action: "String",
    #       seconds_before_timeout: 1,
    #     },
    #     deletion_protection: false,
    #     enable_http_endpoint: false,
    #     copy_tags_to_snapshot: false,
    #     enable_global_write_forwarding: false,
    #     db_cluster_instance_class: "String",
    #     allocated_storage: 1,
    #     storage_type: "String",
    #     iops: 1,
    #     auto_minor_version_upgrade: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0,
    #     },
    #     network_type: "String",
    #     manage_master_user_password: false,
    #     rotate_master_user_password: false,
    #     master_user_secret_kms_key_id: "String",
    #     engine_mode: "String",
    #     allow_engine_mode_change: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :new_db_cluster_identifier
    #   The new DB cluster identifier for the DB cluster when renaming a DB
    #   cluster. This value is stored as a lowercase string.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster2`
    # @option options [Boolean] :apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   cluster. If this parameter is disabled, changes to the DB cluster are
    #   applied during the next maintenance window.
    #
    #   Most modifications can be applied immediately or during the next
    #   scheduled maintenance window. Some modifications, such as turning on
    #   deletion protection and changing the master password, are applied
    #   immediately—regardless of when you choose to apply them.
    #
    #   By default, this parameter is disabled.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. Specify a
    #   minimum value of `1`.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Default: `1`
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35.
    #
    #   ^
    # @option options [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to use for the DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Integer] :port
    #   The port number on which the DB cluster accepts connections.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Valid Values: `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    # @option options [String] :master_user_password
    #   The new password for the master database user.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must contain from 8 to 41 characters.
    #
    #   * Can contain any printable ASCII character except "/", """, or
    #     "@".
    #
    #   * Can't be specified if `ManageMasterUserPassword` is turned on.
    # @option options [String] :option_group_name
    #   The option group to associate the DB cluster with.
    #
    #   DB clusters are associated with a default option group that can't be
    #   modified.
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region. To view the time
    #   blocks available, see [ Backup window][1] in the *Amazon Aurora User
    #   Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow
    # @option options [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week. To see the time blocks available, see [
    #   Adjusting the Preferred DB Cluster Maintenance Window][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * Days must be one of `Mon | Tue | Wed | Thu | Fri | Sat | Sun`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora
    # @option options [Boolean] :enable_iam_database_authentication
    #   Specifies whether to enable mapping of Amazon Web Services Identity
    #   and Access Management (IAM) accounts to database accounts. By default,
    #   mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
    # @option options [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to `0`.
    #
    #   Valid for Cluster Type: Aurora MySQL DB clusters only
    #
    #   Default: `0`
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    # @option options [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB cluster.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   The following values are valid for each DB engine:
    #
    #   * Aurora MySQL - `audit | error | general | slowquery`
    #
    #   * Aurora PostgreSQL - `postgresql`
    #
    #   * RDS for MySQL - `error | general | slowquery`
    #
    #   * RDS for PostgreSQL - `postgresql | upgrade`
    #
    #   For more information about exporting CloudWatch Logs for Amazon RDS,
    #   see [ Publishing Database Logs to Amazon CloudWatch Logs][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][2] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [String] :engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless `ApplyImmediately`
    #   is enabled.
    #
    #   If the cluster that you're modifying has one or more read replicas,
    #   all replicas must be running an engine version that's the same or
    #   later than the version you specify.
    #
    #   To list all of the available engine versions for Aurora MySQL, use the
    #   following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for Aurora PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for MySQL, use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine postgres --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :allow_major_version_upgrade
    #   Specifies whether major version upgrades are allowed.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Constraints:
    #
    #   * You must allow major version upgrades when specifying a value for
    #     the `EngineVersion` parameter that is a different major version than
    #     the DB cluster's current version.
    #
    #   ^
    # @option options [String] :db_instance_parameter_group_name
    #   The name of the DB parameter group to apply to all instances of the DB
    #   cluster.
    #
    #   <note markdown="1"> When you apply a parameter group using the
    #   `DBInstanceParameterGroupName` parameter, the DB cluster isn't
    #   rebooted automatically. Also, parameter changes are applied
    #   immediately rather than during the next maintenance window.
    #
    #    </note>
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Default: The existing name setting
    #
    #   Constraints:
    #
    #   * The DB parameter group must be in the same DB parameter group family
    #     as this DB cluster.
    #
    #   * The `DBInstanceParameterGroupName` parameter is valid in combination
    #     with the `AllowMajorVersionUpgrade` parameter for a major version
    #     upgrade only.
    # @option options [String] :domain
    #   The Active Directory directory ID to move the DB cluster to. Specify
    #   `none` to remove the cluster from its current domain. The domain must
    #   be created prior to this operation.
    #
    #   For more information, see [Kerberos Authentication][1] in the *Amazon
    #   Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    # @option options [String] :domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the Directory
    #   Service.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    # @option options [Types::ScalingConfiguration] :scaling_configuration
    #   The scaling properties of the DB cluster. You can only modify scaling
    #   properties for DB clusters in `serverless` DB engine mode.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    # @option options [Boolean] :deletion_protection
    #   Specifies whether the DB cluster has deletion protection enabled. The
    #   database can't be deleted when deletion protection is enabled. By
    #   default, deletion protection isn't enabled.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :enable_http_endpoint
    #   Specifies whether to enable the HTTP endpoint for an Aurora Serverless
    #   v1 DB cluster. By default, the HTTP endpoint is disabled.
    #
    #   When enabled, the HTTP endpoint provides a connectionless web service
    #   API for running SQL queries on the Aurora Serverless v1 DB cluster.
    #   You can also query your database from inside the RDS console with the
    #   query editor.
    #
    #   For more information, see [Using the Data API for Aurora Serverless
    #   v1][1] in the *Amazon Aurora User Guide*.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
    # @option options [Boolean] :copy_tags_to_snapshot
    #   Specifies whether to copy all tags from the DB cluster to snapshots of
    #   the DB cluster. The default is not to copy them.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :enable_global_write_forwarding
    #   Specifies whether to enable this DB cluster to forward write
    #   operations to the primary cluster of a global cluster (Aurora global
    #   database). By default, write operations are not allowed on Aurora DB
    #   clusters that are secondary clusters in an Aurora global database.
    #
    #   You can set this value only on Aurora DB clusters that are members of
    #   an Aurora global database. With this parameter enabled, a secondary
    #   cluster can forward writes to the current primary cluster, and the
    #   resulting changes are replicated back to this cluster. For the primary
    #   DB cluster of an Aurora global database, this value is used
    #   immediately if the primary is demoted by a global cluster API
    #   operation, but it does nothing until then.
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    # @option options [String] :db_cluster_instance_class
    #   The compute and memory capacity of each DB instance in the Multi-AZ DB
    #   cluster, for example `db.m6gd.xlarge`. Not all DB instance classes are
    #   available in all Amazon Web Services Regions, or for all database
    #   engines.
    #
    #   For the full list of DB instance classes and availability for your
    #   engine, see [ DB Instance Class][1] in the *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [Integer] :allocated_storage
    #   The amount of storage in gibibytes (GiB) to allocate to each DB
    #   instance in the Multi-AZ DB cluster.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    # @option options [String] :storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   For information on storage types for Aurora DB clusters, see [Storage
    #   configurations for Amazon Aurora DB clusters][1]. For information on
    #   storage types for Multi-AZ DB clusters, see [Settings for creating
    #   Multi-AZ DB clusters][2].
    #
    #   When specified for a Multi-AZ DB cluster, a value for the `Iops`
    #   parameter is required.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Valid Values:
    #
    #   * Aurora DB clusters - `aurora | aurora-iopt1`
    #
    #   * Multi-AZ DB clusters - `io1`
    #
    #   Default:
    #
    #   * Aurora DB clusters - `aurora`
    #
    #   * Multi-AZ DB clusters - `io1`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.StorageReliability.html#aurora-storage-type
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/create-multi-az-db-cluster.html#create-multi-az-db-cluster-settings
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for each DB instance in the Multi-AZ DB
    #   cluster.
    #
    #   For information about valid IOPS values, see [Amazon RDS Provisioned
    #   IOPS storage][1] in the *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Constraints:
    #
    #   * Must be a multiple between .5 and 50 of the storage amount for the
    #     DB cluster.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Specifies whether minor engine upgrades are applied automatically to
    #   the DB cluster during the maintenance window. By default, minor engine
    #   upgrades are applied automatically.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB cluster. To turn off collecting
    #   Enhanced Monitoring metrics, specify `0`.
    #
    #   If `MonitoringRoleArn` is specified, also set `MonitoringInterval` to
    #   a value other than `0`.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Valid Values: `0 | 1 | 5 | 10 | 15 | 30 | 60`
    #
    #   Default: `0`
    # @option options [String] :monitoring_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that permits RDS to
    #   send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An example
    #   is `arn:aws:iam:123456789012:role/emaccess`. For information on
    #   creating a monitoring role, see [To create an IAM role for Amazon RDS
    #   Enhanced Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than `0`, supply a
    #   `MonitoringRoleArn` value.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    # @option options [Boolean] :enable_performance_insights
    #   Specifies whether to turn on Performance Insights for the DB cluster.
    #
    #   For more information, see [ Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    # @option options [String] :performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you don't specify a value for `PerformanceInsightsKMSKeyId`, then
    #   Amazon RDS uses your default KMS key. There is a default KMS key for
    #   your Amazon Web Services account. Your Amazon Web Services account has
    #   a different default KMS key for each Amazon Web Services Region.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    # @option options [Integer] :performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   Valid for Cluster Type: Multi-AZ DB clusters only
    #
    #   Valid Values:
    #
    #   * `7`
    #
    #   * *month* * 31, where *month* is a number of months from 1-23.
    #     Examples: `93` (3 months * 31), `341` (11 months * 31), `589` (19
    #     months * 31)
    #
    #   * `731`
    #
    #   Default: `7` days
    #
    #   If you specify a retention period that isn't valid, such as `94`,
    #   Amazon RDS issues an error.
    # @option options [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    # @option options [String] :network_type
    #   The network type of the DB cluster.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    # @option options [Boolean] :manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager.
    #
    #   If the DB cluster doesn't manage the master user password with Amazon
    #   Web Services Secrets Manager, you can turn on this management. In this
    #   case, you can't specify `MasterUserPassword`.
    #
    #   If the DB cluster already manages the master user password with Amazon
    #   Web Services Secrets Manager, and you specify that the master user
    #   password is not managed with Amazon Web Services Secrets Manager, then
    #   you must specify `MasterUserPassword`. In this case, RDS deletes the
    #   secret and uses the new password for the master user specified by
    #   `MasterUserPassword`.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    #   [Password management with Amazon Web Services Secrets Manager][2] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    # @option options [Boolean] :rotate_master_user_password
    #   Specifies whether to rotate the secret managed by Amazon Web Services
    #   Secrets Manager for the master user password.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB cluster. The
    #   secret value contains the updated password.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide* and
    #   [Password management with Amazon Web Services Secrets Manager][2] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * You must apply the change immediately when rotating the master user
    #     password.
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html
    # @option options [String] :master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that is
    #   automatically generated and managed in Amazon Web Services Secrets
    #   Manager.
    #
    #   This setting is valid only if both of the following conditions are
    #   met:
    #
    #   * The DB cluster doesn't manage the master user password in Amazon
    #     Web Services Secrets Manager.
    #
    #     If the DB cluster already manages the master user password in Amazon
    #     Web Services Secrets Manager, you can't change the KMS key that is
    #     used to encrypt the secret.
    #
    #   * You are turning on `ManageMasterUserPassword` to manage the master
    #     user password in Amazon Web Services Secrets Manager.
    #
    #     If you are turning on `ManageMasterUserPassword` and don't specify
    #     `MasterUserSecretKmsKeyId`, then the `aws/secretsmanager` KMS key is
    #     used to encrypt the secret. If the secret is in a different Amazon
    #     Web Services account, then you can't use the `aws/secretsmanager`
    #     KMS key to encrypt the secret, and you must use a customer managed
    #     KMS key.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   There is a default KMS key for your Amazon Web Services account. Your
    #   Amazon Web Services account has a different default KMS key for each
    #   Amazon Web Services Region.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned` or
    #   `serverless`.
    #
    #   <note markdown="1"> The DB engine mode can be modified only from `serverless` to
    #   `provisioned`.
    #
    #    </note>
    #
    #   For more information, see [ CreateDBCluster][1].
    #
    #   Valid for Cluster Type: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html
    # @option options [Boolean] :allow_engine_mode_change
    #   Specifies whether engine mode changes from `serverless` to
    #   `provisioned` are allowed.
    #
    #   Valid for Cluster Type: Aurora Serverless v1 DB clusters only
    #
    #   Constraints:
    #
    #   * You must allow engine mode changes when specifying a different value
    #     for the `EngineMode` parameter from the DB cluster's current engine
    #     mode.
    #
    #   ^
    # @return [DBCluster]
    def modify(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.modify_db_cluster(options)
      end
      DBCluster.new(
        id: resp.data.db_cluster.db_cluster_identifier,
        data: resp.data.db_cluster,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbcluster = db_cluster.restore({
    #     db_cluster_identifier: "String", # required
    #     restore_type: "String",
    #     restore_to_time: Time.now,
    #     use_latest_restorable_time: false,
    #     port: 1,
    #     db_subnet_group_name: "String",
    #     option_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     enable_iam_database_authentication: false,
    #     backtrack_window: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     db_cluster_parameter_group_name: "String",
    #     deletion_protection: false,
    #     copy_tags_to_snapshot: false,
    #     domain: "String",
    #     domain_iam_role_name: "String",
    #     scaling_configuration: {
    #       min_capacity: 1,
    #       max_capacity: 1,
    #       auto_pause: false,
    #       seconds_until_auto_pause: 1,
    #       timeout_action: "String",
    #       seconds_before_timeout: 1,
    #     },
    #     engine_mode: "String",
    #     db_cluster_instance_class: "String",
    #     storage_type: "String",
    #     publicly_accessible: false,
    #     iops: 1,
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0,
    #     },
    #     network_type: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_cluster_identifier
    #   The name of the new DB cluster to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :restore_type
    #   The type of restore to be performed. You can specify one of the
    #   following values:
    #
    #   * `full-copy` - The new DB cluster is restored as a full copy of the
    #     source DB cluster.
    #
    #   * `copy-on-write` - The new DB cluster is restored as a clone of the
    #     source DB cluster.
    #
    #   If you don't specify a `RestoreType` value, then the new DB cluster
    #   is restored as a full copy of the source DB cluster.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Time,DateTime,Date,Integer,String] :restore_to_time
    #   The date and time to restore the DB cluster to.
    #
    #   Valid Values: Value must be a time in Universal Coordinated Time (UTC)
    #   format
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance
    #
    #   * Must be specified if `UseLatestRestorableTime` parameter isn't
    #     provided
    #
    #   * Can't be specified if the `UseLatestRestorableTime` parameter is
    #     enabled
    #
    #   * Can't be specified if the `RestoreType` parameter is
    #     `copy-on-write`
    #
    #   Example: `2015-03-07T23:45:00Z`
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :use_latest_restorable_time
    #   A value that indicates whether to restore the DB cluster to the latest
    #   restorable backup time. By default, the DB cluster isn't restored to
    #   the latest restorable backup time.
    #
    #   Constraints: Can't be specified if `RestoreToTime` parameter is
    #   provided.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Integer] :port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: A value from `1150-65535`.
    #
    #   Default: The default port for the engine.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :db_subnet_group_name
    #   The DB subnet group name to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mydbsubnetgroup`
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :option_group_name
    #   The name of the option group for the new DB cluster.
    #
    #   DB clusters are associated with a default option group that can't be
    #   modified.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster belongs to.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [String] :kms_key_id
    #   The Amazon Web Services KMS key identifier to use when restoring an
    #   encrypted DB cluster from an encrypted DB cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   You can restore to a new DB cluster and encrypt the new DB cluster
    #   with a KMS key that is different from the KMS key used to encrypt the
    #   source DB cluster. The new DB cluster is encrypted with the KMS key
    #   identified by the `KmsKeyId` parameter.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the DB cluster is encrypted, then the restored DB cluster is
    #     encrypted using the KMS key that was used to encrypt the source DB
    #     cluster.
    #
    #   * If the DB cluster isn't encrypted, then the restored DB cluster
    #     isn't encrypted.
    #
    #   If `DBClusterIdentifier` refers to a DB cluster that isn't encrypted,
    #   then the restore request is rejected.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
    # @option options [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #
    #   Valid for: Aurora MySQL DB clusters only
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used.
    #
    #   **RDS for MySQL**
    #
    #   Possible values are `error`, `general`, and `slowquery`.
    #
    #   **RDS for PostgreSQL**
    #
    #   Possible values are `postgresql` and `upgrade`.
    #
    #   **Aurora MySQL**
    #
    #   Possible values are `audit`, `error`, `general`, and `slowquery`.
    #
    #   **Aurora PostgreSQL**
    #
    #   Possible value is `postgresql`.
    #
    #   For more information about exporting CloudWatch Logs for Amazon RDS,
    #   see [Publishing Database Logs to Amazon CloudWatch Logs][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][2] in
    #   the *Amazon Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If this argument is omitted, the default DB cluster parameter
    #   group for the specified engine is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DB cluster parameter
    #     group.
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :deletion_protection
    #   A value that indicates whether the DB cluster has deletion protection
    #   enabled. The database can't be deleted when deletion protection is
    #   enabled. By default, deletion protection isn't enabled.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   cluster to snapshots of the restored DB cluster. The default is not to
    #   copy them.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :domain
    #   Specify the Active Directory directory ID to restore the DB cluster
    #   in. The domain must be created prior to this operation.
    #
    #   For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
    #   Authentication to authenticate users that connect to the DB cluster.
    #   For more information, see [Kerberos Authentication][1] in the *Amazon
    #   Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html
    # @option options [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    #   Valid for: Aurora DB clusters only
    # @option options [Types::ScalingConfiguration] :scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling properties
    #   of the DB cluster.
    #
    #   Valid for: Aurora DB clusters only
    # @option options [String] :engine_mode
    #   The engine mode of the new cluster. Specify `provisioned` or
    #   `serverless`, depending on the type of the cluster you are creating.
    #   You can create an Aurora Serverless v1 clone from a provisioned
    #   cluster, or a provisioned clone from an Aurora Serverless v1 cluster.
    #   To create a clone that is an Aurora Serverless v1 cluster, the
    #   original cluster must be an Aurora Serverless v1 cluster or an
    #   encrypted provisioned cluster.
    #
    #   Valid for: Aurora DB clusters only
    # @option options [String] :db_cluster_instance_class
    #   The compute and memory capacity of the each DB instance in the
    #   Multi-AZ DB cluster, for example db.m6gd.xlarge. Not all DB instance
    #   classes are available in all Amazon Web Services Regions, or for all
    #   database engines.
    #
    #   For the full list of DB instance classes, and availability for your
    #   engine, see [DB instance class][1] in the *Amazon RDS User Guide.*
    #
    #   Valid for: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB cluster.
    #
    #   When specified for a Multi-AZ DB cluster, a value for the `Iops`
    #   parameter is required.
    #
    #   Valid values: `aurora`, `aurora-iopt1` (Aurora DB clusters); `io1`
    #   (Multi-AZ DB clusters)
    #
    #   Default: `aurora` (Aurora DB clusters); `io1` (Multi-AZ DB clusters)
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :publicly_accessible
    #   A value that indicates whether the DB cluster is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access is not permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB cluster isn't publicly accessible, it is an internal DB
    #   cluster with a DNS name that resolves to a private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   Valid for: Multi-AZ DB clusters only
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for each DB instance in the Multi-AZ DB
    #   cluster.
    #
    #   For information about valid IOPS values, see [Amazon RDS Provisioned
    #   IOPS storage][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: Must be a multiple between .5 and 50 of the storage
    #   amount for the DB instance.
    #
    #   Valid for: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    # @option options [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    # @option options [String] :network_type
    #   The network type of the DB cluster.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    # @return [DBCluster]
    def restore(options = {})
      options = options.merge(source_db_cluster_identifier: @id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.restore_db_cluster_to_point_in_time(options)
      end
      DBCluster.new(
        id: resp.data.db_cluster.db_cluster_identifier,
        data: resp.data.db_cluster,
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   events = db_cluster.events({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    # @option options [Integer] :duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    # @option options [Array<String>] :event_categories
    #   A list of event categories that trigger notifications for a event
    #   notification subscription.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          source_type: "db-cluster",
          source_identifier: @id
        )
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_events(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.events.each do |e|
            batch << Event.new(
              source_id: e.source_identifier,
              date: e.date,
              data: e,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Event::Collection.new(batches)
    end

    # @return [DBInstance::Collection]
    def members
      batch = []
      data[:db_cluster_members].each do |d|
        batch << DBInstance.new(
          id: d[:db_instance_identifier],
          data: d,
          client: @client
        )
      end
      DBInstance::Collection.new([batch], size: batch.size)
    end

    # @return [OptionGroup::Collection]
    def option_groups
      batch = []
      data[:db_cluster_option_group_memberships].each do |d|
        batch << OptionGroup.new(
          name: d[:db_cluster_option_group_name],
          data: d,
          client: @client
        )
      end
      OptionGroup::Collection.new([batch], size: batch.size)
    end

    # @return [DBClusterParameterGroup, nil]
    def parameter_group
      if data[:db_cluster_parameter_group]
        DBClusterParameterGroup.new(
          name: data[:db_cluster_parameter_group],
          client: @client
        )
      else
        nil
      end
    end

    # @example Request syntax with placeholder values
    #
    #   snapshots = db_cluster.snapshots({
    #     db_cluster_snapshot_identifier: "String",
    #     snapshot_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     include_shared: false,
    #     include_public: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_cluster_snapshot_identifier
    #   A specific DB cluster snapshot identifier to describe. This parameter
    #   can't be used in conjunction with the `DBClusterIdentifier`
    #   parameter. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing
    #     DBClusterSnapshot.
    #
    #   * If this identifier is for an automated snapshot, the `SnapshotType`
    #     parameter must also be specified.
    # @option options [String] :snapshot_type
    #   The type of DB cluster snapshots to be returned. You can specify one
    #   of the following values:
    #
    #   * `automated` - Return all DB cluster snapshots that have been
    #     automatically taken by Amazon RDS for my Amazon Web Services
    #     account.
    #
    #   * `manual` - Return all DB cluster snapshots that have been taken by
    #     my Amazon Web Services account.
    #
    #   * `shared` - Return all manual DB cluster snapshots that have been
    #     shared to my Amazon Web Services account.
    #
    #   * `public` - Return all DB cluster snapshots that have been marked as
    #     public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated and
    #   manual DB cluster snapshots are returned. You can include shared DB
    #   cluster snapshots with these results by enabling the `IncludeShared`
    #   parameter. You can include public DB cluster snapshots with these
    #   results by enabling the `IncludePublic` parameter.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The `IncludePublic`
    #   parameter doesn't apply when `SnapshotType` is set to `shared`. The
    #   `IncludeShared` parameter doesn't apply when `SnapshotType` is set to
    #   `public`.
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB cluster snapshots to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs).
    #
    #   * `db-cluster-snapshot-id` - Accepts DB cluster snapshot identifiers.
    #
    #   * `snapshot-type` - Accepts types of DB cluster snapshots.
    #
    #   * `engine` - Accepts names of database engines.
    # @option options [Boolean] :include_shared
    #   A value that indicates whether to include shared manual DB cluster
    #   snapshots from other Amazon Web Services accounts that this Amazon Web
    #   Services account has been given permission to copy or restore. By
    #   default, these snapshots are not included.
    #
    #   You can give an Amazon Web Services account permission to restore a
    #   manual DB cluster snapshot from another Amazon Web Services account by
    #   the `ModifyDBClusterSnapshotAttribute` API action.
    # @option options [Boolean] :include_public
    #   A value that indicates whether to include manual DB cluster snapshots
    #   that are public and can be copied or restored by any Amazon Web
    #   Services account. By default, the public snapshots are not included.
    #
    #   You can share a manual DB cluster snapshot as public by using the
    #   ModifyDBClusterSnapshotAttribute API action.
    # @return [DBClusterSnapshot::Collection]
    def snapshots(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(db_cluster_identifier: @id)
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_cluster_snapshots(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_cluster_snapshots.each do |d|
            batch << DBClusterSnapshot.new(
              cluster_id: @id,
              snapshot_id: d.db_cluster_snapshot_identifier,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBClusterSnapshot::Collection.new(batches)
    end

    # @return [DBSubnetGroup, nil]
    def subnet_group
      if data[:db_subnet_group]
        DBSubnetGroup.new(
          name: data[:db_subnet_group],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
