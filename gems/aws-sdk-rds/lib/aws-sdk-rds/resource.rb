# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
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
    # @option options [required, String] :db_cluster_identifier
    #   The DB cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
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
    def create_db_cluster(options = {})
      resp = @client.create_db_cluster(options)
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
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
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
    # @option options [required, String] :description
    #   The description for the DB cluster parameter group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @return [DBClusterParameterGroup]
    def create_db_cluster_parameter_group(options = {})
      resp = @client.create_db_cluster_parameter_group(options)
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
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     timezone: "String",
    #     enable_iam_database_authentication: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_name
    #   The meaning of this parameter differs according to the database engine
    #   you use.
    #
    #   Type: String
    #
    #   **MySQL**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter is not specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 alphanumeric characters
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **MariaDB**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter is not specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 alphanumeric characters
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **PostgreSQL**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter is not specified, the default "postgres" database is
    #   created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 63 alphanumeric characters
    #
    #   * Must begin with a letter or an underscore. Subsequent characters can
    #     be letters, underscores, or digits (0-9).
    #
    #   * Cannot be a word reserved by the specified database engine
    #
    #   **Oracle**
    #
    #   The Oracle System ID (SID) of the created DB instance. If you specify
    #   `null`, the default value `ORCL` is used. You can't specify the
    #   string NULL, or any other reserved word, for `DBName`.
    #
    #   Default: `ORCL`
    #
    #   Constraints:
    #
    #   * Cannot be longer than 8 characters
    #
    #   ^
    #
    #   **SQL Server**
    #
    #   Not applicable. Must be null.
    #
    #   **Amazon Aurora**
    #
    #   The name of the database to create when the primary instance of the DB
    #   cluster is created. If this parameter is not specified, no database is
    #   created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 alphanumeric characters
    #
    #   * Cannot be a word reserved by the specified database engine
    # @option options [required, String] :db_instance_identifier
    #   The DB instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens (1 to
    #     15 for SQL Server).
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    # @option options [Integer] :allocated_storage
    #   The amount of storage (in gigabytes) to be initially allocated for the
    #   database instance.
    #
    #   Type: Integer
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Aurora cluster volumes automatically grow as the
    #   amount of data in your database increases, though you are only charged
    #   for the space that you use in an Aurora cluster volume.
    #
    #   **MySQL**
    #
    #   Constraints: Must be an integer from 5 to 6144.
    #
    #   **MariaDB**
    #
    #   Constraints: Must be an integer from 5 to 6144.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must be an integer from 5 to 6144.
    #
    #   **Oracle**
    #
    #   Constraints: Must be an integer from 10 to 6144.
    #
    #   **SQL Server**
    #
    #   Constraints: Must be an integer from 200 to 4096 (Standard Edition and
    #   Enterprise Edition) or from 20 to 4096 (Express Edition and Web
    #   Edition)
    # @option options [required, String] :db_instance_class
    #   The compute and memory capacity of the DB instance. Note that not all
    #   instance classes are available in all regions for all DB engines.
    #
    #   Valid Values: `db.t1.micro | db.m1.small | db.m1.medium | db.m1.large
    #   | db.m1.xlarge | db.m2.xlarge |db.m2.2xlarge | db.m2.4xlarge |
    #   db.m3.medium | db.m3.large | db.m3.xlarge | db.m3.2xlarge |
    #   db.m4.large | db.m4.xlarge | db.m4.2xlarge | db.m4.4xlarge |
    #   db.m4.10xlarge | db.r3.large | db.r3.xlarge | db.r3.2xlarge |
    #   db.r3.4xlarge | db.r3.8xlarge | db.t2.micro | db.t2.small |
    #   db.t2.medium | db.t2.large`
    # @option options [required, String] :engine
    #   The name of the database engine to be used for this instance.
    #
    #   Not every database engine is available for every AWS region.
    #
    #   Valid Values:
    #
    #   * `aurora`
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se`
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
    #   The name for the master database user.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. You specify the name for the master database user when
    #   you create your DB cluster.
    #
    #   **MariaDB**
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 alphanumeric characters.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints:
    #
    #   * Must be 1 to 128 alphanumeric characters.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **MySQL**
    #
    #   Constraints:
    #
    #   * Must be 1 to 16 alphanumeric characters.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **Oracle**
    #
    #   Constraints:
    #
    #   * Must be 1 to 30 alphanumeric characters.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **PostgreSQL**
    #
    #   Constraints:
    #
    #   * Must be 1 to 63 alphanumeric characters.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    # @option options [String] :master_user_password
    #   The password for the master database user. Can be any printable ASCII
    #   character except "/", """, or "@".
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. You specify the password for the master database user
    #   when you create your DB cluster.
    #
    #   **MariaDB**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   **MySQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Oracle**
    #
    #   Constraints: Must contain from 8 to 30 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    # @option options [Array<String>] :db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   Default: The default DB security group for the database engine.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB instance.
    #
    #   Default: The default EC2 VPC security group for the DB subnet group's
    #   VPC.
    # @option options [String] :availability_zone
    #   The EC2 Availability Zone that the database instance will be created
    #   in. For information on regions and Availability Zones, see [Regions
    #   and Availability Zones][1].
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The AvailabilityZone parameter cannot be specified if the
    #   MultiAZ parameter is set to `true`. The specified Availability Zone
    #   must be in the same region as the current endpoint.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    # @option options [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   If there is no DB subnet group, then it is a non-VPC DB instance.
    # @option options [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC). For more information, see [DB
    #   Instance Maintenance][1].
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per region, occurring on a random day of the week. To see the
    #   time blocks available, see [ Adjusting the Preferred Maintenance
    #   Window][2] in the *Amazon RDS User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBMaintenance.html
    #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    # @option options [String] :db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB instance.
    #   If this argument is omitted, the default DBParameterGroup for the
    #   specified engine will be used.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Cannot be set to 0 if the DB instance is a source to Read Replicas
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter. For more information, see [DB Instance Backups][1].
    #
    #   Default: A 30-minute window selected at random from an 8-hour block of
    #   time per region. To see the time blocks available, see [ Adjusting the
    #   Preferred DB Instance Maintenance Window][2].
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.BackingUpAndRestoringAmazonRDSInstances.html
    #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow
    # @option options [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid Values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid Values: `1150-65535` except for `1434`, `3389`, `47001`,
    #   `49152`, and `49152` through `49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   Type: Integer
    # @option options [Boolean] :multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment. You cannot set
    #   the AvailabilityZone parameter if the MultiAZ parameter is set to
    #   true.
    # @option options [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   The following are the database engines and major and minor versions
    #   that are available with Amazon RDS. Not every database engine is
    #   available for every AWS region.
    #
    #   **Amazon Aurora**
    #
    #   * Version 5.6 (available in these AWS regions: ap-northeast-1,
    #     ap-northeast-2, ap-south-1, ap-southeast-2, eu-west-1, us-east-1,
    #     us-east-2, us-west-2): ` 5.6.10a`
    #
    #   ^
    #
    #   **MariaDB**
    #
    #   * `10.1.19` (supported in all AWS regions)
    #
    #   * `10.1.14` (supported in all regions except us-east-2)
    #
    #
    #
    #   * `10.0.28` (supported in all AWS regions)
    #
    #   * `10.0.24` (supported in all AWS regions)
    #
    #   * `10.0.17` (supported in all regions except us-east-2, ca-central-1,
    #     eu-west-2)
    #
    #   **Microsoft SQL Server 2016**
    #
    #   * `13.00.4422.0.v1` (supported for all editions, and all AWS regions)
    #
    #   * `13.00.2164.0.v1` (supported for all editions, and all AWS regions)
    #
    #   **Microsoft SQL Server 2014**
    #
    #   * `12.00.5546.0.v1` (supported for all editions, and all AWS regions)
    #
    #   * `12.00.5000.0.v1` (supported for all editions, and all AWS regions)
    #
    #   * `12.00.4422.0.v1` (supported for all editions except Enterprise
    #     Edition, and all AWS regions except ca-central-1 and eu-west-2)
    #
    #   **Microsoft SQL Server 2012**
    #
    #   * `11.00.6594.0.v1` (supported for all editions, and all AWS regions)
    #
    #   * `11.00.6020.0.v1` (supported for all editions, and all AWS regions)
    #
    #   * `11.00.5058.0.v1` (supported for all editions, and all AWS regions
    #     except us-east-2, ca-central-1, and eu-west-2)
    #
    #   * `11.00.2100.60.v1` (supported for all editions, and all AWS regions
    #     except us-east-2, ca-central-1, and eu-west-2)
    #
    #   **Microsoft SQL Server 2008 R2**
    #
    #   * `10.50.6529.0.v1` (supported for all editions, and all AWS regions
    #     except us-east-2, ca-central-1, and eu-west-2)
    #
    #   * `10.50.6000.34.v1` (supported for all editions, and all AWS regions
    #     except us-east-2, ca-central-1, and eu-west-2)
    #
    #   * `10.50.2789.0.v1` (supported for all editions, and all AWS regions
    #     except us-east-2, ca-central-1, and eu-west-2)
    #
    #   **MySQL**
    #
    #   * `5.7.17` (supported in all AWS regions)
    #
    #   * `5.7.16` (supported in all AWS regions)
    #
    #   * `5.7.11` (supported in all AWS regions)
    #
    #   * `5.7.10` (supported in all regions except us-east-2, ca-central-1,
    #     eu-west-2)
    #
    #
    #
    #   * `5.6.35` (supported in all AWS regions)
    #
    #   * `5.6.34` (supported in all AWS regions)
    #
    #   * `5.6.29` (supported in all AWS regions)
    #
    #   * `5.6.27` (supported in all regions except us-east-2, ca-central-1,
    #     eu-west-2)
    #
    #   * `5.6.23` (supported in all regions except us-east-2, ap-south-1,
    #     ca-central-1, eu-west-2)
    #
    #   * `5.6.22` (supported in all regions except us-east-2, ap-south-1,
    #     ap-northeast-2, ca-central-1, eu-west-2)
    #
    #   * `5.6.21b` (supported in all regions except us-east-2, ap-south-1,
    #     ap-northeast-2, ca-central-1, eu-west-2)
    #
    #   * `5.6.21` (supported in all regions except us-east-2, ap-south-1,
    #     ap-northeast-2, ca-central-1, eu-west-2)
    #
    #   * `5.6.19b` (supported in all regions except us-east-2, ap-south-1,
    #     ap-northeast-2, ca-central-1, eu-west-2)
    #
    #   * `5.6.19a` (supported in all regions except us-east-2, ap-south-1,
    #     ap-northeast-2, ca-central-1, eu-west-2)
    #
    #
    #
    #   * `5.5.54` (supported in all AWS regions)
    #
    #   * `5.5.53` (supported in all AWS regions)
    #
    #   * `5.5.46` (supported in all AWS regions)
    #
    #   **Oracle 12c**
    #
    #   * `12.1.0.2.v8` (supported for EE in all AWS regions, and SE2 in all
    #     AWS regions except us-gov-west-1)
    #
    #   * `12.1.0.2.v7` (supported for EE in all AWS regions, and SE2 in all
    #     AWS regions except us-gov-west-1)
    #
    #   * `12.1.0.2.v6` (supported for EE in all AWS regions, and SE2 in all
    #     AWS regions except us-gov-west-1)
    #
    #   * `12.1.0.2.v5` (supported for EE in all AWS regions, and SE2 in all
    #     AWS regions except us-gov-west-1)
    #
    #   * `12.1.0.2.v4` (supported for EE in all AWS regions, and SE2 in all
    #     AWS regions except us-gov-west-1)
    #
    #   * `12.1.0.2.v3` (supported for EE in all AWS regions, and SE2 in all
    #     AWS regions except us-gov-west-1)
    #
    #   * `12.1.0.2.v2` (supported for EE in all AWS regions, and SE2 in all
    #     AWS regions except us-gov-west-1)
    #
    #   * `12.1.0.2.v1` (supported for EE in all AWS regions, and SE2 in all
    #     AWS regions except us-gov-west-1)
    #
    #   **Oracle 11g**
    #
    #   * `11.2.0.4.v12` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v11` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v10` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v9` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v8` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v7` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v6` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v5` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v4` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v3` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   * `11.2.0.4.v1` (supported for EE, SE1, and SE, in all AWS regions)
    #
    #   **PostgreSQL**
    #
    #   * **Version 9.6.x:** ` 9.6.1 | 9.6.2`
    #
    #   * **Version 9.5.x:** `9.5.6 | 9.5.4 | 9.5.2`
    #
    #   * **Version 9.4.x:** `9.4.11 | 9.4.9 | 9.4.7`
    #
    #   * **Version 9.3.x:** `9.3.16 | 9.3.14 | 9.3.12`
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor engine upgrades will be applied automatically to
    #   the DB instance during the maintenance window.
    #
    #   Default: `true`
    # @option options [String] :license_model
    #   License model information for this DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance.
    #
    #   Constraints: Must be a multiple between 3 and 10 of the storage amount
    #   for the DB instance. Must also be an integer multiple of 1000. For
    #   example, if the size of your DB instance is 500 GB, then your `Iops`
    #   value can be 2000, 3000, 4000, or 5000.
    # @option options [String] :option_group_name
    #   Indicates that the DB instance should be associated with the specified
    #   option group.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, cannot be removed from an option group, and that option group
    #   cannot be removed from a DB instance once it is associated with a DB
    #   instance
    # @option options [String] :character_set_name
    #   For supported engines, indicates that the DB instance should be
    #   associated with the specified CharacterSet.
    # @option options [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address.
    #
    #   Default: The default behavior varies depending on whether a VPC has
    #   been requested or not. The following list shows the default behavior
    #   in each case.
    #
    #   * **Default VPC:** true
    #
    #   * **VPC:** false
    #
    #   If no DB subnet group has been specified as part of the request and
    #   the PubliclyAccessible value has not been set, the DB instance will be
    #   publicly accessible. If a specific DB subnet group has been specified
    #   as part of the request and the PubliclyAccessible value has not been
    #   set, the DB instance will be private.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @option options [String] :db_cluster_identifier
    #   The identifier of the DB cluster that the instance will belong to.
    #
    #   For information on creating a DB cluster, see CreateDBCluster.
    #
    #   Type: String
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified; otherwise
    #   `standard`
    # @option options [String] :tde_credential_arn
    #   The ARN from the Key Store with which to associate the instance for
    #   TDE encryption.
    # @option options [String] :tde_credential_password
    #   The password for the given ARN from the Key Store in order to access
    #   the device.
    # @option options [Boolean] :storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #
    #   Default: false
    # @option options [String] :kms_key_id
    #   The KMS key identifier for an encrypted DB instance.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB instance with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   instance, then you can use the KMS key alias instead of the ARN for
    #   the KM encryption key.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify a
    #   value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key for
    #   your AWS account. Your AWS account has a different default encryption
    #   key for each AWS region.
    # @option options [String] :domain
    #   Specify the Active Directory Domain to create the instance in.
    # @option options [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance; otherwise false. The default is false.
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    # @option options [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, go to [Setting Up and Enabling Enhanced
    #   Monitoring][1].
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    # @option options [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    # @option options [Integer] :promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1].
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html#Aurora.Managing.FaultTolerance
    # @option options [String] :timezone
    #   The time zone of the DB instance. The time zone parameter is currently
    #   supported only by [Microsoft SQL Server][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone
    # @option options [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts; otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines:
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    # @return [DBInstance]
    def create_db_instance(options = {})
      resp = @client.create_db_instance(options)
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
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    # @option options [required, String] :db_parameter_group_family
    #   The DB parameter group family name. A DB parameter group can be
    #   associated with one and only one DB parameter group family, and can be
    #   applied only to a DB instance running a database engine and engine
    #   version compatible with that DB parameter group family.
    # @option options [required, String] :description
    #   The description for the DB parameter group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @return [DBParameterGroup]
    def create_db_parameter_group(options = {})
      resp = @client.create_db_parameter_group(options)
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
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * Must not be "Default"
    #
    #   Example: `mysecuritygroup`
    # @option options [required, String] :db_security_group_description
    #   The description for the DB security group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @return [DBSecurityGroup]
    def create_db_security_group(options = {})
      resp = @client.create_db_security_group(options)
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
    #   Constraints: Must contain no more than 255 alphanumeric characters,
    #   periods, underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    # @option options [required, String] :db_subnet_group_description
    #   The description for the DB subnet group.
    # @option options [required, Array<String>] :subnet_ids
    #   The EC2 Subnet IDs for the DB subnet group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @return [DBSubnetGroup]
    def create_db_subnet_group(options = {})
      resp = @client.create_db_subnet_group(options)
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
    #   The type of source that will be generating the events. For example, if
    #   you want to be notified of events generated by a DB instance, you
    #   would set this parameter to db-instance. if this value is not
    #   specified, all events are returned.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group` \|
    #   `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot`
    # @option options [Array<String>] :event_categories
    #   A list of event categories for a SourceType that you want to subscribe
    #   to. You can see a list of the categories for a given SourceType in the
    #   [Events][1] topic in the Amazon RDS User Guide or by using the
    #   **DescribeEventCategories** action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    # @option options [Array<String>] :source_ids
    #   The list of identifiers of the event sources for which events will be
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain only
    #   ASCII letters, digits, and hyphens; it cannot end with a hyphen or
    #   contain two consecutive hyphens.
    #
    #   Constraints:
    #
    #   * If SourceIds are supplied, SourceType must also be provided.
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    # @option options [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription, set to
    #   **false** to create the subscription but not active it.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @return [EventSubscription]
    def create_event_subscription(options = {})
      resp = @client.create_event_subscription(options)
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
    #   * Must be 1 to 255 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `myoptiongroup`
    # @option options [required, String] :engine_name
    #   Specifies the name of the engine that this option group should be
    #   associated with.
    # @option options [required, String] :major_engine_version
    #   Specifies the major version of the engine that this option group
    #   should be associated with.
    # @option options [required, String] :option_group_description
    #   The description of the option group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @return [OptionGroup]
    def create_option_group(options = {})
      resp = @client.create_option_group(options)
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
        resp = @client.describe_account_attributes(options)
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
    #     max_records: 1,
    #     marker: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :certificate_identifier
    #   The user-supplied certificate identifier. If this parameter is
    #   specified, information for only the identified certificate is
    #   returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
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
    #   DescribeCertificates request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    # @return [Certificate::Collection]
    def certificates(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_certificates(options)
        resp.data.certificates.each do |c|
          batch << Certificate.new(
            id: c.certificate_identifier,
            data: c,
            client: @client
          )
        end
        y.yield(batch)
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
    #     max_records: 1,
    #     marker: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_cluster_parameter_group_name
    #   The name of a specific DB cluster parameter group to return details
    #   for.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
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
    #   `DescribeDBClusterParameterGroups` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    # @return [DBClusterParameterGroup::Collection]
    def db_cluster_parameter_groups(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_db_cluster_parameter_groups(options)
        resp.data.db_cluster_parameter_groups.each do |d|
          batch << DBClusterParameterGroup.new(
            name: d.db_cluster_parameter_group_name,
            data: d,
            client: @client
          )
        end
        y.yield(batch)
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
    #     max_records: 1,
    #     marker: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_cluster_identifier
    #   The user-supplied DB cluster identifier. If this parameter is
    #   specified, information from only the specific DB cluster is returned.
    #   This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB clusters to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB clusters identified by these ARNs.
    #
    #   ^
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
    #   An optional pagination token provided by a previous DescribeDBClusters
    #   request. If this parameter is specified, the response includes only
    #   records beyond the marker, up to the value specified by `MaxRecords`.
    # @return [DBCluster::Collection]
    def db_clusters(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_db_clusters(options)
        resp.data.db_clusters.each do |d|
          batch << DBCluster.new(
            id: d.db_cluster_identifier,
            data: d,
            client: @client
          )
        end
        y.yield(batch)
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
    #   })
    # @param [Hash] options ({})
    # @option options [String] :engine
    #   The database engine to return.
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
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [Array<Types::Filter>] :filters
    #   Not currently supported.
    # @option options [Boolean] :default_only
    #   Indicates that only the default version of the specified engine or
    #   engine and major version combination is returned.
    # @option options [Boolean] :list_supported_character_sets
    #   If this parameter is specified and the requested engine supports the
    #   `CharacterSetName` parameter for `CreateDBInstance`, the response
    #   includes a list of supported character sets for each engine version.
    # @option options [Boolean] :list_supported_timezones
    #   If this parameter is specified and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    # @return [DBEngineVersion::Collection]
    def db_engine_versions(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_db_engine_versions(options)
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
    #   The user-supplied instance identifier. If this parameter is specified,
    #   information from only the specific DB instance is returned. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB instances to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB instances associated with the DB Clusters
    #     identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB instances identified by these ARNs.
    # @return [DBInstance::Collection]
    def db_instances(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_db_instances(options)
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
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [DBParameterGroup::Collection]
    def db_parameter_groups(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_db_parameter_groups(options)
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
    #   This parameter is not currently supported.
    # @return [DBSecurityGroup::Collection]
    def db_security_groups(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_db_security_groups(options)
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
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_instance_identifier
    #   The ID of the DB instance to retrieve the list of DB snapshots for.
    #   This parameter cannot be used in conjunction with
    #   `DBSnapshotIdentifier`. This parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [String] :db_snapshot_identifier
    #   A specific DB snapshot identifier to describe. This parameter cannot
    #   be used in conjunction with `DBInstanceIdentifier`. This value is
    #   stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * If this identifier is for an automated snapshot, the `SnapshotType`
    #     parameter must also be specified.
    # @option options [String] :snapshot_type
    #   The type of snapshots to be returned. You can specify one of the
    #   following values:
    #
    #   * `automated` - Return all DB snapshots that have been automatically
    #     taken by Amazon RDS for my AWS account.
    #
    #   * `manual` - Return all DB snapshots that have been taken by my AWS
    #     account.
    #
    #   * `shared` - Return all manual DB snapshots that have been shared to
    #     my AWS account.
    #
    #   * `public` - Return all DB snapshots that have been marked as public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated and
    #   manual snapshots are returned. Shared and public DB snapshots are not
    #   included in the returned results by default. You can include shared
    #   snapshots with these results by setting the `IncludeShared` parameter
    #   to `true`. You can include public snapshots with these results by
    #   setting the `IncludePublic` parameter to `true`.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The `IncludePublic`
    #   parameter doesn't apply when `SnapshotType` is set to `shared`. The
    #   `IncludeShared` parameter doesn't apply when `SnapshotType` is set to
    #   `public`.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @option options [Boolean] :include_shared
    #   Set this value to `true` to include shared manual DB snapshots from
    #   other AWS accounts that this AWS account has been given permission to
    #   copy or restore, otherwise set this value to `false`. The default is
    #   `false`.
    #
    #   You can give an AWS account permission to restore a manual DB snapshot
    #   from another AWS account by using the ModifyDBSnapshotAttribute API
    #   action.
    # @option options [Boolean] :include_public
    #   Set this value to `true` to include manual DB snapshots that are
    #   public and can be copied or restored by any AWS account, otherwise set
    #   this value to `false`. The default is `false`.
    #
    #   You can share a manual DB snapshot as public by using the
    #   ModifyDBSnapshotAttribute API.
    # @return [DBSnapshot::Collection]
    def db_snapshots(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_db_snapshots(options)
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
    #   This parameter is not currently supported.
    # @return [DBSubnetGroup::Collection]
    def db_subnet_groups(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_db_subnet_groups(options)
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
    #   The type of source that will be generating the events.
    #
    #   Valid values: db-instance \| db-parameter-group \| db-security-group
    #   \| db-snapshot
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [EventCategoryMap::Collection]
    def event_category_maps(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_event_categories(options)
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
    #   This parameter is not currently supported.
    # @return [EventSubscription::Collection]
    def event_subscriptions(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_event_subscriptions(options)
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
    #     source_type: "db-instance", # accepts db-instance, db-parameter-group, db-security-group, db-snapshot, db-cluster, db-cluster-snapshot
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
    #   The identifier of the event source for which events will be returned.
    #   If not specified, then all sources are included in the response.
    #
    #   Constraints:
    #
    #   * If SourceIdentifier is supplied, SourceType must also be provided.
    #
    #   * If the source type is `DBInstance`, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is `DBSecurityGroup`, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is `DBParameterGroup`, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is `DBSnapshot`, a `DBSnapshotIdentifier` must be
    #     supplied.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
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
    #   This parameter is not currently supported.
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
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
    #   The name of the option group to describe. Cannot be supplied together
    #   with EngineName or MajorEngineVersion.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @option options [String] :engine_name
    #   Filters the list of option groups to only include groups associated
    #   with a specific database engine.
    # @option options [String] :major_engine_version
    #   Filters the list of option groups to only include groups associated
    #   with a specific database engine version. If specified, then EngineName
    #   must also be specified.
    # @return [OptionGroup::Collection]
    def option_groups(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_option_groups(options)
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
    #   The Multi-AZ filter value. Specify this parameter to show only those
    #   reservations matching the specified Multi-AZ parameter.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [ReservedDBInstance::Collection]
    def reserved_db_instances(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_reserved_db_instances(options)
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
    #   the available offerings matching the specified product description.
    # @option options [String] :offering_type
    #   The offering type filter value. Specify this parameter to show only
    #   the available offerings matching the specified offering type.
    #
    #   Valid Values: `"Partial Upfront" | "All Upfront" | "No Upfront" `
    # @option options [Boolean] :multi_az
    #   The Multi-AZ filter value. Specify this parameter to show only the
    #   available offerings matching the specified Multi-AZ parameter.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [ReservedDBInstancesOffering::Collection]
    def reserved_db_instances_offerings(options = {})
      batches = Enumerator.new do |y|
        resp = @client.describe_reserved_db_instances_offerings(options)
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
    #     marker: "String",
    #     max_records: 1,
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
    #     Amazon Resource Names (ARNs). The results list will only include
    #     pending maintenance actions for the DB clusters identified by these
    #     ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list will only include pending maintenance actions
    #     for the DB instances identified by these ARNs.
    # @option options [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribePendingMaintenanceActions` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   a number of records specified by `MaxRecords`.
    # @option options [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    # @return [ResourcePendingMaintenanceActionList::Collection]
    def resources_with_pending_maintenance_actions(options = {})
      batches = Enumerator.new do |y|
        batch = []
        resp = @client.describe_pending_maintenance_actions(options)
        resp.data.pending_maintenance_actions.each do |p|
          batch << ResourcePendingMaintenanceActionList.new(
            arn: p.resource_identifier,
            data: p,
            client: @client
          )
        end
        y.yield(batch)
      end
      ResourcePendingMaintenanceActionList::Collection.new(batches)
    end

  end
end
