# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :db_cluster_identifier :id

    # For all database engines except Amazon Aurora, `AllocatedStorage`
    # specifies the allocated storage size in gigabytes (GB). For Aurora,
    # `AllocatedStorage` always returns 1, because Aurora DB cluster storage
    # size is not fixed, but instead automatically adjusts as needed.
    # @return [Integer]
    def allocated_storage
      data.allocated_storage
    end

    # Provides the list of EC2 Availability Zones that instances in the DB
    # cluster can be created in.
    # @return [Array<String>]
    def availability_zones
      data.availability_zones
    end

    # Specifies the number of days for which automatic DB snapshots are
    # retained.
    # @return [Integer]
    def backup_retention_period
      data.backup_retention_period
    end

    # If present, specifies the name of the character set that this cluster
    # is associated with.
    # @return [String]
    def character_set_name
      data.character_set_name
    end

    # Contains the name of the initial database of this DB cluster that was
    # provided at create time, if one was specified when the DB cluster was
    # created. This same name is returned for the life of the DB cluster.
    # @return [String]
    def database_name
      data.database_name
    end

    # Specifies the name of the DB cluster parameter group for the DB
    # cluster.
    # @return [String]
    def db_cluster_parameter_group
      data.db_cluster_parameter_group
    end

    # Specifies information on the subnet group associated with the DB
    # cluster, including the name, description, and subnets in the subnet
    # group.
    # @return [String]
    def db_subnet_group
      data.db_subnet_group
    end

    # Specifies the current state of this DB cluster.
    # @return [String]
    def status
      data.status
    end

    # Specifies the progress of the operation as a percentage.
    # @return [String]
    def percent_progress
      data.percent_progress
    end

    # Specifies the earliest time to which a database can be restored with
    # point-in-time restore.
    # @return [Time]
    def earliest_restorable_time
      data.earliest_restorable_time
    end

    # Specifies the connection endpoint for the primary instance of the DB
    # cluster.
    # @return [String]
    def endpoint
      data.endpoint
    end

    # The reader endpoint for the DB cluster. The reader endpoint for a DB
    # cluster load-balances connections across the Aurora Replicas that are
    # available in a DB cluster. As clients request new connections to the
    # reader endpoint, Aurora distributes the connection requests among the
    # Aurora Replicas in the DB cluster. This functionality can help balance
    # your read workload across multiple Aurora Replicas in your DB cluster.
    #
    # If a failover occurs, and the Aurora Replica that you are connected to
    # is promoted to be the primary instance, your connection will be
    # dropped. To continue sending your read workload to other Aurora
    # Replicas in the cluster, you can then reconnect to the reader
    # endpoint.
    # @return [String]
    def reader_endpoint
      data.reader_endpoint
    end

    # Specifies whether the DB cluster has instances in multiple
    # Availability Zones.
    # @return [Boolean]
    def multi_az
      data.multi_az
    end

    # Provides the name of the database engine to be used for this DB
    # cluster.
    # @return [String]
    def engine
      data.engine
    end

    # Indicates the database engine version.
    # @return [String]
    def engine_version
      data.engine_version
    end

    # Specifies the latest time to which a database can be restored with
    # point-in-time restore.
    # @return [Time]
    def latest_restorable_time
      data.latest_restorable_time
    end

    # Specifies the port that the database engine is listening on.
    # @return [Integer]
    def port
      data.port
    end

    # Contains the master username for the DB cluster.
    # @return [String]
    def master_username
      data.master_username
    end

    # Provides the list of option group memberships for this DB cluster.
    # @return [Array<Types::DBClusterOptionGroupStatus>]
    def db_cluster_option_group_memberships
      data.db_cluster_option_group_memberships
    end

    # Specifies the daily time range during which automated backups are
    # created if automated backups are enabled, as determined by the
    # `BackupRetentionPeriod`.
    # @return [String]
    def preferred_backup_window
      data.preferred_backup_window
    end

    # Specifies the weekly time range during which system maintenance can
    # occur, in Universal Coordinated Time (UTC).
    # @return [String]
    def preferred_maintenance_window
      data.preferred_maintenance_window
    end

    # Contains the identifier of the source DB cluster if this DB cluster is
    # a Read Replica.
    # @return [String]
    def replication_source_identifier
      data.replication_source_identifier
    end

    # Contains one or more identifiers of the Read Replicas associated with
    # this DB cluster.
    # @return [Array<String>]
    def read_replica_identifiers
      data.read_replica_identifiers
    end

    # Provides the list of instances that make up the DB cluster.
    # @return [Array<Types::DBClusterMember>]
    def db_cluster_members
      data.db_cluster_members
    end

    # Provides a list of VPC security groups that the DB cluster belongs to.
    # @return [Array<Types::VpcSecurityGroupMembership>]
    def vpc_security_groups
      data.vpc_security_groups
    end

    # Specifies the ID that Amazon Route 53 assigns when you create a hosted
    # zone.
    # @return [String]
    def hosted_zone_id
      data.hosted_zone_id
    end

    # Specifies whether the DB cluster is encrypted.
    # @return [Boolean]
    def storage_encrypted
      data.storage_encrypted
    end

    # If `StorageEncrypted` is true, the KMS key identifier for the
    # encrypted DB cluster.
    # @return [String]
    def kms_key_id
      data.kms_key_id
    end

    # The region-unique, immutable identifier for the DB cluster. This
    # identifier is found in AWS CloudTrail log entries whenever the KMS key
    # for the DB cluster is accessed.
    # @return [String]
    def db_cluster_resource_id
      data.db_cluster_resource_id
    end

    # The Amazon Resource Name (ARN) for the DB cluster.
    # @return [String]
    def db_cluster_arn
      data.db_cluster_arn
    end

    # Provides a list of the AWS Identity and Access Management (IAM) roles
    # that are associated with the DB cluster. IAM roles that are associated
    # with a DB cluster grant permission for the DB cluster to access other
    # AWS services on your behalf.
    # @return [Array<Types::DBClusterRole>]
    def associated_roles
      data.associated_roles
    end

    # True if mapping of AWS Identity and Access Management (IAM) accounts
    # to database accounts is enabled; otherwise false.
    # @return [Boolean]
    def iam_database_authentication_enabled
      data.iam_database_authentication_enabled
    end

    # Identifies the clone group to which the DB cluster is associated.
    # @return [String]
    def clone_group_id
      data.clone_group_id
    end

    # Specifies the time when the DB cluster was created, in Universal
    # Coordinated Time (UTC).
    # @return [Time]
    def cluster_create_time
      data.cluster_create_time
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
      resp = @client.describe_db_clusters(db_cluster_identifier: @id)
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
    #     source_region: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :availability_zones
    #   A list of EC2 Availability Zones that instances in the DB cluster can
    #   be created in. For information on regions and Availability Zones, see
    #   [Regions and Availability Zones][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. You must
    #   specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    # @option options [String] :character_set_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified CharacterSet.
    # @option options [String] :database_name
    #   The name for your database of up to 64 alpha-numeric characters. If
    #   you do not provide a name, Amazon RDS will not create a database in
    #   the DB cluster you are creating.
    # @option options [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If this argument is omitted, `default.aurora5.6` will be
    #   used.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB cluster.
    # @option options [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB cluster.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters,
    #   periods, underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    # @option options [required, String] :engine
    #   The name of the database engine to be used for this DB cluster.
    #
    #   Valid Values: `aurora`
    # @option options [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   **Aurora**
    #
    #   Example: `5.6.10a`
    # @option options [Integer] :port
    #   The port number on which the instances in the DB cluster accept
    #   connections.
    #
    #   Default: `3306`
    # @option options [String] :master_username
    #   The name of the master user for the DB cluster.
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 alphanumeric characters.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    # @option options [String] :master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    # @option options [String] :option_group_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified option group.
    #
    #   Permanent options cannot be removed from an option group. The option
    #   group cannot be removed from a DB cluster once it is associated with a
    #   DB cluster.
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per region. To see the time blocks available, see [ Adjusting the
    #   Preferred Maintenance Window][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Times should be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    # @option options [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per region, occurring on a random day of the week. To see the
    #   time blocks available, see [ Adjusting the Preferred Maintenance
    #   Window][1] in the *Amazon RDS User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    # @option options [String] :replication_source_identifier
    #   The Amazon Resource Name (ARN) of the source DB instance or DB cluster
    #   if this DB cluster is created as a Read Replica.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @option options [Boolean] :storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    # @option options [String] :kms_key_id
    #   The KMS key identifier for an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for the
    #   KMS encryption key.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify a
    #   value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key for
    #   your AWS account. Your AWS account has a different default encryption
    #   key for each AWS region.
    #
    #   If you create a Read Replica of an encrypted DB cluster in another
    #   region, you must set `KmsKeyId` to a KMS key ID that is valid in the
    #   destination region. This key is used to encrypt the Read Replica in
    #   that region.
    # @option options [String] :pre_signed_url
    #   A URL that contains a Signature Version 4 signed request for the
    #   `CreateDBCluster` action to be called in the source region where the
    #   DB cluster will be replicated from. You only need to specify
    #   `PreSignedUrl` when you are performing cross-region replication from
    #   an encrypted DB cluster.
    #
    #   The pre-signed URL must be a valid request for the `CreateDBCluster`
    #   API action that can be executed in the source region that contains the
    #   encrypted DB cluster to be copied.
    #
    #   The pre-signed URL request must contain the following parameter
    #   values:
    #
    #   * `KmsKeyId` - The KMS key identifier for the key to use to encrypt
    #     the copy of the DB cluster in the destination region. This should
    #     refer to the same KMS key for both the `CreateDBCluster` action that
    #     is called in the destination region, and the action contained in the
    #     pre-signed URL.
    #
    #   * `DestinationRegion` - The name of the region that Aurora Read
    #     Replica will be created in.
    #
    #   * `ReplicationSourceIdentifier` - The DB cluster identifier for the
    #     encrypted DB cluster to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source region. For
    #     example, if you are copying an encrypted DB cluster from the
    #     us-west-2 region, then your `ReplicationSourceIdentifier` would look
    #     like Example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (AWS Signature Version
    #   4)][1] and [ Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # @option options [Boolean] :enable_iam_database_authentication
    #   A Boolean value that is true to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts, and otherwise
    #   false.
    #
    #   Default: `false`
    # @option options [String] :destination_region
    # @option options [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    # @return [DBCluster]
    def create(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = @client.create_db_cluster(options)
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
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1-snapshot1`
    # @option options [Array<Types::Tag>] :tags
    #   The tags to be assigned to the DB cluster snapshot.
    # @return [DBClusterSnapshot]
    def create_snapshot(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = @client.create_db_cluster_snapshot(options)
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
    #   Determines whether a final DB cluster snapshot is created before the
    #   DB cluster is deleted. If `true` is specified, no DB cluster snapshot
    #   is created. If `false` is specified, a DB cluster snapshot is created
    #   before the DB cluster is deleted.
    #
    #   <note markdown="1"> You must specify a `FinalDBSnapshotIdentifier` parameter if
    #   `SkipFinalSnapshot` is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    # @option options [String] :final_db_snapshot_identifier
    #   The DB cluster snapshot identifier of the new DB cluster snapshot
    #   created when `SkipFinalSnapshot` is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the `SkipFinalShapshot`
    #   parameter to true results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @return [DBCluster]
    def delete(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = @client.delete_db_cluster(options)
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
    #   The name of the instance to promote to the primary instance.
    #
    #   You must specify the instance identifier for an Aurora Replica in the
    #   DB cluster. For example, `mydbcluster-replica1`.
    # @return [DBCluster]
    def failover(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = @client.failover_db_cluster(options)
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
    #   })
    # @param [Hash] options ({})
    # @option options [String] :new_db_cluster_identifier
    #   The new DB cluster identifier for the DB cluster when renaming a DB
    #   cluster. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster2`
    # @option options [Boolean] :apply_immediately
    #   A value that specifies whether the modifications in this request and
    #   any pending modifications are asynchronously applied as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the DB cluster. If this parameter is set to `false`, changes to the DB
    #   cluster are applied during the next maintenance window.
    #
    #   The `ApplyImmediately` parameter only affects the
    #   `NewDBClusterIdentifier` and `MasterUserPassword` values. If you set
    #   the `ApplyImmediately` parameter value to false, then changes to the
    #   `NewDBClusterIdentifier` and `MasterUserPassword` values are applied
    #   during the next maintenance window. All other changes are applied
    #   immediately, regardless of the value of the `ApplyImmediately`
    #   parameter.
    #
    #   Default: `false`
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. You must
    #   specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    # @option options [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to use for the DB cluster.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the DB cluster will belong to.
    # @option options [Integer] :port
    #   The port number on which the DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    # @option options [String] :master_user_password
    #   The new password for the master database user. This password can
    #   contain any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
    # @option options [String] :option_group_name
    #   A value that indicates that the DB cluster should be associated with
    #   the specified option group. Changing this parameter does not result in
    #   an outage except in the following case, and the change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is set to `true` for this request. If the parameter change
    #   results in an option group that enables OEM, this change can cause a
    #   brief (sub-second) period during which new connections are rejected
    #   but existing connections are not interrupted.
    #
    #   Permanent options cannot be removed from an option group. The option
    #   group cannot be removed from a DB cluster once it is associated with a
    #   DB cluster.
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per region. To see the time blocks available, see [ Adjusting the
    #   Preferred Maintenance Window][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Times should be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    # @option options [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per region, occurring on a random day of the week. To see the
    #   time blocks available, see [ Adjusting the Preferred Maintenance
    #   Window][1] in the *Amazon RDS User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    # @option options [Boolean] :enable_iam_database_authentication
    #   A Boolean value that is true to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts, and otherwise
    #   false.
    #
    #   Default: `false`
    # @return [DBCluster]
    def modify(options = {})
      options = options.merge(db_cluster_identifier: @id)
      resp = @client.modify_db_cluster(options)
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
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_cluster_identifier
    #   The name of the new DB cluster to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
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
    #   Constraints: You cannot specify `copy-on-write` if the engine version
    #   of the source DB cluster is earlier than 1.11.
    #
    #   If you don't specify a `RestoreType` value, then the new DB cluster
    #   is restored as a full copy of the source DB cluster.
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
    #   * Must be specified if `UseLatestRestorableTime` parameter is not
    #     provided
    #
    #   * Cannot be specified if `UseLatestRestorableTime` parameter is true
    #
    #   * Cannot be specified if `RestoreType` parameter is `copy-on-write`
    #
    #   Example: `2015-03-07T23:45:00Z`
    # @option options [Boolean] :use_latest_restorable_time
    #   A value that is set to `true` to restore the DB cluster to the latest
    #   restorable backup time, and `false` otherwise.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if `RestoreToTime` parameter is
    #   provided.
    # @option options [Integer] :port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    # @option options [String] :db_subnet_group_name
    #   The DB subnet group name to use for the new DB cluster.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters,
    #   periods, underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    # @option options [String] :option_group_name
    #   The name of the option group for the new DB cluster.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster belongs to.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @option options [String] :kms_key_id
    #   The KMS key identifier to use when restoring an encrypted DB cluster
    #   from an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for the
    #   KMS encryption key.
    #
    #   You can restore to a new DB cluster and encrypt the new DB cluster
    #   with a KMS key that is different than the KMS key used to encrypt the
    #   source DB cluster. The new DB cluster will be encrypted with the KMS
    #   key identified by the `KmsKeyId` parameter.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following will occur:
    #
    #   * If the DB cluster is encrypted, then the restored DB cluster is
    #     encrypted using the KMS key that was used to encrypt the source DB
    #     cluster.
    #
    #   * If the DB cluster is not encrypted, then the restored DB cluster is
    #     not encrypted.
    #
    #   If `DBClusterIdentifier` refers to a DB cluster that is not encrypted,
    #   then the restore request is rejected.
    # @option options [Boolean] :enable_iam_database_authentication
    #   A Boolean value that is true to enable mapping of AWS Identity and
    #   Access Management (IAM) accounts to database accounts, and otherwise
    #   false.
    #
    #   Default: `false`
    # @return [DBCluster]
    def restore(options = {})
      options = options.merge(source_db_cluster_identifier: @id)
      resp = @client.restore_db_cluster_to_point_in_time(options)
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
    #   This parameter is not currently supported.
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          source_type: "db-cluster",
          source_identifier: @id
        )
        resp = @client.describe_events(options)
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
      data.db_cluster_members.each do |d|
        batch << DBInstance.new(
          id: d.db_instance_identifier,
          data: d,
          client: @client
        )
      end
      DBInstance::Collection.new([batch], size: batch.size)
    end

    # @return [OptionGroup::Collection]
    def option_groups
      batch = []
      data.db_cluster_option_group_memberships.each do |d|
        batch << OptionGroup.new(
          name: d.db_cluster_option_group_name,
          data: d,
          client: @client
        )
      end
      OptionGroup::Collection.new([batch], size: batch.size)
    end

    # @return [DBClusterParameterGroup, nil]
    def parameter_group
      if data.db_cluster_parameter_group
        DBClusterParameterGroup.new(
          name: data.db_cluster_parameter_group,
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
    #     max_records: 1,
    #     marker: "String",
    #     include_shared: false,
    #     include_public: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_cluster_snapshot_identifier
    #   A specific DB cluster snapshot identifier to describe. This parameter
    #   cannot be used in conjunction with the `DBClusterIdentifier`
    #   parameter. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * If this identifier is for an automated snapshot, the `SnapshotType`
    #     parameter must also be specified.
    # @option options [String] :snapshot_type
    #   The type of DB cluster snapshots to be returned. You can specify one
    #   of the following values:
    #
    #   * `automated` - Return all DB cluster snapshots that have been
    #     automatically taken by Amazon RDS for my AWS account.
    #
    #   * `manual` - Return all DB cluster snapshots that have been taken by
    #     my AWS account.
    #
    #   * `shared` - Return all manual DB cluster snapshots that have been
    #     shared to my AWS account.
    #
    #   * `public` - Return all DB cluster snapshots that have been marked as
    #     public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated and
    #   manual DB cluster snapshots are returned. You can include shared DB
    #   cluster snapshots with these results by setting the `IncludeShared`
    #   parameter to `true`. You can include public DB cluster snapshots with
    #   these results by setting the `IncludePublic` parameter to `true`.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The `IncludePublic`
    #   parameter doesn't apply when `SnapshotType` is set to `shared`. The
    #   `IncludeShared` parameter doesn't apply when `SnapshotType` is set to
    #   `public`.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @option options [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    # @option options [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterSnapshots` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    # @option options [Boolean] :include_shared
    #   Set this value to `true` to include shared manual DB cluster snapshots
    #   from other AWS accounts that this AWS account has been given
    #   permission to copy or restore, otherwise set this value to `false`.
    #   The default is `false`.
    #
    #   You can give an AWS account permission to restore a manual DB cluster
    #   snapshot from another AWS account by the
    #   ModifyDBClusterSnapshotAttribute API action.
    # @option options [Boolean] :include_public
    #   Set this value to `true` to include manual DB cluster snapshots that
    #   are public and can be copied or restored by any AWS account, otherwise
    #   set this value to `false`. The default is `false`. The default is
    #   false.
    #
    #   You can share a manual DB cluster snapshot as public by using the
    #   ModifyDBClusterSnapshotAttribute API action.
    # @return [DBClusterSnapshot::Collection]
    def snapshots(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = options.merge(db_cluster_identifier: @id)
        resp = @client.describe_db_cluster_snapshots(options)
        resp.data.db_cluster_snapshots.each do |d|
          batch << DBClusterSnapshot.new(
            cluster_id: @id,
            snapshot_id: d.db_cluster_snapshot_identifier,
            data: d,
            client: @client
          )
        end
        y.yield(batch)
      end
      DBClusterSnapshot::Collection.new(batches)
    end

    # @return [DBSubnetGroup, nil]
    def subnet_group
      if data.db_subnet_group
        DBSubnetGroup.new(
          name: data.db_subnet_group,
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
