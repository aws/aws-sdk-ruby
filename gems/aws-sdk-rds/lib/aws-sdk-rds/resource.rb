# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS

  # This class provides a resource oriented interface for RDS.
  # To create a resource object:
  #
  #     resource = Aws::RDS::Resource.new(region: 'us-west-2')
  #
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass `:client`, a default client will be constructed.
  #
  #     client = Aws::RDS::Client.new(region: 'us-west-2')
  #     resource = Aws::RDS::Resource.new(client: client)
  #
  class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   dbcluster = rds.create_db_cluster({
    #     availability_zones: ["String"],
    #     backup_retention_period: 1,
    #     character_set_name: "String",
    #     database_name: "String",
    #     db_cluster_identifier: "String", # required
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
    # @option options [required, String] :db_cluster_identifier
    #   The identifier for this DB cluster. This parameter is stored as a
    #   lowercase string.
    #
    #   Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
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
    def create_db_cluster(options = {})
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_cluster(options)
      end
      DBCluster.new(
        id: options[:db_cluster][:db_cluster_identifier],
        data: resp.data.db_cluster,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbclusterparametergroup = rds.create_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #     db_parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must not match the name of an existing DB cluster parameter group.
    #
    #   ^
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    # @option options [required, String] :db_parameter_group_family
    #   The DB cluster parameter group family name. A DB cluster parameter
    #   group can be associated with one and only one DB cluster parameter
    #   group family, and can be applied only to a DB cluster running a
    #   database engine and engine version compatible with that DB cluster
    #   parameter group family.
    #
    #   **Aurora MySQL**
    #
    #   Example: `aurora-mysql5.7`, `aurora-mysql8.0`
    #
    #   **Aurora PostgreSQL**
    #
    #   Example: `aurora-postgresql14`
    #
    #   **RDS for MySQL**
    #
    #   Example: `mysql8.0`
    #
    #   **RDS for PostgreSQL**
    #
    #   Example: `postgres12`
    #
    #   To list all of the available parameter group families for a DB engine,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily" --engine <engine>`
    #
    #   For example, to list all of the available parameter group families for
    #   the Aurora PostgreSQL DB engine, use the following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily" --engine
    #   aurora-postgresql`
    #
    #   <note markdown="1"> The output contains duplicates.
    #
    #    </note>
    #
    #   The following are the valid DB engine values:
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #
    #   * `mysql`
    #
    #   * `postgres`
    # @option options [required, String] :description
    #   The description for the DB cluster parameter group.
    # @option options [Array<Types::Tag>] :tags
    #   Tags to assign to the DB cluster parameter group.
    # @return [DBClusterParameterGroup]
    def create_db_cluster_parameter_group(options = {})
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_cluster_parameter_group(options)
      end
      DBClusterParameterGroup.new(
        name: resp.data.db_cluster_parameter_group.db_cluster_parameter_group_name,
        data: resp.data.db_cluster_parameter_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = rds.create_db_instance({
    #     db_name: "String",
    #     db_instance_identifier: "String", # required
    #     allocated_storage: 1,
    #     db_instance_class: "String", # required
    #     engine: "String", # required
    #     master_username: "String",
    #     master_user_password: "String",
    #     db_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     availability_zone: "String",
    #     db_subnet_group_name: "String",
    #     preferred_maintenance_window: "String",
    #     db_parameter_group_name: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     port: 1,
    #     multi_az: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     character_set_name: "String",
    #     nchar_character_set_name: "String",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     db_cluster_identifier: "String",
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     domain: "String",
    #     domain_fqdn: "String",
    #     domain_ou: "String",
    #     domain_auth_secret_arn: "String",
    #     domain_dns_ips: ["String"],
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     timezone: "String",
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     deletion_protection: false,
    #     max_allocated_storage: 1,
    #     enable_customer_owned_ip: false,
    #     custom_iam_instance_profile: "String",
    #     backup_target: "String",
    #     network_type: "String",
    #     storage_throughput: 1,
    #     manage_master_user_password: false,
    #     master_user_secret_kms_key_id: "String",
    #     ca_certificate_identifier: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_name
    #   The meaning of this parameter differs depending on the database
    #   engine.
    #
    #   Amazon Aurora MySQL
    #
    #   : The name of the database to create when the primary DB instance of
    #     the Aurora MySQL DB cluster is created. If you don't specify a
    #     value, Amazon RDS doesn't create a database in the DB cluster.
    #
    #     Constraints:
    #
    #     * Must contain 1 to 64 alphanumeric characters.
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   Amazon Aurora PostgreSQL
    #
    #   : The name of the database to create when the primary DB instance of
    #     the Aurora PostgreSQL DB cluster is created.
    #
    #     Default: `postgres`
    #
    #     Constraints:
    #
    #     * Must contain 1 to 63 alphanumeric characters.
    #
    #     * Must begin with a letter. Subsequent characters can be letters,
    #       underscores, or digits (0 to 9).
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   Amazon RDS Custom for Oracle
    #
    #   : The Oracle System ID (SID) of the created RDS Custom DB instance.
    #
    #     Default: `ORCL`
    #
    #     Constraints:
    #
    #     * Must contain 1 to 8 alphanumeric characters.
    #
    #     * Must contain a letter.
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   Amazon RDS Custom for SQL Server
    #
    #   : Not applicable. Must be null.
    #
    #   RDS for MariaDB
    #
    #   : The name of the database to create when the DB instance is created.
    #     If you don't specify a value, Amazon RDS doesn't create a database
    #     in the DB instance.
    #
    #     Constraints:
    #
    #     * Must contain 1 to 64 letters or numbers.
    #
    #     * Must begin with a letter. Subsequent characters can be letters,
    #       underscores, or digits (0-9).
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   RDS for MySQL
    #
    #   : The name of the database to create when the DB instance is created.
    #     If you don't specify a value, Amazon RDS doesn't create a database
    #     in the DB instance.
    #
    #     Constraints:
    #
    #     * Must contain 1 to 64 letters or numbers.
    #
    #     * Must begin with a letter. Subsequent characters can be letters,
    #       underscores, or digits (0-9).
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   RDS for Oracle
    #
    #   : The Oracle System ID (SID) of the created DB instance.
    #
    #     Default: `ORCL`
    #
    #     Constraints:
    #
    #     * Can't be longer than 8 characters.
    #
    #     * Can't be a word reserved by the database engine, such as the
    #       string `NULL`.
    #
    #   RDS for PostgreSQL
    #
    #   : The name of the database to create when the DB instance is created.
    #
    #     Default: `postgres`
    #
    #     Constraints:
    #
    #     * Must contain 1 to 63 letters, numbers, or underscores.
    #
    #     * Must begin with a letter. Subsequent characters can be letters,
    #       underscores, or digits (0-9).
    #
    #     * Can't be a word reserved by the database engine.
    #
    #   RDS for SQL Server
    #
    #   : Not applicable. Must be null.
    # @option options [required, String] :db_instance_identifier
    #   The identifier for this DB instance. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    # @option options [Integer] :allocated_storage
    #   The amount of storage in gibibytes (GiB) to allocate for the DB
    #   instance.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Aurora
    #   cluster volumes automatically grow as the amount of data in your
    #   database increases, though you are only charged for the space that you
    #   use in an Aurora cluster volume.
    #
    #   Amazon RDS Custom
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer from
    #       40 to 65536 for RDS Custom for Oracle, 16384 for RDS Custom for
    #       SQL Server.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 40 to
    #       65536 for RDS Custom for Oracle, 16384 for RDS Custom for SQL
    #       Server.
    #
    #   RDS for MariaDB
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer from
    #       20 to 65536.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #       65536.
    #
    #     * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   RDS for MySQL
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer from
    #       20 to 65536.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #       65536.
    #
    #     * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   RDS for Oracle
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer from
    #       20 to 65536.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #       65536.
    #
    #     * Magnetic storage (standard): Must be an integer from 10 to 3072.
    #
    #   RDS for PostgreSQL
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3): Must be an integer from
    #       20 to 65536.
    #
    #     * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #       65536.
    #
    #     * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   RDS for SQL Server
    #
    #   : Constraints to the amount of storage for each storage type are the
    #     following:
    #
    #     * General Purpose (SSD) storage (gp2, gp3):
    #
    #       * Enterprise and Standard editions: Must be an integer from 20 to
    #         16384.
    #
    #       * Web and Express editions: Must be an integer from 20 to 16384.
    #
    #     * Provisioned IOPS storage (io1):
    #
    #       * Enterprise and Standard editions: Must be an integer from 100 to
    #         16384.
    #
    #       * Web and Express editions: Must be an integer from 100 to 16384.
    #
    #     * Magnetic storage (standard):
    #
    #       * Enterprise and Standard editions: Must be an integer from 20 to
    #         1024.
    #
    #       * Web and Express editions: Must be an integer from 20 to 1024.
    # @option options [required, String] :db_instance_class
    #   The compute and memory capacity of the DB instance, for example
    #   `db.m5.large`. Not all DB instance classes are available in all Amazon
    #   Web Services Regions, or for all database engines. For the full list
    #   of DB instance classes, and availability for your engine, see [DB
    #   instance classes][1] in the *Amazon RDS User Guide* or [Aurora DB
    #   instance classes][2] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.DBInstanceClass.html
    # @option options [required, String] :engine
    #   The database engine to use for this DB instance.
    #
    #   Not every database engine is available in every Amazon Web Services
    #   Region.
    #
    #   Valid Values:
    #
    #   * `aurora-mysql` (for Aurora MySQL DB instances)
    #
    #   * `aurora-postgresql` (for Aurora PostgreSQL DB instances)
    #
    #   * `custom-oracle-ee` (for RDS Custom for Oracle DB instances)
    #
    #   * `custom-oracle-ee-cdb` (for RDS Custom for Oracle DB instances)
    #
    #   * `custom-sqlserver-ee` (for RDS Custom for SQL Server DB instances)
    #
    #   * `custom-sqlserver-se` (for RDS Custom for SQL Server DB instances)
    #
    #   * `custom-sqlserver-web` (for RDS Custom for SQL Server DB instances)
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    # @option options [String] :master_username
    #   The name for the master user.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The name
    #   for the master user is managed by the DB cluster.
    #
    #   This setting is required for RDS DB instances.
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 letters, numbers, or underscores.
    #
    #   * First character must be a letter.
    #
    #   * Can't be a reserved word for the chosen database engine.
    # @option options [String] :master_user_password
    #   The password for the master user.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   password for the master user is managed by the DB cluster.
    #
    #   Constraints:
    #
    #   * Can't be specified if `ManageMasterUserPassword` is turned on.
    #
    #   * Can include any printable ASCII character except "/", """, or
    #     "@".
    #
    #   Length Constraints:
    #
    #   * RDS for MariaDB - Must contain from 8 to 41 characters.
    #
    #   * RDS for Microsoft SQL Server - Must contain from 8 to 128
    #     characters.
    #
    #   * RDS for MySQL - Must contain from 8 to 41 characters.
    #
    #   * RDS for Oracle - Must contain from 8 to 30 characters.
    #
    #   * RDS for PostgreSQL - Must contain from 8 to 128 characters.
    # @option options [Array<String>] :db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   This setting applies to the legacy EC2-Classic platform, which is no
    #   longer used to create new DB instances. Use the `VpcSecurityGroupIds`
    #   setting instead.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of Amazon EC2 VPC security groups to associate with this DB
    #   instance.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   associated list of EC2 VPC security groups is managed by the DB
    #   cluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet group's
    #   VPC.
    # @option options [String] :availability_zone
    #   The Availability Zone (AZ) where the database will be created. For
    #   information on Amazon Web Services Regions and Availability Zones, see
    #   [Regions and Availability Zones][1].
    #
    #   For Amazon Aurora, each Aurora DB cluster hosts copies of its storage
    #   in three separate Availability Zones. Specify one of these
    #   Availability Zones. Aurora automatically chooses an appropriate
    #   Availability Zone if you don't specify one.
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   Amazon Web Services Region.
    #
    #   Constraints:
    #
    #   * The `AvailabilityZone` parameter can't be specified if the DB
    #     instance is a Multi-AZ deployment.
    #
    #   * The specified Availability Zone must be in the same Amazon Web
    #     Services Region as the current endpoint.
    #
    #   Example: `us-east-1d`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    # @option options [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DB subnet group.
    #
    #   * Must not be `default`.
    #
    #   Example: `mydbsubnetgroup`
    # @option options [String] :preferred_maintenance_window
    #   The time range each week during which system maintenance can occur.
    #   For more information, see [Amazon RDS Maintenance Window][1] in the
    #   *Amazon RDS User Guide.*
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   Constraints:
    #
    #   * Must be in the format `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   * The day values must be `mon | tue | wed | thu | fri | sat | sun`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred backup window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    # @option options [String] :db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB instance.
    #   If you don't specify a value, then Amazon RDS uses the default DB
    #   parameter group for the specified DB engine and version.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to `0` disables automated backups.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   retention period for automated backups is managed by the DB cluster.
    #
    #   Default: `1`
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35.
    #
    #   * Can't be set to 0 if the DB instance is a source to read replicas.
    #
    #   * Can't be set to 0 for an RDS Custom for Oracle DB instance.
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter. The default is a 30-minute window selected at random from
    #   an 8-hour block of time for each Amazon Web Services Region. For more
    #   information, see [Backup window][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The daily
    #   time range for creating automated backups is managed by the DB
    #   cluster.
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
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    # @option options [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   This setting doesn't apply to Aurora DB instances. The port number is
    #   managed by the cluster.
    #
    #   Valid Values: `1150-65535`
    #
    #   Default:
    #
    #   * RDS for MariaDB - `3306`
    #
    #   * RDS for Microsoft SQL Server - `1433`
    #
    #   * RDS for MySQL - `3306`
    #
    #   * RDS for Oracle - `1521`
    #
    #   * RDS for PostgreSQL - `5432`
    #
    #   Constraints:
    #
    #   * For RDS for Microsoft SQL Server, the value can't be `1234`,
    #     `1434`, `3260`, `3343`, `3389`, `47001`, or `49152-49156`.
    #
    #   ^
    # @option options [Boolean] :multi_az
    #   Specifies whether the DB instance is a Multi-AZ deployment. You can't
    #   set the `AvailabilityZone` parameter if the DB instance is a Multi-AZ
    #   deployment.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (DB instance Availability Zones (AZs) are managed by
    #     the DB cluster.)
    #
    #   * RDS Custom
    # @option options [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The version
    #   number of the database engine the DB instance uses is managed by the
    #   DB cluster.
    #
    #   For a list of valid engine versions, use the
    #   `DescribeDBEngineVersions` operation.
    #
    #   The following are the database engines and links to information about
    #   the major and minor versions that are available with Amazon RDS. Not
    #   every database engine is available for every Amazon Web Services
    #   Region.
    #
    #   Amazon RDS Custom for Oracle
    #
    #   : A custom engine version (CEV) that you have previously created. This
    #     setting is required for RDS Custom for Oracle. The CEV name has the
    #     following format: 19.*customized\_string*. A valid CEV name is
    #     `19.my_cev1`. For more information, see [ Creating an RDS Custom for
    #     Oracle DB instance][1] in the *Amazon RDS User Guide*.
    #
    #   Amazon RDS Custom for SQL Server
    #
    #   : See [RDS Custom for SQL Server general requirements][2] in the
    #     *Amazon RDS User Guide*.
    #
    #   RDS for MariaDB
    #
    #   : For information, see [MariaDB on Amazon RDS versions][3] in the
    #     *Amazon RDS User Guide*.
    #
    #   RDS for Microsoft SQL Server
    #
    #   : For information, see [Microsoft SQL Server versions on Amazon
    #     RDS][4] in the *Amazon RDS User Guide*.
    #
    #   RDS for MySQL
    #
    #   : For information, see [MySQL on Amazon RDS versions][5] in the
    #     *Amazon RDS User Guide*.
    #
    #   RDS for Oracle
    #
    #   : For information, see [Oracle Database Engine release notes][6] in
    #     the *Amazon RDS User Guide*.
    #
    #   RDS for PostgreSQL
    #
    #   : For information, see [Amazon RDS for PostgreSQL versions and
    #     extensions][7] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-creating.html#custom-creating.create
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits-MS.html
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.VersionSupport
    #   [5]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [6]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html
    #   [7]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Specifies whether minor engine upgrades are applied automatically to
    #   the DB instance during the maintenance window. By default, minor
    #   engine upgrades are applied automatically.
    #
    #   If you create an RDS Custom DB instance, you must set
    #   `AutoMinorVersionUpgrade` to `false`.
    # @option options [String] :license_model
    #   The license model information for this DB instance.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    #
    #   Valid Values:
    #
    #   * RDS for MariaDB - `general-public-license`
    #
    #   * RDS for Microsoft SQL Server - `license-included`
    #
    #   * RDS for MySQL - `general-public-license`
    #
    #   * RDS for Oracle - `bring-your-own-license | license-included`
    #
    #   * RDS for PostgreSQL - `postgresql-license`
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   initially allocate for the DB instance. For information about valid
    #   IOPS values, see [Amazon RDS DB instance storage][1] in the *Amazon
    #   RDS User Guide*.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Storage is
    #   managed by the DB cluster.
    #
    #   Constraints:
    #
    #   * For RDS for MariaDB, MySQL, Oracle, and PostgreSQL - Must be a
    #     multiple between .5 and 50 of the storage amount for the DB
    #     instance.
    #
    #   * For RDS for SQL Server - Must be a multiple between 1 and 50 of the
    #     storage amount for the DB instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html
    # @option options [String] :option_group_name
    #   The option group to associate the DB instance with.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group. Also, that option group
    #   can't be removed from a DB instance after it is associated with a DB
    #   instance.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    # @option options [String] :character_set_name
    #   For supported engines, the character set (`CharacterSet`) to associate
    #   the DB instance with.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora - The character set is managed by the DB cluster. For
    #     more information, see `CreateDBCluster`.
    #
    #   * RDS Custom - However, if you need to change the character set, you
    #     can change it on the database itself.
    # @option options [String] :nchar_character_set_name
    #   The name of the NCHAR character set for the Oracle DB instance.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    # @option options [Boolean] :publicly_accessible
    #   Specifies whether the DB instance is publicly accessible.
    #
    #   When the DB instance is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   instance's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB instance's VPC. Access to the DB
    #   instance is ultimately controlled by the security group it uses. That
    #   public access is not permitted if the security group assigned to the
    #   DB instance doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal DB
    #   instance with a DNS name that resolves to a private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB instance is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB instance is public.
    # @option options [Array<Types::Tag>] :tags
    #   Tags to assign to the DB instance.
    # @option options [String] :db_cluster_identifier
    #   The identifier of the DB cluster that this DB instance will belong to.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    # @option options [String] :storage_type
    #   The storage type to associate with the DB instance.
    #
    #   If you specify `io1` or `gp3`, you must also include a value for the
    #   `Iops` parameter.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Storage is
    #   managed by the DB cluster.
    #
    #   Valid Values: `gp2 | gp3 | io1 | standard`
    #
    #   Default: `io1`, if the `Iops` parameter is specified. Otherwise,
    #   `gp2`.
    # @option options [String] :tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    # @option options [String] :tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    # @option options [Boolean] :storage_encrypted
    #   Specifes whether the DB instance is encrypted. By default, it isn't
    #   encrypted.
    #
    #   For RDS Custom DB instances, either enable this setting or leave it
    #   unset. Otherwise, Amazon RDS reports an error.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The
    #   encryption for DB instances is managed by the DB cluster.
    # @option options [String] :kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   instance.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. The Amazon
    #   Web Services KMS key identifier is managed by the DB cluster. For more
    #   information, see `CreateDBCluster`.
    #
    #   If `StorageEncrypted` is enabled, and you do not specify a value for
    #   the `KmsKeyId` parameter, then Amazon RDS uses your default KMS key.
    #   There is a default KMS key for your Amazon Web Services account. Your
    #   Amazon Web Services account has a different default KMS key for each
    #   Amazon Web Services Region.
    #
    #   For Amazon RDS Custom, a KMS key is required for DB instances. For
    #   most RDS engines, if you leave this parameter empty while enabling
    #   `StorageEncrypted`, the engine uses the default KMS key. However, RDS
    #   Custom doesn't use the default key when this parameter is empty. You
    #   must explicitly specify a key.
    # @option options [String] :domain
    #   The Active Directory directory ID to create the DB instance in.
    #   Currently, only Microsoft SQL Server, MySQL, Oracle, and PostgreSQL DB
    #   instances can be created in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the *Amazon
    #   RDS User Guide*.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (The domain is managed by the DB cluster.)
    #
    #   * RDS Custom
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    # @option options [String] :domain_fqdn
    #   The fully qualified domain name (FQDN) of an Active Directory domain.
    #
    #   Constraints:
    #
    #   * Can't be longer than 64 characters.
    #
    #   ^
    #
    #   Example: `mymanagedADtest.mymanagedAD.mydomain`
    # @option options [String] :domain_ou
    #   The Active Directory organizational unit for your DB instance to join.
    #
    #   Constraints:
    #
    #   * Must be in the distinguished name format.
    #
    #   * Can't be longer than 64 characters.
    #
    #   Example:
    #   `OU=mymanagedADtestOU,DC=mymanagedADtest,DC=mymanagedAD,DC=mydomain`
    # @option options [String] :domain_auth_secret_arn
    #   The ARN for the Secrets Manager secret with the credentials for the
    #   user joining the domain.
    #
    #   Example:
    #   `arn:aws:secretsmanager:region:account-number:secret:myselfmanagedADtestsecret-123456`
    # @option options [Array<String>] :domain_dns_ips
    #   The IPv4 DNS IP addresses of your primary and secondary Active
    #   Directory domain controllers.
    #
    #   Constraints:
    #
    #   * Two IP addresses must be provided. If there isn't a secondary
    #     domain controller, use the IP address of the primary domain
    #     controller for both entries in the list.
    #
    #   ^
    #
    #   Example: `123.124.125.126,234.235.236.237`
    # @option options [Boolean] :copy_tags_to_snapshot
    #   Specifies whether to copy tags from the DB instance to snapshots of
    #   the DB instance. By default, tags are not copied.
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. Copying
    #   tags to snapshots is managed by the DB cluster. Setting this value for
    #   an Aurora DB instance has no effect on the DB cluster setting.
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collection of
    #   Enhanced Monitoring metrics, specify `0`.
    #
    #   If `MonitoringRoleArn` is specified, then you must set
    #   `MonitoringInterval` to a value other than `0`.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Valid Values: `0 | 1 | 5 | 10 | 15 | 30 | 60`
    #
    #   Default: `0`
    # @option options [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, see [Setting Up and Enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than `0`, then you
    #   must supply a `MonitoringRoleArn` value.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    # @option options [String] :domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the Directory
    #   Service.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (The domain is managed by the DB cluster.)
    #
    #   * RDS Custom
    # @option options [Integer] :promotion_tier
    #   The order of priority in which an Aurora Replica is promoted to the
    #   primary instance after a failure of the existing primary instance. For
    #   more information, see [ Fault Tolerance for an Aurora DB Cluster][1]
    #   in the *Amazon Aurora User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   Default: `1`
    #
    #   Valid Values: `0 - 15`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html#Aurora.Managing.FaultTolerance
    # @option options [String] :timezone
    #   The time zone of the DB instance. The time zone parameter is currently
    #   supported only by [Microsoft SQL Server][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone
    # @option options [Boolean] :enable_iam_database_authentication
    #   Specifies whether to enable mapping of Amazon Web Services Identity
    #   and Access Management (IAM) accounts to database accounts. By default,
    #   mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication for MySQL and
    #   PostgreSQL][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (Mapping Amazon Web Services IAM accounts to database
    #     accounts is managed by the DB cluster.)
    #
    #   * RDS Custom
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    # @option options [Boolean] :enable_performance_insights
    #   Specifies whether to enable Performance Insights for the DB instance.
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
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
    #   This setting doesn't apply to RDS Custom DB instances.
    # @option options [Integer] :performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
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
    #   Amazon RDS returns an error.
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs. For more information, see [ Publishing Database Logs
    #   to Amazon CloudWatch Logs][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (CloudWatch Logs exports are managed by the DB
    #     cluster.)
    #
    #   * RDS Custom
    #
    #   The following values are valid for each DB engine:
    #
    #   * RDS for MariaDB - `audit | error | general | slowquery`
    #
    #   * RDS for Microsoft SQL Server - `agent | error`
    #
    #   * RDS for MySQL - `audit | error | general | slowquery`
    #
    #   * RDS for Oracle - `alert | audit | listener | trace | oemagent`
    #
    #   * RDS for PostgreSQL - `postgresql | upgrade`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    # @option options [Boolean] :deletion_protection
    #   Specifies whether the DB instance has deletion protection enabled. The
    #   database can't be deleted when deletion protection is enabled. By
    #   default, deletion protection isn't enabled. For more information, see
    #   [ Deleting a DB Instance][1].
    #
    #   This setting doesn't apply to Amazon Aurora DB instances. You can
    #   enable or disable deletion protection for the DB cluster. For more
    #   information, see `CreateDBCluster`. DB instances in a DB cluster can
    #   be deleted even when deletion protection is enabled for the DB
    #   cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    # @option options [Integer] :max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to the following DB instances:
    #
    #   * Amazon Aurora (Storage is managed by the DB cluster.)
    #
    #   * RDS Custom
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    # @option options [Boolean] :enable_customer_owned_ip
    #   Specifies whether to enable a customer-owned IP address (CoIP) for an
    #   RDS on Outposts DB instance.
    #
    #   A *CoIP* provides local or external connectivity to resources in your
    #   Outpost subnets through your on-premises network. For some use cases,
    #   a CoIP can provide lower latency for connections to the DB instance
    #   from outside of its virtual private cloud (VPC) on your local network.
    #
    #   For more information about RDS on Outposts, see [Working with Amazon
    #   RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For more information about CoIPs, see [Customer-owned IP addresses][2]
    #   in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing
    # @option options [String] :custom_iam_instance_profile
    #   The instance profile associated with the underlying Amazon EC2
    #   instance of an RDS Custom DB instance.
    #
    #   This setting is required for RDS Custom.
    #
    #   Constraints:
    #
    #   * The profile must exist in your account.
    #
    #   * The profile must have an IAM role that Amazon EC2 has permissions to
    #     assume.
    #
    #   * The instance profile name and the associated IAM role name must
    #     start with the prefix `AWSRDSCustom`.
    #
    #   For the list of permissions required for the IAM role, see [ Configure
    #   IAM and your VPC][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    # @option options [String] :backup_target
    #   The location for storing automated backups and manual snapshots.
    #
    #   Valie Values:
    #
    #   * `outposts` (Amazon Web Services Outposts)
    #
    #   * `region` (Amazon Web Services Region)
    #
    #   Default: `region`
    #
    #   For more information, see [Working with Amazon RDS on Amazon Web
    #   Services Outposts][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    # @option options [String] :network_type
    #   The network type of the DB instance.
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB instance. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1] in
    #   the *Amazon RDS User Guide.*
    #
    #   Valid Values: `IPV4 | DUAL`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    # @option options [Integer] :storage_throughput
    #   The storage throughput value for the DB instance.
    #
    #   This setting applies only to the `gp3` storage type.
    #
    #   This setting doesn't apply to Amazon Aurora or RDS Custom DB
    #   instances.
    # @option options [Boolean] :manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager.
    #
    #   For more information, see [Password management with Amazon Web
    #   Services Secrets Manager][1] in the *Amazon RDS User Guide.*
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
    # @option options [String] :master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that is
    #   automatically generated and managed in Amazon Web Services Secrets
    #   Manager.
    #
    #   This setting is valid only if the master user password is managed by
    #   RDS in Amazon Web Services Secrets Manager for the DB instance.
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
    # @option options [String] :ca_certificate_identifier
    #   The CA certificate identifier to use for the DB instance's server
    #   certificate.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    #
    #   For more information, see [Using SSL/TLS to encrypt a connection to a
    #   DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS to
    #   encrypt a connection to a DB cluster][2] in the *Amazon Aurora User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
    # @return [DBInstance]
    def create_db_instance(options = {})
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_instance(options)
      end
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbparametergroup = rds.create_db_parameter_group({
    #     db_parameter_group_name: "String", # required
    #     db_parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    # @option options [required, String] :db_parameter_group_family
    #   The DB parameter group family name. A DB parameter group can be
    #   associated with one and only one DB parameter group family, and can be
    #   applied only to a DB instance running a database engine and engine
    #   version compatible with that DB parameter group family.
    #
    #   To list all of the available parameter group families for a DB engine,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily" --engine <engine>`
    #
    #   For example, to list all of the available parameter group families for
    #   the MySQL DB engine, use the following command:
    #
    #   `aws rds describe-db-engine-versions --query
    #   "DBEngineVersions[].DBParameterGroupFamily" --engine mysql`
    #
    #   <note markdown="1"> The output contains duplicates.
    #
    #    </note>
    #
    #   The following are the valid DB engine values:
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    # @option options [required, String] :description
    #   The description for the DB parameter group.
    # @option options [Array<Types::Tag>] :tags
    #   Tags to assign to the DB parameter group.
    # @return [DBParameterGroup]
    def create_db_parameter_group(options = {})
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_parameter_group(options)
      end
      DBParameterGroup.new(
        name: resp.data.db_parameter_group.db_parameter_group_name,
        data: resp.data.db_parameter_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbsecuritygroup = rds.create_db_security_group({
    #     db_security_group_name: "String", # required
    #     db_security_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_security_group_name
    #   The name for the DB security group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   * Must not be "Default"
    #
    #   Example: `mysecuritygroup`
    # @option options [required, String] :db_security_group_description
    #   The description for the DB security group.
    # @option options [Array<Types::Tag>] :tags
    #   Tags to assign to the DB security group.
    # @return [DBSecurityGroup]
    def create_db_security_group(options = {})
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_security_group(options)
      end
      DBSecurityGroup.new(
        name: resp.data.db_security_group.db_security_group_name,
        data: resp.data.db_security_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbsubnetgroup = rds.create_db_subnet_group({
    #     db_subnet_group_name: "String", # required
    #     db_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain no more than 255 letters, numbers, periods,
    #     underscores, spaces, or hyphens.
    #
    #   * Must not be default.
    #
    #   * First character must be a letter.
    #
    #   Example: `mydbsubnetgroup`
    # @option options [required, String] :db_subnet_group_description
    #   The description for the DB subnet group.
    # @option options [required, Array<String>] :subnet_ids
    #   The EC2 Subnet IDs for the DB subnet group.
    # @option options [Array<Types::Tag>] :tags
    #   Tags to assign to the DB subnet group.
    # @return [DBSubnetGroup]
    def create_db_subnet_group(options = {})
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_subnet_group(options)
      end
      DBSubnetGroup.new(
        name: resp.data.db_subnet_group.db_subnet_group_name,
        data: resp.data.db_subnet_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = rds.create_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     event_categories: ["String"],
    #     source_ids: ["String"],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the subscription.
    #
    #   Constraints: The name must be less than 255 characters.
    # @option options [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a topic
    #   and subscribe to it.
    # @option options [String] :source_type
    #   The type of source that is generating the events. For example, if you
    #   want to be notified of events generated by a DB instance, you set this
    #   parameter to `db-instance`. For RDS Proxy events, specify `db-proxy`.
    #   If this value isn't specified, all events are returned.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group` \|
    #   `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot` \|
    #   `db-proxy`
    # @option options [Array<String>] :event_categories
    #   A list of event categories for a particular source type (`SourceType`)
    #   that you want to subscribe to. You can see a list of the categories
    #   for a given source type in the "Amazon RDS event categories and event
    #   messages" section of the [ *Amazon RDS User Guide* ][1] or the [
    #   *Amazon Aurora User Guide* ][2]. You can also see this list by using
    #   the `DescribeEventCategories` operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.Messages.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Events.Messages.html
    # @option options [Array<String>] :source_ids
    #   The list of identifiers of the event sources for which events are
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain only
    #   ASCII letters, digits, and hyphens. It can't end with a hyphen or
    #   contain two consecutive hyphens.
    #
    #   Constraints:
    #
    #   * If `SourceIds` are supplied, `SourceType` must also be provided.
    #
    #   * If the source type is a DB instance, a `DBInstanceIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB cluster, a `DBClusterIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a `DBParameterGroupName`
    #     value must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     value must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB cluster snapshot, a
    #     `DBClusterSnapshotIdentifier` value must be supplied.
    #
    #   * If the source type is an RDS Proxy, a `DBProxyName` value must be
    #     supplied.
    # @option options [Boolean] :enabled
    #   A value that indicates whether to activate the subscription. If the
    #   event notification subscription isn't activated, the subscription is
    #   created but not active.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [EventSubscription]
    def create_event_subscription(options = {})
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_event_subscription(options)
      end
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   optiongroup = rds.create_option_group({
    #     option_group_name: "String", # required
    #     engine_name: "String", # required
    #     major_engine_version: "String", # required
    #     option_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :option_group_name
    #   Specifies the name of the option group to be created.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `myoptiongroup`
    # @option options [required, String] :engine_name
    #   Specifies the name of the engine that this option group should be
    #   associated with.
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    # @option options [required, String] :major_engine_version
    #   Specifies the major version of the engine that this option group
    #   should be associated with.
    # @option options [required, String] :option_group_description
    #   The description of the option group.
    # @option options [Array<Types::Tag>] :tags
    #   Tags to assign to the option group.
    # @return [OptionGroup]
    def create_option_group(options = {})
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_option_group(options)
      end
      OptionGroup.new(
        name: resp.data.option_group.option_group_name,
        data: resp.data.option_group,
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   rds.account_quotas()
    # @param [Hash] options ({})
    # @return [AccountQuota::Collection]
    def account_quotas(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_account_attributes(options)
        end
        resp.data.account_quotas.each do |a|
          batch << AccountQuota.new(
            name: a.account_quota_name,
            data: a,
            client: @client
          )
        end
        y.yield(batch)
      end
      AccountQuota::Collection.new(batches)
    end

    # @param [String] id
    # @return [Certificate]
    def certificate(id)
      Certificate.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   certificates = rds.certificates({
    #     certificate_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :certificate_identifier
    #   The user-supplied certificate identifier. If this parameter is
    #   specified, information for only the identified certificate is
    #   returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing CertificateIdentifier.
    #
    #   ^
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [Certificate::Collection]
    def certificates(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_certificates(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.certificates.each do |c|
            batch << Certificate.new(
              id: c.certificate_identifier,
              data: c,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Certificate::Collection.new(batches)
    end

    # @param [String] id
    # @return [DBCluster]
    def db_cluster(id)
      DBCluster.new(
        id: id,
        client: @client
      )
    end

    # @param [String] name
    # @return [DBClusterParameterGroup]
    def db_cluster_parameter_group(name)
      DBClusterParameterGroup.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_cluster_parameter_groups = rds.db_cluster_parameter_groups({
    #     db_cluster_parameter_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_cluster_parameter_group_name
    #   The name of a specific DB cluster parameter group to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [DBClusterParameterGroup::Collection]
    def db_cluster_parameter_groups(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_cluster_parameter_groups(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_cluster_parameter_groups.each do |d|
            batch << DBClusterParameterGroup.new(
              name: d.db_cluster_parameter_group_name,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBClusterParameterGroup::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   db_clusters = rds.db_clusters({
    #     db_cluster_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     include_shared: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_cluster_identifier
    #   The user-supplied DB cluster identifier or the Amazon Resource Name
    #   (ARN) of the DB cluster. If this parameter is specified, information
    #   for only the specific DB cluster is returned. This parameter isn't
    #   case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DB cluster identifier.
    #
    #   ^
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB clusters to describe.
    #
    #   Supported Filters:
    #
    #   * `clone-group-id` - Accepts clone group identifiers. The results list
    #     only includes information about the DB clusters associated with
    #     these clone groups.
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list only includes
    #     information about the DB clusters identified by these ARNs.
    #
    #   * `db-cluster-resource-id` - Accepts DB cluster resource identifiers.
    #     The results list will only include information about the DB clusters
    #     identified by these DB cluster resource identifiers.
    #
    #   * `domain` - Accepts Active Directory directory IDs. The results list
    #     only includes information about the DB clusters associated with
    #     these domains.
    #
    #   * `engine` - Accepts engine names. The results list only includes
    #     information about the DB clusters for these engines.
    # @option options [Boolean] :include_shared
    #   Specifies whether the output includes information about clusters
    #   shared from other Amazon Web Services accounts.
    # @return [DBCluster::Collection]
    def db_clusters(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_clusters(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_clusters.each do |d|
            batch << DBCluster.new(
              id: d.db_cluster_identifier,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBCluster::Collection.new(batches)
    end

    # @param [String] name
    # @return [DBEngine]
    def db_engine(name)
      DBEngine.new(
        name: name,
        client: @client
      )
    end

    # @param [String] engine_name
    # @param [String] version
    # @return [DBEngineVersion]
    def db_engine_version(engine_name, version)
      DBEngineVersion.new(
        engine_name: engine_name,
        version: version,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_engine_versions = rds.db_engine_versions({
    #     engine: "String",
    #     engine_version: "String",
    #     db_parameter_group_family: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     default_only: false,
    #     list_supported_character_sets: false,
    #     list_supported_timezones: false,
    #     include_all: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :engine
    #   The database engine to return.
    #
    #   Valid Values:
    #
    #   * `aurora-mysql`
    #
    #   * `aurora-postgresql`
    #
    #   * `custom-oracle-ee`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    # @option options [String] :engine_version
    #   The database engine version to return.
    #
    #   Example: `5.1.49`
    # @option options [String] :db_parameter_group_family
    #   The name of a specific DB parameter group family to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DBParameterGroupFamily.
    #
    #   ^
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB engine versions to describe.
    #
    #   Supported filters:
    #
    #   * `db-parameter-group-family` - Accepts parameter groups family names.
    #     The results list only includes information about the DB engine
    #     versions for these parameter group families.
    #
    #   * `engine` - Accepts engine names. The results list only includes
    #     information about the DB engine versions for these engines.
    #
    #   * `engine-mode` - Accepts DB engine modes. The results list only
    #     includes information about the DB engine versions for these engine
    #     modes. Valid DB engine modes are the following:
    #
    #     * `global`
    #
    #     * `multimaster`
    #
    #     * `parallelquery`
    #
    #     * `provisioned`
    #
    #     * `serverless`
    #
    #   * `engine-version` - Accepts engine versions. The results list only
    #     includes information about the DB engine versions for these engine
    #     versions.
    #
    #   * `status` - Accepts engine version statuses. The results list only
    #     includes information about the DB engine versions for these
    #     statuses. Valid statuses are the following:
    #
    #     * `available`
    #
    #     * `deprecated`
    # @option options [Boolean] :default_only
    #   A value that indicates whether only the default version of the
    #   specified engine or engine and major version combination is returned.
    # @option options [Boolean] :list_supported_character_sets
    #   A value that indicates whether to list the supported character sets
    #   for each engine version.
    #
    #   If this parameter is enabled and the requested engine supports the
    #   `CharacterSetName` parameter for `CreateDBInstance`, the response
    #   includes a list of supported character sets for each engine version.
    #
    #   For RDS Custom, the default is not to list supported character sets.
    #   If you set `ListSupportedCharacterSets` to `true`, RDS Custom returns
    #   no results.
    # @option options [Boolean] :list_supported_timezones
    #   A value that indicates whether to list the supported time zones for
    #   each engine version.
    #
    #   If this parameter is enabled and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    #
    #   For RDS Custom, the default is not to list supported time zones. If
    #   you set `ListSupportedTimezones` to `true`, RDS Custom returns no
    #   results.
    # @option options [Boolean] :include_all
    #   A value that indicates whether to include engine versions that aren't
    #   available in the list. The default is to list only available engine
    #   versions.
    # @return [DBEngineVersion::Collection]
    def db_engine_versions(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_engine_versions(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_engine_versions.each do |d|
            batch << DBEngineVersion.new(
              engine_name: d.engine,
              version: d.engine_version,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBEngineVersion::Collection.new(batches)
    end

    # @param [String] id
    # @return [DBInstance]
    def db_instance(id)
      DBInstance.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_instances = rds.db_instances({
    #     db_instance_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_instance_identifier
    #   The user-supplied instance identifier or the Amazon Resource Name
    #   (ARN) of the DB instance. If this parameter is specified, information
    #   from only the specific DB instance is returned. This parameter isn't
    #   case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DB instance.
    #
    #   ^
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB instances to describe.
    #
    #   Supported Filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list only includes
    #     information about the DB instances associated with the DB clusters
    #     identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     Amazon Resource Names (ARNs). The results list only includes
    #     information about the DB instances identified by these ARNs.
    #
    #   * `dbi-resource-id` - Accepts DB instance resource identifiers. The
    #     results list only includes information about the DB instances
    #     identified by these DB instance resource identifiers.
    #
    #   * `domain` - Accepts Active Directory directory IDs. The results list
    #     only includes information about the DB instances associated with
    #     these domains.
    #
    #   * `engine` - Accepts engine names. The results list only includes
    #     information about the DB instances for these engines.
    # @return [DBInstance::Collection]
    def db_instances(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_instances(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_instances.each do |d|
            batch << DBInstance.new(
              id: d.db_instance_identifier,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBInstance::Collection.new(batches)
    end

    # @param [String] name
    # @return [DBParameterGroup]
    def db_parameter_group(name)
      DBParameterGroup.new(
        name: name,
        client: @client
      )
    end

    # @param [String] name
    # @return [DBParameterGroupFamily]
    def db_parameter_group_family(name)
      DBParameterGroupFamily.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_parameter_groups = rds.db_parameter_groups({
    #     db_parameter_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_parameter_group_name
    #   The name of a specific DB parameter group to return details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [DBParameterGroup::Collection]
    def db_parameter_groups(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_parameter_groups(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_parameter_groups.each do |d|
            batch << DBParameterGroup.new(
              name: d.db_parameter_group_name,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBParameterGroup::Collection.new(batches)
    end

    # @param [String] name
    # @return [DBSecurityGroup]
    def db_security_group(name)
      DBSecurityGroup.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_security_groups = rds.db_security_groups({
    #     db_security_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_security_group_name
    #   The name of the DB security group to return details for.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [DBSecurityGroup::Collection]
    def db_security_groups(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_security_groups(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_security_groups.each do |d|
            batch << DBSecurityGroup.new(
              name: d.db_security_group_name,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBSecurityGroup::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   db_snapshots = rds.db_snapshots({
    #     db_instance_identifier: "String",
    #     db_snapshot_identifier: "String",
    #     snapshot_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     include_shared: false,
    #     include_public: false,
    #     dbi_resource_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_instance_identifier
    #   The ID of the DB instance to retrieve the list of DB snapshots for.
    #   This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBInstance.
    #
    #   ^
    # @option options [String] :db_snapshot_identifier
    #   A specific DB snapshot identifier to describe. This value is stored as
    #   a lowercase string.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBSnapshot.
    #
    #   * If this identifier is for an automated snapshot, the `SnapshotType`
    #     parameter must also be specified.
    # @option options [String] :snapshot_type
    #   The type of snapshots to be returned. You can specify one of the
    #   following values:
    #
    #   * `automated` - Return all DB snapshots that have been automatically
    #     taken by Amazon RDS for my Amazon Web Services account.
    #
    #   * `manual` - Return all DB snapshots that have been taken by my Amazon
    #     Web Services account.
    #
    #   * `shared` - Return all manual DB snapshots that have been shared to
    #     my Amazon Web Services account.
    #
    #   * `public` - Return all DB snapshots that have been marked as public.
    #
    #   * `awsbackup` - Return the DB snapshots managed by the Amazon Web
    #     Services Backup service.
    #
    #     For information about Amazon Web Services Backup, see the [ *Amazon
    #     Web Services Backup Developer Guide.* ][1]
    #
    #     The `awsbackup` type does not apply to Aurora.
    #
    #   If you don't specify a `SnapshotType` value, then both automated and
    #   manual snapshots are returned. Shared and public DB snapshots are not
    #   included in the returned results by default. You can include shared
    #   snapshots with these results by enabling the `IncludeShared`
    #   parameter. You can include public snapshots with these results by
    #   enabling the `IncludePublic` parameter.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The `IncludePublic`
    #   parameter doesn't apply when `SnapshotType` is set to `shared`. The
    #   `IncludeShared` parameter doesn't apply when `SnapshotType` is set to
    #   `public`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB snapshots to describe.
    #
    #   Supported filters:
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     Amazon Resource Names (ARNs).
    #
    #   * `db-snapshot-id` - Accepts DB snapshot identifiers.
    #
    #   * `dbi-resource-id` - Accepts identifiers of source DB instances.
    #
    #   * `snapshot-type` - Accepts types of DB snapshots.
    #
    #   * `engine` - Accepts names of database engines.
    # @option options [Boolean] :include_shared
    #   A value that indicates whether to include shared manual DB cluster
    #   snapshots from other Amazon Web Services accounts that this Amazon Web
    #   Services account has been given permission to copy or restore. By
    #   default, these snapshots are not included.
    #
    #   You can give an Amazon Web Services account permission to restore a
    #   manual DB snapshot from another Amazon Web Services account by using
    #   the `ModifyDBSnapshotAttribute` API action.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Boolean] :include_public
    #   A value that indicates whether to include manual DB cluster snapshots
    #   that are public and can be copied or restored by any Amazon Web
    #   Services account. By default, the public snapshots are not included.
    #
    #   You can share a manual DB snapshot as public by using the
    #   ModifyDBSnapshotAttribute API.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :dbi_resource_id
    #   A specific DB resource ID to describe.
    # @return [DBSnapshot::Collection]
    def db_snapshots(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_snapshots(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_snapshots.each do |d|
            batch << DBSnapshot.new(
              instance_id: d.db_instance_identifier,
              snapshot_id: d.db_snapshot_identifier,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBSnapshot::Collection.new(batches)
    end

    # @param [String] name
    # @return [DBSubnetGroup]
    def db_subnet_group(name)
      DBSubnetGroup.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_subnet_groups = rds.db_subnet_groups({
    #     db_subnet_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_subnet_group_name
    #   The name of the DB subnet group to return details for.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [DBSubnetGroup::Collection]
    def db_subnet_groups(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_subnet_groups(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.db_subnet_groups.each do |d|
            batch << DBSubnetGroup.new(
              name: d.db_subnet_group_name,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBSubnetGroup::Collection.new(batches)
    end

    # @param [String] source_type
    # @return [EventCategoryMap]
    def event_category_map(source_type)
      EventCategoryMap.new(
        source_type: source_type,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   event_category_maps = rds.event_category_maps({
    #     source_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :source_type
    #   The type of source that is generating the events. For RDS Proxy
    #   events, specify `db-proxy`.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group` \|
    #   `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot` \|
    #   `db-proxy`
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [EventCategoryMap::Collection]
    def event_category_maps(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_event_categories(options)
        end
        resp.data.event_categories_map_list.each do |e|
          batch << EventCategoryMap.new(
            source_type: e.source_type,
            data: e,
            client: @client
          )
        end
        y.yield(batch)
      end
      EventCategoryMap::Collection.new(batches)
    end

    # @param [String] name
    # @return [EventSubscription]
    def event_subscription(name)
      EventSubscription.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   event_subscriptions = rds.event_subscriptions({
    #     subscription_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :subscription_name
    #   The name of the RDS event notification subscription you want to
    #   describe.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [EventSubscription::Collection]
    def event_subscriptions(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_event_subscriptions(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.event_subscriptions_list.each do |e|
            batch << EventSubscription.new(
              name: e.cust_subscription_id,
              data: e,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      EventSubscription::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   events = rds.events({
    #     source_identifier: "String",
    #     source_type: "db-instance", # accepts db-instance, db-parameter-group, db-security-group, db-snapshot, db-cluster, db-cluster-snapshot, custom-engine-version, db-proxy, blue-green-deployment
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
    # @option options [String] :source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, then all sources are included in the response.
    #
    #   Constraints:
    #
    #   * If `SourceIdentifier` is supplied, `SourceType` must also be
    #     provided.
    #
    #   * If the source type is a DB instance, a `DBInstanceIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB cluster, a `DBClusterIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a `DBParameterGroupName`
    #     value must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     value must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` value
    #     must be supplied.
    #
    #   * If the source type is a DB cluster snapshot, a
    #     `DBClusterSnapshotIdentifier` value must be supplied.
    #
    #   * If the source type is an RDS Proxy, a `DBProxyName` value must be
    #     supplied.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    # @option options [String] :source_type
    #   The event source to retrieve events for. If no value is specified, all
    #   events are returned.
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

    # @param [String] name
    # @return [OptionGroup]
    def option_group(name)
      OptionGroup.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   option_groups = rds.option_groups({
    #     option_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     engine_name: "String",
    #     major_engine_version: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :option_group_name
    #   The name of the option group to describe. Can't be supplied together
    #   with EngineName or MajorEngineVersion.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @option options [String] :engine_name
    #   Filters the list of option groups to only include groups associated
    #   with a specific database engine.
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    # @option options [String] :major_engine_version
    #   Filters the list of option groups to only include groups associated
    #   with a specific database engine version. If specified, then EngineName
    #   must also be specified.
    # @return [OptionGroup::Collection]
    def option_groups(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_option_groups(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.option_groups_list.each do |o|
            batch << OptionGroup.new(
              name: o.option_group_name,
              data: o,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      OptionGroup::Collection.new(batches)
    end

    # @param [String] target_arn
    # @param [String] name
    # @return [PendingMaintenanceAction]
    def pending_maintenance_action(target_arn, name)
      PendingMaintenanceAction.new(
        target_arn: target_arn,
        name: name,
        client: @client
      )
    end

    # @param [String] id
    # @return [ReservedDBInstance]
    def reserved_db_instance(id)
      ReservedDBInstance.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   reserved_db_instances = rds.reserved_db_instances({
    #     reserved_db_instance_id: "String",
    #     reserved_db_instances_offering_id: "String",
    #     db_instance_class: "String",
    #     duration: "String",
    #     product_description: "String",
    #     offering_type: "String",
    #     multi_az: false,
    #     lease_id: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :reserved_db_instance_id
    #   The reserved DB instance identifier filter value. Specify this
    #   parameter to show only the reservation that matches the specified
    #   reservation ID.
    # @option options [String] :reserved_db_instances_offering_id
    #   The offering identifier filter value. Specify this parameter to show
    #   only purchased reservations matching the specified offering
    #   identifier.
    # @option options [String] :db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only those reservations matching the specified DB instances class.
    # @option options [String] :duration
    #   The duration filter value, specified in years or seconds. Specify this
    #   parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    # @option options [String] :product_description
    #   The product description filter value. Specify this parameter to show
    #   only those reservations matching the specified product description.
    # @option options [String] :offering_type
    #   The offering type filter value. Specify this parameter to show only
    #   the available offerings matching the specified offering type.
    #
    #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
    # @option options [Boolean] :multi_az
    #   A value that indicates whether to show only those reservations that
    #   support Multi-AZ.
    # @option options [String] :lease_id
    #   The lease identifier filter value. Specify this parameter to show only
    #   the reservation that matches the specified lease ID.
    #
    #   <note markdown="1"> Amazon Web Services Support might request the lease ID for an issue
    #   related to a reserved DB instance.
    #
    #    </note>
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [ReservedDBInstance::Collection]
    def reserved_db_instances(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_reserved_db_instances(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.reserved_db_instances.each do |r|
            batch << ReservedDBInstance.new(
              id: r.reserved_db_instance_id,
              data: r,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ReservedDBInstance::Collection.new(batches)
    end

    # @param [String] id
    # @return [ReservedDBInstancesOffering]
    def reserved_db_instances_offering(id)
      ReservedDBInstancesOffering.new(
        id: id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   reserved_db_instances_offerings = rds.reserved_db_instances_offerings({
    #     reserved_db_instances_offering_id: "String",
    #     db_instance_class: "String",
    #     duration: "String",
    #     product_description: "String",
    #     offering_type: "String",
    #     multi_az: false,
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :reserved_db_instances_offering_id
    #   The offering identifier filter value. Specify this parameter to show
    #   only the available offering that matches the specified reservation
    #   identifier.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    # @option options [String] :db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only the available offerings matching the specified DB instance class.
    # @option options [String] :duration
    #   Duration filter value, specified in years or seconds. Specify this
    #   parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    # @option options [String] :product_description
    #   Product description filter value. Specify this parameter to show only
    #   the available offerings that contain the specified product
    #   description.
    #
    #   <note markdown="1"> The results show offerings that partially match the filter value.
    #
    #    </note>
    # @option options [String] :offering_type
    #   The offering type filter value. Specify this parameter to show only
    #   the available offerings matching the specified offering type.
    #
    #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
    # @option options [Boolean] :multi_az
    #   A value that indicates whether to show only those reservations that
    #   support Multi-AZ.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [ReservedDBInstancesOffering::Collection]
    def reserved_db_instances_offerings(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_reserved_db_instances_offerings(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.reserved_db_instances_offerings.each do |r|
            batch << ReservedDBInstancesOffering.new(
              id: r.reserved_db_instances_offering_id,
              data: r,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ReservedDBInstancesOffering::Collection.new(batches)
    end

    # @param [String] arn
    # @return [ResourcePendingMaintenanceActionList]
    def resource_with_pending_maintenance_actions(arn)
      ResourcePendingMaintenanceActionList.new(
        arn: arn,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   resources_with_pending_maintenance_actions = rds.resources_with_pending_maintenance_actions({
    #     resource_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :resource_identifier
    #   The ARN of a resource to return pending maintenance actions for.
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more resources to return pending
    #   maintenance actions for.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list only includes pending
    #     maintenance actions for the DB clusters identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list only includes pending maintenance actions for
    #     the DB instances identified by these ARNs.
    # @return [ResourcePendingMaintenanceActionList::Collection]
    def resources_with_pending_maintenance_actions(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_pending_maintenance_actions(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.pending_maintenance_actions.each do |p|
            batch << ResourcePendingMaintenanceActionList.new(
              arn: p.resource_identifier,
              data: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ResourcePendingMaintenanceActionList::Collection.new(batches)
    end

  end
end
