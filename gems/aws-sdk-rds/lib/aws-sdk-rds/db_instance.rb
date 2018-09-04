# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBInstance

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
    alias :db_instance_identifier :id

    # Contains the name of the compute and memory capacity class of the DB
    # instance.
    # @return [String]
    def db_instance_class
      data[:db_instance_class]
    end

    # Provides the name of the database engine to be used for this DB
    # instance.
    # @return [String]
    def engine
      data[:engine]
    end

    # Specifies the current state of this database.
    # @return [String]
    def db_instance_status
      data[:db_instance_status]
    end

    # Contains the master username for the DB instance.
    # @return [String]
    def master_username
      data[:master_username]
    end

    # The meaning of this parameter differs according to the database engine
    # you use. For example, this value returns MySQL, MariaDB, or PostgreSQL
    # information when returning values from CreateDBInstanceReadReplica
    # since Read Replicas are only supported for these engines.
    #
    # **MySQL, MariaDB, SQL Server, PostgreSQL**
    #
    # Contains the name of the initial database of this instance that was
    # provided at create time, if one was specified when the DB instance was
    # created. This same name is returned for the life of the DB instance.
    #
    # Type: String
    #
    # **Oracle**
    #
    # Contains the Oracle System ID (SID) of the created DB instance. Not
    # shown when the returned parameters do not apply to an Oracle DB
    # instance.
    # @return [String]
    def db_name
      data[:db_name]
    end

    # Specifies the connection endpoint.
    # @return [Types::Endpoint]
    def endpoint
      data[:endpoint]
    end

    # Specifies the allocated storage size specified in gibibytes.
    # @return [Integer]
    def allocated_storage
      data[:allocated_storage]
    end

    # Provides the date and time the DB instance was created.
    # @return [Time]
    def instance_create_time
      data[:instance_create_time]
    end

    # Specifies the daily time range during which automated backups are
    # created if automated backups are enabled, as determined by the
    # `BackupRetentionPeriod`.
    # @return [String]
    def preferred_backup_window
      data[:preferred_backup_window]
    end

    # Specifies the number of days for which automatic DB snapshots are
    # retained.
    # @return [Integer]
    def backup_retention_period
      data[:backup_retention_period]
    end

    # Provides List of DB security group elements containing only
    # `DBSecurityGroup.Name` and `DBSecurityGroup.Status` subelements.
    # @return [Array<Types::DBSecurityGroupMembership>]
    def db_security_groups
      data[:db_security_groups]
    end

    # Provides a list of VPC security group elements that the DB instance
    # belongs to.
    # @return [Array<Types::VpcSecurityGroupMembership>]
    def vpc_security_groups
      data[:vpc_security_groups]
    end

    # Provides the list of DB parameter groups applied to this DB instance.
    # @return [Array<Types::DBParameterGroupStatus>]
    def db_parameter_groups
      data[:db_parameter_groups]
    end

    # Specifies the name of the Availability Zone the DB instance is located
    # in.
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # Specifies information on the subnet group associated with the DB
    # instance, including the name, description, and subnets in the subnet
    # group.
    # @return [Types::DBSubnetGroup]
    def db_subnet_group
      data[:db_subnet_group]
    end

    # Specifies the weekly time range during which system maintenance can
    # occur, in Universal Coordinated Time (UTC).
    # @return [String]
    def preferred_maintenance_window
      data[:preferred_maintenance_window]
    end

    # Specifies that changes to the DB instance are pending. This element is
    # only included when changes are pending. Specific changes are
    # identified by subelements.
    # @return [Types::PendingModifiedValues]
    def pending_modified_values
      data[:pending_modified_values]
    end

    # Specifies the latest time to which a database can be restored with
    # point-in-time restore.
    # @return [Time]
    def latest_restorable_time
      data[:latest_restorable_time]
    end

    # Specifies if the DB instance is a Multi-AZ deployment.
    # @return [Boolean]
    def multi_az
      data[:multi_az]
    end

    # Indicates the database engine version.
    # @return [String]
    def engine_version
      data[:engine_version]
    end

    # Indicates that minor version patches are applied automatically.
    # @return [Boolean]
    def auto_minor_version_upgrade
      data[:auto_minor_version_upgrade]
    end

    # Contains the identifier of the source DB instance if this DB instance
    # is a Read Replica.
    # @return [String]
    def read_replica_source_db_instance_identifier
      data[:read_replica_source_db_instance_identifier]
    end

    # Contains one or more identifiers of the Read Replicas associated with
    # this DB instance.
    # @return [Array<String>]
    def read_replica_db_instance_identifiers
      data[:read_replica_db_instance_identifiers]
    end

    # Contains one or more identifiers of Aurora DB clusters to which the
    # RDS DB instance is replicated as a Read Replica. For example, when you
    # create an Aurora Read Replica of an RDS MySQL DB instance, the Aurora
    # MySQL DB cluster for the Aurora Read Replica is shown. This output
    # does not contain information about cross region Aurora Read Replicas.
    # @return [Array<String>]
    def read_replica_db_cluster_identifiers
      data[:read_replica_db_cluster_identifiers]
    end

    # License model information for this DB instance.
    # @return [String]
    def license_model
      data[:license_model]
    end

    # Specifies the Provisioned IOPS (I/O operations per second) value.
    # @return [Integer]
    def iops
      data[:iops]
    end

    # Provides the list of option group memberships for this DB instance.
    # @return [Array<Types::OptionGroupMembership>]
    def option_group_memberships
      data[:option_group_memberships]
    end

    # If present, specifies the name of the character set that this instance
    # is associated with.
    # @return [String]
    def character_set_name
      data[:character_set_name]
    end

    # If present, specifies the name of the secondary Availability Zone for
    # a DB instance with multi-AZ support.
    # @return [String]
    def secondary_availability_zone
      data[:secondary_availability_zone]
    end

    # Specifies the accessibility options for the DB instance. A value of
    # true specifies an Internet-facing instance with a publicly resolvable
    # DNS name, which resolves to a public IP address. A value of false
    # specifies an internal instance with a DNS name that resolves to a
    # private IP address.
    # @return [Boolean]
    def publicly_accessible
      data[:publicly_accessible]
    end

    # The status of a Read Replica. If the instance is not a Read Replica,
    # this is blank.
    # @return [Array<Types::DBInstanceStatusInfo>]
    def status_infos
      data[:status_infos]
    end

    # Specifies the storage type associated with DB instance.
    # @return [String]
    def storage_type
      data[:storage_type]
    end

    # The ARN from the key store with which the instance is associated for
    # TDE encryption.
    # @return [String]
    def tde_credential_arn
      data[:tde_credential_arn]
    end

    # Specifies the port that the DB instance listens on. If the DB instance
    # is part of a DB cluster, this can be a different port than the DB
    # cluster port.
    # @return [Integer]
    def db_instance_port
      data[:db_instance_port]
    end

    # If the DB instance is a member of a DB cluster, contains the name of
    # the DB cluster that the DB instance is a member of.
    # @return [String]
    def db_cluster_identifier
      data[:db_cluster_identifier]
    end

    # Specifies whether the DB instance is encrypted.
    # @return [Boolean]
    def storage_encrypted
      data[:storage_encrypted]
    end

    # If `StorageEncrypted` is true, the AWS KMS key identifier for the
    # encrypted DB instance.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The AWS Region-unique, immutable identifier for the DB instance. This
    # identifier is found in AWS CloudTrail log entries whenever the AWS KMS
    # key for the DB instance is accessed.
    # @return [String]
    def dbi_resource_id
      data[:dbi_resource_id]
    end

    # The identifier of the CA certificate for this DB instance.
    # @return [String]
    def ca_certificate_identifier
      data[:ca_certificate_identifier]
    end

    # The Active Directory Domain membership records associated with the DB
    # instance.
    # @return [Array<Types::DomainMembership>]
    def domain_memberships
      data[:domain_memberships]
    end

    # Specifies whether tags are copied from the DB instance to snapshots of
    # the DB instance.
    # @return [Boolean]
    def copy_tags_to_snapshot
      data[:copy_tags_to_snapshot]
    end

    # The interval, in seconds, between points when Enhanced Monitoring
    # metrics are collected for the DB instance.
    # @return [Integer]
    def monitoring_interval
      data[:monitoring_interval]
    end

    # The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log
    # stream that receives the Enhanced Monitoring metrics data for the DB
    # instance.
    # @return [String]
    def enhanced_monitoring_resource_arn
      data[:enhanced_monitoring_resource_arn]
    end

    # The ARN for the IAM role that permits RDS to send Enhanced Monitoring
    # metrics to Amazon CloudWatch Logs.
    # @return [String]
    def monitoring_role_arn
      data[:monitoring_role_arn]
    end

    # A value that specifies the order in which an Aurora Replica is
    # promoted to the primary instance after a failure of the existing
    # primary instance. For more information, see [ Fault Tolerance for an
    # Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    # @return [Integer]
    def promotion_tier
      data[:promotion_tier]
    end

    # The Amazon Resource Name (ARN) for the DB instance.
    # @return [String]
    def db_instance_arn
      data[:db_instance_arn]
    end

    # The time zone of the DB instance. In most cases, the `Timezone`
    # element is empty. `Timezone` content appears only for Microsoft SQL
    # Server DB instances that were created with a time zone specified.
    # @return [String]
    def timezone
      data[:timezone]
    end

    # True if mapping of AWS Identity and Access Management (IAM) accounts
    # to database accounts is enabled, and otherwise false.
    #
    # IAM database authentication can be enabled for the following database
    # engines
    #
    # * For MySQL 5.6, minor version 5.6.34 or higher
    #
    # * For MySQL 5.7, minor version 5.7.16 or higher
    #
    # * Aurora 5.6 or higher. To enable IAM database authentication for
    #   Aurora, see DBCluster Type.
    # @return [Boolean]
    def iam_database_authentication_enabled
      data[:iam_database_authentication_enabled]
    end

    # True if Performance Insights is enabled for the DB instance, and
    # otherwise false.
    # @return [Boolean]
    def performance_insights_enabled
      data[:performance_insights_enabled]
    end

    # The AWS KMS key identifier for encryption of Performance Insights
    # data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    # identifier, or the KMS key alias for the KMS encryption key.
    # @return [String]
    def performance_insights_kms_key_id
      data[:performance_insights_kms_key_id]
    end

    # The amount of time, in days, to retain Performance Insights data.
    # Valid values are 7 or 731 (2 years).
    # @return [Integer]
    def performance_insights_retention_period
      data[:performance_insights_retention_period]
    end

    # A list of log types that this DB instance is configured to export to
    # CloudWatch Logs.
    #
    # Log types vary by DB engine. For information about the log types for
    # each DB engine, see [Amazon RDS Database Log Files][1] in the *Amazon
    # RDS User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html
    # @return [Array<String>]
    def enabled_cloudwatch_logs_exports
      data[:enabled_cloudwatch_logs_exports]
    end

    # The number of CPU cores and the number of threads per core for the DB
    # instance class of the DB instance.
    # @return [Array<Types::ProcessorFeature>]
    def processor_features
      data[:processor_features]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBInstance}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_instance.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_db_instances(db_instance_identifier: @id)
      @data = resp.db_instances[0]
      self
    end
    alias :reload :load

    # @return [Types::DBInstance]
    #   Returns the data for this {DBInstance}. Calls
    #   {Client#describe_db_instances} if {#data_loaded?} is `false`.
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
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
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
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
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
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
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
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.create({
    #     db_name: "String",
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
    #   * Must contain 1 to 64 letters or numbers.
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
    #   * Must contain 1 to 64 letters or numbers.
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
    #   * Must contain 1 to 63 letters, numbers, or underscores.
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
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Cannot be a word reserved by the specified database engine
    # @option options [Integer] :allocated_storage
    #   The amount of storage (in gibibytes) to allocate for the DB instance.
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
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **MariaDB**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **PostgreSQL**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **Oracle**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     16384.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     16384.
    #
    #   * Magnetic storage (standard): Must be an integer from 10 to 3072.
    #
    #   **SQL Server**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       16384.
    #
    #     * Web and Express editions: Must be an integer from 20 to 16384.
    #
    #   * Provisioned IOPS storage (io1):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       16384.
    #
    #     * Web and Express editions: Must be an integer from 100 to 16384.
    #
    #   * Magnetic storage (standard):
    #
    #     * Enterprise and Standard editions: Must be an integer from 200 to
    #       1024.
    #
    #     * Web and Express editions: Must be an integer from 20 to 1024.
    # @option options [required, String] :db_instance_class
    #   The compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB instance
    #   classes, and availability for your engine, see [DB Instance Class][1]
    #   in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [required, String] :engine
    #   The name of the database engine to be used for this instance.
    #
    #   Not every database engine is available for every AWS Region.
    #
    #   Valid Values:
    #
    #   * `aurora` (for MySQL 5.6-compatible Aurora)
    #
    #   * `aurora-mysql` (for MySQL 5.7-compatible Aurora)
    #
    #   * `aurora-postgresql`
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
    #   The name for the master user.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The name for the master user is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
    #
    #   **MariaDB**
    #
    #   Constraints:
    #
    #   * Required for MariaDB.
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints:
    #
    #   * Required for SQL Server.
    #
    #   * Must be 1 to 128 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **MySQL**
    #
    #   Constraints:
    #
    #   * Required for MySQL.
    #
    #   * Must be 1 to 16 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **Oracle**
    #
    #   Constraints:
    #
    #   * Required for Oracle.
    #
    #   * Must be 1 to 30 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    #   **PostgreSQL**
    #
    #   Constraints:
    #
    #   * Required for PostgreSQL.
    #
    #   * Must be 1 to 63 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    # @option options [String] :master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
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
    #   **Amazon Aurora**
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see CreateDBCluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet group's
    #   VPC.
    # @option options [String] :availability_zone
    #   The EC2 Availability Zone that the DB instance is created in. For
    #   information on AWS Regions and Availability Zones, see [Regions and
    #   Availability Zones][1].
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   AWS Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The AvailabilityZone parameter can't be specified if the
    #   MultiAZ parameter is set to `true`. The specified Availability Zone
    #   must be in the same AWS Region as the current endpoint.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    # @option options [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   If there is no DB subnet group, then it is a non-VPC DB instance.
    # @option options [String] :preferred_maintenance_window
    #   The time range each week during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC). For more information, see [Amazon
    #   RDS Maintenance Window][1].
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    # @option options [String] :db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB instance.
    #   If this argument is omitted, the default DBParameterGroup for the
    #   specified engine is used.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The retention period for automated backups is managed
    #   by the DB cluster. For more information, see CreateDBCluster.
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
    #   parameter. For more information, see [The Backup Window][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The daily time range for creating automated backups is
    #   managed by the DB cluster. For more information, see CreateDBCluster.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred DB Instance Maintenance Window][2] in
    #   the *Amazon RDS User Guide*.
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
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
    #   Specifies if the DB instance is a Multi-AZ deployment. You can't set
    #   the AvailabilityZone parameter if the MultiAZ parameter is set to
    #   true.
    # @option options [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   For a list of valid engine versions, call DescribeDBEngineVersions.
    #
    #   The following are the database engines and links to information about
    #   the major and minor versions that are available with Amazon RDS. Not
    #   every database engine is available for every AWS Region.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The version number of the database engine to be used
    #   by the DB instance is managed by the DB cluster. For more information,
    #   see CreateDBCluster.
    #
    #   **MariaDB**
    #
    #   See [MariaDB on Amazon RDS Versions][1] in the *Amazon RDS User
    #   Guide.*
    #
    #   **Microsoft SQL Server**
    #
    #   See [Version and Feature Support on Amazon RDS][2] in the *Amazon RDS
    #   User Guide.*
    #
    #   **MySQL**
    #
    #   See [MySQL on Amazon RDS Versions][3] in the *Amazon RDS User Guide.*
    #
    #   **Oracle**
    #
    #   See [Oracle Database Engine Release Notes][4] in the *Amazon RDS User
    #   Guide.*
    #
    #   **PostgreSQL**
    #
    #   See [Supported PostgreSQL Database Versions][5] in the *Amazon RDS
    #   User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt
    #   [2]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport
    #   [3]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [4]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html
    #   [5]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts.General.DBVersions
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor engine upgrades are applied automatically to the
    #   DB instance during the maintenance window.
    #
    #   Default: `true`
    # @option options [String] :license_model
    #   License model information for this DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance. For information about
    #   valid Iops values, see see [Amazon RDS Provisioned IOPS Storage to
    #   Improve Performance][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: Must be a multiple between 1 and 50 of the storage amount
    #   for the DB instance. Must also be an integer multiple of 1000. For
    #   example, if the size of your DB instance is 500 GiB, then your `Iops`
    #   value can be 2000, 3000, 4000, or 5000.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    # @option options [String] :option_group_name
    #   Indicates that the DB instance should be associated with the specified
    #   option group.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    # @option options [String] :character_set_name
    #   For supported engines, indicates that the DB instance should be
    #   associated with the specified CharacterSet.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The character set is managed by the DB cluster. For
    #   more information, see CreateDBCluster.
    # @option options [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` is not specified, and `PubliclyAccessible` is
    #   not specified, the following applies:
    #
    #   * If the default VPC in the target region doesn’t have an Internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the default VPC in the target region has an Internet gateway
    #     attached to it, the DB instance is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` is not
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an Internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the subnets are part of a VPC that has an Internet gateway
    #     attached to it, the DB instance is public.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
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
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    # @option options [String] :tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    # @option options [String] :tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    # @option options [Boolean] :storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The encryption for DB instances is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
    #
    #   Default: false
    # @option options [String] :kms_key_id
    #   The AWS KMS key identifier for an encrypted DB instance.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB instance with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   instance, then you can use the KMS key alias instead of the ARN for
    #   the KM encryption key.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The KMS key identifier is managed by the DB cluster.
    #   For more information, see CreateDBCluster.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify a
    #   value for the `KmsKeyId` parameter, then Amazon RDS will use your
    #   default encryption key. AWS KMS creates the default encryption key for
    #   your AWS account. Your AWS account has a different default encryption
    #   key for each AWS Region.
    # @option options [String] :domain
    #   Specify the Active Directory Domain to create the instance in.
    # @option options [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false. The default is false.
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
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, go to [Setting Up and Enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide*.
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
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    # @option options [String] :timezone
    #   The time zone of the DB instance. The time zone parameter is currently
    #   supported only by [Microsoft SQL Server][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone
    # @option options [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines:
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Mapping AWS IAM accounts to database accounts is
    #   managed by the DB cluster. For more information, see CreateDBCluster.
    #
    #   **MySQL**
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    # @option options [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and otherwise
    #   false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    # @option options [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    # @option options [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs ][1] in the *Amazon Relational Database Service User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    # @return [DBInstance]
    def create(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.create_db_instance(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.create_read_replica({
    #     db_instance_identifier: "String", # required
    #     db_instance_class: "String",
    #     availability_zone: "String",
    #     port: 1,
    #     multi_az: false,
    #     auto_minor_version_upgrade: false,
    #     iops: 1,
    #     option_group_name: "String",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     db_subnet_group_name: "String",
    #     storage_type: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
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
    #     use_default_processor_features: false,
    #     source_region: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_instance_identifier
    #   The DB instance identifier of the Read Replica. This identifier is the
    #   unique key that identifies a DB instance. This parameter is stored as
    #   a lowercase string.
    # @option options [String] :db_instance_class
    #   The compute and memory capacity of the Read Replica, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB instance
    #   classes, and availability for your engine, see [DB Instance Class][1]
    #   in the *Amazon RDS User Guide.*
    #
    #   Default: Inherits from the source DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [String] :availability_zone
    #   The Amazon EC2 Availability Zone that the Read Replica is created in.
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   AWS Region.
    #
    #   Example: `us-east-1d`
    # @option options [Integer] :port
    #   The port number that the DB instance uses for connections.
    #
    #   Default: Inherits from the source DB instance
    #
    #   Valid Values: `1150-65535`
    # @option options [Boolean] :multi_az
    #   Specifies whether the Read Replica is in a Multi-AZ deployment.
    #
    #   You can create a Read Replica as a Multi-AZ DB instance. RDS creates a
    #   standby of your replica in another Availability Zone for failover
    #   support for the replica. Creating your Read Replica as a Multi-AZ DB
    #   instance is independent of whether the source database is a Multi-AZ
    #   DB instance.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor engine upgrades are applied automatically to the
    #   Read Replica during the maintenance window.
    #
    #   Default: Inherits from the source DB instance
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance.
    # @option options [String] :option_group_name
    #   The option group the DB instance is associated with. If omitted, the
    #   default option group for the engine specified is used.
    # @option options [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address. For more information, see CreateDBInstance.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [String] :db_subnet_group_name
    #   Specifies a DB subnet group for the DB instance. The new DB instance
    #   is created in the VPC associated with the DB subnet group. If no DB
    #   subnet group is specified, then the new DB instance is not created in
    #   a VPC.
    #
    #   Constraints:
    #
    #   * Can only be specified if the source DB instance identifier specifies
    #     a DB instance in another AWS Region.
    #
    #   * If supplied, must match the name of an existing DBSubnetGroup.
    #
    #   * The specified DB subnet group must be in the same AWS Region in
    #     which the operation is running.
    #
    #   * All Read Replicas in one AWS Region that are created from the same
    #     source DB instance must either:&gt;
    #
    #     * Specify DB subnet groups from the same VPC. All these Read
    #       Replicas are created in the same VPC.
    #
    #     * Not specify a DB subnet group. All these Read Replicas are created
    #       outside of any VPC.
    #
    #   Example: `mySubnetgroup`
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the Read Replica.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    # @option options [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the Read Replica to snapshots of the Read
    #   Replica, and otherwise false. The default is false.
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the Read Replica. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    # @option options [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, go to [To create an IAM role for Amazon RDS
    #   Enhanced Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    # @option options [String] :kms_key_id
    #   The AWS KMS key ID for an encrypted Read Replica. The KMS key ID is
    #   the Amazon Resource Name (ARN), KMS key identifier, or the KMS key
    #   alias for the KMS encryption key.
    #
    #   If you specify this parameter when you create a Read Replica from an
    #   unencrypted DB instance, the Read Replica is encrypted.
    #
    #   If you create an encrypted Read Replica in the same AWS Region as the
    #   source DB instance, then you do not have to specify a value for this
    #   parameter. The Read Replica is encrypted with the same KMS key as the
    #   source DB instance.
    #
    #   If you create an encrypted Read Replica in a different AWS Region,
    #   then you must specify a KMS key for the destination AWS Region. KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in another
    #   AWS Region.
    # @option options [String] :pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CreateDBInstanceReadReplica` API action in the source AWS Region that
    #   contains the source DB instance.
    #
    #   You must specify this parameter when you create an encrypted Read
    #   Replica from another AWS Region by using the Amazon RDS API. You can
    #   specify the `--source-region` option instead of this parameter when
    #   you create an encrypted Read Replica from another AWS Region by using
    #   the AWS CLI.
    #
    #   The presigned URL must be a valid request for the
    #   `CreateDBInstanceReadReplica` API action that can be executed in the
    #   source AWS Region that contains the encrypted source DB instance. The
    #   presigned URL request must contain the following parameter values:
    #
    #   * `DestinationRegion` - The AWS Region that the encrypted Read Replica
    #     is created in. This AWS Region is the same one where the
    #     `CreateDBInstanceReadReplica` action is called that contains this
    #     presigned URL.
    #
    #     For example, if you create an encrypted DB instance in the us-west-1
    #     AWS Region, from a source DB instance in the us-east-2 AWS Region,
    #     then you call the `CreateDBInstanceReadReplica` action in the
    #     us-east-1 AWS Region and provide a presigned URL that contains a
    #     call to the `CreateDBInstanceReadReplica` action in the us-west-2
    #     AWS Region. For this example, the `DestinationRegion` in the
    #     presigned URL must be set to the us-east-1 AWS Region.
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the Read Replica in the destination AWS Region. This is the
    #     same identifier for both the `CreateDBInstanceReadReplica` action
    #     that is called in the destination AWS Region, and the action
    #     contained in the presigned URL.
    #
    #   * `SourceDBInstanceIdentifier` - The DB instance identifier for the
    #     encrypted DB instance to be replicated. This identifier must be in
    #     the Amazon Resource Name (ARN) format for the source AWS Region. For
    #     example, if you are creating an encrypted Read Replica from a DB
    #     instance in the us-west-2 AWS Region, then your
    #     `SourceDBInstanceIdentifier` looks like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # @option options [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   * Aurora 5.6 or higher.
    #
    #   Default: `false`
    # @option options [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the read replica, and
    #   otherwise false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    # @option options [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    # @option options [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the new DB instance is to export to CloudWatch
    #   Logs. The values in the list depend on the DB engine being used. For
    #   more information, see [Publishing Database Logs to Amazon CloudWatch
    #   Logs ][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    # @option options [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    # @option options [String] :destination_region
    # @option options [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    # @return [DBInstance]
    def create_read_replica(options = {})
      options = options.merge(source_db_instance_identifier: @id)
      resp = @client.create_db_instance_read_replica(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbsnapshot = db_instance.create_snapshot({
    #     db_snapshot_identifier: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_snapshot_identifier
    #   The identifier for the DB snapshot.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBSnapshot]
    def create_snapshot(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.create_db_snapshot(options)
      DBSnapshot.new(
        instance_id: resp.data.db_snapshot.db_instance_identifier,
        snapshot_id: resp.data.db_snapshot.db_snapshot_identifier,
        data: resp.data.db_snapshot,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.delete({
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :skip_final_snapshot
    #   Determines whether a final DB snapshot is created before the DB
    #   instance is deleted. If `true` is specified, no DBSnapshot is created.
    #   If `false` is specified, a DB snapshot is created before the DB
    #   instance is deleted.
    #
    #   Note that when a DB instance is in a failure state and has a status of
    #   'failed', 'incompatible-restore', or 'incompatible-network', it
    #   can only be deleted when the SkipFinalSnapshot parameter is set to
    #   "true".
    #
    #   Specify `true` when deleting a Read Replica.
    #
    #   <note markdown="1"> The FinalDBSnapshotIdentifier parameter must be specified if
    #   SkipFinalSnapshot is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    # @option options [String] :final_db_snapshot_identifier
    #   The DBSnapshotIdentifier of the new DBSnapshot created when
    #   SkipFinalSnapshot is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the SkipFinalShapshot
    #   parameter to true results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters or numbers.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * Cannot be specified when deleting a Read Replica.
    # @return [DBInstance]
    def delete(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.delete_db_instance(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.modify({
    #     allocated_storage: 1,
    #     db_instance_class: "String",
    #     db_subnet_group_name: "String",
    #     db_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     apply_immediately: false,
    #     master_user_password: "String",
    #     db_parameter_group_name: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     new_db_instance_identifier: "String",
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     ca_certificate_identifier: "String",
    #     domain: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     db_port_number: 1,
    #     publicly_accessible: false,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"],
    #     },
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Integer] :allocated_storage
    #   The new amount of storage (in gibibytes) to allocate for the DB
    #   instance.
    #
    #   For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must be
    #   at least 10% greater than the current value. Values that are not at
    #   least 10% greater than the existing value are rounded up so that they
    #   are 10% greater than the current value.
    #
    #   For the valid values for allocated storage for each engine, see
    #   CreateDBInstance.
    # @option options [String] :db_instance_class
    #   The new compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions, or for all database engines. For the full list of DB instance
    #   classes, and availability for your engine, see [DB Instance Class][1]
    #   in the *Amazon RDS User Guide.*
    #
    #   If you modify the DB instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless `ApplyImmediately` is specified as `true` for this request.
    #
    #   Default: Uses existing setting
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [String] :db_subnet_group_name
    #   The new DB subnet group for the DB instance. You can use this
    #   parameter to move your DB instance to a different VPC. If your DB
    #   instance is not in a VPC, you can also use this parameter to move your
    #   DB instance into a VPC. For more information, see [Updating the VPC
    #   for a DB Instance][1] in the *Amazon RDS User Guide.*
    #
    #   Changing the subnet group causes an outage during the change. The
    #   change is applied during the next maintenance window, unless you
    #   specify `true` for the `ApplyImmediately` parameter.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetGroup`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC
    # @option options [Array<String>] :db_security_groups
    #   A list of DB security groups to authorize on this DB instance.
    #   Changing this setting doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing DBSecurityGroups.
    #
    #   ^
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to authorize on this DB instance.
    #   This change is asynchronously applied as soon as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing VpcSecurityGroupIds.
    #
    #   ^
    # @option options [Boolean] :apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   instance.
    #
    #   If this parameter is set to `false`, changes to the DB instance are
    #   applied during the next maintenance window. Some parameter changes can
    #   cause an outage and are applied on the next call to RebootDBInstance,
    #   or the next failure reboot. Review the table of parameters in
    #   [Modifying a DB Instance and Using the Apply Immediately Parameter][1]
    #   in the *Amazon RDS User Guide.* to see the impact that setting
    #   `ApplyImmediately` to `true` or `false` has for each modified
    #   parameter and to determine when the changes are applied.
    #
    #   Default: `false`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html
    # @option options [String] :master_user_password
    #   The new password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   Changing this parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible. Between the time of the
    #   request and the completion of the request, the `MasterUserPassword`
    #   element exists in the `PendingModifiedValues` element of the operation
    #   response.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the DB
    #   cluster. For more information, see ModifyDBCluster.
    #
    #   Default: Uses existing setting
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
    #
    #   <note markdown="1"> Amazon RDS API actions never return the password, so this action
    #   provides a way to regain access to a primary instance user if the
    #   password is lost. This includes restoring privileges that might have
    #   been accidentally revoked.
    #
    #    </note>
    # @option options [String] :db_parameter_group_name
    #   The name of the DB parameter group to apply to the DB instance.
    #   Changing this setting doesn't result in an outage. The parameter
    #   group name itself is changed immediately, but the actual parameter
    #   changes are not applied until you reboot the instance without
    #   failover. The db instance will NOT be rebooted automatically and the
    #   parameter changes will NOT be applied during the next maintenance
    #   window.
    #
    #   Default: Uses existing setting
    #
    #   Constraints: The DB parameter group must be in the same DB parameter
    #   group family as this DB instance.
    # @option options [Integer] :backup_retention_period
    #   The number of days to retain automated backups. Setting this parameter
    #   to a positive number enables backups. Setting this parameter to 0
    #   disables automated backups.
    #
    #   Changing this parameter can result in an outage if you change from 0
    #   to a non-zero value or from a non-zero value to 0. These changes are
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true` for this request. If you
    #   change the parameter from one non-zero value to another non-zero
    #   value, the change is asynchronously applied as soon as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The retention period for automated backups is managed
    #   by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Can be specified for a MySQL Read Replica only if the source is
    #     running MySQL 5.6
    #
    #   * Can be specified for a PostgreSQL Read Replica only if the source is
    #     running PostgreSQL 9.3.5
    #
    #   * Cannot be set to 0 if the DB instance is a source to Read Replicas
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod` parameter. Changing this parameter doesn't
    #   result in an outage and the change is asynchronously applied as soon
    #   as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The daily time range for creating automated backups is
    #   managed by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   Constraints:
    #
    #   * Must be in the format hh24:mi-hh24:mi
    #
    #   * Must be in Universal Time Coordinated (UTC)
    #
    #   * Must not conflict with the preferred maintenance window
    #
    #   * Must be at least 30 minutes
    # @option options [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter
    #   doesn't result in an outage, except in the following situation, and
    #   the change is asynchronously applied as soon as possible. If there are
    #   pending actions that cause a reboot, and the maintenance window is
    #   changed to include the current time, then changing this parameter will
    #   cause a reboot of the DB instance. If moving this window to the
    #   current time, there must be at least 30 minutes between the current
    #   time and end of the window to ensure pending changes are applied.
    #
    #   Default: Uses existing setting
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes
    # @option options [Boolean] :multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment. Changing this
    #   parameter doesn't result in an outage and the change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is set to `true` for this request.
    # @option options [String] :engine_version
    #   The version number of the database engine to upgrade to. Changing this
    #   parameter results in an outage and the change is applied during the
    #   next maintenance window unless the `ApplyImmediately` parameter is set
    #   to `true` for this request.
    #
    #   For major version upgrades, if a nondefault DB parameter group is
    #   currently in use, a new DB parameter group in the DB parameter group
    #   family for the new engine version must be specified. The new DB
    #   parameter group can be the default for that DB parameter group family.
    #
    #   For information about valid engine versions, see CreateDBInstance, or
    #   call DescribeDBEngineVersions.
    # @option options [Boolean] :allow_major_version_upgrade
    #   Indicates that major version upgrades are allowed. Changing this
    #   parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints: This parameter must be set to true when specifying a
    #   value for the EngineVersion parameter that is a different major
    #   version than the DB instance's current version.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to the
    #   DB instance during the maintenance window. Changing this parameter
    #   doesn't result in an outage except in the following case and the
    #   change is asynchronously applied as soon as possible. An outage will
    #   result if this parameter is set to `true` during the maintenance
    #   window, and a newer minor version is available, and RDS has enabled
    #   auto patching for that engine version.
    # @option options [String] :license_model
    #   The license model for the DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    # @option options [Integer] :iops
    #   The new Provisioned IOPS (I/O operations per second) value for the RDS
    #   instance.
    #
    #   Changing this setting doesn't result in an outage and the change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true` for this request. If you
    #   are migrating from Provisioned IOPS to standard storage, set this
    #   value to 0. The DB instance will require a reboot for the change in
    #   storage type to take effect.
    #
    #   If you choose to migrate your DB instance from using standard storage
    #   to using Provisioned IOPS, or from using Provisioned IOPS to using
    #   standard storage, the process can take time. The duration of the
    #   migration depends on several factors such as database load, storage
    #   size, storage type (standard or Provisioned IOPS), amount of IOPS
    #   provisioned (if any), and the number of prior scale storage
    #   operations. Typical migration times are under 24 hours, but the
    #   process can take up to several days in some cases. During the
    #   migration, the DB instance is available for use, but might experience
    #   performance degradation. While the migration takes place, nightly
    #   backups for the instance are suspended. No other Amazon RDS operations
    #   can take place for the instance, including modifying the instance,
    #   rebooting the instance, deleting the instance, creating a Read Replica
    #   for the instance, and creating a DB snapshot of the instance.
    #
    #   Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL, the value
    #   supplied must be at least 10% greater than the current value. Values
    #   that are not at least 10% greater than the existing value are rounded
    #   up so that they are 10% greater than the current value.
    #
    #   Default: Uses existing setting
    # @option options [String] :option_group_name
    #   Indicates that the DB instance should be associated with the specified
    #   option group. Changing this parameter doesn't result in an outage
    #   except in the following case and the change is applied during the next
    #   maintenance window unless the `ApplyImmediately` parameter is set to
    #   `true` for this request. If the parameter change results in an option
    #   group that enables OEM, this change can cause a brief (sub-second)
    #   period during which new connections are rejected but existing
    #   connections are not interrupted.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    # @option options [String] :new_db_instance_identifier
    #   The new DB instance identifier for the DB instance when renaming a DB
    #   instance. When you change the DB instance identifier, an instance
    #   reboot will occur immediately if you set `Apply Immediately` to true,
    #   or will occur during the next maintenance window if `Apply
    #   Immediately` to false. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   If you specify Provisioned IOPS (`io1`), you must also include a value
    #   for the `Iops` parameter.
    #
    #   If you choose to migrate your DB instance from using standard storage
    #   to using Provisioned IOPS, or from using Provisioned IOPS to using
    #   standard storage, the process can take time. The duration of the
    #   migration depends on several factors such as database load, storage
    #   size, storage type (standard or Provisioned IOPS), amount of IOPS
    #   provisioned (if any), and the number of prior scale storage
    #   operations. Typical migration times are under 24 hours, but the
    #   process can take up to several days in some cases. During the
    #   migration, the DB instance is available for use, but might experience
    #   performance degradation. While the migration takes place, nightly
    #   backups for the instance are suspended. No other Amazon RDS operations
    #   can take place for the instance, including modifying the instance,
    #   rebooting the instance, deleting the instance, creating a Read Replica
    #   for the instance, and creating a DB snapshot of the instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    # @option options [String] :tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    # @option options [String] :tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    # @option options [String] :ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   instance.
    # @option options [String] :domain
    #   The Active Directory Domain to move the instance to. Specify `none` to
    #   remove the instance from its current domain. The domain must be
    #   created prior to this operation. Currently only a Microsoft SQL Server
    #   instance can be created in a Active Directory Domain.
    # @option options [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false. The default is false.
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    # @option options [Integer] :db_port_number
    #   The port number on which the database accepts connections.
    #
    #   The value of the `DBPortNumber` parameter must not match any of the
    #   port values specified for options in the option group for the DB
    #   instance.
    #
    #   Your database will restart when you change the `DBPortNumber` value
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid Values: `1150-65535`
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
    # @option options [Boolean] :publicly_accessible
    #   Boolean value that indicates if the DB instance has a publicly
    #   resolvable DNS name. Set to `True` to make the DB instance
    #   Internet-facing with a publicly resolvable DNS name, which resolves to
    #   a public IP address. Set to `False` to make the DB instance internal
    #   with a DNS name that resolves to a private IP address.
    #
    #   `PubliclyAccessible` only applies to DB instances in a VPC. The DB
    #   instance must be part of a public subnet and `PubliclyAccessible` must
    #   be true in order for it to be publicly accessible.
    #
    #   Changes to the `PubliclyAccessible` parameter are applied immediately
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   Default: false
    # @option options [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, go to [To create an IAM role for Amazon RDS
    #   Enhanced Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    # @option options [String] :domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the Directory
    #   Service.
    # @option options [Integer] :promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    # @option options [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Mapping AWS IAM accounts to database accounts is
    #   managed by the DB cluster. For more information, see ModifyDBCluster.
    #
    #   **MySQL**
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    # @option options [Boolean] :enable_performance_insights
    #   True to enable Performance Insights for the DB instance, and otherwise
    #   false.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    # @option options [String] :performance_insights_kms_key_id
    #   The AWS KMS key identifier for encryption of Performance Insights
    #   data. The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    # @option options [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    # @option options [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB instance.
    # @option options [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    # @option options [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    # @return [DBInstance]
    def modify(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.modify_db_instance(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.promote({
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Integer] :backup_retention_period
    #   The number of days to retain automated backups. Setting this parameter
    #   to a positive number enables backups. Setting this parameter to 0
    #   disables automated backups.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 8
    #
    #   ^
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. To see the time blocks available,
    #   see [ Adjusting the Preferred Maintenance Window][1] in the *Amazon
    #   RDS User Guide.*
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    # @return [DBInstance]
    def promote(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.promote_read_replica(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.reboot({
    #     force_failover: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :force_failover
    #   When `true`, the reboot is conducted through a MultiAZ failover.
    #
    #   Constraint: You can't specify `true` if the instance is not
    #   configured for MultiAZ.
    # @return [DBInstance]
    def reboot(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.reboot_db_instance(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.restore({
    #     target_db_instance_identifier: "String", # required
    #     restore_time: Time.now,
    #     use_latest_restorable_time: false,
    #     db_instance_class: "String",
    #     port: 1,
    #     availability_zone: "String",
    #     db_subnet_group_name: "String",
    #     multi_az: false,
    #     publicly_accessible: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     db_name: "String",
    #     engine: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     copy_tags_to_snapshot: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     domain: "String",
    #     domain_iam_role_name: "String",
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :target_db_instance_identifier
    #   The name of the new DB instance to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    # @option options [Time,DateTime,Date,Integer,String] :restore_time
    #   The date and time to restore from.
    #
    #   Valid Values: Value must be a time in Universal Coordinated Time (UTC)
    #   format
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance
    #
    #   * Cannot be specified if UseLatestRestorableTime parameter is true
    #
    #   Example: `2009-09-07T23:45:00Z`
    # @option options [Boolean] :use_latest_restorable_time
    #   Specifies whether (`true`) or not (`false`) the DB instance is
    #   restored from the latest backup time.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if RestoreTime parameter is provided.
    # @option options [String] :db_instance_class
    #   The compute and memory capacity of the Amazon RDS DB instance, for
    #   example, `db.m4.large`. Not all DB instance classes are available in
    #   all AWS Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: The same DBInstanceClass as the original DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB instance.
    # @option options [String] :availability_zone
    #   The EC2 Availability Zone that the DB instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to true.
    #
    #   Example: `us-east-1a`
    # @option options [String] :db_subnet_group_name
    #   The DB subnet group name to use for the new instance.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    # @option options [Boolean] :multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    # @option options [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address. For more information, see CreateDBInstance.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to the
    #   DB instance during the maintenance window.
    # @option options [String] :license_model
    #   License model information for the restored DB instance.
    #
    #   Default: Same as source.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    # @option options [String] :db_name
    #   The database name for the restored DB instance.
    #
    #   <note markdown="1"> This parameter is not used for the MySQL or MariaDB engines.
    #
    #    </note>
    # @option options [String] :engine
    #   The database engine to use for the new instance.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    #
    #   Valid Values:
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
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance.
    #
    #   Constraints: Must be an integer greater than 1000.
    #
    #   **SQL Server**
    #
    #   Setting the IOPS value for the SQL Server database engine is not
    #   supported.
    # @option options [String] :option_group_name
    #   The name of the option group to be used for the restored DB instance.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    # @option options [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the restored DB instance to snapshots of
    #   the DB instance, and otherwise false. The default is false.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    # @option options [String] :tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    # @option options [String] :tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    # @option options [String] :domain
    #   Specify the Active Directory Domain to restore the instance in.
    # @option options [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    # @option options [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    # @option options [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    # @return [DBInstance]
    def restore(options = {})
      options = options.merge(source_db_instance_identifier: @id)
      resp = @client.restore_db_instance_to_point_in_time(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_instance.subscribe_to({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to add a
    #   source identifier to.
    # @return [EventSubscription]
    def subscribe_to(options = {})
      options = options.merge(source_identifier: @id)
      resp = @client.add_source_identifier_to_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_instance.unsubscribe_from({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to remove
    #   a source identifier from.
    # @return [EventSubscription]
    def unsubscribe_from(options = {})
      options = options.merge(source_identifier: @id)
      resp = @client.remove_source_identifier_from_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @!group Associations

    # @return [Certificate, nil]
    def certificate
      if data[:ca_certificate_identifier]
        Certificate.new(
          id: data[:ca_certificate_identifier],
          client: @client
        )
      else
        nil
      end
    end

    # @return [DBCluster, nil]
    def cluster
      if data[:db_cluster_identifier]
        DBCluster.new(
          id: data[:db_cluster_identifier],
          client: @client
        )
      else
        nil
      end
    end

    # @example Request syntax with placeholder values
    #
    #   events = db_instance.events({
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
          source_type: "db-instance",
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

    # @example Request syntax with placeholder values
    #
    #   log_files = db_instance.log_files({
    #     filename_contains: "String",
    #     file_last_written: 1,
    #     file_size: 1,
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :filename_contains
    #   Filters the available log files for log file names that contain the
    #   specified string.
    # @option options [Integer] :file_last_written
    #   Filters the available log files for files written since the specified
    #   date, in POSIX timestamp format with milliseconds.
    # @option options [Integer] :file_size
    #   Filters the available log files for files larger than the specified
    #   size.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [DBLogFile::Collection]
    def log_files(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(db_instance_identifier: @id)
        resp = @client.describe_db_log_files(options)
        resp.each_page do |page|
          batch = []
          page.data.describe_db_log_files.each do |d|
            batch << DBLogFile.new(
              instance_id: @id,
              name: d.log_file_name,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBLogFile::Collection.new(batches)
    end

    # @return [OptionGroup::Collection]
    def option_groups
      batch = []
      data[:option_group_memberships].each do |d|
        batch << OptionGroup.new(
          name: d[:option_group_name],
          client: @client
        )
      end
      OptionGroup::Collection.new([batch], size: batch.size)
    end

    # @return [DBParameterGroup::Collection]
    def parameter_groups
      batch = []
      data[:db_parameter_groups].each do |d|
        batch << DBParameterGroup.new(
          name: d[:db_parameter_group_name],
          client: @client
        )
      end
      DBParameterGroup::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   pending_maintenance_actions = db_instance.pending_maintenance_actions({
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
    # @return [PendingMaintenanceAction::Collection]
    def pending_maintenance_actions(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = Aws::Util.deep_merge(options, filters: [{
          name: "db-instance-id",
          values: [@id]
        }])
        resp = @client.describe_pending_maintenance_actions(options)
        resp.data.pending_maintenance_actions_0.pending_maintenance_action_details.each do |p|
          batch << PendingMaintenanceAction.new(
            target_arn: resp.data.pending_maintenance_actions[0].resource_identifier,
            name: p.action,
            data: p,
            client: @client
          )
        end
        y.yield(batch)
      end
      PendingMaintenanceAction::Collection.new(batches)
    end

    # @return [DBInstance::Collection]
    def read_replicas
      batch = []
      data[:read_replica_db_instance_identifiers].each do |d|
        batch << DBInstance.new(
          id: d,
          client: @client
        )
      end
      DBInstance::Collection.new([batch], size: batch.size)
    end

    # @return [DBSecurityGroup::Collection]
    def security_groups
      batch = []
      data[:db_security_groups].each do |d|
        batch << DBSecurityGroup.new(
          name: d[:db_security_group_name],
          client: @client
        )
      end
      DBSecurityGroup::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   snapshots = db_instance.snapshots({
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
    # @option options [String] :db_snapshot_identifier
    #   A specific DB snapshot identifier to describe. This parameter can't
    #   be used in conjunction with `DBInstanceIdentifier`. This value is
    #   stored as a lowercase string.
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
    #   True to include shared manual DB snapshots from other AWS accounts
    #   that this AWS account has been given permission to copy or restore,
    #   and otherwise false. The default is `false`.
    #
    #   You can give an AWS account permission to restore a manual DB snapshot
    #   from another AWS account by using the ModifyDBSnapshotAttribute API
    #   action.
    # @option options [Boolean] :include_public
    #   True to include manual DB snapshots that are public and can be copied
    #   or restored by any AWS account, and otherwise false. The default is
    #   false.
    #
    #   You can share a manual DB snapshot as public by using the
    #   ModifyDBSnapshotAttribute API.
    # @return [DBSnapshot::Collection]
    def snapshots(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(db_instance_identifier: @id)
        resp = @client.describe_db_snapshots(options)
        resp.each_page do |page|
          batch = []
          page.data.db_snapshots.each do |d|
            batch << DBSnapshot.new(
              instance_id: options[:db_instance_identifier],
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

    # @return [DBInstance, nil]
    def source
      if data[:read_replica_source_db_instance_identifier]
        DBInstance.new(
          id: data[:read_replica_source_db_instance_identifier],
          client: @client
        )
      else
        nil
      end
    end

    # @return [DBSubnetGroup, nil]
    def subnet_group
      if data[:db_subnet_group][:db_subnet_group_name]
        DBSubnetGroup.new(
          name: data[:db_subnet_group][:db_subnet_group_name],
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
